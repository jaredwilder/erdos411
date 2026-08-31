"""
REFUTER 3 - full structural + coverage audit of omega7_tree.json against omega_tree_enumerator.py spec.

Checks (B = branch, T = terminal, D = dead):
  ALL  : kill field present & valid; A,B recomputed from P match; j == 7 - len(P); P strictly increasing primes >= 5.
  D    : A <= B truly.
  B    : A > B; 'cap' key PRESENT (no silent 10^9 loop exhaustion); cap == first prime x > maxP with A(x-1)^j > Bx^j + 2;
         children x-set == { primes x in (maxP, cap) : chain_ok(P,x) } exactly (order + multiplicity);
         every child's stored P == parent P + [x]; pruned count per node accumulated -> global == 254062.
  T    : A > B; c=A-B; K == A*B + 2c; s_hi == (A + isqrt(K))//c + 2; mode 'divisor' iff s_hi - maxP > 200000;
         scan-mode: 'scan' == #primes in (maxP, s_hi]  (recomputed for a random sample, costed);
         found arrays all empty.
  ROOT : P == [], j == 7, first child prime == 5 (mx=4 start).
  STATS: terminals == 272676, branch-edges == 393746, recomputed pruned_chain == 254062, max_scan check.
"""
import json, random, sys
from math import isqrt
from sympy import primerange, isprime

random.seed(411)
W = 7

print("loading json...", flush=True)
d = json.load(open("omega7_tree.json"))
summ = d["summary"]
root = d["tree"]
print("summary:", summ, flush=True)

errors = []
def err(msg):
    errors.append(msg)
    if len(errors) <= 30:
        print("ERROR:", msg, flush=True)

# ---- traversal ----
stack = [(root, None)]   # (node, parent_P)
n_branch = n_term = n_dead = 0
edges = 0
pruned_recomputed = 0
no_cap_branches = 0
term_nodes = []           # keep refs for sampled deep checks
branch_records = []       # (P, A, B, j, cap, children) for independent-sieve cross-check
branch_nodes_checked = 0
cap_mismatches = 0
children_mismatches = 0

SMALLP = list(primerange(2, 100))

while stack:
    node, parentP = stack.pop()
    P = node.get("P"); A = node.get("A"); B = node.get("B"); j = node.get("j")
    kill = node.get("kill")
    if P is None or A is None or B is None or j is None or kill is None:
        err(f"node missing core fields: keys={sorted(node.keys())}"); continue
    # P structurally valid
    if parentP is not None:
        if P[:-1] != parentP: err(f"child P {P} does not extend parent {parentP}")
    if j != W - len(P): err(f"j mismatch P={P} j={j}")
    if any(P[i] >= P[i+1] for i in range(len(P)-1)): err(f"P not increasing: {P}")
    if P and (P[0] < 5): err(f"P contains prime < 5: {P}")
    # A,B recompute
    Ar = 3; Br = 2
    for p in P: Ar *= (p - 1); Br *= p
    if Ar != A or Br != B: err(f"A/B mismatch P={P}: stored {A},{B} recomputed {Ar},{Br}")
    # chain-freeness of the prefix itself
    for ii in range(len(P)):
        for kk in range(len(P)):
            if ii != kk and (P[kk] - 1) % P[ii] == 0:
                err(f"prefix violates chain-free: {P[ii]} | {P[kk]}-1 in {P}")
    mx = P[-1] if P else 4

    if kill == "dead_AleB":
        n_dead += 1
        if not (A <= B): err(f"dead node has A>B: P={P} A={A} B={B}")
        if "children" in node or "K" in node: err(f"dead node has extra keys: P={P}")
    elif kill == "terminal":
        n_term += 1
        if j != 2: err(f"terminal with j={j}: P={P}")
        if A <= B: err(f"terminal with A<=B not marked dead: P={P}")
        c = A - B
        K = node.get("K"); s_hi = node.get("s_hi")
        if K != A * B + 2 * c: err(f"K mismatch P={P}: {K} != {A*B+2*c}")
        r = isqrt(K)
        sh = (A + r) // c + 2
        if s_hi != sh: err(f"s_hi mismatch P={P}: {s_hi} != {sh}")
        is_div = node.get("mode") == "divisor"
        if (s_hi - mx > 200000) != is_div:
            err(f"mode selection mismatch P={P}: s_hi-mx={s_hi-mx} mode={node.get('mode')}")
        if node.get("found"): err(f"terminal FOUND non-empty: P={P} found={node['found']}")
        # COVERAGE BOUND: every genuine smaller root s has (c*s-A)^2 < K (since t>s), so
        # requiring (c*s_hi - A)^2 > K and c*s_hi > A proves the scan range (mx, s_hi] catches all.
        if not (c * s_hi - A > 0 and (c * s_hi - A) ** 2 > K):
            err(f"s_hi NOT past sqrt bound P={P}: c*s_hi-A={c*s_hi-A} K={K}")
        if is_div:
            kf = node.get("K_factors")
            if kf is None: err(f"divisor terminal missing K_factors P={P}")
            else:
                prodK = 1
                for kkk, vv in kf.items():
                    prodK *= int(kkk) ** vv
                    if not isprime(int(kkk)):
                        err(f"K_factors key NOT PRIME (divisor list incomplete!) P={P} k={kkk}")
                if prodK != K: err(f"K_factors product != K, P={P}")
        term_nodes.append(node)
    elif kill == "branch":
        n_branch += 1
        if A <= B: err(f"branch with A<=B: P={P} A={A} B={B}")
        if j < 3: err(f"branch with j={j}: P={P}")
        cap = node.get("cap")
        if cap is None:
            no_cap_branches += 1
            err(f"BRANCH WITHOUT CAP (silent 1e9 truncation?) P={P} children={len(node.get('children', []))}")
            continue
        # recompute: iterate primes from mx+1, predicate fire must FIRST occur exactly at cap;
        # children = non-fire primes passing chain filter, in order.
        expect_children = []
        my_pruned = 0
        found_cap = None
        for x in primerange(mx + 1, cap + 1000):   # generous margin past stored cap
            if A * (x - 1) ** j > B * x ** j + 2:
                found_cap = x
                break
            if any((x - 1) % p == 0 for p in P):
                my_pruned += 1
                continue
            expect_children.append(x)
        branch_nodes_checked += 1
        branch_records.append((tuple(P), A, B, j, cap, tuple(expect_children)))
        if found_cap != cap:
            cap_mismatches += 1
            err(f"cap mismatch P={P}: stored {cap} recomputed {found_cap}")
        got_children = [ch["P"][-1] if ch.get("P") else None for ch in node.get("children", [])]
        # children may not have P if node was never solved -- check
        if None in got_children:
            err(f"child without P under P={P}")
        if got_children != expect_children:
            children_mismatches += 1
            err(f"children mismatch P={P}: stored {got_children[:10]}..n={len(got_children)} "
                f"recomputed {expect_children[:10]}..n={len(expect_children)}")
        pruned_recomputed += my_pruned
        edges += len(node.get("children", []))
        for ch in node.get("children", []):
            stack.append((ch, P))
    else:
        err(f"unknown kill={kill} P={P}")

print(f"\nnodes: branch={n_branch} terminal={n_term} dead={n_dead} total={n_branch+n_term+n_dead}")
print(f"branch edges (children) counted: {edges}  [stats said branches={summ['branches']}]")
print(f"branch nodes fully recomputed (cap + children + chain-prune): {branch_nodes_checked}")
print(f"cap mismatches: {cap_mismatches}")
print(f"children-set mismatches: {children_mismatches}")
print(f"branches WITHOUT cap key (silent truncation risk): {no_cap_branches}")
print(f"recomputed global pruned_chain: {pruned_recomputed}  [stats said {summ['pruned_chain']}]")
print(f"terminals counted: {n_term}  [stats said {summ['terminals']}]")
print(f"solutions in summary: {summ['solutions']}")

if edges != summ["branches"]: err(f"edge count {edges} != stats branches {summ['branches']}")
if n_term != summ["terminals"]: err(f"terminal count {n_term} != stats {summ['terminals']}")
if pruned_recomputed != summ["pruned_chain"]:
    err(f"recomputed pruned_chain {pruned_recomputed} != stats {summ['pruned_chain']}")

# ---- sampled terminal scan/divisor coverage re-checks (random 200 + extremes) ----
print("\nsampled terminal re-verification (scan count + s ranges)...", flush=True)
random.shuffle(term_nodes)
sample = term_nodes[:200]
# force-include extremes: largest s_hi scan-mode node, plus a divisor-mode node
scan_nodes = [t for t in term_nodes if "scan" in t]
div_nodes  = [t for t in term_nodes if t.get("mode") == "divisor"]
if scan_nodes:
    sample.append(max(scan_nodes, key=lambda t: t["scan"]))
if div_nodes:
    sample.extend(div_nodes[:3])
scan_bad = 0
for t in sample:
    P = t["P"]; A = t["A"]; B = t["B"]; c = A - B; mx = P[-1]
    s_hi = t["s_hi"]
    if "scan" in t:
        cnt = sum(1 for _ in primerange(mx + 1, s_hi + 1))
        if cnt != t["scan"]:
            scan_bad += 1
            err(f"terminal scan count mismatch P={P}: stored {t['scan']} recomputed {cnt}")
print(f"sampled terminals re-verified: {len(sample)} scan-mismatches: {scan_bad}")
print(f"divisor-mode terminals in tree: {len(div_nodes)}  scan-mode: {len(scan_nodes)}")

mxscan = max((t["scan"] for t in scan_nodes), default=0)
print(f"max scan recomputed from nodes: {mxscan}  [stats max_scan={summ['max_scan']}]")

# ---- ROOT explicit checks ----
if root.get("P") != []: err(f"root P != []: {root.get('P')}")
if root.get("j") != W: err(f"root j != {W}")
root_kids = [ch["P"][-1] for ch in root.get("children", [])]
if not root_kids or root_kids[0] != 5:
    err(f"root first child prime != 5 (mx=4 start broken): {root_kids[:5]}")
else:
    print(f"\nroot children start at {root_kids[0]} (mx=4 -> primes from 5): OK; root cap={root.get('cap')}")

# ---- INDEPENDENT segmented-sieve cross-check (no sympy primerange) on sampled branch nodes ----
print("\nindependent sieve cross-check of branch children (200 sampled + max-cap node)...", flush=True)
def sieve_upto(n):
    bs = bytearray([1]) * (n + 1)
    bs[0:2] = b"\x00\x00"
    for i in range(2, int(n ** 0.5) + 1):
        if bs[i]:
            bs[i*i::i] = bytearray(len(bs[i*i::i]))
    return bs
def primes_in_interval(lo, hi):
    """independent segmented sieve over [lo, hi] inclusive"""
    if hi < lo: return []
    base = sieve_upto(int(hi ** 0.5) + 1)
    basep = [i for i in range(2, len(base)) if base[i]]
    seg = bytearray([1]) * (hi - lo + 1)
    for p in basep:
        start = max(p * p, ((lo + p - 1) // p) * p)
        for m in range(start, hi + 1, p):
            seg[m - lo] = 0
    if lo <= 1:
        for v in range(lo, min(hi, 1) + 1): seg[v - lo] = 0
    return [lo + i for i, v in enumerate(seg) if v]

cand = [r for r in branch_records if r[4] - (r[0][-1] if r[0] else 4) <= 200000]
random.shuffle(cand)
sieve_sample = cand[:200]
maxcap_rec = max(branch_records, key=lambda r: r[4])
sieve_sample.append(maxcap_rec)
sieve_bad = 0
for (P, A, B, j, cap, kids) in sieve_sample:
    mx = P[-1] if P else 4
    indep = []
    for x in primes_in_interval(mx + 1, cap):
        if A * (x - 1) ** j > B * x ** j + 2:
            if x != cap:
                err(f"sieve: first fire at {x} != stored cap {cap}, P={list(P)}")
            break
        if any((x - 1) % p == 0 for p in P):
            continue
        indep.append(x)
    if tuple(indep) != kids:
        sieve_bad += 1
        err(f"SIEVE children mismatch P={list(P)}: indep n={len(indep)} stored n={len(kids)}")
print(f"independent-sieve nodes checked: {len(sieve_sample)} (incl. max-cap node cap={maxcap_rec[4]}, P={list(maxcap_rec[0])}), mismatches: {sieve_bad}")

print("\nTOTAL ERRORS:", len(errors))
if errors:
    print("first errors:")
    for e in errors[:40]: print("  ", e)
else:
    print("CLEAN: every branch node's cap, children set, and chain-prune set reproduced exactly.")

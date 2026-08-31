"""
REFUTER 2 - step 2: independently re-solve ALL divisor-mode terminals.

Method (independent reimplementation, NOT the generator's code):
  For terminal prefix P with A=3*prod(p-1), B=2*prod(p), c=A-B>0, K=A*B+2c:
  any integer pair (s,t) with A(s-1)(t-1)=B*s*t+2 satisfies (c*s-A)(c*t-A)=K.
  Negative branch (both factors < 0) is PROVABLY empty:
     K > B^2  (since K - B^2 = c(B+2) > 0), so the larger |factor| v >= sqrt(K) > B = A-c,
     hence 0 < A-v < c and c cannot divide A-v.  -> assert empirically.
  Positive branch: u = c*s-A runs over positive divisors of K with c | (u+A) and c | (K/u + A).

  Factorization of stored K_factors is VERIFIED, not trusted:
     - product of p^e == K exactly
     - every p passes sympy isprime (BPSW) AND a custom Miller-Rabin with random bases
  A verified factorization is THE unique factorization, so divisor enumeration from it
  is provably exhaustive regardless of how the generator computed it.

  Records EVERY equation-satisfying integer pair (s,t), s<=t, s>=2 -- with NO chain filter
  and NO s>maxP filter -- so that wrong exclusions by try_pair would be caught.
"""
import json, sys, random
from math import isqrt

random.seed(20260610)

def miller_rabin(n, rounds=12):
    if n < 2: return False
    for p in (2,3,5,7,11,13,17,19,23,29,31,37):
        if n % p == 0:
            return n == p
    d = n - 1; r = 0
    while d % 2 == 0:
        d //= 2; r += 1
    for _ in range(rounds):
        a = random.randrange(2, n - 1)
        x = pow(a, d, n)
        if x == 1 or x == n - 1: continue
        for _ in range(r - 1):
            x = x * x % n
            if x == n - 1: break
        else:
            return False
    return True

from sympy import isprime

terms = []
with open("_r2b_divisor_terminals.jsonl") as f:
    for line in f:
        terms.append(json.loads(line))
print(f"loaded {len(terms)} divisor terminals", file=sys.stderr, flush=True)

anomalies = []          # any disagreement with tree
eq_pairs_total = 0      # equation-satisfying integer pairs found (any kind)
neg_branch_pass = 0     # negative-branch tuples passing residue+positivity (expect 0)
square_eq = 0           # s==t equation hits (non-squarefree; expect 0 anyway)
fact_bad = 0
tot_divs = 0
max_divs = 0

out = open("_r2b_eq_pairs.jsonl", "w")

for idx, T in enumerate(terms):
    P = T["P"]; A = T["A"]; B = T["B"]; K = T["K"]
    c = A - B
    mx = P[-1]
    # --- verify factorization ---
    fac = {int(k): v for k, v in T["K_factors"].items()}
    prod = 1
    ok = True
    for p, e in fac.items():
        prod *= p ** e
        if not isprime(p) or not miller_rabin(p):
            ok = False
            anomalies.append({"P": P, "type": "factor_not_prime", "p": p})
    if prod != K:
        ok = False
        anomalies.append({"P": P, "type": "factor_product_mismatch", "prod": prod, "K": K})
    if not ok:
        fact_bad += 1
        continue
    # --- my own divisor enumeration ---
    divs = [1]
    for p, e in fac.items():
        pe = [p ** i for i in range(e + 1)]
        divs = [d * q for d in divs for q in pe]
    nd = len(divs)
    tot_divs += nd
    if nd > max_divs: max_divs = nd
    found_mine = []
    for u in divs:
        if u * u > K:
            continue
        v = K // u
        # positive branch: s=(u+A)/c <= t=(v+A)/c
        if (u + A) % c == 0 and (v + A) % c == 0:
            s = (u + A) // c
            t = (v + A) // c
            # algebra must close exactly
            assert A * (s - 1) * (t - 1) == B * s * t + 2, (P, s, t)
            if s == t:
                square_eq += 1
                anomalies.append({"P": P, "type": "square_pair", "s": s})
            else:
                eq_pairs_total += 1
                rec = {"P": P, "s": s, "t": t,
                       "s_prime": bool(isprime(s)), "t_prime": bool(isprime(t)),
                       "s_gt_mx": s > mx,
                       "chain_ok": all((s - 1) % p != 0 for p in P)
                                   and all((t - 1) % p != 0 for p in P)
                                   and (t - 1) % s != 0}
                found_mine.append(rec)
                out.write(json.dumps(rec) + "\n")
        # negative branch (provably empty; count residue+positivity passes)
        if A > u and A > v and (A - u) % c == 0 and (A - v) % c == 0:
            neg_branch_pass += 1
            anomalies.append({"P": P, "type": "neg_branch_fired", "u": u, "v": v})
    # --- compare with tree ---
    tree_found = T.get("found", [])
    mine_valid = [r for r in found_mine
                  if r["s_prime"] and r["t_prime"] and r["s_gt_mx"] and r["chain_ok"]]
    tf = sorted([tuple(x) for x in tree_found])
    mf = sorted([(r["s"], r["t"]) for r in mine_valid])
    if tf != mf:
        anomalies.append({"P": P, "type": "FOUND_MISMATCH", "tree": tf, "mine": mf})
        print(f"*** FOUND_MISMATCH at P={P}: tree={tf} mine={mf}", file=sys.stderr, flush=True)
    # any equation pair that is prime-prime but excluded by chain/mx -> loud anomaly
    for r in found_mine:
        if r["s_prime"] and r["t_prime"] and not (r["s_gt_mx"] and r["chain_ok"]):
            anomalies.append({"P": P, "type": "PRIME_PAIR_EXCLUDED", "rec": r})
            print(f"*** PRIME_PAIR_EXCLUDED at P={P}: {r}", file=sys.stderr, flush=True)
    if (idx + 1) % 10000 == 0:
        print(f"  ..{idx+1}/{len(terms)} divs_avg={tot_divs/(idx+1):.0f} eq_pairs={eq_pairs_total} neg={neg_branch_pass}", file=sys.stderr, flush=True)

out.close()
summary = {
    "terminals_checked": len(terms),
    "fact_bad": fact_bad,
    "total_divisors_enumerated": tot_divs,
    "max_divisors": max_divs,
    "eq_pairs_total": eq_pairs_total,
    "square_eq": square_eq,
    "neg_branch_pass": neg_branch_pass,
    "anomalies": len(anomalies),
}
print(json.dumps(summary, indent=1))
with open("_r2b_resolve_all_summary.json", "w") as f:
    json.dump({"summary": summary, "anomalies": anomalies[:200]}, f, indent=1)

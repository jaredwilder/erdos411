"""
REFUTER 2 - step 3: deep spot-audit of a seeded random sample of 500 divisor terminals
PLUS the 50 with the largest K (dedup), each re-solved INDEPENDENTLY:

  1. Recompute A, B, c, K, s_hi from P alone (ignore stored values; compare).
  2. Fresh factorization: sympy factorint called anew (independent of stored K_factors);
     verified by multiply-back and primality of each factor; compared to stored dict.
  3. WINDOW-SCAN re-solve (method independent of any factorization):
       Bound proof: any solution has den = c*s - A with 0 < den and den*(c*t-A) = K,
       and t >= s  =>  den <= sqrt(K). So s lies in (A/c, (A+sqrt(K))/c].
       Iterate PRIMES s in that window via sympy.primerange; t = (A*s-A+2)/den when
       integral; record every hit (no chain filter). Done when window <= WINDOW_CAP.
  4. Divisor re-solve from the fresh factorization (positive branch; negative branch
     counted, provably empty).
  5. Compare: window-scan hits == divisor-method prime-s hits == tree found list.
"""
import json, sys, time
import random
from math import isqrt
from sympy import isprime, primerange, factorint

WINDOW_CAP = 25_000_000
SEED = 411

terms = []
with open("_r2b_divisor_terminals.jsonl") as f:
    for line in f:
        terms.append(json.loads(line))

rng = random.Random(SEED)
sample_idx = set(rng.sample(range(len(terms)), 500))
by_K = sorted(range(len(terms)), key=lambda i: terms[i]["K"], reverse=True)
top50 = set(by_K[:50])
audit_idx = sorted(sample_idx | top50)
print(f"sample={len(sample_idx)} top50={len(top50)} union={len(audit_idx)}", flush=True)

stats = {"audited": 0, "window_scanned": 0, "window_skipped_too_big": 0,
         "stored_value_mismatch": 0, "fact_mismatch": 0,
         "eq_hits_window": 0, "eq_hits_divisor": 0, "neg_branch": 0,
         "tree_disagree": 0}
disagreements = []
t0 = time.time()

for n_done, i in enumerate(audit_idx):
    T = terms[i]
    P = T["P"]
    mx = P[-1]
    # 1. recompute everything from P alone
    A = 3
    for p in P: A *= (p - 1)
    B = 2
    for p in P: B *= p
    c = A - B
    assert c > 0
    K = A * B + 2 * c
    s_hi = (A + isqrt(K)) // c + 2
    if A != T["A"] or B != T["B"] or K != T["K"] or s_hi != T["s_hi"]:
        stats["stored_value_mismatch"] += 1
        disagreements.append({"P": P, "type": "stored_values"})
    # 2. fresh factorization
    fac = factorint(K)
    prod = 1
    for p, e in fac.items():
        prod *= p ** e
        assert isprime(p), (P, p)
    assert prod == K, (P, "fresh factorization product mismatch")
    stored = {int(k): v for k, v in T["K_factors"].items()}
    if dict(fac) != stored:
        stats["fact_mismatch"] += 1
        disagreements.append({"P": P, "type": "factorization", "fresh": {str(k): v for k, v in fac.items()}, "stored": T["K_factors"]})
    # 3. window scan (independent method)
    lo = A // c              # den>0 requires s >= lo+1
    win = s_hi - lo
    window_hits = None
    if win <= WINDOW_CAP:
        window_hits = []
        Am2 = A - 2
        for s in primerange(lo + 1, s_hi + 1):
            den = c * s - A
            if den <= 0: continue
            num = A * s - Am2
            if num % den: continue
            t = num // den
            if t >= s:
                assert A * (s - 1) * (t - 1) == B * s * t + 2
                window_hits.append((s, t, bool(isprime(t))))
        stats["window_scanned"] += 1
        stats["eq_hits_window"] += len(window_hits)
    else:
        stats["window_skipped_too_big"] += 1
    # 4. divisor re-solve from FRESH factorization
    divs = [1]
    for p, e in fac.items():
        pe = [p ** j for j in range(e + 1)]
        divs = [d * q for d in divs for q in pe]
    div_hits = []
    for u in divs:
        if u * u > K: continue
        v = K // u
        if (u + A) % c == 0 and (v + A) % c == 0:
            s = (u + A) // c
            t = (v + A) // c
            if s <= t:
                assert A * (s - 1) * (t - 1) == B * s * t + 2
                div_hits.append((s, t, bool(isprime(s)), bool(isprime(t))))
        if A > u and A > v and (A - u) % c == 0 and (A - v) % c == 0:
            stats["neg_branch"] += 1
            disagreements.append({"P": P, "type": "neg_branch", "u": u, "v": v})
    stats["eq_hits_divisor"] += len(div_hits)
    # 5. cross-method + tree comparison
    div_prime_s = sorted((s, t) for (s, t, sp, tp) in div_hits if sp and s != t)
    if window_hits is not None:
        wh = sorted((s, t) for (s, t, tp) in window_hits if s != t)
        if wh != div_prime_s:
            disagreements.append({"P": P, "type": "METHOD_DISAGREE", "window": wh, "divisor": div_prime_s})
            print(f"*** METHOD_DISAGREE P={P} window={wh} divisor={div_prime_s}", flush=True)
    # tree claims found=[]; my full-valid hits:
    full_valid = []
    for (s, t, sp, tp) in div_hits:
        if sp and tp and s != t and s > mx:
            chain = all((s - 1) % p != 0 for p in P) and all((t - 1) % p != 0 for p in P) and (t - 1) % s != 0
            full_valid.append((s, t, chain))
    tree_found = sorted(tuple(x) for x in T.get("found", []))
    mine = sorted((s, t) for (s, t, chain) in full_valid if chain)
    if mine != tree_found:
        stats["tree_disagree"] += 1
        disagreements.append({"P": P, "type": "TREE_DISAGREE", "tree": tree_found, "mine": mine})
        print(f"*** TREE_DISAGREE P={P} tree={tree_found} mine={mine}", flush=True)
    # prime pairs excluded only by chain/mx would be kernel contradictions:
    for (s, t, sp, tp) in div_hits:
        if sp and tp and s != t and not (s > mx and all((s-1)%p for p in P) and all((t-1)%p for p in P) and (t-1)%s):
            disagreements.append({"P": P, "type": "PRIME_PAIR_EXCLUDED", "s": s, "t": t})
            print(f"*** PRIME_PAIR_EXCLUDED P={P} ({s},{t})", flush=True)
    stats["audited"] += 1
    if (n_done + 1) % 25 == 0:
        print(f"  ..{n_done+1}/{len(audit_idx)} t={time.time()-t0:.0f}s {stats}", flush=True)

print(json.dumps(stats, indent=1))
with open("_r2b_sample_deep_summary.json", "w") as f:
    json.dump({"stats": stats, "disagreements": disagreements[:300]}, f, indent=1)
print(f"done in {time.time()-t0:.0f}s")

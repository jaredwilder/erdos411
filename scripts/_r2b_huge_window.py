"""
REFUTER 2 - step 4: the 113 divisor terminals with solution window > 1e9
(the cases MOST dependent on divisor logic; direct scan infeasible).
Fresh factorint of K (independent of stored), verified, full divisor re-solve,
both branches, compare to tree found=[].
"""
import json, time
from math import isqrt
from sympy import isprime, factorint

terms = [json.loads(l) for l in open("_r2b_divisor_terminals.jsonl")]
huge = []
for T in terms:
    A, B = T["A"], T["B"]
    c = A - B
    K = T["K"]
    win = (A + isqrt(K)) // c + 2 - A // c
    if win > 10**9:
        huge.append((win, T))
huge.sort(key=lambda x: -x[0])
print(f"huge-window terminals: {len(huge)}; largest window = {huge[0][0]:,}")

bad = 0
t0 = time.time()
for n, (win, T) in enumerate(huge):
    P, A, B, K = T["P"], T["A"], T["B"], T["K"]
    c = A - B
    mx = P[-1]
    fac = factorint(K)   # fresh, independent of stored
    prod = 1
    for p, e in fac.items():
        assert isprime(p)
        prod *= p ** e
    assert prod == K
    stored = {int(k): v for k, v in T["K_factors"].items()}
    assert dict(fac) == stored, (P, "factorization differs from stored")
    divs = [1]
    for p, e in fac.items():
        pe = [p ** i for i in range(e + 1)]
        divs = [d * q for d in divs for q in pe]
    hits = []
    neg = 0
    for u in divs:
        if u * u > K: continue
        v = K // u
        if (u + A) % c == 0 and (v + A) % c == 0:
            s, t = (u + A) // c, (v + A) // c
            assert A * (s - 1) * (t - 1) == B * s * t + 2
            if isprime(s) and isprime(t) and s != t and s > mx:
                hits.append((s, t))
        if A > u and A > v and (A - u) % c == 0 and (A - v) % c == 0:
            neg += 1
    tree_found = sorted(tuple(x) for x in T.get("found", []))
    if sorted(hits) != tree_found or neg:
        bad += 1
        print(f"*** DISAGREE P={P} win={win:,} mine={sorted(hits)} tree={tree_found} neg={neg}")
print(f"checked {len(huge)} huge-window terminals, disagreements={bad}, elapsed={time.time()-t0:.0f}s")

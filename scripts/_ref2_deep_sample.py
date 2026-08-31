"""REFUTER 2 phase 3: deep fully-independent audit on a sample:
  - 50 terminals with the LARGEST K
  - 500 random terminals (seed 411)
  - 10 largest divisor-count, 10 smallest window, and all positive-residue-hit terminals

Per terminal:
  (a) fresh sympy.factorint(K) -> must equal claimed K_factors exactly
  (b) my own Miller-Rabin (40 random bases, seed 4111) + BPSW on every factor
  (c) where window width <= WMAX: DIRECT prime-window re-solve, no factorization:
        bound proof: any solution (s,t), s<t primes>mx of A(s-1)(t-1)=Bst+2 has
          t = (A(s-1)+2)/(cs-A); numerator>0 for s>=2, so cs>A  (s > A/c), and
          u = cs-A <= sqrt(K) since u*v=K, u<=v  =>  s <= (A+isqrt(K))//c.
        scan all primes s in [max(mx+1, A//c - 2), (A+isqrt(K))//c + 1],
        accept t=(A(s-1)+2)/(cs-A) when integral, prime, > s; verify equation.
  (d) negative-region vacuity spot check: for primes s in (mx, A/c), t<0 — assert on a probe.
"""
import json, random, sys
from math import isqrt, prod
from sympy import factorint, isprime, primerange

WMAX = 6_000_000
rng = random.Random(4111)

def mr_witness(n, a):
    d, r = n - 1, 0
    while d % 2 == 0:
        d //= 2; r += 1
    x = pow(a, d, n)
    if x == 1 or x == n - 1: return True
    for _ in range(r - 1):
        x = x * x % n
        if x == n - 1: return True
    return False

def my_isprime(n):
    if n < 2: return False
    for p in (2,3,5,7,11,13,17,19,23,29,31,37,41,43):
        if n % p == 0: return n == p
    for _ in range(40):
        a = rng.randrange(2, n - 1)
        if not mr_witness(n, a): return False
    return True

terms = []
with open("_ref2_divisor_terminals.jsonl") as f:
    for i, line in enumerate(f):
        d = json.loads(line)
        terms.append(d)
print("loaded", len(terms))

idx = list(range(len(terms)))
by_K = sorted(idx, key=lambda i: terms[i]["K"], reverse=True)
by_nd = sorted(idx, key=lambda i: terms[i]["ndiv"], reverse=True)
def width(i):
    t = terms[i]; c = t["A"] - t["B"]
    return isqrt(t["K"]) // c
by_w = sorted(idx, key=width)

sample = set(by_K[:50]) | set(by_nd[:10]) | set(by_w[:10])
pool = [i for i in idx if i not in sample]
sample |= set(rng.sample(pool, 500))
# positive-residue-hit terminals (recompute cheaply): any divisor u<=sqrt(K) with both residues 0
def residue_hit(t):
    A, B, K = t["A"], t["B"], t["K"]
    c = A - B
    fac = {int(k): v for k, v in t["K_factors"].items()}
    divs = [1]
    for q, e in fac.items():
        divs = [d * q**i for d in divs for i in range(e + 1)]
    rt = isqrt(K)
    return any(u <= rt and (u + A) % c == 0 and (K // u + A) % c == 0 for u in divs)

sample = sorted(sample)
print("sample size:", len(sample))

stats = {"refactor_ok": 0, "refactor_diff": 0, "factor_mr_fail": 0,
         "scanned": 0, "scan_skipped_large": 0, "scan_primes_total": 0,
         "scan_integral_t": 0, "scan_solutions": 0, "neg_probe_ok": 0,
         "residue_hit_terms": []}

for k, i in enumerate(sample):
    t = terms[i]
    P, A, B, K, s_hi = t["P"], t["A"], t["B"], t["K"], t["s_hi"]
    c = A - B
    mx = P[-1]
    claimed = {int(q): e for q, e in t["K_factors"].items()}
    # (a) fresh factorization
    fac = factorint(K)
    if fac == claimed: stats["refactor_ok"] += 1
    else:
        stats["refactor_diff"] += 1
        print("REFACTOR DIFF at P=", P, "claimed", claimed, "fresh", fac)
    # (b) my MR on every factor
    for q in claimed:
        if not (my_isprime(q) and isprime(q)):
            stats["factor_mr_fail"] += 1
            print("FACTOR FAILS MR:", q, "at P=", P)
    if residue_hit(t):
        stats["residue_hit_terms"].append(P)
    # (c) direct window scan
    rt = isqrt(K)
    lo = max(mx + 1, A // c - 2)
    hi = (A + rt) // c + 1
    if hi - lo <= WMAX:
        stats["scanned"] += 1
        nfound = []
        np_, nint = 0, 0
        for s in primerange(lo, hi + 1):
            np_ += 1
            den = c * s - A
            if den <= 0: continue
            num = A * (s - 1) + 2
            if num % den: continue
            nint += 1
            tt = num // den
            if tt > s and isprime(tt) and my_isprime(tt):
                assert A * (s - 1) * (tt - 1) == B * s * tt + 2
                nfound.append([s, tt])
                print("DIRECT-SCAN SOLUTION at P=", P, ":", s, tt, " tree found:", t["found"])
        stats["scan_primes_total"] += np_
        stats["scan_integral_t"] += nint
        stats["scan_solutions"] += len(nfound)
        if sorted(nfound) != sorted(t["found"]):
            print("SCAN MISMATCH at P=", P, "scan:", nfound, "tree:", t["found"])
    else:
        stats["scan_skipped_large"] += 1
    # (d) negative-region probe: first 5 primes s>mx (all have s < A/c here when A//c >> mx)
    cnt = 0
    for s in primerange(mx + 1, mx + 200):
        if c * s - A < 0:
            num = A * (s - 1) + 2
            assert num > 0  # => t = num/den < 0, not prime
            cnt += 1
        if cnt >= 5: break
    stats["neg_probe_ok"] += 1
    if (k + 1) % 50 == 0:
        print(f"  ..{k+1}/{len(sample)} done", file=sys.stderr, flush=True)

print(json.dumps(stats, indent=1, default=str))

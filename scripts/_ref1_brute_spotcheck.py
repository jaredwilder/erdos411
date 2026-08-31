"""REFUTER-1 spot-check: brute-force full-window integer scan on a sample of
DIVISOR-mode terminals, validating the factorization path against exhaustive
arithmetic.  For each sampled terminal we scan EVERY integer s in
[s_lo, s_hi] (no factorization, no divisor enumeration) and compare the
solution set to the recorded one (expected empty).
"""
import hashlib, json, os, sys, time
from math import isqrt

from sympy import isprime

here = os.path.dirname(os.path.abspath(__file__))
MAXW = 6_000_000
NSAMPLE = 25

src = sys.argv[1] if len(sys.argv) > 1 else "_ref1_w7_noncascade.jsonl"

cands = []
with open(os.path.join(here, src)) as f:
    for line in f:
        r = json.loads(line)
        if r["m"] != "div":
            continue
        P = r["P"]
        A, B = 3, 2
        for p in P:
            A *= p - 1
            B *= p
        c = A - B
        K = A * B + 2 * c
        rt = isqrt(K)
        s_lo = max(P[-1], A // c) + 1
        s_hi = (A + rt) // c + 1
        wdt = s_hi - s_lo + 1
        if wdt <= MAXW:
            cands.append((P, A, B, c, K, s_lo, s_hi, wdt, r["f"]))

# deterministic pseudo-random sample: 10 smallest windows + spread by hash
cands.sort(key=lambda x: x[7])
sample = cands[:10]
rest = sorted(cands[10:],
              key=lambda x: hashlib.sha256(str(x[0]).encode()).hexdigest())
sample += rest[:NSAMPLE - 10]

print(f"div-mode terminals with window <= {MAXW}: {len(cands)}; "
      f"checking {len(sample)}")
bad = 0
for P, A, B, c, K, s_lo, s_hi, wdt, recorded in sample:
    t0 = time.time()
    hits = []
    for s in range(s_lo, s_hi + 1):
        den = c * s - A
        if den <= 0:
            continue
        num = A * (s - 1) + 2
        if num % den:
            continue
        t = num // den
        if t <= s:
            continue
        if isprime(s) and isprime(t):
            assert A * (s - 1) * (t - 1) == B * s * t + 2
            hits.append([s, t])
    match = (hits == [] and recorded == []) or \
            (sorted(hits) == sorted([h["primes"][-2:] for h in recorded]))
    if not match:
        bad += 1
    print(f"P={P} w={wdt} brute={hits} recorded={recorded} "
          f"{'OK' if match else 'MISMATCH'} ({time.time()-t0:.1f}s)")
print("SPOTCHECK", "PASS" if bad == 0 else f"FAIL ({bad})")

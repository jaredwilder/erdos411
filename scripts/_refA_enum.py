#!/usr/bin/env python3
"""REFUTER-1 (fresh, independent) re-enumeration of the omega-tree for 3*phi(n) = 2n+2.

Written from the node math alone (NOT copied from omega_tree_enumerator.py).

Math (independently re-derived; n squarefree, odd, coprime to 3, chain-free, so
n = p1<...<pw distinct primes >= 5):
  prefix P, A = 3*prod(p-1), B = 2*prod(p), c = A - B.
  * dead:  c <= 0  => no completion (prod(q-1) < prod(q) strictly).
  * child-alive lower bound: next prime q must have c*q > A (else child dead).
  * cap (j remaining, all >= x): infeasible when A*(x-1)^j > B*x^j + 2.
    Feasibility A*(1-1/x)^j - 2/x^j <= B is monotone increasing in x => bisect the
    largest feasible x exactly in integers.
  * terminal (j == 2): A(s-1)(t-1) = B*s*t + 2 with maxP < s < t prime.
      t = (A(s-1)+2)/(c*s-A); positivity of t forces c*s > A  (so the "negative
      branch" (c*s<A, c*t<A) is PROVABLY EMPTY: numerator A(s-1)+2 > 0 => t < 0).
      s <= t  <=>  c*s^2 - 2*A*s + (A-2) <= 0  => exact integer s_hi.
      Identity c*(A(s-1)+2) = A*(c*s-A) + K with K = A*B + 2*c, hence
      t integer  <=>  d := c*s-A divides K  AND  c | (A + K/d), t = (A+K/d)/c.
  * chain-free (kernel-proven property of solutions): when extending the prefix by
    q, require (q-1) % p != 0 for all p in P.  Applied at BRANCH levels only; at
    terminals we deliberately do NOT chain-filter, so even a (kernel-impossible)
    chain-violating equation solution would be reported.

Implementation choices (deliberately different from the project's generator):
  * own numpy segmented sieve (base 6.4e6 => windows valid to 4.096e13);
  * direct t-formula scan with exact int arithmetic whenever the s-window is
    <= --direct-limit (default 6e6) wide; divisor form only beyond;
  * own Brent-rho factorizer (+ trial division < 1e5), every factorization
    verified by exact reassembly and BPSW-primality of each factor;
  * optional dual audit: divisor-mode terminals with moderate windows are also
    solved by direct scan and the candidate sets compared.
"""
import sys, os, json, time, argparse, random
from math import isqrt, gcd, prod
import numpy as np
from sympy import isprime

BASE_LIMIT = 6_400_000
_BP = None


def base_primes():
    global _BP
    if _BP is None:
        n = BASE_LIMIT
        s = np.ones((n >> 1) + 1, dtype=bool)  # index i <-> odd number 2i+1
        s[0] = False
        for p in range(3, isqrt(n) + 1, 2):
            if s[p >> 1]:
                s[(p * p) >> 1 :: p] = False
        odds = (np.flatnonzero(s).astype(np.int64) << 1) + 1
        odds = odds[odds <= n]
        _BP = np.concatenate((np.array([2], dtype=np.int64), odds))
    return _BP


def primes_in(lo, hi):
    """All primes in [lo, hi] as a python list (own segmented sieve)."""
    if hi < lo:
        return []
    bp = base_primes()
    if hi <= BASE_LIMIT:
        i = int(np.searchsorted(bp, lo, "left"))
        j = int(np.searchsorted(bp, hi, "right"))
        return bp[i:j].tolist()
    if hi > BASE_LIMIT * BASE_LIMIT:
        raise ValueError(f"window hi={hi} beyond base^2")
    lo = max(lo, 2)
    n = hi - lo + 1
    seg = np.ones(n, dtype=bool)
    r = isqrt(hi)
    jmax = int(np.searchsorted(bp, r, "right"))
    for p in bp[:jmax].tolist():
        st = max(p * p, ((lo + p - 1) // p) * p)
        if st > hi:
            continue
        seg[st - lo :: p] = False
    return (np.flatnonzero(seg) + lo).tolist()


def cap_max(A, B, j):
    """Largest x with A*(x-1)**j <= B*x**j + 2 (exact ints); 4 if none >= 5."""
    def ok(x):
        return A * (x - 1) ** j <= B * x ** j + 2
    if not ok(5):
        return 4
    hi = 10
    while ok(hi):
        hi <<= 1
    lo = 5
    while hi - lo > 1:
        mid = (lo + hi) >> 1
        if ok(mid):
            lo = mid
        else:
            hi = mid
    return lo


# ----------------- own factorizer (Brent rho, verified) -----------------
def _brent(n, rng):
    if n % 2 == 0:
        return 2
    while True:
        y = rng.randrange(1, n)
        cc = rng.randrange(1, n)
        m = 128
        g = r = q = 1
        x = ys = y
        while g == 1:
            x = y
            for _ in range(r):
                y = (y * y + cc) % n
            k = 0
            while k < r and g == 1:
                ys = y
                for _ in range(min(m, r - k)):
                    y = (y * y + cc) % n
                    q = q * abs(x - y) % n
                g = gcd(q, n)
                k += m
            r <<= 1
        if g != n:
            return g
        # backtrack
        g = 1
        while g == 1:
            ys = (ys * ys + cc) % n
            g = gcd(abs(x - ys), n)
        if g != n:
            return g
        # retry with new params


def factorize(n0):
    """Full prime factorization, self-verified (reassembly + BPSW factors)."""
    fac = {}
    n = n0
    bp = base_primes()
    for p in bp[:9592].tolist():  # primes < 1e5
        if p * p > n:
            break
        while n % p == 0:
            fac[p] = fac.get(p, 0) + 1
            n //= p
    rng = random.Random(0xE6411 ^ (n0 & 0xFFFFFFFF))
    stack = [n] if n > 1 else []
    while stack:
        m = stack.pop()
        if m == 1:
            continue
        if isprime(m):
            fac[m] = fac.get(m, 0) + 1
            continue
        d = _brent(m, rng)
        stack.append(d)
        stack.append(m // d)
    assert prod(p ** e for p, e in fac.items()) == n0, "factorization reassembly failed"
    for p in fac:
        assert isprime(p)
    return fac


def divisors_upto(fac, r):
    """All divisors <= r of the number with factorization fac."""
    divs = [1]
    for p, e in fac.items():
        cur = list(divs)
        pk = 1
        for _ in range(e):
            pk *= p
            if pk > r:
                break
            for d in cur:
                v = d * pk
                if v <= r:
                    divs.append(v)
    return divs


# ----------------------------- terminal -----------------------------
def new_ctr():
    return {
        "terminals": 0, "empty_window": 0, "direct": 0, "divisor": 0,
        "direct_primes": 0, "direct_cells": 0, "max_direct_window": 0,
        "dual_audits": 0, "dual_mismatch": 0,
    }


def solve_terminal(P, A, B, ctr, sols, direct_limit, dual_mod=0):
    c = A - B
    assert c > 0
    mx = P[-1]
    K = A * B + 2 * c
    s_lo = max(A // c, mx) + 1
    rK = isqrt(K)
    s_hi = (A + rK) // c
    while c * (s_hi + 1) ** 2 - 2 * A * (s_hi + 1) + (A - 2) <= 0:
        s_hi += 1
    while s_hi >= s_lo and c * s_hi * s_hi - 2 * A * s_hi + (A - 2) > 0:
        s_hi -= 1
    ctr["terminals"] += 1
    if s_hi < s_lo:
        ctr["empty_window"] += 1
        return
    L = s_hi - s_lo

    def record(s, t, mode):
        rec = {
            "P": list(P), "s": s, "t": t, "mode": mode,
            "chain_ok": (all((s - 1) % p != 0 for p in P)
                         and all((t - 1) % p != 0 for p in list(P) + [s])),
        }
        sols.append(rec)

    def direct_hits():
        hits = []
        for s in primes_in(s_lo, s_hi):
            d = c * s - A
            if K % d:
                continue
            hits.append(s)
        return hits

    def divisor_hits(fac):
        hits = []
        for d in divisors_upto(fac, rK):
            if (A + d) % c:
                continue
            s = (A + d) // c
            if s < s_lo or s > s_hi:
                continue
            if not isprime(s):
                continue
            hits.append(s)
        return sorted(hits)

    def finish(s):
        d = c * s - A
        e = K // d
        if (A + e) % c:
            return
        t = (A + e) // c
        if t <= s:
            return
        if not isprime(t):
            return
        if A * (s - 1) * (t - 1) == B * s * t + 2:
            record(s, t, cur_mode)

    if L <= direct_limit and s_hi <= BASE_LIMIT * BASE_LIMIT:
        ctr["direct"] += 1
        ctr["direct_cells"] += L
        ctr["max_direct_window"] = max(ctr["max_direct_window"], L)
        cur_mode = "direct"
        ps = primes_in(s_lo, s_hi)
        ctr["direct_primes"] += len(ps)
        for s in ps:
            d = c * s - A
            if K % d:
                continue
            finish(s)
    else:
        ctr["divisor"] += 1
        cur_mode = "divisor"
        fac = factorize(K)
        dh = divisor_hits(fac)
        for s in dh:
            finish(s)
        # dual audit: re-solve by direct scan and compare prime-s hit sets
        if dual_mod and (L <= 25_000_000) and (s_hi <= BASE_LIMIT * BASE_LIMIT) \
                and (hash(P) % dual_mod == 0):
            ctr["dual_audits"] += 1
            ddh = [s for s in direct_hits() if isprime(s)]
            if sorted(ddh) != dh:
                ctr["dual_mismatch"] += 1
                sols.append({"P": list(P), "ANOMALY": "dual_mismatch",
                             "direct": ddh, "divisor": dh})


# ------------------------- tree walk (phase 1) -------------------------
def collect_j3(P, A, B, j, out, ctr):
    """Collect all alive chain-free j==3 nodes (A>B guaranteed by caller)."""
    if j == 3:
        out.append((tuple(P), A, B))
        return
    c = A - B
    mx = P[-1] if P else 4
    lo = max(mx, A // c) + 1
    cap = cap_max(A, B, j)
    for q in primes_in(lo, cap):
        if any((q - 1) % p == 0 for p in P):
            ctr["chain_pruned_internal"] += 1
            continue
        ctr["internal_branches"] += 1
        collect_j3(P + [q], A * (q - 1), B * q, j - 1, out, ctr)


def expand_j3(node):
    """j==3 node -> chain-free terminal jobs (P5, A5, B5), plus prune count."""
    (P, A, B) = node
    c = A - B
    mx = P[-1] if P else 4
    lo = max(mx, A // c) + 1
    cap = cap_max(A, B, 3)
    jobs, pruned = [], 0
    for q in primes_in(lo, cap):
        if any((q - 1) % p == 0 for p in P):
            pruned += 1
            continue
        jobs.append((P + (q,), A * (q - 1), B * q))
    return jobs, pruned, lo, cap


# ----------------------------- workers -----------------------------
_G = {}


def _init_worker(direct_limit, dual_mod):
    base_primes()
    _G["dl"] = direct_limit
    _G["dual"] = dual_mod


def _work_chunk(chunk):
    ctr = new_ctr()
    sols = []
    for (P, A, B) in chunk:
        solve_terminal(P, A, B, ctr, sols, _G["dl"], _G["dual"])
    return ctr, sols


def merge(dst, src):
    for k, v in src.items():
        if k.startswith("max_"):
            dst[k] = max(dst[k], v)
        else:
            dst[k] += v


# ------------------------------ driver ------------------------------
def selftest():
    from sympy import primerange
    bp = base_primes()
    assert int(bp[0]) == 2 and int(bp[-1]) <= BASE_LIMIT
    for (lo, hi) in [(1, 10000), (999000, 1000100), (6_399_000, 6_400_000),
                     (10**7, 10**7 + 30000), (10**12, 10**12 + 30000),
                     (4 * 10**13 - 30000, 4 * 10**13)]:
        mine = primes_in(lo, hi)
        ref = list(primerange(lo, hi + 1))
        assert mine == ref, f"sieve mismatch on [{lo},{hi}]"
    rng = random.Random(7)
    for _ in range(25):
        n = 1
        for _ in range(rng.randrange(2, 6)):
            n *= rng.randrange(10**3, 10**13)
        fac = factorize(n)
        assert prod(p**e for p, e in fac.items()) == n
    # exact cap sanity vs brute force
    for (A, B, j) in [(3, 2, 7), (12, 10, 6), (72, 70, 5), (2592, 2590, 4),
                      (3359232, 3359230, 3)]:
        cm = cap_max(A, B, j)
        assert A * (cm - 1) ** j <= B * cm ** j + 2
        assert A * cm ** j > B * (cm + 1) ** j + 2 or True  # monotone checked below
        assert not (A * (cm + 1 - 1) ** j <= B * (cm + 1) ** j + 2)
    print("selftest OK", flush=True)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--omega", type=int, default=7)
    ap.add_argument("--procs", type=int, default=1)
    ap.add_argument("--direct-limit", type=int, default=6_000_000)
    ap.add_argument("--exclude-prefix", type=str, default="")
    ap.add_argument("--restrict-prefix", type=str, default="")
    ap.add_argument("--p5-lo", type=int, default=0)
    ap.add_argument("--p5-hi", type=int, default=0)
    ap.add_argument("--p5-step", type=int, default=1)
    ap.add_argument("--p5-offset", type=int, default=0)
    ap.add_argument("--dual-mod", type=int, default=0)
    ap.add_argument("--chunk", type=int, default=0)
    ap.add_argument("--out", type=str, default="")
    ap.add_argument("--selftest", action="store_true")
    args = ap.parse_args()
    if args.selftest:
        selftest()
        return

    t0 = time.time()
    base_primes()
    ctr = new_ctr()
    ctr["chain_pruned_internal"] = 0
    ctr["internal_branches"] = 0
    ctr["chain_pruned_p5"] = 0
    sols = []

    j3 = []
    collect_j3([], 3, 2, args.omega, j3, ctr)
    print(f"[phase1] j3-nodes={len(j3)} internal_branches={ctr['internal_branches']} "
          f"chain_pruned={ctr['chain_pruned_internal']} t={time.time()-t0:.1f}s", flush=True)

    if args.restrict_prefix:
        want = tuple(int(x) for x in args.restrict_prefix.split(","))
        sel = [n for n in j3 if n[0] == want]
        assert sel, f"restrict prefix {want} not an alive j3 node"
        j3 = sel
    if args.exclude_prefix:
        drop = tuple(int(x) for x in args.exclude_prefix.split(","))
        n0 = len(j3)
        j3 = [n for n in j3 if n[0] != drop]
        assert len(j3) == n0 - 1, f"exclude prefix {drop} was not present exactly once"

    jobs = []
    coverage = []
    for node in j3:
        njobs, pruned, lo, cap = expand_j3(node)
        ctr["chain_pruned_p5"] += pruned
        if args.restrict_prefix:
            if args.p5_lo:
                njobs = [jb for jb in njobs if jb[0][-1] >= args.p5_lo]
            if args.p5_hi:
                njobs = [jb for jb in njobs if jb[0][-1] <= args.p5_hi]
            if args.p5_step > 1:
                njobs = njobs[args.p5_offset::args.p5_step]
        coverage.append({"P": list(node[0]), "lo": lo, "cap": cap,
                         "jobs": len(njobs), "chain_pruned": pruned})
        jobs.extend(njobs)
    print(f"[phase2] terminal jobs={len(jobs)} t={time.time()-t0:.1f}s", flush=True)

    if args.procs <= 1 or len(jobs) < 64:
        _init_worker(args.direct_limit, args.dual_mod)
        c2, s2 = _work_chunk(jobs)
        merge(ctr, c2)
        sols.extend(s2)
    else:
        import multiprocessing as mp
        csz = args.chunk or max(8, min(300, len(jobs) // (args.procs * 12) or 8))
        chunks = [jobs[i:i + csz] for i in range(0, len(jobs), csz)]
        random.Random(1).shuffle(chunks)
        done = 0
        with mp.Pool(args.procs, initializer=_init_worker,
                     initargs=(args.direct_limit, args.dual_mod)) as pool:
            for c2, s2 in pool.imap_unordered(_work_chunk, chunks):
                merge(ctr, c2)
                sols.extend(s2)
                done += 1
                if done % 20 == 0 or done == len(chunks):
                    print(f"  [{done}/{len(chunks)}] terminals={ctr['terminals']} "
                          f"direct={ctr['direct']} divisor={ctr['divisor']} "
                          f"sols={len(sols)} t={time.time()-t0:.1f}s", flush=True)

    out = {
        "refuter": "A-fresh-independent",
        "omega": args.omega,
        "args": vars(args),
        "elapsed_sec": round(time.time() - t0, 1),
        "j3_nodes": len(j3),
        "jobs": len(jobs),
        "counters": ctr,
        "solutions": sols,
        "coverage": coverage,
    }
    txt = json.dumps(out)
    if args.out:
        with open(args.out, "w") as f:
            f.write(txt)
    print(json.dumps({k: out[k] for k in
                      ("omega", "elapsed_sec", "j3_nodes", "jobs", "counters")}), flush=True)
    print("SOLUTIONS:", json.dumps(sols), flush=True)


if __name__ == "__main__":
    main()

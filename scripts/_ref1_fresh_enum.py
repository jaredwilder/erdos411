"""
REFUTER-1: fully independent re-enumeration of the omega-tree for 3*phi(n) = 2n+2.

Written from the node math only (NOT copied from omega_tree_enumerator.py).

Kernel-proven facts taken as given:
  - any solution n is odd, coprime to 3, squarefree  => n = p1<...<pw, distinct primes >= 5
  - chain-free: no prime r | n divides s-1 for another prime s | n

Node (prefix P sorted ascending, j remaining primes, all > max P):
  A = 3*prod_{p in P}(p-1),  B = 2*prod_{p in P} p,  c = A - B
  Remaining primes x1<...<xj must satisfy  A*prod(xi-1) = B*prod(xi) + 2.

Pruning facts (each proved here, independently of the project's code):
  (1) alive requires A > B:
      A*prod(xi-1) = B*prod(xi)+2 > B*prod(xi)  and  prod(xi-1) < prod(xi)
      together force A/B > prod(xi/(xi-1)) > 1.
  (2) every added prime q must satisfy q > A/c, else the child is dead:
      child alive needs A(q-1) > Bq  <=>  q(A-B) > A  <=>  q > A/c.
  (3) cap on smallest remaining x: branch dead when A(x-1)^j > B x^j + 2.
      Proof: g(x) = A(1-1/x)^j - B - 2/x^j is strictly increasing for x >= 2,
      so the feasible x form an initial interval; moreover for tuples with all
      xi >= x, f = A prod(xi-1) - B prod(xi) is coordinatewise increasing
      whenever A/B > (x/(x-1))^{j-1} (implied by A(x-1)^j > Bx^j), so the
      minimum of f over the region is at the all-equal-x corner, where f > 2.
      Hence no tuple with smallest element x can satisfy f = 2.  The same
      monotonicity of g makes the integer cap binary-searchable.
  (4) terminal j = 2 algebra:  A(s-1)(t-1) = Bst + 2, maxP < s < t prime.
      Rearranged:  t*(c*s - A) = A(s-1) + 2.
      RHS > 0 and t > 0  ==>  c*s - A > 0, i.e. s > A/c.
      (The 'negative branch' c*s < A is therefore VACUOUS; the project's
       enumerator includes it -- harmless extra work, never required.)
      Multiplying the rearranged form by c and completing the product:
        (c*s - A)(c*t - A) = A^2 - cA + 2c = AB + 2c =: K  (> 0 since c > 0).
      s <= t  <=>  (c*s - A)^2 <= K, i.e. D := c*s - A <= isqrt(K).
      t > s window for s:  c s^2 - 2A s + (A-2) < 0, upper root (A+sqrt(K))/c
      [discriminant/4 = A^2 - c(A-2) = AB + 2c = K -- neat identity].

Terminal strategies (my own choices):
  - direct integer scan of s in [s_lo, s_hi] when the window is narrow:
    check den | num FIRST (cheap), only then primality.  s_lo uses the tighter
    bound max(maxP, A//c)+1.
  - otherwise: factor K once (sympy factorint, with an exact reconstruction
    assert), enumerate divisors D <= isqrt(K) only, positive branch only,
    require (D+A) % c == 0 and (K/D + A) % c == 0.
  - every hit re-verifies the FULL original equation 3*prod(p-1) == 2*prod(p)+2
    over all w primes, and chain-freeness is checked AFTER the equation
    (a chain-violating equation hit would falsify the kernel theorem and is
    reported as an anomaly, never silently dropped).
"""
import argparse, json, os, sys, time
from math import isqrt, prod

from sympy import isprime, primerange, factorint

CASCADE = (5, 7, 37, 1297)


# ---------------------------------------------------------------- node math

def branch_cap(A, B, j, lo):
    """Largest x with A(x-1)^j <= B x^j + 2 (monotone predicate, see (3))."""
    def bad(x):
        return A * (x - 1) ** j > B * x ** j + 2
    if bad(lo):
        return lo - 1
    hi = lo
    while not bad(hi):
        hi *= 2
    # invariant: lo good, hi bad; find first bad
    a, b = lo, hi
    while b - a > 1:
        m = (a + b) // 2
        if bad(m):
            b = m
        else:
            a = m
    return a


def divisors_upto(fac, cap):
    """All divisors <= cap from a factorint dict (no duplicates)."""
    divs = [1]
    for p, e in fac.items():
        base = list(divs)
        pk = 1
        for _ in range(e):
            pk *= p
            for d in base:
                v = d * pk
                if v <= cap:
                    divs.append(v)
    return divs


def _check_pair(P, A, B, s, t, found, anomalies):
    """Exact verification of a candidate terminal pair (s, t)."""
    if A * (s - 1) * (t - 1) != B * s * t + 2:
        anomalies.append(["eq_fail", int(s), int(t)])
        return
    if not (isprime(s) and isprime(t)):
        return  # not a squarefree-prime solution; counted by caller stats only
    primes = list(P) + [int(s), int(t)]
    n = prod(primes)
    lhs = 3
    for p in primes:
        lhs *= (p - 1)
    assert lhs == 2 * n + 2, f"final verification failed for {primes}"
    chain_viol = [[r, q] for r in primes for q in primes
                  if r != q and (q - 1) % r == 0]
    if chain_viol:
        anomalies.append(["chain_theorem_violation", primes, chain_viol])
    found.append({"primes": primes, "n": int(n)})


def terminal_solve(P, A, B, direct_width):
    """Solve the last two primes exactly.  Returns a result record."""
    c = A - B
    assert c > 0
    mx = P[-1] if P else 4
    K = A * B + 2 * c
    rt = isqrt(K)
    s_lo = max(mx, A // c) + 1
    s_hi = (A + rt) // c + 1  # cushion above the exact upper root
    found, anomalies = [], []
    width = s_hi - s_lo + 1
    if width <= 0:
        return {"P": list(P), "m": "empty", "w": 0, "f": found, "a": anomalies}
    if width <= direct_width:
        mode = "scan"
        w = width
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
            _check_pair(P, A, B, s, t, found, anomalies)
    else:
        mode = "div"
        fac = factorint(K)
        chk = 1
        for p, e in fac.items():
            chk *= p ** e
        assert chk == K, f"factorint reconstruction failed for K={K}"
        divs = divisors_upto(fac, rt)
        w = len(divs)
        for D in divs:
            if (D + A) % c:
                continue
            s = (D + A) // c
            if s < s_lo:
                continue
            E = K // D
            if (E + A) % c:
                continue
            t = (E + A) // c
            if t <= s:
                continue
            _check_pair(P, A, B, s, t, found, anomalies)
    return {"P": list(P), "m": mode, "w": w, "f": found, "a": anomalies}


# ---------------------------------------------------------------- tree walk

def walk(P, A, B, j, stats, emit, skip_prefix=None):
    """Recursive walk; emit(P, A, B) at every alive j==2 node."""
    c = A - B
    if c <= 0:
        return
    mx = P[-1] if P else 4
    if j == 2:
        emit(tuple(P), A, B)
        return
    lo = max(mx, A // c) + 1
    cap = branch_cap(A, B, j, lo)
    if cap < lo:
        return
    for q in primerange(lo, cap + 1):
        chain_bad = False
        for p in P:
            if (q - 1) % p == 0:
                chain_bad = True
                break
        if chain_bad:
            stats["pruned_chain"] += 1
            continue
        child = tuple(P) + (q,)
        if skip_prefix is not None and child == skip_prefix:
            stats["skipped_subtrees"] += 1
            continue
        # child-alive check (fact 2) is built into lo, but assert anyway
        A2, B2 = A * (q - 1), B * q
        if A2 <= B2:
            stats["dead_children"] += 1
            continue
        stats["branches"] += 1
        walk(list(child), A2, B2, j - 1, stats, emit, skip_prefix)


# ------------------------------------------------------------ serial driver

def run_serial(W, direct_width, root_P=None, root_j=None, skip_prefix=None,
               quiet=False):
    stats = {"terminals": 0, "branches": 0, "pruned_chain": 0,
             "skipped_subtrees": 0, "dead_children": 0,
             "scan_nodes": 0, "div_nodes": 0, "max_w": 0}
    solutions, anomalies = [], []

    def emit(P, A, B):
        stats["terminals"] += 1
        r = terminal_solve(list(P), A, B, direct_width)
        stats["max_w"] = max(stats["max_w"], r["w"])
        stats["scan_nodes" if r["m"] == "scan" else "div_nodes"] += 1
        for f in r["f"]:
            solutions.append(f)
        for a in r["a"]:
            anomalies.append({"P": r["P"], "a": a})

    if root_P is None:
        if W == 2:
            emit((), 3, 2)
        else:
            walk([], 3, 2, W, stats, emit, skip_prefix)
    else:
        A = 3
        B = 2
        for p in root_P:
            A *= p - 1
            B *= p
        walk(list(root_P), A, B, root_j, stats, emit, skip_prefix)
    return stats, solutions, anomalies


# ------------------------------------------------------- parallel (omega 7)

_WORKER_DIRECT = 200_000


def solve_job(P):
    A, B = 3, 2
    for p in P:
        A *= p - 1
        B *= p
    t0 = time.time()
    r = terminal_solve(list(P), A, B, _WORKER_DIRECT)
    r["ms"] = round((time.time() - t0) * 1000, 1)
    return r


def run_parallel(W, jobs, procs, out_jsonl, log_path, tag):
    import multiprocessing as mp
    total = len(jobs)
    stats = {"terminals": 0, "scan_nodes": 0, "div_nodes": 0, "max_w": 0,
             "max_ms": 0.0, "slow_nodes": []}
    solutions, anomalies = [], []
    t0 = time.time()
    log = open(log_path, "a", buffering=1)
    outf = open(out_jsonl, "w")
    log.write(f"[{tag}] {total} terminal jobs, procs={procs}\n")
    with mp.Pool(procs) as pool:
        done = 0
        for r in pool.imap_unordered(solve_job, jobs, chunksize=32):
            done += 1
            stats["terminals"] += 1
            stats["scan_nodes" if r["m"] == "scan" else "div_nodes"] += 1
            stats["max_w"] = max(stats["max_w"], r["w"])
            if r["ms"] > stats["max_ms"]:
                stats["max_ms"] = r["ms"]
            if r["ms"] > 30000:
                stats["slow_nodes"].append([r["P"], r["ms"]])
            for f in r["f"]:
                solutions.append(f)
                log.write(f"[{tag}] !!! SOLUTION {f}\n")
            for a in r["a"]:
                anomalies.append({"P": r["P"], "a": a})
                log.write(f"[{tag}] !!! ANOMALY {r['P']} {a}\n")
            outf.write(json.dumps(r, separators=(",", ":")) + "\n")
            if done % 2000 == 0 or done == total:
                el = time.time() - t0
                rate = done / el
                eta = (total - done) / rate if rate else 0
                log.write(f"[{tag}] {done}/{total} el={el:.0f}s "
                          f"rate={rate:.1f}/s eta={eta:.0f}s\n")
    outf.close()
    el = time.time() - t0
    log.write(f"[{tag}] DONE {json.dumps(stats['slow_nodes'])}\n")
    summary = {"tag": tag, "elapsed_sec": round(el, 1), **stats,
               "solutions": solutions, "anomalies": anomalies}
    log.write(f"[{tag}] SUMMARY {json.dumps({k: v for k, v in summary.items() if k != 'slow_nodes'})}\n")
    log.close()
    return summary


def collect_jobs(W, skip_prefix=None, root_P=None, root_j=None):
    jobs = []
    stats = {"terminals": 0, "branches": 0, "pruned_chain": 0,
             "skipped_subtrees": 0, "dead_children": 0,
             "scan_nodes": 0, "div_nodes": 0, "max_w": 0}

    def emit(P, A, B):
        jobs.append(P)

    if root_P is None:
        walk([], 3, 2, W, stats, emit, skip_prefix)
    else:
        A, B = 3, 2
        for p in root_P:
            A *= p - 1
            B *= p
        walk(list(root_P), A, B, root_j, stats, emit, skip_prefix)
    return jobs, stats


# -------------------------------------------------------------------- main

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("mode", choices=["validate", "w7-noncascade", "w7-cascade",
                                     "w7-jobs"])
    ap.add_argument("--procs", type=int, default=16)
    ap.add_argument("--direct-width", type=int, default=200_000)
    args = ap.parse_args()
    here = os.path.dirname(os.path.abspath(__file__))

    if args.mode == "validate":
        expect = {
            2: [[5, 7]],
            3: [[5, 7, 37]],
            4: [[5, 7, 37, 1297]],
            5: [],
            6: [],
        }
        all_ok = True
        for W in (2, 3, 4, 5, 6):
            t0 = time.time()
            stats, sols, anoms = run_serial(W, args.direct_width)
            got = sorted(s["primes"] for s in sols)
            ok = got == expect[W] and not anoms
            all_ok &= ok
            print(f"omega={W}: solutions={got} expected={expect[W]} "
                  f"{'OK' if ok else 'MISMATCH'} anomalies={anoms} "
                  f"stats={stats} ({time.time()-t0:.1f}s)")
        print("VALIDATION", "PASS" if all_ok else "FAIL")
        sys.exit(0 if all_ok else 1)

    if args.mode == "w7-noncascade":
        jobs, wstats = collect_jobs(7, skip_prefix=CASCADE)
        print(f"walk stats: {wstats}; jobs={len(jobs)}", flush=True)
        summary = run_parallel(7, jobs, args.procs,
                               os.path.join(here, "_ref1_w7_noncascade.jsonl"),
                               os.path.join(here, "_ref1_w7.log"),
                               "noncascade")
        summary["walk_stats"] = wstats
        with open(os.path.join(here, "_ref1_w7_noncascade_summary.json"), "w") as f:
            json.dump(summary, f, indent=1)
        print(json.dumps({k: v for k, v in summary.items()
                          if k not in ("slow_nodes",)})[:2000])

    if args.mode == "w7-cascade":
        jobs, wstats = collect_jobs(7, root_P=list(CASCADE), root_j=3)
        print(f"walk stats: {wstats}; jobs={len(jobs)}", flush=True)
        summary = run_parallel(7, jobs, args.procs,
                               os.path.join(here, "_ref1_w7_cascade.jsonl"),
                               os.path.join(here, "_ref1_w7.log"),
                               "cascade")
        summary["walk_stats"] = wstats
        with open(os.path.join(here, "_ref1_w7_cascade_summary.json"), "w") as f:
            json.dump(summary, f, indent=1)
        print(json.dumps({k: v for k, v in summary.items()
                          if k not in ("slow_nodes",)})[:2000])

    if args.mode == "w7-jobs":
        jobs, wstats = collect_jobs(7, skip_prefix=CASCADE)
        cjobs, cwstats = collect_jobs(7, root_P=list(CASCADE), root_j=3)
        print(f"noncascade: jobs={len(jobs)} stats={wstats}")
        print(f"cascade:    jobs={len(cjobs)} stats={cwstats}")
        print(f"total terminals={len(jobs)+len(cjobs)}")


if __name__ == "__main__":
    main()

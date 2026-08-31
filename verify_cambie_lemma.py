"""
NUMERICAL VERIFICATION of the synthesized Complementary Totient Product Lemma
for EG#411 r=2, p prime, p == 7 (mod 8), p >= 7.

EXACT definitions from UnconditionalClosure.lean:354-406:
    N      = (3*p - 1)//4          (integer; N odd since 3p-1 == 4 mod 8)
    phi_N  = totient(N)
    c2     = 3*p^2 - p + 2*(p-1)*phi_N   == 4*p*N + 2*(p-1)*phi_N
    phi_c2 = totient(c2)
    c3     = p*c2 + (p-1)*phi_c2

    cambie_depth3_check p :=
       if 9849*(4*p^2) <= c2*10000 then true            # Branch A fast-exit
       else decide(4*p^3 <= c3)                          # Branch B depth-3

    alpha = phi_N/N, beta = phi_c2/c2.

This script does ALL THREE required tasks:
 (1) Dense sweep p==7 mod 8 in [1e6, 2e6] + sparse to 1e8: compute
     N, phi_N, c2, phi_c2, c3, alpha, beta; verify check passes;
     record min (2+alpha)(2+beta), min (2+alpha)(1+beta), min c3/(4p^3).
 (2) Branch-B cases: compare ACTUAL beta to exclusion-predicted beta lower
     bound beta_required(alpha) = (2/3 - alpha)/(alpha + 2); confirm bound
     <= actual; report min gap. ALSO test the EXACT reduction identity.
 (3) Adversarial smoothness-extremal N = product of first k odd primes;
     find/realize forced p residues; check exclusion mechanism (small primes
     of N absent from c2) and (2+alpha)(2+beta) >= K with margin.

Reports exact numbers; consistency with 0 failures and margin growing with p.
"""
import sys
from fractions import Fraction
from sympy import totient, factorint, isprime, primerange, nextprime, prod

# ---------------------------------------------------------------------------
# Core record computation (EXACT integer / Fraction arithmetic)
# ---------------------------------------------------------------------------
def cambie_record(p):
    """Return dict with all quantities, EXACT integers + Fraction alpha/beta."""
    assert (3*p - 1) % 4 == 0, "3p-1 not divisible by 4"
    N = (3*p - 1) // 4
    assert 4*p*N == 3*p*p - p, "algebraic identity 4pN = 3p^2-p failed"
    phi_N = int(totient(N))
    c2 = 3*p*p - p + 2*(p-1)*phi_N
    assert c2 == 4*p*N + 2*(p-1)*phi_N
    phi_c2 = int(totient(c2))
    c3 = p*c2 + (p-1)*phi_c2
    alpha = Fraction(phi_N, N)
    beta = Fraction(phi_c2, c2)
    return dict(p=p, N=N, phi_N=phi_N, c2=c2, phi_c2=phi_c2, c3=c3,
                alpha=alpha, beta=beta)

def lean_check(rec):
    """Replicate cambie_depth3_check EXACTLY (Branch A / Branch B)."""
    p, c2, c3 = rec['p'], rec['c2'], rec['c3']
    if 9849*(4*p*p) <= c2*10000:      # Branch A
        return True, 'A'
    else:                              # Branch B
        return (4*p**3 <= c3), 'B'

def reduction_identity_ok(rec):
    """Verify 2*c3 = (3p-1)*(2p+(p-1)*alpha)*(p+(p-1)*beta) EXACTLY (Fraction)."""
    p = rec['p']
    a, b = rec['alpha'], rec['beta']
    rhs = Fraction(3*p-1) * (Fraction(2*p) + Fraction(p-1)*a) * (Fraction(p) + Fraction(p-1)*b)
    lhs = Fraction(2*rec['c3'])
    return lhs == rhs, lhs, rhs

# beta_required from solving 4p^3 = c3 in the large-p limit:
#   (2+alpha)(1+beta) = 8/3  =>  beta = (8/3)/(2+alpha) - 1 = (2/3 - alpha)/(alpha+2)
def beta_required(alpha):
    return (Fraction(2,3) - alpha) / (alpha + 2)

# ---------------------------------------------------------------------------
# Exclusion-lemma structural checks
# ---------------------------------------------------------------------------
def exclusion_checks(rec):
    """Return dict of structural facts: D1 empty, 3 not| N, N odd, c2 even,
    master congruence c2 == 2(p-1)phi_N mod q for all q|N, leak set D."""
    p, N, phi_N, c2 = rec['p'], rec['N'], rec['phi_N'], rec['c2']
    fac_N = factorint(N)
    S = list(fac_N.keys())
    # (1) D1 = no odd prime divides both N and p-1
    pm1 = p - 1
    D1 = [q for q in S if q != 2 and pm1 % q == 0]
    # (2) 3 not | N
    three_div = (N % 3 == 0)
    # (3) N odd, c2 even
    N_odd = (N % 2 == 1)
    c2_even = (c2 % 2 == 0)
    # (0) master congruence: for q|N, c2 == 2(p-1)phi_N (mod q)
    master_ok = all((c2 % q) == ((2*(p-1)*phi_N) % q) for q in S)
    # (4) leak set D = {q in S : q | c2}
    D = [q for q in S if c2 % q == 0]
    # leak-loss factor L = prod q/(q-1) over D
    L = Fraction(1)
    for q in D:
        L *= Fraction(q, q-1)
    return dict(S=S, D1=D1, three_div=three_div, N_odd=N_odd, c2_even=c2_even,
                master_ok=master_ok, D=D, L=L, omega_N=len(S),
                omega_c2=len(factorint(c2)))

# ---------------------------------------------------------------------------
# TASK 1 + TASK 2: dense + sparse sweep
# ---------------------------------------------------------------------------
def run_sweep(lo, hi, label, sparse_step=None, max_primes=None):
    """Sweep primes p==7 mod 8 in [lo, hi]. If sparse_step given, step by it."""
    failures = []
    n = 0
    min_2a2b = None         # min (2+alpha)(2+beta)
    min_2a1b = None         # min (2+alpha)(1+beta)   (corrected constant)
    min_c3_ratio = None     # min c3/(4p^3) over Branch-B cases
    min_margin_8_3 = None   # min (2+alpha)(1+beta) - 8/3
    # Task 2 trackers
    branchB_count = 0
    min_beta_gap = None     # min (actual beta - beta_required(alpha)) over Branch B
    beta_gap_violations = 0
    reduction_mismatches = 0
    branchA_count = 0
    # exclusion trackers
    D1_nonempty = 0
    three_div_count = 0
    master_violations = 0
    maxD = 0
    maxL = Fraction(1)
    examples_minprod = None
    examples_minratio = None

    if sparse_step is None:
        candidates = primerange(lo, hi+1)
    else:
        # sparse: walk by sparse_step, take next prime == 7 mod 8
        def gen():
            x = lo
            while x <= hi:
                q = nextprime(x-1)
                # advance to a prime == 7 mod 8
                while q % 8 != 7:
                    q = nextprime(q)
                if q <= hi:
                    yield q
                x += sparse_step
        candidates = gen()

    for p in candidates:
        if p % 8 != 7:
            continue
        if p < 7:
            continue
        rec = cambie_record(p)
        ok, branch = lean_check(rec)
        if not ok:
            failures.append(p)
        # reduction identity
        rid_ok, _, _ = reduction_identity_ok(rec)
        if not rid_ok:
            reduction_mismatches += 1
        a, b = rec['alpha'], rec['beta']
        prod_2a2b = (2 + a) * (2 + b)
        prod_2a1b = (2 + a) * (1 + b)
        margin = prod_2a1b - Fraction(8,3)
        if min_2a2b is None or prod_2a2b < min_2a2b:
            min_2a2b = prod_2a2b
        if min_2a1b is None or prod_2a1b < min_2a1b:
            min_2a1b = prod_2a1b
            examples_minprod = p
        if min_margin_8_3 is None or margin < min_margin_8_3:
            min_margin_8_3 = margin
        # exclusion
        exc = exclusion_checks(rec)
        if exc['D1']:
            D1_nonempty += 1
        if exc['three_div']:
            three_div_count += 1
        if not exc['master_ok']:
            master_violations += 1
        maxD = max(maxD, len(exc['D']))
        if exc['L'] > maxL:
            maxL = exc['L']
        # branch accounting
        if branch == 'A':
            branchA_count += 1
        else:
            branchB_count += 1
            ratio = Fraction(rec['c3'], 4*p**3)
            if min_c3_ratio is None or ratio < min_c3_ratio:
                min_c3_ratio = ratio
                examples_minratio = p
            # Task 2: beta vs beta_required
            br = beta_required(a)
            gap = b - br   # actual - predicted lower bound; want >= 0
            if gap < 0:
                beta_gap_violations += 1
            if min_beta_gap is None or gap < min_beta_gap:
                min_beta_gap = gap
        n += 1
        if max_primes and n >= max_primes:
            break

    print(f"=== SWEEP [{label}] lo={lo} hi={hi} sparse_step={sparse_step} ===")
    print(f"  primes tested (p==7 mod 8): {n}")
    print(f"  FAILURES of cambie_depth3_check: {len(failures)}  {failures[:10]}")
    print(f"  reduction-identity mismatches (2c3 = (3p-1)(2p+(p-1)a)(p+(p-1)b)): {reduction_mismatches}")
    print(f"  Branch A (fast-exit): {branchA_count}   Branch B (depth-3): {branchB_count}")
    if min_2a2b is not None:
        print(f"  min (2+alpha)(2+beta) = {float(min_2a2b):.6f}   [prompt's 16/3={16/3:.4f} would need this >= 16/3]")
    if min_2a1b is not None:
        print(f"  min (2+alpha)(1+beta) = {float(min_2a1b):.6f}  at p={examples_minprod}  [K=8/3={8/3:.4f}]")
    if min_margin_8_3 is not None:
        print(f"  min margin (2+alpha)(1+beta) - 8/3 = {float(min_margin_8_3):.6f}")
    if min_c3_ratio is not None:
        print(f"  min c3/(4p^3) over Branch-B = {float(min_c3_ratio):.6f}  at p={examples_minratio}")
    else:
        print(f"  (no Branch-B cases in this range)")
    # Task 2 reporting
    print(f"  [TASK 2] Branch-B beta vs beta_required(alpha)=(2/3-a)/(a+2):")
    print(f"           violations (actual beta < predicted lower bound): {beta_gap_violations}")
    if min_beta_gap is not None:
        print(f"           min gap (actual beta - predicted) = {float(min_beta_gap):.6f}")
    # exclusion reporting
    print(f"  [EXCLUSION] D1 nonempty count: {D1_nonempty}   3|N count: {three_div_count}   master-cong violations: {master_violations}")
    print(f"  [EXCLUSION] max |D| (leak set): {maxD}   max L (leak-loss factor): {float(maxL):.6f} = {maxL}")
    print()
    return dict(label=label, n=n, failures=failures,
                reduction_mismatches=reduction_mismatches,
                min_2a2b=min_2a2b, min_2a1b=min_2a1b, min_margin_8_3=min_margin_8_3,
                min_c3_ratio=min_c3_ratio, branchB_count=branchB_count,
                beta_gap_violations=beta_gap_violations, min_beta_gap=min_beta_gap,
                D1_nonempty=D1_nonempty, three_div_count=three_div_count,
                master_violations=master_violations, maxD=maxD, maxL=maxL,
                examples_minratio=examples_minratio, examples_minprod=examples_minprod)


# ---------------------------------------------------------------------------
# TASK 3: adversarial smoothness-extremal N
# ---------------------------------------------------------------------------
def run_adversarial(kmax=15):
    """For k=2..kmax, build M = product of first k ODD primes. We want N
    divisible by M and N == (3p-1)/4 for a prime p == 7 mod 8.
    N = (3p-1)/4  =>  p = (4N+1)/3.  Need 4N+1 == 0 mod 3 => N == 2 mod 3.
    But 3 | M for k>=2 (3 is first odd prime), so 3|N => N==0 mod 3 -> contradicts
    N==2 mod 3 (exclusion part (2): 3 never divides N). So to make N SMOOTH and
    realize a real p, we must DROP 3 from the product (consistent with the lemma:
    3 is structurally excluded from N). Use first k odd primes EXCLUDING 3, i.e.
    {5,7,11,13,...}, then search multiples t*M with N=t*M, N odd, N==2 mod3,
    p=(4N+1)/3 prime, p==7 mod 8.
    Then CHECK: small primes of N absent from c2, and (2+a)(2+b) >= K margin."""
    print("=== TASK 3: ADVERSARIAL SMOOTHNESS-EXTREMAL N ===")
    print("  Note: 3 is structurally excluded from N (lemma part 2: N==2 mod 3),")
    print("  so smoothness-extremal N uses odd primes {5,7,11,13,...} (3 dropped).")
    print()
    odd_primes = [q for q in primerange(5, 200)]  # 5,7,11,...
    K83 = Fraction(8,3)
    results = []
    for k in range(1, kmax+1):
        base = odd_primes[:k]
        M = prod(base)
        # search small multiplier t so that N = t*M realizes a valid prime p
        found = None
        for t in range(1, 200000):
            N = t * M
            if N % 2 == 0:        # need N odd
                continue
            if N % 3 != 2:        # need N == 2 mod 3 so p integer & 3 not| N
                continue
            num = 4*N + 1
            if num % 3 != 0:
                continue
            p = num // 3
            if p % 8 != 7:
                continue
            if not isprime(p):
                continue
            found = (t, N, p)
            break
        if not found:
            print(f"  k={k:2d} base={base}  M={M}: no realizing prime found in t<200000")
            results.append(dict(k=k, found=False))
            continue
        t, N, p = found
        rec = cambie_record(p)
        # confirm N factors include all base primes
        fac_N = factorint(N)
        base_in_N = all(q in fac_N for q in base)
        # exclusion: which base primes survive into c2?
        survivors = [q for q in base if rec['c2'] % q == 0]
        absent = [q for q in base if rec['c2'] % q != 0]
        exc = exclusion_checks(rec)
        a, b = rec['alpha'], rec['beta']
        prod_2a2b = (2+a)*(2+b)
        prod_2a1b = (2+a)*(1+b)
        margin = prod_2a1b - K83
        ok, branch = lean_check(rec)
        rid_ok, _, _ = reduction_identity_ok(rec)
        print(f"  k={k:2d} base={base}")
        print(f"        t={t} N={N} p={p} (prime, ==7 mod8: {p%8==7})")
        print(f"        base primes all divide N: {base_in_N}")
        print(f"        small primes of N SURVIVING into c2: {survivors}")
        print(f"        small primes of N ABSENT from c2:   {absent}")
        print(f"        D1(={exc['D1']}) 3|N({exc['three_div']}) master_ok({exc['master_ok']}) N_odd({exc['N_odd']}) c2_even({exc['c2_even']})")
        print(f"        alpha={float(a):.6f} beta={float(b):.6f}")
        print(f"        (2+a)(2+b)={float(prod_2a2b):.6f}  (2+a)(1+b)={float(prod_2a1b):.6f}  margin over 8/3={float(margin):.6f}")
        print(f"        check={ok} branch={branch} reduction_identity_ok={rid_ok}")
        print()
        results.append(dict(k=k, found=True, p=p, N=N, base=base,
                            base_in_N=base_in_N, survivors=survivors, absent=absent,
                            prod_2a2b=prod_2a2b, prod_2a1b=prod_2a1b, margin=margin,
                            check=ok, branch=branch, three_div=exc['three_div'],
                            master_ok=exc['master_ok']))
    return results


# ---------------------------------------------------------------------------
# TASK 4: adversarial `3 | c2` branch-B regression
# ---------------------------------------------------------------------------
def run_c2_three_branch_b_adversary():
    """Reject two invalid universal shortcuts at once.

    The smooth cofactor N = 5*11*17*23*29*41*47 gives the prime
    p = (4N+1)/3 = 1602351887.  It is an admissible EG411 p, `3 | c2`, and
    nevertheless fails the fast-exit test.  The direct depth-3 test succeeds.
    This is exact-integer adversarial evidence, not a Lean certificate.
    """
    print("=== TASK 4: ADVERSARIAL 3|c2 BRANCH-B REGRESSION ===")
    base = [5, 11, 17, 23, 29, 41, 47]
    N = prod(base)
    p = (4 * N + 1) // 3
    rec = cambie_record(p)
    ok, branch = lean_check(rec)
    c2_div3 = rec['c2'] % 3 == 0
    fast_exit = branch == 'A'
    assert N == 1201763915
    assert p == 1602351887 and isprime(p) and p % 8 == 7
    assert c2_div3 and not fast_exit and ok and branch == 'B'
    print(f"  N factors: {base}")
    print(f"  p={p} (prime, p % 8 = {p % 8})")
    print(f"  3|c2={c2_div3}; fast_exit={fast_exit}; depth3={ok}")
    print(f"  c2={rec['c2']}")
    return dict(p=p, N=N, c2=rec['c2'], c2_div3=c2_div3,
                fast_exit=fast_exit, depth3=ok, branch=branch)


# ---------------------------------------------------------------------------
# MAIN
# ---------------------------------------------------------------------------
if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'all'

    overall_failures = 0
    overall_master_viol = 0
    overall_red_mismatch = 0
    overall_beta_viol = 0
    overall_D1 = 0
    overall_3divN = 0

    summary = []

    if mode in ('all', 'dense'):
        # TASK 1 dense: all p==7 mod 8 in [1e6, 2e6]
        r = run_sweep(10**6, 2*10**6, "DENSE 1e6..2e6")
        summary.append(r)
        overall_failures += len(r['failures'])
        overall_master_viol += r['master_violations']
        overall_red_mismatch += r['reduction_mismatches']
        overall_beta_viol += r['beta_gap_violations']
        overall_D1 += r['D1_nonempty']
        overall_3divN += r['three_div_count']

    if mode in ('all', 'sparse'):
        # TASK 1 sparse: sample up to 1e8
        r = run_sweep(2*10**6, 10**8, "SPARSE 2e6..1e8", sparse_step=250000)
        summary.append(r)
        overall_failures += len(r['failures'])
        overall_master_viol += r['master_violations']
        overall_red_mismatch += r['reduction_mismatches']
        overall_beta_viol += r['beta_gap_violations']
        overall_D1 += r['D1_nonempty']
        overall_3divN += r['three_div_count']

    if mode in ('all', 'adv'):
        adv = run_adversarial(kmax=15)

    if mode in ('all', 'c2-adv'):
        c2_adv = run_c2_three_branch_b_adversary()

    # GRAND SUMMARY
    print("=" * 70)
    print("GRAND SUMMARY")
    print("=" * 70)
    print(f"  total cambie_depth3_check FAILURES: {overall_failures}")
    print(f"  total reduction-identity mismatches: {overall_red_mismatch}")
    print(f"  total master-congruence violations: {overall_master_viol}")
    print(f"  total D1-nonempty (odd q | gcd(N,p-1)): {overall_D1}")
    print(f"  total 3|N occurrences: {overall_3divN}")
    print(f"  total beta < beta_required violations (Branch B): {overall_beta_viol}")
    # margin growth check
    if len(summary) >= 2:
        print("\n  MARGIN GROWTH (min c3/(4p^3) per range; should be non-decreasing-ish with p):")
        for r in summary:
            mr = r['min_c3_ratio']
            print(f"    {r['label']:24s}: min c3/4p^3 = {float(mr):.6f}" if mr is not None else f"    {r['label']:24s}: no Branch-B")
        print("\n  min (2+alpha)(1+beta) per range (vs K=8/3=2.6667):")
        for r in summary:
            print(f"    {r['label']:24s}: {float(r['min_2a1b']):.6f}  (min margin {float(r['min_margin_8_3']):.6f})")

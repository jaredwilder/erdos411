"""
REFUTER 3 - math-level verification of the prune predicates in omega_tree_enumerator.py

Equation at a node with prefix P: A * prod(q_i - 1) = B * prod(q_i) + 2,
A = 3*prod_{p in P}(p-1), B = 2*prod_{p in P} p, j remaining primes q_1<...<q_j, all > max(P).

CLAIM-1 (cap implication): if A*(x-1)^j > B*x^j + 2 then for ALL tuples q_i >= x:
        A*prod(q_i-1) > B*prod(q_i) + 2  (so equality impossible -> branch dead).
CLAIM-2 (monotonicity, soundness of `break`): if predicate fires at x it fires at all y >= x.
CLAIM-3 (dead A<=B): if A <= B then A*prod(q_i-1) < B*prod(q_i) + 2 for all prime tuples (j>=1).
"""
import random, itertools
from sympy import symbols, diff, simplify, factor, prod, primerange, Rational

random.seed(411)
fails = []

# ---------- SYMBOLIC: per-coordinate monotonicity of g(q) = A*prod(1-1/qi) - B - 2/prod(qi) ----------
# f(q) = A*prod(qi-1) - B*prod(qi) - 2 ;  f(q) = prod(qi) * g(q).
# If dg/dq1 > 0 for q1 > 1 (others fixed > 1), then min of g over qi >= x is at qi = x.
print("=== SYMBOLIC: per-coordinate derivative of g, j = 1..7 ===")
A, B = symbols('A B', positive=True)
for j in range(1, 8):
    qs = symbols(f'q1:{j+1}', positive=True)
    g = A * prod(1 - 1/q for q in qs) - B - 2 / prod(qs)
    d = simplify(diff(g, qs[0]))
    d_fact = factor(d)
    # expected: dg/dq1 = (A*prod_{i>=2}(qi-1) + 2) / (q1^2 * prod_{i>=2} qi)
    # numerator A*prod(qi-1)+2 is manifestly > 0 for qi>1  => g strictly increasing in each coord
    rest = prod(qs[1:]) if j > 1 else 1
    numer_expected = A * prod(q - 1 for q in qs[1:]) + 2
    ok = simplify(d * qs[0]**2 * rest - numer_expected) == 0
    print(f"  j={j}: dg/dq1 == (A*prod_(i>1)(qi-1) + 2)/(q1^2*prod_(i>1)qi)  [numerator > 0]  -> {ok}")
    if not ok:
        fails.append(f"symbolic dg/dq1 mismatch j={j}: {d_fact}")

# Single-variable predicate monotonicity: h(x) = A(x-1)^j - B x^j - 2 ; H(x) = h(x)/x^j
# dH/dx = j*A*(1-1/x)^(j-1)/x^2 + 2j/x^(j+1)  > 0 for x>1.  h(x)>0 <=> H(x)>0; H increasing => break sound.
print("=== SYMBOLIC: dH/dx where H(x) = A(1-1/x)^j - B - 2/x^j ===")
x = symbols('x', positive=True)
for j in range(1, 8):
    H = A * (1 - 1/x)**j - B - 2/x**j
    dH = simplify(diff(H, x))
    expected = j*A*(1 - 1/x)**(j-1)/x**2 + 2*j/x**(j+1)
    ok = simplify(dH - expected) == 0
    print(f"  j={j}: dH/dx == j*A*(1-1/x)^(j-1)/x^2 + 2j/x^(j+1)  -> {ok}")
    if not ok:
        fails.append(f"symbolic dH/dx mismatch j={j}")

# ---------- NUMERIC: CLAIM-2 monotonicity on 1000 random configs ----------
print("=== NUMERIC: monotonicity of predicate fire (1000 configs) ===")
def fires(Av, Bv, jv, xv):
    return Av * (xv - 1)**jv > Bv * xv**jv + 2

mono_bad = 0
tested = 0
for _ in range(1000):
    jv = random.randint(2, 7)
    Bv = random.randint(2, 10**9)
    Av = Bv + random.randint(1, max(1, Bv // random.choice([1, 3, 10, 100, 1000])))
    # find a fire point by construction or random probe
    xv = random.randint(5, 10**7)
    if not fires(Av, Bv, jv, xv):
        continue
    tested += 1
    # walk DOWN to the first fire x* (over integers), then check boundary + random y >= x*
    lo, hi = 2, xv
    while lo < hi:
        mid = (lo + hi) // 2
        if fires(Av, Bv, jv, mid): hi = mid
        else: lo = mid + 1
    xstar = lo
    if xstar > 2 and fires(Av, Bv, jv, xstar - 1):
        mono_bad += 1; fails.append(f"binary search inconsistency {Av},{Bv},{jv}")
    # check all integers in [xstar, xstar+2000] fire, plus 50 random large y
    for y in range(xstar, xstar + 2001):
        if not fires(Av, Bv, jv, y):
            mono_bad += 1
            fails.append(f"MONOTONICITY FAIL A={Av} B={Bv} j={jv} fires at {xstar} not at {y}")
            break
    for _ in range(50):
        y = random.randint(xstar, 10**12)
        if not fires(Av, Bv, jv, y):
            mono_bad += 1
            fails.append(f"MONOTONICITY FAIL A={Av} B={Bv} j={jv} fires at {xstar} not at {y}")
            break
print(f"  configs with a fire point tested: {tested}, monotonicity violations: {mono_bad}")

# ---------- NUMERIC: CLAIM-1 cap implication vs brute force ----------
# When predicate fires at prime x, NO tuple of j distinct primes >= x may satisfy equality;
# stronger: f(q) > 0 for all such tuples. Brute force small j over a window, plus corner check.
print("=== NUMERIC: cap implication vs brute force ===")
def f_val(Av, Bv, qs):
    L = Av
    R = Bv
    for q in qs: L *= (q - 1)
    for q in qs: R *= q
    return L - R - 2

bad_cap = 0
trials = 0
primes_pool = list(primerange(5, 4000))
for _ in range(1000):
    jv = random.randint(2, 4)          # brute-forceable
    Bv = random.randint(2, 10**6)
    Av = Bv + random.randint(1, max(1, Bv // random.choice([1, 5, 50])))
    # pick the first PRIME >= 5 where it fires (mirror of enumerator's break point)
    xstar = None
    for p in primes_pool:
        if fires(Av, Bv, jv, p):
            xstar = p; break
    if xstar is None:
        continue
    trials += 1
    idx = primes_pool.index(xstar)
    window = primes_pool[idx:idx + 12]          # all j-subsets of next 12 primes
    if len(window) < jv: continue
    for tup in itertools.combinations(window, jv):
        v = f_val(Av, Bv, tup)
        if v <= 0:
            bad_cap += 1
            fails.append(f"CAP FAIL A={Av} B={Bv} j={jv} fire at {xstar} but f{tup}={v} <= 0")
            break
    # corner + random far tuples
    for _ in range(30):
        tup = sorted(random.sample(range(xstar, 10**9), jv))
        v = f_val(Av, Bv, tup)
        if v <= 0:
            bad_cap += 1
            fails.append(f"CAP FAIL(far) A={Av} B={Bv} j={jv} fire {xstar} f{tup}={v}")
            break
print(f"  cap-fire configs brute-checked: {trials}, violations: {bad_cap}")

# ---------- NUMERIC: CLAIM-3 dead A<=B ----------
print("=== NUMERIC: dead A<=B implication ===")
bad_dead = 0
for _ in range(2000):
    jv = random.randint(1, 7)
    Av = random.randint(2, 10**8)
    Bv = Av + random.randint(0, 10**8)          # A <= B
    tup = sorted(random.sample(primes_pool, jv))
    L = Av; R = Bv
    for q in tup: L *= (q - 1)
    for q in tup: R *= q
    if not (L < R + 2):
        bad_dead += 1
        fails.append(f"DEAD FAIL A={Av} B={Bv} tup={tup}: {L} >= {R}+2")
# also: predicate can NEVER fire when A<=B (so cap-fire implies A>B, consistent ordering)
for _ in range(2000):
    jv = random.randint(1, 7); Av = random.randint(2, 10**8); Bv = Av + random.randint(0, 10**8)
    xv = random.randint(2, 10**9)
    if fires(Av, Bv, jv, xv):
        bad_dead += 1; fails.append(f"A<=B but predicate fired: A={Av} B={Bv} j={jv} x={xv}")
print(f"  dead-node violations: {bad_dead}")

# ---------- terminal negative-branch emptiness: t*(c*s - A) = A*(s-1) + 2 > 0 forces c*s > A ----------
print("=== SYMBOLIC: terminal identity  t*(c*s-A) = A*(s-1)+2 ===")
s, t = symbols('s t', positive=True)
c = A - B
lhs = A*(s-1)*(t-1) - (B*s*t + 2)          # equation == 0
identity = simplify(lhs - (t*(c*s - A) - (A*(s-1) + 2)))
print(f"  A(s-1)(t-1) - (Bst+2)  ==  t(cs-A) - (A(s-1)+2)  -> {identity == 0}")
if identity != 0:
    fails.append("terminal rearrangement identity failed")

print()
print("FAILS:", len(fails))
for fl in fails[:20]:
    print(" ", fl)

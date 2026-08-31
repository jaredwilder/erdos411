"""
EXTREME adversarial probe: push the smoothness-extremal family as far as
possible to see whether min (2+alpha)(1+beta) crosses below K=8/3.

Two attacks:
  ATTACK 1: extend k well beyond 15 (large smooth N), watch the margin trend.
  ATTACK 2: the synthesis's OWN feared cell -- try to also make c2 smooth.
            We cannot choose c2 freely, but we can scan many realizing p for a
            given smooth N-skeleton and pick the one with SMALLEST beta (most
            smooth c2), to find the true worst (2+alpha)(1+beta).
  ATTACK 3: asymptotic model. With alpha -> alpha_min(omega) via Mertens over
            {5,7,11,...} and beta bounded below by the EXCLUSION (only the
            leaked set D + the "fresh" primes of c2), compute the theoretical
            floor of (2+alpha)(1+beta) and see if it can dip below 8/3.
"""
from fractions import Fraction
from sympy import totient, factorint, isprime, primerange, prod

def cambie_record(p):
    N = (3*p - 1)//4
    phi_N = int(totient(N))
    c2 = 4*p*N + 2*(p-1)*phi_N
    phi_c2 = int(totient(c2))
    c3 = p*c2 + (p-1)*phi_c2
    return dict(p=p, N=N, phi_N=phi_N, c2=c2, phi_c2=phi_c2, c3=c3,
                alpha=Fraction(phi_N,N), beta=Fraction(phi_c2,c2))

def lean_check(rec):
    p,c2,c3 = rec['p'],rec['c2'],rec['c3']
    if 9849*(4*p*p) <= c2*10000: return True,'A'
    return (4*p**3 <= c3),'B'

K = Fraction(8,3)
odd = [q for q in primerange(5, 500)]  # drop 3 (structurally excluded)

print("ATTACK 1: extend smoothness-extremal k far beyond 15")
print(f"{'k':>3} {'p (digits)':>12} {'alpha':>9} {'beta':>9} {'(2+a)(1+b)':>12} {'margin/K':>10} {'survive':>8} {'absent':>7} {'check':>6}")
worst_margin = None
for k in range(2, 31):
    base = odd[:k]
    M = prod(base)
    found = None
    # need N = t*M odd, N==2 mod3, p=(4N+1)/3 prime ==7 mod8
    for t in range(1, 1000000):
        N = t*M
        if N%2==0: continue
        if N%3!=2: continue
        if (4*N+1)%3!=0: continue
        p = (4*N+1)//3
        if p%8!=7: continue
        if not isprime(p): continue
        found=(t,N,p); break
    if not found:
        print(f"{k:>3}  (no realizing p in t<1e6)")
        continue
    t,N,p = found
    rec = cambie_record(p)
    a,b = rec['alpha'], rec['beta']
    prod_2a1b = (2+a)*(1+b)
    margin = prod_2a1b - K
    survivors = [q for q in base if rec['c2']%q==0]
    absent = [q for q in base if rec['c2']%q!=0]
    ok,br = lean_check(rec)
    if worst_margin is None or margin < worst_margin:
        worst_margin = margin
    print(f"{k:>3} {len(str(p)):>12} {float(a):>9.5f} {float(b):>9.5f} {float(prod_2a1b):>12.5f} {float(margin):>10.5f} {len(survivors):>8} {len(absent):>7} {str(ok):>6}")
print(f"\nworst (lowest) margin over 8/3 in extended family: {float(worst_margin):.6f}\n")

print("="*80)
print("ATTACK 2: for a fixed smooth N-skeleton, scan MANY realizing p, minimize beta")
# Pick a moderately smooth skeleton and find several primes; report min (2+a)(1+b)
for k in [10, 12, 14]:
    base = odd[:k]
    M = prod(base)
    cands = []
    cnt = 0
    for t in range(1, 4000000):
        N = t*M
        if N%2==0: continue
        if N%3!=2: continue
        if (4*N+1)%3!=0: continue
        p = (4*N+1)//3
        if p%8!=7: continue
        if not isprime(p): continue
        rec = cambie_record(p)
        a,b = rec['alpha'],rec['beta']
        prodv = (2+a)*(1+b)
        cands.append((prodv, p, float(a), float(b)))
        cnt += 1
        if cnt >= 40: break
    if cands:
        cands.sort()
        worst = cands[0]
        print(f"k={k}: scanned {cnt} realizing p; WORST (2+a)(1+b)={float(worst[0]):.5f} at p={worst[1]} (alpha={worst[2]:.4f} beta={worst[3]:.4f}) margin={float(worst[0]-K):.5f}")
    else:
        print(f"k={k}: none found")

print()
print("="*80)
print("ATTACK 3: asymptotic theoretical floor")
print("alpha_min(k) = prod_{q in first k odd primes}(1-1/q)  [N maximally smooth, 3 excluded]")
print("beta_floor: c2 is even (2 in), plus we PESSIMISTICALLY assume c2 also picks up")
print("the SAME first-k odd primes (the feared non-exclusion cell) -> beta_min.")
for k in range(2, 40):
    base = odd[:k]
    # alpha: N smooth over {5,7,...} -> product (1-1/q)
    a = Fraction(1)
    for q in base: a *= Fraction(q-1,q)
    # beta WORST CASE if exclusion FAILED: c2 = 2 * (first k odd primes) smooth
    b_fail = Fraction(1,2)  # factor 2
    for q in base: b_fail *= Fraction(q-1,q)
    # beta with EXCLUSION (the lemma): c2 keeps 2 + only "fresh" primes, none of N's small
    # pessimistic-but-honest: beta ~ 1/2 * (Mertens tail from next prime). Model beta_excl
    # as just the factor 2 loss times a mild tail; here we just report b_fail as the
    # adversarial floor to test if (2+a)(1+b_fail) can dip below K.
    prod_fail = (2+a)*(1+b_fail)
    flag = "  <-- BELOW K!" if prod_fail < K else ""
    if k<=20 or prod_fail < K or k%5==0:
        print(f"k={k:>2}: alpha_min={float(a):.5f} beta_if_exclusion_FAILS={float(b_fail):.5f}  (2+a)(1+b)={float(prod_fail):.5f}{flag}")

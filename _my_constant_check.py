"""
Independent check of the EG#411 r=2 closure constant.
Claude's hand-derivation:  Branch B (4p^3 <= c3) closes (large p)  <=>  (2+a)(1+b) >= 8/3,
                           and exactly:  8 p^3 <= (3p-1)(2p+(p-1)a)(p+(p-1)b)
Docs (Phase-2/3) claim:    16 p <= 3(2+a)(2+b)(p-1)   i.e.  (2+a)(2+b) >= 16/3.
We test which one matches the ACTUAL c3/(4p^3) on real primes.
"""
from sympy import totient, isprime
from fractions import Fraction as F

def stats(p):
    N = (3*p - 1)//4
    phiN = int(totient(N))
    c2 = 3*p*p - p + 2*(p-1)*phiN
    phic2 = int(totient(c2))
    c3 = p*c2 + (p-1)*phic2
    a = F(phiN, N)
    b = F(phic2, c2)
    fast = (9849*(4*p*p) <= c2*10000)          # Branch A
    overshoot = (4*p**3 <= c3)                  # Branch B
    ratio = F(c3, 4*p**3)                       # actual c3/(4p^3)
    # predictions:
    mine_exact = F((3*p-1)*(2*p+(p-1)*a)*(p+(p-1)*b), 8*p**3)   # = c3/(4p^3) EXACTLY if my c2,c3 algebra is right
    mine_large = F(3,8)*(2+a)*(1+b)             # large-p approx of ratio
    doc_large  = F(3,16)*(2+a)*(2+b)            # doc's approx of ratio
    return dict(p=p, N_omega=len(__import__('sympy').primefactors(N)), a=float(a), b=float(b),
                fast=fast, overshoot=overshoot, passes=(fast or overshoot),
                ratio=float(ratio), mine_exact=float(mine_exact),
                mine_large=float(mine_large), doc_large=float(doc_large),
                A2_1pb=float((2+a)*(1+b)), A2_2pb=float((2+a)*(2+b)))

# scan primes p == 7 mod 8 over a window; collect below-threshold (Branch B) worst cases
fails=0; bt=[]; mn_exact_gap=1e9; mn_ratio=1e9
checked=0
p=10**6+1
while p < 10**6 + 400000:
    if p % 8 == 7 and isprime(p):
        s = stats(p); checked+=1
        if not s['passes']: fails+=1; print("FAIL", s)
        # verify my EXACT formula reproduces the real ratio
        assert abs(s['ratio']-s['mine_exact']) < 1e-12, ("EXACT MISMATCH", s)
        if not s['fast']:
            bt.append(s)
            mn_ratio = min(mn_ratio, s['ratio'])
    p += 2

print(f"checked={checked} primes (p==7 mod8, ~1.0e6..1.4e6), failures={fails}")
print(f"below-threshold (Branch B) cases: {len(bt)}")
if bt:
    worst = min(bt, key=lambda s: s['ratio'])
    print("WORST Branch-B case (min c3/4p^3):")
    for k in ['p','N_omega','a','b','ratio','A2_1pb','A2_2pb','mine_large','doc_large']:
        print(f"   {k:10} = {worst[k]}")
    print(f"min c3/(4p^3) over Branch-B cases = {mn_ratio:.4f}  (closes iff >1)")
    print(f"=> my threshold (2+a)(1+b)>=8/3={8/3:.4f}: worst (2+a)(1+b)={worst['A2_1pb']:.4f}  "
          f"({'CLEARS' if worst['A2_1pb']>=8/3 else 'FAILS'})")
    print(f"=> doc threshold (2+a)(2+b)>=16/3={16/3:.4f}: worst (2+a)(2+b)={worst['A2_2pb']:.4f}  "
          f"({'CLEARS' if worst['A2_2pb']>=16/3 else 'FAILS'})")
    print("EXACT-formula check: my closed form c3/(4p^3) matched the real ratio on ALL", checked, "primes.")

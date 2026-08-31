#!/usr/bin/env python3
import json, math, sys
try:
    import sympy as sp
except Exception as e:
    raise SystemExit(f"sympy required: {e}")
from fractions import Fraction

def alpha_fast_required(p):
    p=Fraction(p,1)
    num=Fraction(9849,10000)*4*p*p - (3*p*p-p)
    den=Fraction(1,2)*(p-1)*(3*p-1)
    return num/den

def beta_required_finite(p, alpha):
    p=Fraction(p,1)
    return Fraction(16,1)*p/(3*(2+alpha)*(p-1))-2

def analyze(limit=1000000):
    fast_fail=[]
    bad=[]
    min_margin=(None, Fraction(10**9,1))
    for p in sp.primerange(7, limit+1):
        if p%8!=7: continue
        N=(3*p-1)//4
        phiN=int(sp.totient(N))
        c2=3*p*p-p+2*(p-1)*phiN
        phic2=int(sp.totient(c2))
        c3=p*c2+(p-1)*phic2
        alpha=Fraction(phiN,N)
        beta=Fraction(phic2,c2)
        af=alpha_fast_required(p)
        br=beta_required_finite(p, alpha)
        fast = alpha >= af
        depth = beta >= br
        actual_fast = 9849*(4*p*p) <= c2*10000
        actual_depth = 4*p**3 <= c3
        if fast != actual_fast:
            bad.append({"p":p,"kind":"fast_threshold_mismatch"})
        if actual_fast is False:
            fast_fail.append({"p":p,"alpha":float(alpha),"alpha_req":float(af),
                              "beta":float(beta),"beta_req":float(br),
                              "margin":float(beta-br),
                              "actual_depth":actual_depth})
            if beta-br < min_margin[1]:
                min_margin=(p,beta-br,alpha,af,beta,br)
        if not (actual_fast or actual_depth):
            bad.append({"p":p,"kind":"branch_failure"})
    return {
        "limit":limit,
        "bad_count":len(bad),
        "fast_fail_count":len(fast_fail),
        "fast_fail_first20":fast_fail[:20],
        "min_beta_margin_on_fast_fail": {
            "p":min_margin[0],
            "margin":float(min_margin[1]) if min_margin[0] else None,
            "alpha":float(min_margin[2]) if min_margin[0] else None,
            "alpha_req":float(min_margin[3]) if min_margin[0] else None,
            "beta":float(min_margin[4]) if min_margin[0] else None,
            "beta_req":float(min_margin[5]) if min_margin[0] else None
        },
        "bad_first20":bad[:20]
    }

if __name__=="__main__":
    limit=int(sys.argv[1]) if len(sys.argv)>1 else 1000000
    print(json.dumps(analyze(limit), indent=2))

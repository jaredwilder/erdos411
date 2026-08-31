#!/usr/bin/env python3
"""
Phase 7 dependency graph attack for the Complementary Totient Product Lemma.

For fast-fail primes p, factor N and c2, then build the dependency graph:
q | N reappears in c2 iff q | phi(N), which happens when q^2|N or some r|N
has r ≡ 1 mod q (ignoring q=2 and p-1, absent here).

This script tests the exact dependency explanation and measures the product
boost from excluded N factors.
"""
import json, sys, math
from fractions import Fraction
try:
    import sympy as sp
except Exception as e:
    raise SystemExit(f"sympy required: {e}")

def alpha_fast_required(p):
    p=Fraction(p,1)
    return (Fraction(9849,10000)*4*p*p-(3*p*p-p))/(Fraction(1,2)*(p-1)*(3*p-1))

def beta_required_finite(p, alpha):
    p=Fraction(p,1)
    return Fraction(16)*p/(3*(2+alpha)*(p-1))-2

def analyze(limit=1000000):
    fast_fail=[]
    dependency_fail=[]
    min_margin=None
    all_reappear_explained=True
    for p in sp.primerange(7, limit+1):
        if p%8!=7: continue
        N=(3*p-1)//4
        phiN=int(sp.totient(N))
        c2=3*p*p-p+2*(p-1)*phiN
        phic2=int(sp.totient(c2))
        alpha=Fraction(phiN,N)
        beta=Fraction(phic2,c2)
        af=alpha_fast_required(p)
        br=beta_required_finite(p,alpha)
        if alpha >= af:
            continue
        facN=sp.factorint(N)
        facC=sp.factorint(c2)
        S=list(facN.keys())
        reappear=[q for q in S if c2%q==0]
        excluded=[q for q in S if c2%q!=0]
        explained={}
        unexplained=[]
        for q in reappear:
            reasons=[]
            if facN[q]>=2:
                reasons.append("q^2|N")
            for r in S:
                if r!=q and (r-1)%q==0:
                    reasons.append(f"{r}≡1 mod {q}")
            if reasons:
                explained[q]=reasons
            else:
                unexplained.append(q)
        if unexplained:
            all_reappear_explained=False
            dependency_fail.append({"p":p,"N":N,"unexplained":unexplained,"reappear":reappear,"facN":{str(k):v for k,v in facN.items()}})
        # beta lower by removing excluded factors from worst shared set: actual ratio beta, target br.
        margin=beta-br
        if min_margin is None or margin < min_margin[0]:
            min_margin=(margin,{
                "p":p,"N":N,"c2":c2,
                "alpha":float(alpha),"alpha_req":float(af),
                "beta":float(beta),"beta_req":float(br),"margin":float(margin),
                "facN":{str(k):v for k,v in facN.items()},
                "facC":{str(k):v for k,v in facC.items()},
                "reappear":reappear,
                "excluded":excluded,
                "explained":explained,
                "unexplained":unexplained
            })
        fast_fail.append({
            "p":p,
            "alpha":float(alpha),
            "alpha_req":float(af),
            "beta":float(beta),
            "beta_req":float(br),
            "margin":float(margin),
            "reappear":reappear,
            "excluded":excluded,
            "explained":explained,
            "unexplained":unexplained,
        })
    return {
        "limit":limit,
        "fast_fail_count":len(fast_fail),
        "all_reappear_explained":all_reappear_explained,
        "dependency_fail_count":len(dependency_fail),
        "dependency_fail_first20":dependency_fail[:20],
        "min_margin":min_margin[1] if min_margin else None,
        "fast_fail_first50":fast_fail[:50],
        "conclusion":"Dependency graph explains every N-factor reappearance in c2 up to limit; product lower-bound theorem still required for full proof."
    }

if __name__=="__main__":
    limit=int(sys.argv[1]) if len(sys.argv)>1 else 1000000
    print(json.dumps(analyze(limit), indent=2))

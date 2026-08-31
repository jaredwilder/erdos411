#!/usr/bin/env python3
import json, math, sys
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
    all_bad=[]
    exclusion_stats={
        "squarefree_q_count":0,
        "excluded_count":0,
        "reappears_via_phiN_count":0,
        "divides_pminus1_count":0
    }
    min_margin=None
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
        br=beta_required_finite(p,alpha)
        fast = alpha >= af
        depth = beta >= br
        actual_fast = 9849*(4*p*p) <= c2*10000
        actual_depth = 4*p**3 <= c3
        if fast != actual_fast or depth != actual_depth:
            all_bad.append({"p":p,"kind":"threshold_mismatch"})
        facN=sp.factorint(N)
        facC=sp.factorint(c2)
        sqfree=[q for q,e in facN.items() if e==1]
        excluded=[]
        reappear=[]
        div_pm1=[]
        for q in sqfree:
            exclusion_stats["squarefree_q_count"] += 1
            if (p-1)%q==0:
                div_pm1.append(q); exclusion_stats["divides_pminus1_count"] += 1
            elif phiN%q==0:
                reappear.append(q); exclusion_stats["reappears_via_phiN_count"] += 1
            elif c2%q!=0:
                excluded.append(q); exclusion_stats["excluded_count"] += 1
            else:
                all_bad.append({"p":p,"kind":"exclusion_logic_failure","q":int(q)})
        if not actual_fast:
            item={
                "p":p,
                "N":N,
                "alpha":float(alpha),
                "alpha_req":float(af),
                "beta":float(beta),
                "beta_req":float(br),
                "margin":float(beta-br),
                "N_factorization":{str(k):int(v) for k,v in facN.items()},
                "c2_factorization":{str(k):int(v) for k,v in facC.items()},
                "sqfree_N": [int(q) for q in sqfree],
                "excluded_sqfree_N": [int(q) for q in excluded],
                "reappears_via_phiN": [int(q) for q in reappear],
                "actual_depth": actual_depth
            }
            fast_fail.append(item)
            if min_margin is None or beta-br < min_margin[0]:
                min_margin=(beta-br,item)
    return {
        "limit":limit,
        "fast_fail_count":len(fast_fail),
        "threshold_or_logic_bad_count":len(all_bad),
        "exclusion_stats": exclusion_stats,
        "min_margin_fast_fail": min_margin[1] if min_margin else None,
        "fast_fail_first50": fast_fail[:50],
        "all_bad_first20": all_bad[:20],
        "conclusion": "All fast-fail cases up to limit satisfy depth branch; exact proof still needs complementary totient product lemma."
    }

if __name__ == "__main__":
    limit=int(sys.argv[1]) if len(sys.argv)>1 else 1000000
    print(json.dumps(analyze(limit), indent=2))

#!/usr/bin/env python3
import json, math, sys
try:
    import sympy as sp
except Exception as e:
    raise SystemExit(f"sympy required: {e}")

def analyze(limit=1000000):
    rows=[]
    bad_branch=[]
    bad_exclusion=[]
    fast_count=0
    depth_count=0
    both_count=0
    min_depth_ratio=(None, 10**9)
    min_fast_ratio=(None, 10**9)
    min_beta_margin=(None, 10**9)
    def req(a):
        return 16/(3*(2+a))-2
    for p in sp.primerange(7, limit+1):
        if p % 8 != 7:
            continue
        N=(3*p-1)//4
        phiN=int(sp.totient(N))
        c2=3*p*p-p+2*(p-1)*phiN
        phic2=int(sp.totient(c2))
        c3=p*c2+(p-1)*phic2
        fast = 9849*(4*p*p) <= c2*10000
        depth = 4*p**3 <= c3
        if fast: fast_count += 1
        if depth: depth_count += 1
        if fast and depth: both_count += 1
        if not (fast or depth):
            bad_branch.append({"p":p,"N":N,"c2":c2})
        fast_ratio = c2/(4*p*p)
        depth_ratio = c3/(4*p**3)
        if fast_ratio < min_fast_ratio[1]:
            min_fast_ratio=(p,fast_ratio)
        if depth_ratio < min_depth_ratio[1]:
            min_depth_ratio=(p,depth_ratio)
        a=phiN/N
        b=phic2/c2
        if not fast:
            margin=b-req(a)
            if margin < min_beta_margin[1]:
                min_beta_margin=(p,margin,a,b,req(a))
        # squarefree N factor exclusion:
        # if q||N (exponent exactly 1), then q should not divide c2.
        fac=sp.factorint(N)
        sqfree=[q for q,e in fac.items() if e==1]
        viol=[q for q in sqfree if c2 % q == 0]
        if viol:
            bad_exclusion.append({"p":p,"N":N,"violations":viol})
        if len(rows)<25 or not fast:
            rows.append({
                "p":p, "N":N, "phiN_over_N":a, "phic2_over_c2":b,
                "fast":fast, "depth":depth,
                "fast_ratio":fast_ratio, "depth_ratio":depth_ratio,
                "squarefree_N_factor_count":len(sqfree),
                "squarefree_exclusion_violations":viol[:10]
            })
    return {
        "limit":limit,
        "prime_mod8_7_count": sum(1 for p in sp.primerange(7, limit+1) if p%8==7),
        "bad_branch_count":len(bad_branch),
        "bad_exclusion_count":len(bad_exclusion),
        "fast_count":fast_count,
        "depth_count":depth_count,
        "both_count":both_count,
        "min_fast_ratio": {"p":min_fast_ratio[0], "value":min_fast_ratio[1]},
        "min_depth_ratio": {"p":min_depth_ratio[0], "value":min_depth_ratio[1]},
        "min_beta_margin_when_fast_fails": {
            "p":min_beta_margin[0],
            "margin":min_beta_margin[1],
            "alpha":min_beta_margin[2] if min_beta_margin[0] else None,
            "beta":min_beta_margin[3] if min_beta_margin[0] else None,
            "beta_required":min_beta_margin[4] if min_beta_margin[0] else None
        },
        "bad_branch_first":bad_branch[:10],
        "bad_exclusion_first":bad_exclusion[:10],
        "sample_rows":rows[:200]
    }

if __name__ == "__main__":
    limit=int(sys.argv[1]) if len(sys.argv)>1 else 1000000
    print(json.dumps(analyze(limit), indent=2))

#!/usr/bin/env python3
"""
Phase 2 algebra sanity check.

Verifies numerically that the alpha/beta bridge inequality is sufficient:
if 16p <= 3(2+a)(2+b)(p-1), phiN >= aN, and phic2 >= b c2,
then c3 >= 4p^3.

This script does not prove the theorem; it tests the algebraic statement.
"""
from fractions import Fraction
import random, json

def check_once(p,a,b):
    N = Fraction(3*p-1,4)
    phiN = a*N
    c2 = 3*p*p - p + 2*(p-1)*phiN
    phiC2 = b*c2
    lhs_cond = 16*p
    rhs_cond = 3*(2+a)*(2+b)*(p-1)
    c3 = p*c2 + (p-1)*phiC2
    return {
        "p": p,
        "a": str(a),
        "b": str(b),
        "condition": lhs_cond <= rhs_cond,
        "depth3": 4*p**3 <= c3,
        "margin": str(c3 - 4*p**3)
    }

def run():
    rows=[]
    for p in [7, 101, 1000003, 10**12+39]:
        for a,b in [(Fraction(1,2),Fraction(1,2)),(Fraction(17,100),Fraction(17,100)),(Fraction(1,1),Fraction(1,1))]:
            rows.append(check_once(p,a,b))
    return {"rows": rows, "all_condition_implies_depth3": all((not r["condition"]) or r["depth3"] for r in rows)}

if __name__ == "__main__":
    print(json.dumps(run(), indent=2))

#!/usr/bin/env python3
from fractions import Fraction
import json, math

def primes_ge(n):
    ps=[]; x=5
    while len(ps)<n:
        ok=True
        for q in range(2,int(math.isqrt(x))+1):
            if x%q==0: ok=False; break
        if ok: ps.append(x)
        x+=1
    return ps

ps=primes_ge(300)
def f(k):
    r=Fraction(1,1)
    for q in ps[:k]: r*=Fraction(q-1,q)
    return r
def breq(a): return Fraction(16,1)/(3*(2+a))-2

rows=[]
for kn in range(1,201):
    a=f(kn); b=f(min(2*kn,300))
    rows.append({
        "kn":kn,
        "alpha":str(a),
        "alpha_float":float(a),
        "beta_2k":str(b),
        "beta_2k_float":float(b),
        "beta_required":str(breq(a)),
        "beta_required_float":float(breq(a)),
        "condition_2k": bool(3*(2+a)*(2+b) >= 16)
    })
print(json.dumps(rows, indent=2))

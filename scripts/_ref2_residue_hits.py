"""Surface the 6 positive-branch residue hits: integer (s,t) on the hyperbola.
Each satisfies A(s-1)(t-1) = B*s*t + 2 identically — verify, and show WHY rejected."""
import json
from math import isqrt
from sympy import isprime, factorint

hits = []
with open("_ref2_divisor_terminals.jsonl") as f:
    for line in f:
        d = json.loads(line)
        A, B, K = d["A"], d["B"], d["K"]
        c = A - B
        mx = d["P"][-1]
        fac = {int(k): v for k, v in d["K_factors"].items()}
        divs = [1]
        for q, e in fac.items():
            divs = [x * q**i for x in divs for i in range(e + 1)]
        rt = isqrt(K)
        for u in divs:
            if u > rt: continue
            v = K // u
            if (u + A) % c == 0 and (v + A) % c == 0:
                s, t = (u + A) // c, (v + A) // c
                eq = A * (s - 1) * (t - 1) == B * s * t + 2
                hits.append({
                    "P": d["P"], "s": s, "t": t, "eq_holds": eq,
                    "s_gt_mx": s > mx, "s_prime": isprime(s), "t_prime": isprime(t),
                    "s_fac": str(factorint(s)) if not isprime(s) else "prime",
                    "t_fac": str(factorint(t)) if not isprime(t) else "prime",
                })
for h in hits:
    print(json.dumps(h))
print("total:", len(hits))

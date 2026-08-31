"""REFUTER 2 phase 2: INDEPENDENT re-solve of ALL divisor-mode terminals.

For each terminal (P, A, B, c=A-B, K=AB+2c):
  every solution (s,t), s<t primes > max(P), of A(s-1)(t-1) = B*s*t + 2
  satisfies (c*s - A)(c*t - A) = K. Since K>0 both factors share sign;
  negative-sign points force min(s,t) < 1 (proved: t>0 & cs<A => As-A+2<0 => s<1),
  so all genuine pairs come from u = c*s - A in divisors(K), v = K/u = c*t - A.

Independence: own divisor enumeration from the (multiply-back verified) prime
factorization, own primality gate for factors (BPSW isprime here; random-base
MR repeated in phase 3 on the sample), own residue/branch logic, own equation
check. Chain conditions are applied ONLY as a second pass so that any
equation-satisfying pair excluded by chain conditions is surfaced loudly.
"""
import json, sys
from math import isqrt, prod
from sympy import isprime

EQ_PAIRS = []        # all equation-satisfying prime pairs (pre-chain)
EQ_PAIRS_SUBMX = []  # equation pairs with s <= mx (would be missed by try_pair)
CHAIN_EXCLUDED = []  # equation pairs that chain conditions would drop
NEG_CANDIDATES = []  # negative-branch residue hits (expect each to have min<=0)
MISMATCH = []        # terminals where my found != tree found

prime_cache = {}
def is_p(n):
    if n < 2: return False
    r = prime_cache.get(n)
    if r is None:
        r = isprime(n)
        prime_cache[n] = r
    return r

def divisors_from(fac):
    divs = [1]
    for q, e in fac.items():
        qe = [q ** i for i in range(e + 1)]
        divs = [d * w for d in divs for w in qe]
    return divs

n_term = 0
tot_div = 0
pos_residue_hits = 0
neg_residue_hits = 0
factor_primality_fail = 0

with open("_ref2_divisor_terminals.jsonl") as f:
    for line in f:
        d = json.loads(line)
        P, A, B, K = d["P"], d["A"], d["B"], d["K"]
        c = A - B
        mx = P[-1]
        assert K == A * B + 2 * c
        assert K < A * A and K > A  # negative branch needs u,v < A: possible since K < A^2; A>K impossible
        fac = {int(k): v for k, v in d["K_factors"].items()}
        assert prod(q ** e for q, e in fac.items()) == K
        for q in fac:
            if not is_p(q):
                factor_primality_fail += 1
                print("FACTOR NOT PRIME:", q, "at P=", P)
        divs = divisors_from(fac)
        tot_div += len(divs)
        my_found = []
        rt = isqrt(K)
        for u in divs:
            if u > rt: continue
            v = K // u
            # ---- positive branch: cs-A = u, ct-A = v (s <= t since u <= v)
            if (u + A) % c == 0 and (v + A) % c == 0:
                pos_residue_hits += 1
                s, t = (u + A) // c, (v + A) // c
                if s != t and is_p(s) and is_p(t):
                    if A * (s - 1) * (t - 1) == B * s * t + 2:
                        lo, hi = min(s, t), max(s, t)
                        EQ_PAIRS.append((P, lo, hi))
                        if lo <= mx:
                            EQ_PAIRS_SUBMX.append((P, lo, hi))
                        else:
                            ok = all((lo - 1) % p != 0 for p in P) and \
                                 all((hi - 1) % p != 0 for p in P) and (hi - 1) % lo != 0
                            if ok:
                                my_found.append([lo, hi])
                            else:
                                CHAIN_EXCLUDED.append((P, lo, hi))
            # ---- negative branch: A-cs = u', A-ct = v', {u',v'} = {u,v}, need both < A
            if u < A and v < A:
                if (A - u) % c == 0 and (A - v) % c == 0:
                    neg_residue_hits += 1
                    s2, t2 = (A - v) // c, (A - u) // c   # s2 <= t2
                    NEG_CANDIDATES.append((P, s2, t2))
                    # proof says min < 1; a prime pair here would refute
                    if s2 > mx and t2 > s2 and is_p(s2) and is_p(t2) and \
                       A * (s2 - 1) * (t2 - 1) == B * s2 * t2 + 2:
                        print("NEGATIVE-BRANCH SOLUTION (refutes!):", P, s2, t2)
                        EQ_PAIRS.append((P, s2, t2))
        if sorted(my_found) != sorted(d["found"]):
            MISMATCH.append((P, my_found, d["found"]))
            print("MISMATCH at P=", P, "mine:", my_found, "tree:", d["found"])
        n_term += 1
        if n_term % 20000 == 0:
            print(f"  ..{n_term} terminals, {tot_div} divisors", file=sys.stderr, flush=True)

print(json.dumps({
    "terminals_resolved": n_term,
    "total_divisors_enumerated": tot_div,
    "pos_residue_hits": pos_residue_hits,
    "neg_residue_hits": neg_residue_hits,
    "factor_primality_fail": factor_primality_fail,
    "equation_pairs_prechain": len(EQ_PAIRS),
    "equation_pairs_s_below_mx": len(EQ_PAIRS_SUBMX),
    "chain_excluded_pairs": len(CHAIN_EXCLUDED),
    "neg_candidates": len(NEG_CANDIDATES),
    "mismatches": len(MISMATCH),
}, indent=1))
for tag, lst in [("EQ", EQ_PAIRS), ("SUBMX", EQ_PAIRS_SUBMX), ("CHAINX", CHAIN_EXCLUDED)]:
    for row in lst[:20]:
        print(tag, row)
# negative-branch candidates: show extremes, verify all have s2 < 5 (proof says < 1)
bad_neg = [r for r in NEG_CANDIDATES if r[1] >= 5]
print("neg candidates with s2 >= 5:", len(bad_neg), bad_neg[:10])
if NEG_CANDIDATES:
    mx_s2 = max(r[1] for r in NEG_CANDIDATES)
    print("max s2 over all neg candidates:", mx_s2)

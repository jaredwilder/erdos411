"""Adversarial independent verification of the EG#411 omega-ladder algebra (2026-06-10 audit)."""
import sympy as sp
from sympy import symbols, expand, simplify, isprime, divisors, primerange, totient

p, q, r, s = symbols('p q r s', positive=True, integer=True)
c, d = symbols('c d', positive=True, integer=True)
ok = []

# 1. Two-prime elimination: 3(p-1)(q-1)=2pq+2  <=>  (p-3)(q-3)=8
lhs2 = expand(3*(p-1)*(q-1) - (2*p*q + 2))             # pq - 3p - 3q + 1
ok.append(("(p-3)(q-3)=8 identity", simplify(expand((p-3)*(q-3) - 8) - lhs2) == 0))

# 2. Three-prime p=5: 12(q-1)(r-1) = 10qr + 2  <=>  (q-6)(r-6)=31
lhs3a = expand(12*(q-1)*(r-1) - (10*q*r + 2))          # 2qr - 12q - 12r + 10
ok.append(("(q-6)(r-6)=31 [p=5]", simplify(expand(2*((q-6)*(r-6) - 31)) - lhs3a) == 0))
ok.append(("31 prime; q=7,r=37 unique", isprime(31) and (7-6)*(37-6) == 31 and isprime(7) and isprime(37)))

# 3. Three-prime p=7: 18(q-1)(r-1) = 14qr + 2  <=>  (2q-9)(2r-9)=65
lhs3b = expand(18*(q-1)*(r-1) - (14*q*r + 2))          # 4qr - 18q - 18r + 16
ok.append(("(2q-9)(2r-9)=65 [p=7]", simplify(expand((2*q-9)*(2*r-9) - 65) - lhs3b) == 0))
sols65 = []
for d1 in divisors(65):
    if (d1+9) % 2 == 0:
        qq = (d1+9)//2; d2 = 65//d1
        if (d2+9) % 2 == 0:
            rr = (d2+9)//2
            if qq < rr and isprime(qq) and isprime(rr) and qq > 7:
                sols65.append((qq, rr))
ok.append(("[p=7,3primes] no solutions q>7", sols65 == []))

# 4a. Three-prime cap p>=11: 1000P <= 1331Q & 3Q=2P+2  =>  338P <= 2662; P>=1331 kills
ok.append(("338*pqr<=2662 arith", 3*1000 - 1331*2 == 338 and 1331*2 == 2662 and 338*1331 > 2662))
# 4b. Four-prime cap p>=11: 10000P <= 14641Q & 3Q=2P+2  =>  718P <= 29282; P>=14641 kills
ok.append(("718*pqrs<=29282 arith", 3*10000 - 14641*2 == 718 and 14641*2 == 29282 and 718*14641 > 29282))

# 5. Four-prime (5,7): 72(r-1)(s-1) = 70rs + 2  <=>  (r-36)(s-36) = 1261
lhs47 = expand(72*(r-1)*(s-1) - (70*r*s + 2))          # 2rs - 72r - 72s + 70
ok.append(("(r-36)(s-36)=1261 [5,7]", simplify(expand(2*((r-36)*(s-36) - 1261)) - lhs47) == 0))
ok.append(("1261=13*97", 13*97 == 1261 and isprime(13) and isprime(97)))
ok.append(("divisors of 1261 below 36 = {1,13}", sorted(x for x in divisors(1261) if x < 36) == [1, 13]))
ok.append(("branch e=0: r=37,s=1297", isprime(37) and isprime(1297) and (37-36)*(1297-36) == 1261))
ok.append(("branch e=12: r=49 composite", not isprime(49) and (49-36) == 13))
sols1261 = []
for d1 in divisors(1261):
    rr = d1 + 36; ss = 1261//d1 + 36
    if rr < ss and isprime(rr) and isprime(ss) and rr > 7:
        sols1261.append((rr, ss))
ok.append(("[5,7] unique (r,s)=(37,1297)", sols1261 == [(37, 1297)]))

# 6. Four-prime (5,11): 120cd = 110(c+1)(d+1) + 2  =>  5cd = 55c + 55d + 56; mod-5 kill
lhs511 = expand(3*4*10*c*d - (2*5*11*(c+1)*(d+1) + 2))
ok.append(("[5,11] collapse 5cd=55c+55d+56", simplify(lhs511 - expand(2*(5*c*d - 55*c - 55*d - 56))) == 0))
ok.append(("[5,11] mod-5 kill (RHS=1 mod 5)", 55 % 5 == 0 and 56 % 5 == 1))

# 7. Four-prime (5,13): 144cd = 130(c+1)(d+1) + 2  =>  7cd = 65c + 65d + 66; (7r-72)(7s-72)=4687
lhs513 = expand(3*4*12*c*d - (2*5*13*(c+1)*(d+1) + 2))
ok.append(("[5,13] collapse 7cd=65c+65d+66", simplify(lhs513 - expand(2*(7*c*d - 65*c - 65*d - 66))) == 0))
iden513 = expand((7*(c+1) - 72)*(7*(d+1) - 72) - 4687)
ok.append(("(7r-72)(7s-72)=4687 identity", simplify(iden513 - expand(7*(7*c*d - 65*c - 65*d - 66))) == 0))
ok.append(("4687=43*109", 43*109 == 4687 and isprime(43) and isprime(109)))
sols513 = []
for d1 in divisors(4687):
    if (d1 + 72) % 7 == 0 and (4687//d1 + 72) % 7 == 0:
        rr = (d1+72)//7; ss = (4687//d1+72)//7
        if rr < ss and isprime(rr) and isprime(ss) and rr > 13:
            sols513.append((rr, ss))
ok.append(("[5,13] no solutions", sols513 == []))

# 8. Four-prime (7,11): 180cd = 154(c+1)(d+1) + 2  =>  13cd = 77c + 77d + 78; (13r-90)(13s-90)=6943
lhs711 = expand(3*6*10*c*d - (2*7*11*(c+1)*(d+1) + 2))
ok.append(("[7,11] collapse 13cd=77c+77d+78", simplify(lhs711 - expand(2*(13*c*d - 77*c - 77*d - 78))) == 0))
iden711 = expand((13*(c+1) - 90)*(13*(d+1) - 90) - 6943)
ok.append(("(13r-90)(13s-90)=6943 identity", simplify(iden711 - expand(13*(13*c*d - 77*c - 77*d - 78))) == 0))
ok.append(("6943=53*131", 53*131 == 6943 and isprime(53) and isprime(131)))
sols711 = []
for d1 in divisors(6943):
    if (d1 + 90) % 13 == 0 and (6943//d1 + 90) % 13 == 0:
        rr = (d1+90)//13; ss = (6943//d1+90)//13
        if rr < ss and isprime(rr) and isprime(ss) and rr > 11:
            sols711.append((rr, ss))
ok.append(("[7,11] no solutions r>11", sols711 == []))

# 9. p=5 second-prime cap (the q>=17 kill): 12Q'=10P'+2, 4096P'<=4913Q' => 22P'<=9826 <=> 11qrs<=4913
ok.append(("11*qrs<=4913 arith (q>=17 kill)", 12*4096 - 4913*10 == 22 and 4913*2 == 9826 and 22*4913 > 9826))
# 9b. p=7 second-prime cap: 9Q'=7P'+1 (Q'=bcd), 1728P'<=2197Q' => 9*1728P'<=2197(7P'+1) => 173P'<=2197
ok.append(("173*qrs<=2197 arith (q>=13 kill)", 9*1728 - 2197*7 == 173 and 173*2197 > 2197))

# 10. Candidate completeness for the case splits
ok.append(("primes in [5,10] = {5,7}", list(primerange(5, 11)) == [5, 7]))
ok.append(("p=5,w4: primes in (5,16] = {7,11,13}", list(primerange(6, 17)) == [7, 11, 13]))
ok.append(("p=7,w4: primes in (7,12] = {11}", list(primerange(8, 13)) == [11]))

# 11. Exceptional-prime arithmetic for the capstone
ok.append(("N=5 -> p=7", 3*7 == 4*5 + 1))
ok.append(("N=35 -> p=47", 3*47 == 4*35 + 1))
ok.append(("N=1295 -> p=1727=11*157 composite", 3*1727 == 4*1295 + 1 and 11*157 == 1727 and not isprime(1727)))
ok.append(("N=1679615 -> p=2239487=23*97369 composite",
           3*2239487 == 4*1679615 + 1 and 23*97369 == 2239487 and not isprime(2239487)))

# 12. Ground-truth solutions satisfy the equation
for n in (5, 35, 1295, 1679615):
    ok.append((f"3*phi({n}) = 2*{n}+2", 3*totient(n) == 2*n + 2))

# 13. FULL brute-force classification, omega<=4, all primes p<q<r (<2000), largest prime determined exactly.
primes = list(primerange(2, 2000))
found = []
for pp in primes:                                       # omega = 1
    if 3*(pp - 1) == 2*pp + 2:
        found.append((pp,))
for i, pp in enumerate(primes):                         # omega = 2
    A = 3*(pp - 1); den = A - 2*pp
    if den > 0 and (A + 2) % den == 0:
        qq = (A + 2)//den
        if qq > pp and isprime(qq):
            found.append((pp, qq))
for i, pp in enumerate(primes):                         # omega = 3
    for qq in primes[i+1:]:
        B = 3*(pp - 1)*(qq - 1); den = B - 2*pp*qq
        if den > 0 and (B + 2) % den == 0:
            rr = (B + 2)//den
            if rr > qq and isprime(rr):
                found.append((pp, qq, rr))
for i, pp in enumerate(primes):                         # omega = 4 (NO prune on p)
    for j in range(i+1, len(primes)):
        qq = primes[j]
        for k in range(j+1, len(primes)):
            rr = primes[k]
            C = 3*(pp - 1)*(qq - 1)*(rr - 1); den = C - 2*pp*qq*rr
            if den > 0 and (C + 2) % den == 0:
                ss = (C + 2)//den
                if ss > rr and isprime(ss):
                    found.append((pp, qq, rr, ss))
print("BRUTE-FORCE solutions (omega<=4, p<q<r<2000, last prime exact):", found)
expected = [(5,), (5, 7), (5, 7, 37), (5, 7, 37, 1297)]
ok.append(("brute force == {5, 35, 1295, 1679615}", found == expected))

# 14. Direct sieve check of ALL n up to 2,000,000 via totient sieve
LIM = 2_000_000
phi = list(range(LIM + 1))
for i in range(2, LIM + 1):
    if phi[i] == i:                                     # i prime
        for m in range(i, LIM + 1, i):
            phi[m] -= phi[m]//i
sols = [n for n in range(1, LIM + 1) if 3*phi[n] == 2*n + 2]
print("Sieve solutions n <= 2e6:", sols)
ok.append(("sieve(2e6) == [5, 35, 1295, 1679615]", sols == [5, 35, 1295, 1679615]))

fails = [name for name, v in ok if not v]
for name, v in ok:
    print(("PASS " if v else "FAIL ") + name)
print("VERDICT:", "ALL_PASS" if not fails else f"FAILURES: {fails}")

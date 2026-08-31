/* R4 PREP: find largest prime p ≡ 7 (mod 8) below 10^9, then run cambie_depth3_check */
default(realprecision, 30);
X = 10^9;
\\ search downward from X for largest prime with p % 8 == 7
p = X - 1;
while(p > 0, if(p % 8 == 7 && isprime(p), break); p = p - 1);
print("R4: boundary prime ≡ 7 mod 8 below 10^9 = ", p);
print("  p mod 8: ", p % 8);
print("  isprime: ", isprime(p));
\\ Run cambie_depth3_check at p
x = p;
N = (3*x - 1) / 4;
phi_N = eulerphi(N);
c2 = 3*x^2 - x + 2*(x-1)*phi_N;
lhs = 10000 * c2;
rhs = 9849 * 4 * x^2;
ratio = c2*1.0 / (4*x^2);
print("  N = (3p-1)/4 = ", N);
print("  phi(N) = ", phi_N);
print("  c2 = ", c2);
print("  c2/(4p^2) = ", ratio);
print("  threshold = 0.9849");
print("  level-1 short-circuit passes: ", lhs >= rhs);
print("  margin above threshold: ", ratio - 0.9849);
print("  R2 ref at p=999983: ratio 1.0545, margin 0.0696");
quit;

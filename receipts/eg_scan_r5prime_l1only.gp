default(realprecision, 30);
RMIN = 100.0;
PMIN = 0;
FAILS = 0;
CT = 0;
start_wall = getwalltime();
print("R5' scan: cambie_depth3_check over primes p ≡ 7 mod 8 in (10^8, 10^9]");
{
forprime(p = 100000001, 1000000000,
  if(p % 8 == 7,
    CT = CT + 1;
    N = (3*p - 1) / 4;
    phi_N = eulerphi(N);
    c2 = 3*p^2 - p + 2*(p-1)*phi_N;
    r = c2*1.0 / (4*p^2);
    if(r < 0.9849, FAILS = FAILS + 1; print("  FAIL p=", p, " r=", r));
    if(r < RMIN, RMIN = r; PMIN = p);
    if(CT % 1000000 == 0, elapsed_s = (getwalltime() - start_wall) / 1000; print("  progress CT=", CT, " RMIN_so_far=", RMIN, " at p=", PMIN, " elapsed=", elapsed_s, "s"))
  )
);
}
print("");
print("R5' COMPLETE:");
print("  total CT = ", CT);
print("  FAILS = ", FAILS);
print("  worst margin prime PMIN = ", PMIN);
print("  RMIN = ", RMIN);
print("  margin above threshold 0.9849 = ", RMIN - 0.9849);
print("  axiom holds: ", FAILS == 0);
quit;

default(realprecision, 30);
R3MIN = 100.0;
P3MIN = 0;
AXFAILS = 0;
L1FAILS = 0;
CT = 0;
start_wall = getwalltime();
print("R5'-L2 scan: FULL cambie_depth3_check (level 1 OR level 2) over (10^8, 10^9]");
{
forprime(p = 100000001, 1000000000,
  if(p % 8 == 7,
    CT = CT + 1;
    N = (3*p - 1) / 4;
    phi_N = eulerphi(N);
    c2 = 3*p^2 - p + 2*(p-1)*phi_N;
    r1 = c2*1.0 / (4*p^2);
    if(r1 < 0.9849,
      L1FAILS = L1FAILS + 1;
      c3 = p*c2 + (p-1)*eulerphi(c2);
      r2 = c3*1.0 / (4*p^3);
      if(r2 < 1.0, AXFAILS = AXFAILS + 1; print("AXIOM_FAIL p=", p, " r1=", r1, " r2=", r2));
      if(r2 < R3MIN, R3MIN = r2; P3MIN = p);
      if(L1FAILS % 10000 == 0, elapsed_s = (getwalltime() - start_wall) / 1000; print("  L2 progress L1FAILS=", L1FAILS, " R3MIN_so_far=", R3MIN, " at p=", P3MIN, " elapsed=", elapsed_s, "s"))
    )
  )
);
}
print("");
print("R5'-L2 COMPLETE:");
print("  total CT = ", CT);
print("  L1FAILS = ", L1FAILS);
print("  AXFAILS = ", AXFAILS);
print("  worst level-2 prime P3MIN = ", P3MIN);
print("  R3MIN = c3/(4p^3) = ", R3MIN);
print("  margin above 1.0 = ", R3MIN - 1.0);
print("  axiom holds in (10^8, 10^9]: ", AXFAILS == 0);
quit;

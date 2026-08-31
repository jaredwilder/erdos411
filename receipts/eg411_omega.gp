default(realprecision, 30);
OMEGAHIST_N = vector(20);
OMEGAHIST_C2 = vector(30);
CT = 0; L1FAILS = 0;
PHIONNMIN = 10.0; PHIONNMINp = 0;
start_wall = getwalltime();
print("EG#411 omega(N) distribution over L1FAILS in (10^8, 10^9]");
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
      omN = omega(N);
      omC2 = omega(c2);
      if(omN >= 1 && omN <= 20, OMEGAHIST_N[omN] = OMEGAHIST_N[omN] + 1);
      if(omC2 >= 1 && omC2 <= 30, OMEGAHIST_C2[omC2] = OMEGAHIST_C2[omC2] + 1);
      phi_ratio = phi_N * 1.0 / N;
      if(phi_ratio < PHIONNMIN, PHIONNMIN = phi_ratio; PHIONNMINp = p);
      if(L1FAILS % 10000 == 0, elapsed_s = (getwalltime() - start_wall) / 1000; print("  omega progress L1FAILS=", L1FAILS, " PHIONNMIN=", PHIONNMIN, " elapsed=", elapsed_s, "s"))
    )
  )
);
}
print("");
print("OMEGA DIST COMPLETE:");
print("  CT = ", CT, " L1FAILS = ", L1FAILS);
print("  OMEGAHIST_N (idx=omega(N)): ", OMEGAHIST_N);
print("  OMEGAHIST_C2 (idx=omega(c2)): ", OMEGAHIST_C2);
print("  min phi(N)/N = ", PHIONNMIN, " at p=", PHIONNMINp);
print("  total elapsed = ", (getwalltime() - start_wall) / 1000, "s");
quit;

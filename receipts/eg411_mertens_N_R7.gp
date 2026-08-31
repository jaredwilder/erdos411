default(realprecision, 30);
MIN_PER_OMEGA = vector(15, k, 10.0);
AT_P = vector(15);
start_wall = getwalltime();
print("R7-scale: min phi(N)/N per omega(N) at L1FAILS in (10^9, 10^10]");
{
forprime(p = 1000000001, 10000000000,
  if(p % 8 == 7,
    N = (3*p-1)/4;
    phi_N = eulerphi(N);
    c2 = 3*p^2 - p + 2*(p-1)*phi_N;
    r1 = c2*1.0 / (4*p^2);
    if(r1 < 0.9849,
      omN = omega(N);
      if(omN >= 1 && omN <= 15,
        r = phi_N * 1.0 / N;
        if(r < MIN_PER_OMEGA[omN], MIN_PER_OMEGA[omN] = r; AT_P[omN] = p)
      )
    )
  )
);
}
print("");
print("MIN PHI(N)/N PER OMEGA(N) at R7 scale:");
coprime6 = [5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59];
{
for(k = 1, 15,
  if(MIN_PER_OMEGA[k] < 10.0,
    theo = 1.0;
    for(j = 1, k, theo = theo * (1 - 1.0/coprime6[j]));
    print("  omega(N)=", k, " EMPIRICAL=", MIN_PER_OMEGA[k]);
    print("    structural (coprime to 6) Mertens=", theo);
    print("    ratio=", MIN_PER_OMEGA[k] / theo, " at p=", AT_P[k])
  )
);
}
print("elapsed=", (getwalltime()-start_wall)/1000, "s");
quit;

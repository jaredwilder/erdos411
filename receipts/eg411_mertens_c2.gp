default(realprecision, 30);
MIN_PER_OMEGA_C2 = vector(15, k, 10.0);
AT_P = vector(15);
start_wall = getwalltime();
print("Min phi(c2)/c2 per omega(c2) at R5' L1FAILS");
{
forprime(p = 100000001, 1000000000,
  if(p % 8 == 7,
    N = (3*p-1)/4;
    phi_N = eulerphi(N);
    c2 = 3*p^2 - p + 2*(p-1)*phi_N;
    r1 = c2*1.0 / (4*p^2);
    if(r1 < 0.9849,
      omC2 = omega(c2);
      if(omC2 >= 1 && omC2 <= 15,
        r = eulerphi(c2) * 1.0 / c2;
        if(r < MIN_PER_OMEGA_C2[omC2],
          MIN_PER_OMEGA_C2[omC2] = r;
          AT_P[omC2] = p
        )
      )
    )
  )
);
}
print("");
print("MIN_PHI_C2_OVER_C2_PER_OMEGA(c2):");
{
for(k = 1, 15,
  if(MIN_PER_OMEGA_C2[k] < 10.0,
    theo = 1.0;
    for(j = 1, k, theo = theo * (1 - 1.0/prime(j)));
    print("  omega(c2)=", k, " EMPIRICAL min phi/c2=", MIN_PER_OMEGA_C2[k]);
    print("    theoretical Mertens (smallest k primes from 2) = ", theo);
    print("    ratio = ", MIN_PER_OMEGA_C2[k] / theo);
    print("    at p=", AT_P[k])
  )
);
}
print("elapsed=", (getwalltime()-start_wall)/1000, "s");
quit;

default(realprecision, 30);
MIN_PER_OMEGA = vector(10, k, 10.0);
AT_P = vector(10);
AT_N = vector(10);
start_wall = getwalltime();
print("Min phi(N)/N per omega(N) for primes p ≡ 7 mod 8 in (10^8, 10^9]");
{
forprime(p = 100000001, 1000000000,
  if(p % 8 == 7,
    N = (3*p-1)/4;
    omN = omega(N);
    if(omN >= 1 && omN <= 10,
      r = eulerphi(N) * 1.0 / N;
      if(r < MIN_PER_OMEGA[omN],
        MIN_PER_OMEGA[omN] = r;
        AT_P[omN] = p;
        AT_N[omN] = N
      )
    )
  )
);
}
print("");
print("MIN_PHI_N_OVER_N_PER_OMEGA + theoretical Mertens comparison:");
{
for(k = 1, 10,
  if(MIN_PER_OMEGA[k] < 10.0,
    theo = 1.0;
    for(j = 1, k, theo = theo * (1 - 1.0/prime(j)));
    ratio = MIN_PER_OMEGA[k] / theo;
    print("  omega(N)=", k, " EMPIRICAL min phi(N)/N = ", MIN_PER_OMEGA[k]);
    print("    theoretical Mertens = prod_{i=1..", k, "}(1 - 1/p_i) = ", theo);
    print("    ratio empirical/theoretical = ", ratio);
    print("    achieved at p = ", AT_P[k], " N = ", AT_N[k]);
    print("    factor(N) = ", factor(AT_N[k]))
  )
);
}
print("elapsed=", (getwalltime()-start_wall)/1000, "s");
quit;

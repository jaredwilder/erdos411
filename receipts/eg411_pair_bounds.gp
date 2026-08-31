default(realprecision, 30);
MIN_PAIR = Map();
AT_P_PAIR = Map();
CT_PAIR = Map();
start_wall = getwalltime();
print("Per-(omega(N), omega(c2)) pair min c3/(4p^3) at R5' L1FAILS");
{
forprime(p = 100000001, 1000000000,
  if(p % 8 == 7,
    N = (3*p-1)/4;
    phi_N = eulerphi(N);
    c2 = 3*p^2 - p + 2*(p-1)*phi_N;
    r1 = c2*1.0 / (4*p^2);
    if(r1 < 0.9849,
      omN = omega(N);
      omC2 = omega(c2);
      c3 = p*c2 + (p-1)*eulerphi(c2);
      r2 = c3*1.0 / (4*p^3);
      key = [omN, omC2];
      if(!mapisdefined(MIN_PAIR, key),
        mapput(MIN_PAIR, key, r2);
        mapput(AT_P_PAIR, key, p);
        mapput(CT_PAIR, key, 1),
        cur = mapget(MIN_PAIR, key);
        mapput(CT_PAIR, key, mapget(CT_PAIR, key) + 1);
        if(r2 < cur, mapput(MIN_PAIR, key, r2); mapput(AT_P_PAIR, key, p))
      )
    )
  )
);
}
print("PAIR_COUNT=", #Vec(MIN_PAIR));
\\ Sort by key for deterministic output
keys = Vec(MIN_PAIR);
for(i = 1, #keys,
  vk = keys[i];
  print("  pair=", vk, " min_r2=", mapget(MIN_PAIR, vk), " count=", mapget(CT_PAIR, vk), " at_p=", mapget(AT_P_PAIR, vk))
);
print("elapsed=", (getwalltime()-start_wall)/1000, "s");
quit;

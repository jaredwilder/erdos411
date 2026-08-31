default(realprecision, 30);
start_wall = getwalltime();
print("EG#411 cross-class FIXED: cambie_depth3_check for p mod 8 ∈ {3, 7} in (10^7, 10^8]");
{
for(rclass = 3, 7,
  if(rclass == 3 || rclass == 7,
    FAILS = 0; CT = 0; L1FAILS = 0; DMIN = 100.0; PMIN = 0;
    forprime(p = 10000001, 100000000,
      if(p % 8 == rclass,
        CT = CT + 1;
        N = (3*p - 1) / 4;
        phi_N = eulerphi(N);
        c2 = 3*p^2 - p + 2*(p-1)*phi_N;
        r1 = c2*1.0 / (4*p^2);
        if(r1 < 0.9849,
          L1FAILS = L1FAILS + 1;
          c3 = p*c2 + (p-1)*eulerphi(c2);
          r2 = c3*1.0 / (4*p^3);
          if(r2 < 1.0, FAILS = FAILS + 1; print("  AXIOM_FAIL rclass=", rclass, " p=", p, " r2=", r2));
          if(r2 < DMIN, DMIN = r2; PMIN = p),
          if(r1 < DMIN, DMIN = r1; PMIN = p)
        )
      )
    );
    elapsed_s = (getwalltime() - start_wall) / 1000;
    print("rclass=", rclass, " CT=", CT, " L1FAILS=", L1FAILS, " AXFAILS=", FAILS, " DMIN=", DMIN, " at_p=", PMIN, " cumulative_s=", elapsed_s)
  )
);
}
print("");
print("CROSS-CLASS FIXED COMPLETE total=", (getwalltime() - start_wall) / 1000, "s");
quit;

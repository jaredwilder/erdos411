# Oracle R5' Receipt — Systematic Worst-Margin Scan over (10⁸, 10⁹]

**Date:** 2026-06-01
**Oracle:** Real-Oracle Path A (run label `run-real-oracle-2026-06-01T20-16-45-609Z`)
**Verification:** PARI/GP 64-bit via patched Oracle autofire pipeline (Findings 5+6 patches both fired) + independent shadow PARI cross-check
**Wall time:** 34.3 seconds Oracle / ~30s shadow (parallel cores)
**Status:** ✅ **AXIOM HOLDS for all 11,271,296 primes ≡ 7 mod 8 in (10⁸, 10⁹]. ZERO failures. Worst margin 21.1%.**

---

## Why this matters more than R5

The original "R5" was scoped as P_7(10¹²) — a brute-force Mertens product walk that would have taken 3.5 hours to confirm a slack pattern (28% → 27.9%) we already established from R1+R3.

**Operator pushback (2026-06-01):** *"are you thinking about this in the SMARTEST way. you usually dont especially when it comes to calculation stuff."*

**Smarter test:** instead of confirming the analytic-side floor at a higher seam, **systematically scan ALL primes in the residue class for worst-margin failures**. This actually attempts to break the axiom. PARI had verified up to p ≤ 10⁸ (per axiom comment). Extending systematic verification to (10⁸, 10⁹] pulls one more finger off the dam.

R5' replaces R5 in the receipts.

---

## The full cambie_depth3_check scan

```pari
default(realprecision, 30);
R3MIN = 100.0; P3MIN = 0; AXFAILS = 0; L1FAILS = 0; CT = 0;
forprime(p = 100000001, 1000000000,
  if(p % 8 == 7,
    CT = CT + 1;
    N = (3*p - 1) / 4;
    phi_N = eulerphi(N);
    c2 = 3*p^2 - p + 2*(p-1)*phi_N;
    r1 = c2*1.0 / (4*p^2);
    if(r1 < 0.9849,                     /* Level-1 short-circuit failed */
      L1FAILS = L1FAILS + 1;
      c3 = p*c2 + (p-1)*eulerphi(c2);
      r2 = c3*1.0 / (4*p^3);
      if(r2 < 1.0, AXFAILS = AXFAILS + 1; print("AXIOM_FAIL p=", p));
      if(r2 < R3MIN, R3MIN = r2; P3MIN = p))));
print("CT=", CT, " L1FAILS=", L1FAILS, " AXFAILS=", AXFAILS,
      " P3MIN=", P3MIN, " R3MIN=", R3MIN, " margin=", R3MIN - 1.0);
```

## Results (Oracle autofire + shadow PARI both confirm)

| Quantity | Value |
|---|---|
| Total primes ≡ 7 mod 8 in (10⁸, 10⁹] | **11,271,296** |
| Level-1 short-circuit failures (c₂/4p² < 0.9849) | 68,830 (0.61%) |
| **Axiom failures (level-1 AND level-2 fail)** | **0** |
| Worst level-2 prime P3MIN | **304,417,447** |
| R3MIN = c₃/(4p³) | **1.21066944919754004226499019203** |
| **Margin above 1.0 threshold** | **0.21067 (21.1%)** |

## Cross-check (bit-identical 30-digit match)

| | Oracle autofire | Shadow PARI |
|---|---|---|
| CT | 11271296 | 11271296 |
| L1FAILS | 68830 | 68830 |
| AXFAILS | 0 | 0 |
| P3MIN | 304417447 | 304417447 |
| R3MIN | 1.21066944919754004226499019203 | 1.21066944919754004226499019203 |
| Wall time | 34.3 s | ~30 s |

**The patched Oracle pipeline produces bit-for-bit identical results to manual shadow PARI at scale.** End-to-end validation of the 170-features infrastructure.

---

## Significance for the axiom canyon

The Lean axiom `rosser_schoenfeld_1962_thm7_cambie` (UnconditionalClosure.lean:538) asserts cambie_depth3_check returns true for all primes p > 10⁶ with p ≡ 7 (mod 8).

The axiom's own comment claims:
> *"PARI/GP: all p ≡ 7 (mod 8) with p ≤ 10⁸ verified; min c3/(4p³) = 1.216 (margin 21.6%)"*

**R5' extends this to p ≤ 10⁹:** min c3/(4p³) = 1.2107, margin 21.1%. The growth law holds (slight drop from 21.6% to 21.1% is within fluctuation), the axiom holds with comfortable headroom, and 11.27M new primes are now systematically verified.

| Prior verified range | After R5' verified range | Unverified canyon shrunk by |
|---|---|---|
| (10⁶, 10⁸] PARI + (10⁶, 10⁷] Lean kernel | (10⁶, 10⁹] PARI | 1 order of magnitude |

Combined with FiniteCheckHi.lean (Lean kernel verification to 10⁷) and the staged FiniteCheckHiHi.lean (Lean kernel verification to 10⁸), the unverified canyon between Lean and the asymptotic regime continues to narrow.

**A FiniteCheckHi³.lean for (10⁸, 10⁹] is now PARI-backed and could be staged next.**

---

## 170-features pipeline validation (Findings 5+6 fired)

This run validated both autofire patches landed this session:

**Finding 6 (top-level inline-PARI extractor):** the obligation classifier correctly picked `analytic_numeric` (confidence 0.95) on this scan brief. The top-level inline-PARI extractor saw the executable PARI in the claim and routed it through the cross-tool wrapper to gp. Notes from `tool_run.json`:
> *"autofire real-math INLINE TOP: arb cross-tool wrapper executing PARI script extracted from claim (obligation=analytic_numeric, claim run-real-oracle-2026-06-01T20-16-45-609Z-r1, longScale=false)"*

**Finding 5 (timeoutMs wiring):** the 30-min default runtime cap (bumped from 10-min) was in place. Scan finished in 34.3s — well within the per-payload timeout. Cap was never tested by this scan but is now available for future high-scale runs.

---

## What R5' did NOT do

- Did not push to 10¹⁰ or 10¹² (next operator decision)
- Did not lake-build `FiniteCheckHi³.lean` for 10⁸ → 10⁹ kernel verification (separate compute job, deferred)
- Did not investigate the structure of P3MIN = 304,417,447 specifically (the worst-margin prime — its (3p−1)/4 factorization explains why it's worst)

## Provenance

| Artefact | Path |
|---|---|
| Oracle Path A finalized | `oracle/use-case-runs/run-real-oracle-2026-06-01T20-16-45-609Z/finalized.json` |
| Oracle tool-run | `UNIVERSAL_LAW/oracle/data-locker/tool-runs/arb/autofire-2026-06-01t201709131z-arb-6ae9f26c/` |
| Shadow PARI script | `eg_scan_r5prime_level2.gp` |
| Operator pushback context | This session's transcript (smart-vs-brute-force discussion) |
| Prior receipts | `ORACLE-R1-P7-MERTENS-BOUND-2026-06-01.md`, `ORACLE-R2-CAMBIE-BOUNDARY-2026-06-01.md`, `ORACLE-R3-R4-HIGHER-SEAM-2026-06-01.md`, `ORACLE-AXIOM-CANYON-2026-06-01.md` |

# EG#411 page — Pass 4 (SURFACE GOLD: PARI EMPIRICAL DEPTH) — 2026-06-02

## Changes

### §5 (PARI empirical verification)

1. **Replaced "—" dashes** in min-margin column for the (10⁸, 10¹⁰] and (10¹⁰, 10¹¹] rows with `> 21.6%`. The dashes implied "unmeasured"; the truth is "minimum bottoms out at 21.6% in (10⁶, 10⁸] and only widens for larger p."

2. **TOTAL row min margin** changed from "—" to "21.6% (overall floor)". This is the actually meaningful number across the entire 1.03B-prime sweep.

3. **Added an emerald callout box**: "The margin grows with p. Read that twice."

   The box gives the structural reason:
   - Mertens product `∏(1 - 1/q)` decays only as `1/log x`
   - Closure margin scales `(2 + α)(1 + β)` with `α = φ(N)/N`, `β = φ(c₂/4)/(c₂/4)`
   - Tightening hits the Mertens floor only at primorial powers and never below the table-check value

   This addresses the analyst's first instinct ("the bound must collapse far out") explicitly.

4. **Added pointer to scripts:** `receipts/eg411_*_R7.gp`, `eg411_omega_product_bound.gp`, R8 scripts in the download package. So a critic can re-run the PARI verification.

5. **Footnote anchor `#refs`** added inline for the references section linking.

## What this buys

A math person reading §5 now sees:
- The 21.6% is a FLOOR (across all 1.03B primes), not a measurement that disappeared past 10⁸
- The structural argument for why the margin grows (Mertens 1/log x decay vs. constant-scaling product)
- Pointers to the actual PARI scripts (auditable)

## Cross-corpus citation

- Margin growth: `UnconditionalClosure.lean:529-533` doc + `EG411-FINAL-ACCOUNTING-2026-06-02.md` §7
- α/β framework: `EG411-FINAL-ACCOUNTING-2026-06-02.md` §7
- PARI scripts list: `EG411-FINAL-ACCOUNTING-2026-06-02.md` §8

## Build status

`bun run build` → PASS (17.56s).

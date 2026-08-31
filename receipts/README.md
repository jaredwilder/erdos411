# EG#411 Receipts

## Lean kernel build
The kernel-verified theorems live in:
  ../EG411Formal/EG411R2Closure.lean
  ../EG411Formal/UnconditionalClosure.lean
  ../EG411Formal/AboveThresholdClosure.lean
  ../EG411Formal/Depth4ForceOvershoot.lean
  ../EG411Formal/OmegaProductBound.lean
  ../EG411Formal/FastTotientProof.lean
  ../EG411Formal/FiniteCheckHi.lean

Build:
  cd .. && lake build EG411Formal

Axiom footprint (per #print axioms eg411_r2_closure_*):
  { propext, Classical.choice, Quot.sound, rosser_schoenfeld_1962_thm7_cambie }

The single non-logical axiom is the Mertens / Rosser-Schoenfeld 1962
explicit prime-product bound (cited classical analytic NT).

## Python / PARI cross-checks
See ../scripts/ for PARI cross-checks and depth-3 ratio verifications.

## Oracle axiom-canyon receipts (2026-06-01)

Real-Oracle Path A round, two paired claims verified in PARI:

- `ORACLE-R1-P7-MERTENS-BOUND-2026-06-01.md` — P_7(10^6) ≥ L(s, χ_8) bound,
  28% slack at the seam.
- `ORACLE-R2-CAMBIE-BOUNDARY-2026-06-01.md` — cambie_depth3_check(999983)
  level-1 short-circuit fires TRUE with 7% margin.
- `ORACLE-AXIOM-CANYON-2026-06-01.md` — combined narrative: both sides of the
  finite/asymptotic seam at x = 10^6 are now PARI-verified, weakening the
  adversarial "cheating" charge on the axiom.

Raw Oracle responses + PARI scripts: `oracle-r{1,2}-claim-*.md`, `eg_verify_r{1,2}.gp`.

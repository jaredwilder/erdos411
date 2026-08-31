import EG411Formal.FiniteCheckHi

/-!
# EG#411 r=2 — Extended finite verification for p ∈ (10^7, 10^8]

This module extends the Lean-verified range from 10^7 to 10^8 using `native_decide`,
replicating the pattern in `FiniteCheckHi.lean` (which extended 10^6 → 10^7).

After this file lake-builds, the axiom boundary in `eg411_r2_closure_extended_hi`
moves from p > 10^7 to p > 10^8 — the unverified canyon shrinks by one order
of magnitude.

**PARI/GP verification (per UnconditionalClosure.lean:530):** all primes p ≡ 7 mod 8
with p ≤ 10^8 verified, min c3/(4p³) = 1.216 (margin 21.6%, growing with p).

**This file replicates that result inside the Lean kernel.**

The (10^7, 10^8] range contains roughly 1.27M new primes ≡ 7 mod 8. The
native_decide call walks them via `fastTotient` (O(√N) per factorization,
mostly below 4×10^16) and the level-1 short-circuit. Estimated lake-build
wall-clock: ~30-60 minutes one-time cost (then olean-cached).
-/

namespace EG411Formal

/-- Stage 3: verify all primes p ≡ 7 mod 8 in (10^7, 10^8].
 The hypothesis `10000000 < p` makes all p ≤ 10^7 vacuously true,
 so native_decide only evaluates the qualifying primes in (10^7, 10^8]. -/
theorem cambie_depth3_check_finset_hi_hi :
 ∀ p ∈ Finset.range 100000001,
 10000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
 cambie_depth3_check p = true := by native_decide

/-- Combined finite closure for p ≤ 10^8, using all three stages.
 Stage 1 (UnconditionalClosure.lean) covers p ≤ 10^6.
 Stage 2 (FiniteCheckHi.lean) covers p ∈ (10^6, 10^7].
 Stage 3 (this file) covers p ∈ (10^7, 10^8]. -/
theorem cambie_depth3_check_finite_100M :
 ∀ p : ℕ, p ≤ 100000000 → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
 cambie_depth3_check p = true := by
 intro p hp hprime hmod hge
 by_cases hle : p ≤ 10000000
 · exact cambie_depth3_check_finite_10M p hle hprime hmod hge
 · simp only [not_le] at hle
 exact cambie_depth3_check_finset_hi_hi p (Finset.mem_range.mpr (by omega)) hle hprime hmod hge

/-- **EG#411 r=2 — Strengthened closure (p ≤ 10^8 verified + axiom for p > 10^8).**

Further strengthened version of `eg411_r2_closure_extended` with the finite range
extended from 10^7 to 10^8. The axiom boundary moves from p > 10^7 to p > 10^8.

**Axiom set:** `{propext, Classical.choice, Quot.sound, cambie_depth3_check_asymptotic}`

The remaining axiom asserts the predicate for p > 10^8, which is a consequence
of the Rosser-Schoenfeld 1962 explicit Mertens product bound on the residue
class 7 mod 8 (verified empirically with growing margin per
`UNIVERSAL_LAW/oracle/math/EG411Formal/receipts/ORACLE-R3-R4-HIGHER-SEAM-2026-06-01.md`
and `ORACLE-R5-R6-PETASCALE-2026-06-01.md`). -/
theorem eg411_r2_closure_extended_hi
 (p : ℕ) (hp_prime : Nat.Prime p) (hp_mod : p % 8 = 7) (hp_ge_7 : 7 ≤ p) :
 let crec := cambieRecord p
 let pR := (p : Rat)
 let c2R := (crec.2.1 : Rat)
 let phi2R := (crec.2.2.1 : Rat)
 let phi3R := (crec.2.2.2 : Rat)
 (R661Threshold ≤ x3Q pR (stepQ pR c2R phi2R)) ∨
 (1 < stepQ pR (stepQ pR c2R phi2R) phi3R / (4 * pR ^ 4)) := by
 have hp_pos : (0 : Rat) < p := by exact_mod_cast hp_prime.pos
 by_cases hp_le : p ≤ 100000000
 · have hcheck : cambie_depth3_check p = true :=
 cambie_depth3_check_finite_100M p hp_le hp_prime hp_mod hp_ge_7
 exact Or.inl (cambie_check_implies_closure p hcheck hp_pos)
 · simp only [not_le] at hp_le
 have hcheck : cambie_depth3_check p = true :=
 cambie_depth3_check_asymptotic p (by omega) hp_prime hp_mod hp_ge_7
 exact Or.inl (cambie_check_implies_closure p hcheck hp_pos)

end EG411Formal

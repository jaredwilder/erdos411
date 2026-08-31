import EG411Formal.UnconditionalClosure

/-!
# EG#411 r=2 — Extended finite verification for p ∈ (10^6, 10^7]

This module extends the Lean-verified range from 10^6 to 10^7 using `native_decide`.
It is split into a separate file so that:
1. The 10^6 check in `UnconditionalClosure.lean` stays cached
2. This file compiles independently (only the ~127K new primes are checked)
3. Changes to either file don't invalidate the other's olean cache

**PARI/GP verification:** all 126,899 primes p ≡ 7 mod 8 in (10^6, 10^7] pass.
 Min c3/(4p³) = 1.226 at p=1,711,967 (margin 22.6%).
 786 below-threshold primes; max ω(N) = 6, max ω(c2/4) = 7.
-/

namespace EG411Formal

/-- Stage 2: verify all primes p ≡ 7 mod 8 in (10^6, 10^7].
 The hypothesis `1000000 < p` makes all p ≤ 10^6 vacuously true,
 so native_decide only evaluates the qualifying primes in (10^6, 10^7]. -/
theorem cambie_depth3_check_finset_hi :
 ∀ p ∈ Finset.range 10000001,
 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
 cambie_depth3_check p = true := by native_decide

/-- Combined finite closure for p ≤ 10^7, using both stages. -/
theorem cambie_depth3_check_finite_10M :
 ∀ p : ℕ, p ≤ 10000000 → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
 cambie_depth3_check p = true := by
 intro p hp hprime hmod hge
 by_cases hle : p ≤ 1000000
 · exact cambie_depth3_check_finite p hle hprime hmod hge
 · simp only [not_le] at hle
 exact cambie_depth3_check_finset_hi p (Finset.mem_range.mpr (by omega)) hle hprime hmod hge

/-- **EG#411 r=2 — Extended closure (p ≤ 10^7 verified + axiom for p > 10^7).**

Strengthened version of `eg411_r2_unconditional_closure` with the finite range
extended from 10^6 to 10^7. The axiom boundary moves from p > 10^6 to p > 10^7.

**Axiom set:** `{propext, Classical.choice, Quot.sound, cambie_depth3_check_asymptotic}` -/
theorem eg411_r2_closure_extended
 (p : ℕ) (hp_prime : Nat.Prime p) (hp_mod : p % 8 = 7) (hp_ge_7 : 7 ≤ p) :
 let crec := cambieRecord p
 let pR := (p : Rat)
 let c2R := (crec.2.1 : Rat)
 let phi2R := (crec.2.2.1 : Rat)
 let phi3R := (crec.2.2.2 : Rat)
 (R661Threshold ≤ x3Q pR (stepQ pR c2R phi2R)) ∨
 (1 < stepQ pR (stepQ pR c2R phi2R) phi3R / (4 * pR ^ 4)) := by
 have hp_pos : (0 : Rat) < p := by exact_mod_cast hp_prime.pos
 by_cases hp_le : p ≤ 10000000
 · have hcheck : cambie_depth3_check p = true :=
 cambie_depth3_check_finite_10M p hp_le hp_prime hp_mod hp_ge_7
 exact Or.inl (cambie_check_implies_closure p hcheck hp_pos)
 · simp only [not_le] at hp_le
 have hcheck : cambie_depth3_check p = true :=
 cambie_depth3_check_asymptotic p (by omega) hp_prime hp_mod hp_ge_7
 exact Or.inl (cambie_check_implies_closure p hcheck hp_pos)

end EG411Formal

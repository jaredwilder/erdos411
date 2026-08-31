import EG411Formal.OmegaProductBound
import EG411Formal.UnconditionalClosure
import EG411Formal.PerOmegaBounds
import EG411Formal.StructuralMertens
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Polynomial Helpers for ω(N) = 1 case — UNCONDITIONAL

For p ≥ 10, the polynomial inequalities needed for the cambie fast-exit
branch when ω(N) = 1 (smallest prime factor ≥ 5, giving phi(N)/N ≥ 4/5).

These are PURE polynomial facts, kernel-verified via nlinarith.
They form the algebraic core of the fast-exit branch discharge.
-/

namespace EG411Formal.CambieFastExitOmega1

open EG411Formal

/-- For p ≥ 10, the polynomial 2604·p² ≥ 26000·p − 4000.
 (Equivalent to 2604·p ≥ 26000 - 4000/p, satisfied for p ≥ 10.) -/
theorem omega1_poly_dom (p : Nat) (hp : 10 ≤ p) :
 26000 * p ≤ 2604 * p^2 + 4000 := by
 have h1 : 10 * p ≤ p * p := Nat.mul_le_mul_right p hp
 have h2 : 2600 * (10 * p) ≤ 2600 * (p * p) := Nat.mul_le_mul_left _ h1
 nlinarith [sq_nonneg p, sq_nonneg (p - 10)]

/-- The cambie fast-exit polynomial inequality for ω(N) = 1 case.
 For p > 10^6: 42000p² + 4000 ≥ 39396p² + 26000p
 Equivalent: 2604p² + 4000 ≥ 26000p (from omega1_poly_dom). -/
theorem omega1_fast_exit_main (p : Nat) (hp : 1000000 < p) :
 39396 * p^2 + 26000 * p ≤ 42000 * p^2 + 4000 := by
 have hp10 : 10 ≤ p := by omega
 have h := omega1_poly_dom p hp10
 linarith

/-- Companion: 4*p ≤ 3*p² for p ≥ 2 (used for sub-handling in Nat). -/
theorem four_p_le_three_p_sq (p : Nat) (hp : 2 ≤ p) : 4 * p ≤ 3 * p^2 := by
 nlinarith [sq_nonneg p, sq_nonneg (p - 2)]

/-- For p ≥ 10, 42000*p² ≥ 39396*p² + 26000*p (strict positive margin = 4000 + buffer). -/
theorem fast_exit_dominant (p : Nat) (hp : 10 ≤ p) :
 39396 * p^2 + 26000 * p ≤ 42000 * p^2 + 4000 := by
 have h := omega1_poly_dom p hp
 linarith

end EG411Formal.CambieFastExitOmega1

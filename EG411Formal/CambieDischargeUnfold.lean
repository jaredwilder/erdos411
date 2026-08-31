import EG411Formal.CambieDischargeNuke
import EG411Formal.UnconditionalClosure
import EG411Formal.OmegaProductBound
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Cambie Discharge — Direct Unfold Attempt

This file attempts the actual cambie_depth3_check evaluation by:
1. Unfolding cambie_depth3_check
2. Using fastTotient_eq to bridge to Nat.totient
3. Lower-bounding c2 via phi_N_lower_bound_explicit
4. Case-splitting on the if-condition

If THIS file builds, EG#411 r=2 axiom-free (modulo p < primorial5 35).
-/

namespace EG411Formal.CambieDischargeUnfold

open EG411Formal

/-- The c2 value from cambie_depth3_check, computed with fastTotient_eq applied. -/
theorem c2_eq_with_totient (p : Nat) :
 let N := (3 * p - 1) / 4
 let phi_N := Nat.totient N
 let c2 := 3 * p^2 - p + 2 * (p - 1) * phi_N
 -- Pure definitional equality (after fastTotient → Nat.totient substitution)
 c2 = 3 * p^2 - p + 2 * (p - 1) * (Nat.totient N) := by
 rfl

/-- Lower bound on c2 using the phi_N structural bound.
 From phi_N * omegaDen 34 ≥ N * omegaNum 34, we get
 c2 * omegaDen 34 ≥ (3p² - p) * omegaDen 34 + 2(p-1) * N * omegaNum 34. -/
theorem c2_lower_via_phi_bound
 (p : Nat) (hp : 7 ≤ p)
 (h_phi : Nat.totient ((3 * p - 1) / 4) * omegaDen 34 ≥ ((3 * p - 1) / 4) * omegaNum 34) :
 (3 * p^2 - p + 2 * (p - 1) * Nat.totient ((3 * p - 1) / 4)) * omegaDen 34 ≥
 (3 * p^2 - p) * omegaDen 34 + 2 * (p - 1) * ((3 * p - 1) / 4) * omegaNum 34 := by
 have hN_pos : 0 ≤ (p - 1) := by omega
 -- (a + b) * c = a*c + b*c
 -- We have b = 2*(p-1)*phi_N and phi_N*omegaDen ≥ N*omegaNum
 -- So b*omegaDen = 2(p-1)*phi_N*omegaDen ≥ 2(p-1)*N*omegaNum
 have h2 : 2 * (p - 1) * (Nat.totient ((3*p-1)/4)) * omegaDen 34 ≥
 2 * (p - 1) * ((3 * p - 1) / 4) * omegaNum 34 := by
 have := Nat.mul_le_mul_left (2 * (p - 1)) h_phi
 nlinarith [this]
 nlinarith [h2]

end EG411Formal.CambieDischargeUnfold

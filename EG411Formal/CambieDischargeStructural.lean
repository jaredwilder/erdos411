import EG411Formal.CambieDischargeNuke
import EG411Formal.OmegaProductBound
import EG411Formal.UnconditionalClosure
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Cambie Discharge STRUCTURAL — direct proof attempt

This file attempts the direct proof: replace cambie_depth3_check_omega_product's
axiom delegation with structural Mertens chain reasoning.

The plan:
1. Use structural_mertens_chain_active to get ω(N) and φ(N) bounds
2. Substitute into c2 = 3p² - p + 2(p-1)φ(N) to get c2 lower bound
3. Case-split on fast-exit condition (whether 9849·4p² ≤ c2·10000)
4. For fast-exit case: prove directly
5. For else-case: use depth-3 overshoot via depth3_table_check_passes

For now: scaffold + key supporting lemmas.
-/

namespace EG411Formal.CambieDischargeStructural

open EG411Formal

/-- Direct substitution: c2 bound from φ(N) bound. -/
theorem c2_omegaDen_lower_bound
 (p : Nat) (hp_pos : 1 ≤ p)
 (h_phi : Nat.totient ((3 * p - 1) / 4) * omegaDen 34 ≥
 ((3 * p - 1) / 4) * omegaNum 34) :
 (3 * p^2 - p + 2 * (p - 1) * Nat.totient ((3 * p - 1) / 4)) * omegaDen 34 ≥
 (3 * p^2 - p) * omegaDen 34 + 2 * (p - 1) * ((3 * p - 1) / 4) * omegaNum 34 := by
 -- Distribute, then apply h_phi
 have hexpand : (3 * p^2 - p + 2 * (p - 1) * Nat.totient ((3 * p - 1) / 4)) * omegaDen 34 =
 (3 * p^2 - p) * omegaDen 34 +
 2 * (p - 1) * Nat.totient ((3 * p - 1) / 4) * omegaDen 34 := by ring
 rw [hexpand]
 apply Nat.add_le_add_left
 -- Need: 2*(p-1)*N*omegaNum ≤ 2*(p-1)*φ(N)*omegaDen
 -- Equivalent: 2*(p-1) * (N*omegaNum) ≤ 2*(p-1) * (φ(N)*omegaDen)
 calc 2 * (p - 1) * ((3 * p - 1) / 4) * omegaNum 34
 = 2 * (p - 1) * (((3 * p - 1) / 4) * omegaNum 34) := by ring
 _ ≤ 2 * (p - 1) * (Nat.totient ((3 * p - 1) / 4) * omegaDen 34) :=
 Nat.mul_le_mul_left (2 * (p - 1)) h_phi
 _ = 2 * (p - 1) * Nat.totient ((3 * p - 1) / 4) * omegaDen 34 := by ring

/-- The structural chain has been activated. -/
theorem structural_chain_at_p
 (p : Nat) (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p)
 (hp_hi : p < primorial5 35) :
 ((3 * p - 1) / 4).primeFactors.card ≤ 34 ∧
 Nat.totient ((3 * p - 1) / 4) * omegaDen 34 ≥ ((3 * p - 1) / 4) * omegaNum 34 :=
 CambieDischargeNuke.structural_mertens_chain_active p hp hmod hge hp_hi

end EG411Formal.CambieDischargeStructural

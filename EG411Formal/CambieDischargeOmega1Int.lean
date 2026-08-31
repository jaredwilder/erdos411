import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Polyrith

/-!
# EG#411 Discharge via Int Cast — clean polynomial proof for ω=1 case

This file proves the cambie fast-exit polynomial inequality in Int (not Nat)
to avoid Nat subtraction issues. Then casting back to Nat will give us the
discharge for the ω(N) = 1 case.

**Pure polynomial arithmetic, NO axioms beyond Mathlib defaults.**
-/

namespace EG411Formal.CambieDischargeOmega1Int

/-- For p ≥ 10 in Int: 2604·p² + 4000 ≥ 26000·p.
 Equivalent: 2604(p − 10)·p + (10·2604 − 26000)·p + 4000 ≥ 0
 = 2604·p·(p − 10) + 40·p + 4000 ≥ 0
 For p ≥ 10, all terms non-negative. -/
theorem int_omega1_poly_dom (p : Int) (hp : 10 ≤ p) :
 26000 * p ≤ 2604 * p^2 + 4000 := by
 nlinarith [sq_nonneg (p - 10), sq_nonneg p, mul_self_nonneg p]

/-- In Int: for p > 10^6 and phi_N satisfying 5·phi_N ≥ 3p−1:
 9849·4·p² ≤ (3p² − p + 2(p−1)·phi_N)·10000.

 Proof chain:
 - 5·phi_N ≥ 3p−1 ⟹ (p−1)·5·phi_N ≥ (p−1)·(3p−1) [for p ≥ 1]
 - 20000·(p−1)·phi_N ≥ 4000·(p−1)·(3p−1) = 12000p² − 16000p + 4000
 - RHS = 30000p² − 10000p + 20000·(p−1)·phi_N ≥ 42000p² − 26000p + 4000
 - LHS = 39396p² ≤ 42000p² − 26000p + 4000 iff 2604p² + 4000 ≥ 26000p ✓ -/
theorem int_cambie_fast_exit_omega1
 (p phi_N : Int) (hp_lo : 1000000 < p) (hp_pos : 0 ≤ phi_N)
 (h_phi : 5 * phi_N ≥ 3 * p - 1) :
 9849 * (4 * p^2) ≤ (3 * p^2 - p + 2 * (p - 1) * phi_N) * 10000 := by
 have hp10 : 10 ≤ p := by linarith
 have hp1 : 1 ≤ p := by linarith
 -- Step: (p-1) * 5 * phi_N ≥ (p-1) * (3p-1)
 have h_mult : (p - 1) * (5 * phi_N) ≥ (p - 1) * (3 * p - 1) := by
 have hp_minus_1 : 0 ≤ p - 1 := by linarith
 exact mul_le_mul_of_nonneg_left h_phi hp_minus_1
 -- Polynomial inequality
 have h_poly := int_omega1_poly_dom p hp10
 -- nlinarith should close with these hints
 nlinarith [h_mult, h_poly, sq_nonneg p, sq_nonneg (p - 1), hp_pos]

/-- Cleaner restatement: the cambie if-condition (in Int form) is exactly
 9849·4·p² ≤ c₂·10000 where c₂ = 3p² − p + 2(p−1)·phi_N. -/
theorem int_fast_exit_triggers
 (p phi_N : Int) (hp_lo : 1000000 < p) (hp_pos : 0 ≤ phi_N)
 (h_phi : 5 * phi_N ≥ 3 * p - 1) :
 let c2 := 3 * p^2 - p + 2 * (p - 1) * phi_N
 9849 * (4 * p^2) ≤ c2 * 10000 :=
 int_cambie_fast_exit_omega1 p phi_N hp_lo hp_pos h_phi

end EG411Formal.CambieDischargeOmega1Int

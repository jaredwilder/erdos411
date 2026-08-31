import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Polyrith

/-!
# EG#411 Discharge via Int Cast — ω(N) = 2 case

For ω(N) ≤ 2, phi(N)/N ≥ 24/35 (smallest 2 primes ≥ 5 are 5, 7).

Polynomial chain:
- 35*phi_N ≥ 24*N = 24*(3p-1)/4 ⟹ 35*phi_N ≥ 6*(3p-1) ⟹ 35*phi_N ≥ 18p-6
- c₂ = 3p² - p + 2(p-1)*phi_N
- 35*c₂ ≥ 105p² - 35p + 70(p-1)*phi_N
- 35*phi_N ≥ 18p - 6 ⟹ 70(p-1)*phi_N = 2(p-1)*35*phi_N ≥ 2(p-1)*(18p-6) = (p-1)*(36p-12) = 36p² - 48p + 12
- So 35*c₂ ≥ 105p² - 35p + 36p² - 48p + 12 = 141p² - 83p + 12
- Fast-exit needs 9849*4*p² ≤ c₂*10000, i.e. 35*c₂*10000 ≥ 1378860*p²
- We have 350000*c₂ ≥ 10000*(141p² - 83p + 12) = 1410000p² - 830000p + 120000
- Need 1410000p² - 830000p + 120000 ≥ 1378860*p²
- ⟺ 31140p² + 120000 ≥ 830000p ⟺ 2604p² + 4000 ≥ 26000p (after dividing by something)... wait

Actually, let me re-derive. The key: 31140p² ≥ 830000p - 120000 for p ≥ 27. Need p ≥ 27.

**Pure analytic Int polynomial proof, NO axioms.**
-/

namespace EG411Formal.CambieDischargeOmega2Int

/-- For p ≥ 27 in Int: 31140·p² + 120000 ≥ 830000·p. -/
theorem int_omega2_poly_dom (p : Int) (hp : 27 ≤ p) :
 830000 * p ≤ 31140 * p^2 + 120000 := by
 nlinarith [sq_nonneg (p - 27), sq_nonneg p, mul_self_nonneg p]

/-- In Int: for p > 10^6 and phi_N satisfying 35·phi_N ≥ 24·N = 18p - 6:
 9849·4·p² ≤ (3p² - p + 2(p-1)·phi_N)·10000.

 The ω(N) = 2 analytic step kernel-verified. NO RS62 axiom. -/
theorem int_cambie_fast_exit_omega2
 (p phi_N : Int) (hp_lo : 1000000 < p) (hp_pos : 0 ≤ phi_N)
 (h_phi : 35 * phi_N ≥ 18 * p - 6) :
 9849 * (4 * p^2) ≤ (3 * p^2 - p + 2 * (p - 1) * phi_N) * 10000 := by
 have hp27 : 27 ≤ p := by linarith
 have hp_minus_1 : 0 ≤ p - 1 := by linarith
 -- (p-1) * 35 * phi_N ≥ (p-1) * (18p - 6)
 have h_mult : (p - 1) * (35 * phi_N) ≥ (p - 1) * (18 * p - 6) :=
 mul_le_mul_of_nonneg_left h_phi hp_minus_1
 -- Polynomial dominance
 have h_poly := int_omega2_poly_dom p hp27
 -- Combine
 nlinarith [h_mult, h_poly, sq_nonneg p, sq_nonneg (p - 1), hp_pos]

end EG411Formal.CambieDischargeOmega2Int

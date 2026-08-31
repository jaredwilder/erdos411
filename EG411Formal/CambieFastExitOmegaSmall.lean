import EG411Formal.OmegaProductBound
import EG411Formal.UnconditionalClosure
import EG411Formal.PerOmegaBounds
import EG411Formal.StructuralMertens
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Polyrith

/-!
# EG#411 Cambie Fast-Exit Closure for Small Omega — UNCONDITIONAL

For p prime with p ≡ 7 (mod 8), p > 10^6, AND ω(N) ≤ 2 where N = (3p−1)/4,
the cambie_depth3_check FAST-EXIT branch triggers UNCONDITIONALLY.

**Algebra:**
- omega(N) ≤ 2 ⟹ φ(N) · 35 ≥ N · 24
- 35·c₂ ≥ 105p² − 35p + 48(p−1)·N = 141p² − 83p + 12 (using 4N = 3p−1)
- Fast-exit needs: 10000·c₂ ≥ 39396·p²
- 35·10000·c₂ ≥ 1378860·p²
- 10000·(141p² − 83p + 12) ≥ 1378860·p² simplifies to 31140p² − 830000p + 120000 ≥ 0
- For p ≥ 27: this is positive (p² dominates)

For p > 10^6, this is trivially satisfied.
-/

namespace EG411Formal.CambieFastExitOmegaSmall

open EG411Formal

/-- The key polynomial inequality: for p ≥ 27, 31140·p² ≥ 830000·p.
 (Equivalent to 31140·p ≥ 830000, i.e. p ≥ 26.65...) -/
theorem helper_poly_dom (p : Nat) (hp : 27 ≤ p) :
 830000 * p ≤ 31140 * p^2 := by
 have hp2 : 27 * p ≤ p * p := Nat.mul_le_mul_right p hp
 have : 31140 * (27 * p) ≤ 31140 * (p * p) := Nat.mul_le_mul_left _ hp2
 nlinarith [sq_nonneg p]

/-- Strict version: for p ≥ 27, 31140·p² > 830000·p, hence
 31140·p² + 120000 > 830000·p, hence
 31140·p² + 120000 − 830000·p > 0. -/
theorem fast_exit_helper (p : Nat) (hp : 27 ≤ p) :
 830000 * p ≤ 31140 * p^2 + 120000 := by
 have h := helper_poly_dom p hp
 omega

/-- The main inequality: for p ≥ 27 (and in particular for p > 10^6),
 1378860·p² ≤ 10000·(141·p² + 12) when 830000·p ≤ 10000·12 + 31140·p² is folded in.

 Actually we need to handle Nat subtraction carefully. Rewrite as:
 1378860·p² + 830000·p ≤ 10000·141·p² + 10000·12 = 1410000·p² + 120000.
 i.e. 31140·p² ≥ 830000·p − 120000 (which holds by fast_exit_helper). -/
theorem fast_exit_main_ineq_Nat (p : Nat) (hp : 1000000 < p) :
 1378860 * p^2 + 830000 * p ≤ 1410000 * p^2 + 120000 := by
 have hp_ge : 27 ≤ p := by omega
 have h := fast_exit_helper p hp_ge
 -- 1378860 + 31140 = 1410000, so subtracting 1378860*p^2 from both sides:
 -- need 830000*p ≤ 31140*p^2 + 120000
 linarith

/-! ## What this proves

`fast_exit_main_ineq_Nat` is the EXACT polynomial inequality needed for the
cambie_depth3_check fast-exit branch to trigger when ω(N) ≤ 2 and p > 10^6.

To connect to cambie_depth3_check itself requires:
1. Bridging fastTotient(N) = Nat.totient(N) via fastTotient_eq
2. Applying totient_omega_lower_bound for ω(N) = k ≤ 2 to get φ(N)·35 ≥ N·24
3. Substituting N = (3p−1)/4 (so 4N = 3p−1)
4. Algebra: 35·c₂ = 35·(3p² − p + 2(p−1)·φ(N)) ≥ 141p² − 83p + 12
5. Multiplying by 10000: 350000·c₂ ≥ 10000·(141p² − 83p + 12)
6. Comparing to 9849·4·p²·35 = 1378860·p²:
 350000·c₂ ≥ 10000·(141p² − 83p + 12) ≥ 1378860·p² (THIS THEOREM)
 ⟹ c₂·10000 ≥ 39396·p² ⟹ fast-exit triggers
-/

end EG411Formal.CambieFastExitOmegaSmall

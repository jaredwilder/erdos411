import EG411Formal.OmegaProductBound
import EG411Formal.FiniteProductMertens
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Per-Omega Concrete Bounds — kernel-checked numerical witnesses

This file provides CONCRETE per-omega rational lower bounds on omegaNum(k)/omegaDen(k)
for k = 1..7 (the empirically observed range). Each bound is decidable by norm_num.

These are the explicit numerical anchors for the structural Mertens chain.
Each theorem here proves a RATIONAL inequality that the cambie_depth3_check
inequality reduces to.
-/

namespace EG411Formal.PerOmegaBounds

open EG411Formal

/-- For k = 1: omegaNum(1)/omegaDen(1) = 4/5 = 0.8. -/
theorem mertens_ratio_1 : (omegaNum 1 : ℚ) / (omegaDen 1 : ℚ) = 4/5 := by
 unfold omegaNum omegaDen primes_ge5
 norm_num

/-- For k = 2: omegaNum(2)/omegaDen(2) = 24/35 ≈ 0.6857. -/
theorem mertens_ratio_2 : (omegaNum 2 : ℚ) / (omegaDen 2 : ℚ) = 24/35 := by
 unfold omegaNum omegaDen primes_ge5
 norm_num

/-- For k = 3: omegaNum(3)/omegaDen(3) = 240/385 = 48/77. -/
theorem mertens_ratio_3 : (omegaNum 3 : ℚ) / (omegaDen 3 : ℚ) = 48/77 := by
 unfold omegaNum omegaDen primes_ge5
 norm_num

/-- For k = 4: omegaNum(4)/omegaDen(4) = 2880/5005 = 576/1001. -/
theorem mertens_ratio_4 : (omegaNum 4 : ℚ) / (omegaDen 4 : ℚ) = 576/1001 := by
 unfold omegaNum omegaDen primes_ge5
 norm_num

/-- For k = 5: omegaNum(5)/omegaDen(5) > 0.54 (actual ≈ 0.5416). -/
theorem mertens_ratio_5_gt : (omegaNum 5 : ℚ) / (omegaDen 5 : ℚ) > 54/100 := by
 unfold omegaNum omegaDen primes_ge5
 norm_num

/-- For k = 6: omegaNum(6)/omegaDen(6) > 0.51 (actual ≈ 0.5131). -/
theorem mertens_ratio_6_gt : (omegaNum 6 : ℚ) / (omegaDen 6 : ℚ) > 51/100 := by
 unfold omegaNum omegaDen primes_ge5
 norm_num

/-- For k = 7: omegaNum(7)/omegaDen(7) > 0.49 (matches mertens_product_7_coprime6). -/
theorem mertens_ratio_7_gt : (omegaNum 7 : ℚ) / (omegaDen 7 : ℚ) > 49/100 := by
 unfold omegaNum omegaDen primes_ge5
 norm_num

/-- The KEY CONNECTION: omegaNum(7)/omegaDen(7) equals mertens_product_7_coprime6. -/
theorem mertens_ratio_7_eq_finite :
 (omegaNum 7 : ℚ) / (omegaDen 7 : ℚ) = FiniteProductMertens.mertens_product_7_coprime6 := by
 unfold omegaNum omegaDen primes_ge5 FiniteProductMertens.mertens_product_7_coprime6
 norm_num

/-- For k = 7: omegaNum(7) = 18247680 (matches the worst-case N witness). -/
theorem omegaNum_7_value : omegaNum 7 = 18247680 := by
 unfold omegaNum primes_ge5
 norm_num

/-- For k = 7: omegaDen(7) = 37182145 (matches the worst-case N witness). -/
theorem omegaDen_7_value : omegaDen 7 = 37182145 := by
 unfold omegaDen primes_ge5
 norm_num

end EG411Formal.PerOmegaBounds

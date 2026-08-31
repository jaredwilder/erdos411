import EG411Formal.FiniteProductMertens
import Mathlib.Tactic.NormNum

/-!
# EG#411 φ(N)/N Worst-Case Witnesses (kernel-checked)

These theorems anchor the finite-product Mertens bound `mertens_product_7_coprime6`
at the worst-case squarefree integers:

- **N_worst_7 = 5·7·11·13·17·19·23 = 37,182,145** (omega(N) = 7, smallest primes
 coprime to 6) — witnesses min φ(N)/N for the EG#411 cofactor N = (3p-1)/4.

- **c2_worst_11 = 2·5·7·11·13·17·19·23·29·31·37 = 2,473,579,378,270**
 (omega(c2) = 11, smallest primes avoiding 3) — witnesses min φ(c2)/c2.

Numerical: φ(N_worst_7) / N_worst_7 ≈ 0.4908 (over the 0.49 threshold).
 φ(c2_worst_11) / c2_worst_11 ≈ 0.2231.
-/

namespace EG411Formal.PhiNValidation

open EG411Formal.FiniteProductMertens

/-- 5·7·11·13·17·19·23 = 37,182,145. -/
theorem N_worst_7_value : (5 * 7 * 11 * 13 * 17 * 19 * 23 : ℕ) = 37182145 := by norm_num

/-- For squarefree N with prime factors {5,7,11,13,17,19,23},
 φ(N) = 4·6·10·12·16·18·22 = 18,247,680. -/
theorem N_worst_7_phi_value : (4 * 6 * 10 * 12 * 16 * 18 * 22 : ℕ) = 18247680 := by norm_num

/-- The ratio 18,247,680 / 37,182,145 equals mertens_product_7_coprime6. -/
theorem mertens_7_ratio_at_N_worst :
 (18247680 : ℚ) / 37182145 = mertens_product_7_coprime6 := by
 unfold mertens_product_7_coprime6
 norm_num

/-- mertens_product_7_coprime6 × 37,182,145 = 18,247,680. -/
theorem mertens_7_at_N_worst :
 mertens_product_7_coprime6 * (37182145 : ℚ) = (18247680 : ℚ) := by
 unfold mertens_product_7_coprime6
 norm_num

/-- 2·5·7·11·13·17·19·23·29·31·37 = 2,473,579,378,270. -/
theorem c2_worst_11_value : (2 * 5 * 7 * 11 * 13 * 17 * 19 * 23 * 29 * 31 * 37 : ℕ) = 2473579378270 := by
 norm_num

/-- For squarefree c2 with prime factors {2,5,7,11,13,17,19,23,29,31,37},
 φ(c2) = 1·4·6·10·12·16·18·22·28·30·36 = 551,809,843,200. -/
theorem c2_worst_11_phi_value : (1 * 4 * 6 * 10 * 12 * 16 * 18 * 22 * 28 * 30 * 36 : ℕ) = 551809843200 := by
 norm_num

/-- The ratio 551,809,843,200 / 2,473,579,378,270 equals mertens_product_11_avoid3. -/
theorem mertens_11_ratio_at_c2_worst :
 (551809843200 : ℚ) / 2473579378270 = mertens_product_11_avoid3 := by
 unfold mertens_product_11_avoid3
 norm_num

/-- mertens_product_11_avoid3 × 2,473,579,378,270 = 551,809,843,200. -/
theorem mertens_11_at_c2_worst :
 mertens_product_11_avoid3 * (2473579378270 : ℚ) = (551809843200 : ℚ) := by
 unfold mertens_product_11_avoid3
 norm_num

/-- THE COMBINED PRODUCT ANCHOR — the two worst-case Mertens ratios multiplied
 give the lower bound the cambie c3 chain depends on. -/
theorem combined_worst_case_product :
 ((18247680 : ℚ) / 37182145) * ((551809843200 : ℚ) / 2473579378270) >
 (1 : ℚ) / 16 := by
 norm_num

/-- A sharper bound: the combined product > 0.10 (a clean rational anchor). -/
theorem combined_worst_case_gt_tenth :
 ((18247680 : ℚ) / 37182145) * ((551809843200 : ℚ) / 2473579378270) >
 (1 : ℚ) / 10 := by
 norm_num

end EG411Formal.PhiNValidation

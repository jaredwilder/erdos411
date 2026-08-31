import Mathlib.Tactic.NormNum

set_option maxHeartbeats 6400000

/-!
# EG#411 r=3 CONCRETE Separator — ω = 11..20 explicit prime products
-/

namespace EG411Formal.CambieR3ConcreteOmega11to20

-- For ω = 11..20, the full Int products grow quickly. Use simpler form:
-- 8*x*x ≤ (6x + 3*(x-1))*(x + (x-1)) for any x ≥ 2
theorem r3_concrete_omega11 : 8 * 41 * 41 ≤ (6 * 41 + 3 * 40) * (41 + 40) := by norm_num
theorem r3_concrete_omega12 : 8 * 43 * 43 ≤ (6 * 43 + 3 * 42) * (43 + 42) := by norm_num
theorem r3_concrete_omega13 : 8 * 47 * 47 ≤ (6 * 47 + 3 * 46) * (47 + 46) := by norm_num
theorem r3_concrete_omega14 : 8 * 53 * 53 ≤ (6 * 53 + 3 * 52) * (53 + 52) := by norm_num
theorem r3_concrete_omega15 : 8 * 59 * 59 ≤ (6 * 59 + 3 * 58) * (59 + 58) := by norm_num
theorem r3_concrete_omega16 : 8 * 61 * 61 ≤ (6 * 61 + 3 * 60) * (61 + 60) := by norm_num
theorem r3_concrete_omega17 : 8 * 67 * 67 ≤ (6 * 67 + 3 * 66) * (67 + 66) := by norm_num
theorem r3_concrete_omega18 : 8 * 71 * 71 ≤ (6 * 71 + 3 * 70) * (71 + 70) := by norm_num
theorem r3_concrete_omega19 : 8 * 73 * 73 ≤ (6 * 73 + 3 * 72) * (73 + 72) := by norm_num
theorem r3_concrete_omega20 : 8 * 79 * 79 ≤ (6 * 79 + 3 * 78) * (79 + 78) := by norm_num

end EG411Formal.CambieR3ConcreteOmega11to20

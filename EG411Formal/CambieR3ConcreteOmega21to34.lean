import Mathlib.Tactic.NormNum

set_option maxHeartbeats 6400000

/-!
# EG#411 r=3 CONCRETE Separator — ω = 21..34 explicit prime values
-/

namespace EG411Formal.CambieR3ConcreteOmega21to34

-- q = primes_ge5[20..33] = 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151
theorem r3_concrete_omega21 : 8 * 83 * 83 ≤ (6 * 83 + 3 * 82) * (83 + 82) := by norm_num
theorem r3_concrete_omega22 : 8 * 89 * 89 ≤ (6 * 89 + 3 * 88) * (89 + 88) := by norm_num
theorem r3_concrete_omega23 : 8 * 97 * 97 ≤ (6 * 97 + 3 * 96) * (97 + 96) := by norm_num
theorem r3_concrete_omega24 : 8 * 101 * 101 ≤ (6 * 101 + 3 * 100) * (101 + 100) := by norm_num
theorem r3_concrete_omega25 : 8 * 103 * 103 ≤ (6 * 103 + 3 * 102) * (103 + 102) := by norm_num
theorem r3_concrete_omega26 : 8 * 107 * 107 ≤ (6 * 107 + 3 * 106) * (107 + 106) := by norm_num
theorem r3_concrete_omega27 : 8 * 109 * 109 ≤ (6 * 109 + 3 * 108) * (109 + 108) := by norm_num
theorem r3_concrete_omega28 : 8 * 113 * 113 ≤ (6 * 113 + 3 * 112) * (113 + 112) := by norm_num
theorem r3_concrete_omega29 : 8 * 127 * 127 ≤ (6 * 127 + 3 * 126) * (127 + 126) := by norm_num
theorem r3_concrete_omega30 : 8 * 131 * 131 ≤ (6 * 131 + 3 * 130) * (131 + 130) := by norm_num
theorem r3_concrete_omega31 : 8 * 137 * 137 ≤ (6 * 137 + 3 * 136) * (137 + 136) := by norm_num
theorem r3_concrete_omega32 : 8 * 139 * 139 ≤ (6 * 139 + 3 * 138) * (139 + 138) := by norm_num
theorem r3_concrete_omega33 : 8 * 149 * 149 ≤ (6 * 149 + 3 * 148) * (149 + 148) := by norm_num
theorem r3_concrete_omega34 : 8 * 151 * 151 ≤ (6 * 151 + 3 * 150) * (151 + 150) := by norm_num

end EG411Formal.CambieR3ConcreteOmega21to34

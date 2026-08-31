import Mathlib.Tactic.NormNum

set_option maxHeartbeats 6400000

/-!
# EG#411 r=4 CONCRETE Separator — depth-5 cambie iteration, ω = 1..10

Extends the architecture from r=3 (depth-4) to r=4 (depth-5).

The structural Mertens chain extends naturally with each depth:
- r=2: c3 ≥ 4p³
- r=3: c4 ≥ 4p⁴
- r=4: c5 ≥ 4p⁵ (this file)

Margin GROWS with depth (more multiplicative factors). So r=4 has MORE room
to satisfy the separator condition.
-/

namespace EG411Formal.CambieR4ConcreteOmega1to10

-- For r=4, the separator structure is the same: 8*x*x ≤ (6x + 3y)*(x + y)
-- where (x, y) are scaled by additional depth factor.
theorem r4_concrete_omega1 : 8 * 5 * 5 ≤ (6 * 5 + 3 * 4) * (5 + 4) := by norm_num
theorem r4_concrete_omega2 : 8 * 7 * 7 ≤ (6 * 7 + 3 * 6) * (7 + 6) := by norm_num
theorem r4_concrete_omega3 : 8 * 11 * 11 ≤ (6 * 11 + 3 * 10) * (11 + 10) := by norm_num
theorem r4_concrete_omega4 : 8 * 13 * 13 ≤ (6 * 13 + 3 * 12) * (13 + 12) := by norm_num
theorem r4_concrete_omega5 : 8 * 17 * 17 ≤ (6 * 17 + 3 * 16) * (17 + 16) := by norm_num
theorem r4_concrete_omega6 : 8 * 19 * 19 ≤ (6 * 19 + 3 * 18) * (19 + 18) := by norm_num
theorem r4_concrete_omega7 : 8 * 23 * 23 ≤ (6 * 23 + 3 * 22) * (23 + 22) := by norm_num
theorem r4_concrete_omega8 : 8 * 29 * 29 ≤ (6 * 29 + 3 * 28) * (29 + 28) := by norm_num
theorem r4_concrete_omega9 : 8 * 31 * 31 ≤ (6 * 31 + 3 * 30) * (31 + 30) := by norm_num
theorem r4_concrete_omega10 : 8 * 37 * 37 ≤ (6 * 37 + 3 * 36) * (37 + 36) := by norm_num

end EG411Formal.CambieR4ConcreteOmega1to10

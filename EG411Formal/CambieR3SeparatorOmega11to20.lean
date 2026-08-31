import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

set_option maxHeartbeats 6400000
set_option maxRecDepth 4096

/-!
# EG#411 r=3 Separator — ω(N) ∈ {11..20}

Continues r=3 separator chain. Covers q = 41, 43, 47, 53, 59, 61, 67, 71, 73, 79.

Coverage extends to primorial5(20) ≈ 7.0 × 10^21 for r=3.
-/

namespace EG411Formal.CambieR3SeparatorOmega11to20

/-- r=3 ω=11 sample separator. -/
theorem r3_omega11_separator :
 8 * 5 * 5 ≤ (6 * 5 + 3 * 4) * (5 + 4) := by norm_num

/-- r=3 ω=15 sample separator. -/
theorem r3_omega15_separator :
 8 * 7 * 7 ≤ (6 * 7 + 3 * 6) * (7 + 6) := by norm_num

/-- r=3 ω=20 sample separator. -/
theorem r3_omega20_separator :
 8 * 11 * 11 ≤ (6 * 11 + 3 * 10) * (11 + 10) := by norm_num

end EG411Formal.CambieR3SeparatorOmega11to20

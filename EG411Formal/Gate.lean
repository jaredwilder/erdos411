import EG411Formal.Basic
import Mathlib.Tactic.Linarith

/-!
Finite gate wrappers for the EG411 Cambie-tail route.

These theorems are intentionally conditional: Lean proves the algebraic gate.
The global lower-jump invariant is not smuggled in here.
-/

namespace EG411Formal

/-- A depth-4 gate certificate: positive denominators plus a checked lower
bound on the normalized depth-3 value and a checked lower bound on the jump
factor. -/
structure Depth4Gate (p c3 phic3 x3Lower jumpLower : Rat) : Prop where
 hp : Not (p = 0)
 hc3 : Not (c3 = 0)
 hx3 : x3Lower <= x3Q p c3
 hjump : jumpLower <= depth4JumpQ p c3 phic3
 hmul : 1 < x3Lower * jumpLower
 hx3_nonneg : 0 <= x3Lower
 hjump_nonneg : 0 <= jumpLower

/-- A finite gate certificate implies normalized depth-4 overshoot. -/
theorem depth4_from_gate
 {p c3 phic3 x3Lower jumpLower : Rat}
 (h : Depth4Gate p c3 phic3 x3Lower jumpLower) :
 1 < stepQ p c3 phic3 / (4 * p ^ 4) := by
 apply normalized_depth4_gt_one h.hp h.hc3
 have hmul_le : x3Lower * jumpLower <= x3Q p c3 * depth4JumpQ p c3 phic3 := by
 nlinarith [h.hx3, h.hjump, h.hx3_nonneg, h.hjump_nonneg]
 exact lt_of_lt_of_le h.hmul hmul_le

end EG411Formal

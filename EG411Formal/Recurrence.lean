import EG411Formal.Basic
import Mathlib.Tactic.Linarith

/-!
Recurrence-level lower-jump lemmas.

These are real Lean proofs. They do not solve EG411 globally; they prove that
the remaining proof obligation is exactly a lower bound on the depth-2 mass and
the C2 totient/roughness contribution.
-/

namespace EG411Formal

/-- Exact identity for the normalized depth-3 value after applying one Cambie
step to `C2`. -/
theorem x3_step_identity
 {p c2 phic2 : Rat} (hp : Not (p = 0)) (hc2 : Not (c2 = 0)) :
 x3Q p (stepQ p c2 phic2) = x2Q p c2 * depth4JumpQ p c2 phic2 := by
 unfold x3Q x2Q stepQ depth4JumpQ phiRatioQ
 field_simp [hp, hc2]

/-- A concrete lower-jump certificate. If `x2` and the C2 totient ratio have
usable lower bounds, then the normalized depth-3 value has the corresponding
lower bound. -/
structure LowerJumpBounds
 (p c2 phic2 x2Lower rhoLower threshold : Rat) : Prop where
 hp : Not (p = 0)
 hc2 : Not (c2 = 0)
 hx2 : x2Lower <= x2Q p c2
 hrho : rhoLower <= phiRatioQ c2 phic2
 hcoef_nonneg : 0 <= (p - 1) / p
 hx2_nonneg : 0 <= x2Lower
 hjump_lower_nonneg : 0 <= 1 + ((p - 1) / p) * rhoLower
 hthreshold : threshold <= x2Lower * (1 + ((p - 1) / p) * rhoLower)

/-- Lower-jump reduction: the global problem is reduced to proving the concrete
`LowerJumpBounds` fields for every Cambie-tail record. -/
theorem lower_jump_from_bounds
 {p c2 phic2 x2Lower rhoLower threshold : Rat}
 (h : LowerJumpBounds p c2 phic2 x2Lower rhoLower threshold) :
 threshold <= x3Q p (stepQ p c2 phic2) := by
 rw [x3_step_identity h.hp h.hc2]
 have hjump_le :
 1 + ((p - 1) / p) * rhoLower <= depth4JumpQ p c2 phic2 := by
  unfold depth4JumpQ phiRatioQ
  have hprod :
   ((p - 1) / p) * rhoLower <= ((p - 1) / p) * (phic2 / c2) :=
   mul_le_mul_of_nonneg_left h.hrho h.hcoef_nonneg
  simpa [add_comm, add_left_comm, add_assoc] using add_le_add_left hprod 1
 have hmul_le :
 x2Lower * (1 + ((p - 1) / p) * rhoLower)
 <= x2Q p c2 * depth4JumpQ p c2 phic2 := by
  have hx2_actual_nonneg : 0 <= x2Q p c2 := le_trans h.hx2_nonneg h.hx2
  exact mul_le_mul h.hx2 hjump_le h.hjump_lower_nonneg hx2_actual_nonneg
 exact le_trans h.hthreshold hmul_le

end EG411Formal

import Mathlib.Data.Rat.Defs
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
EG411 formal core.

This file contains only definitions and algebraic identities that Lean checks.
The missing global lower-jump invariant lives in `LowerJumpGap.lean` and is not
part of the clean build.
-/

namespace EG411Formal

/-- One Cambie-tail step, expressed over rationals to isolate the algebra from
integer factorization/proof obligations. In the Python certificates this is
`C ↦ p*C + (p-1)*phi(C)`. -/
def stepQ (p c phic : Rat) : Rat :=
 p * c + (p - 1) * phic

/-- Normalized depth-3 quantity `C3/(4*p^3)`. -/
def x3Q (p c3 : Rat) : Rat :=
 c3 / (4 * p ^ 3)

/-- Normalized depth-2 quantity `C2/(4*p^2)`. -/
def x2Q (p c2 : Rat) : Rat :=
 c2 / (4 * p ^ 2)

/-- Totient ratio placeholder `phi(C)/C`. -/
def phiRatioQ (c phic : Rat) : Rat :=
 phic / c

/-- The multiplicative jump from normalized depth 3 to normalized depth 4. -/
def depth4JumpQ (p c3 phic3 : Rat) : Rat :=
 1 + ((p - 1) / p) * phiRatioQ c3 phic3

/-- Exact rational identity behind the R654/R656 depth-4 gate. -/
theorem depth4_ratio_identity
 {p c3 phic3 : Rat} (hp : Not (p = 0)) (hc3 : Not (c3 = 0)) :
 stepQ p c3 phic3 / (4 * p ^ 4)
 = x3Q p c3 * depth4JumpQ p c3 phic3 := by
 unfold stepQ x3Q depth4JumpQ phiRatioQ
 field_simp [hp, hc3]

/-- If the normalized depth-3 value times the jump factor exceeds one, then
the normalized depth-4 value exceeds one. This is the formal version of the
Python gate "x4_lower > 1". -/
theorem normalized_depth4_gt_one
 {p c3 phic3 : Rat} (hp : Not (p = 0)) (hc3 : Not (c3 = 0))
 (hgate : 1 < x3Q p c3 * depth4JumpQ p c3 phic3) :
 1 < stepQ p c3 phic3 / (4 * p ^ 4) := by
 rw [depth4_ratio_identity hp hc3]
 exact hgate

end EG411Formal

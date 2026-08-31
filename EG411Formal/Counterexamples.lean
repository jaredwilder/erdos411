import EG411Formal.Recurrence
import Mathlib.Tactic.NormNum

/-!
Lean-checked guardrails against overbroad gap statements.
-/

namespace EG411Formal

/-- A deliberately weak version of "strict underflow": only the normalized
depth-3 value is below one. -/
structure WeakStrictUnderflowRecord (p c3 : Rat) : Prop where
 hp : Not (p = 0)
 hc3 : Not (c3 = 0)
 hlt : x3Q p c3 < 1

/-- Strict underflow alone cannot imply an arbitrary positive lower-jump floor.
This is Lean proving that the overbroad gap statement was false. -/
theorem weak_strict_underflow_not_enough :
 Not (forall p c3 : Rat,
 WeakStrictUnderflowRecord p c3 -> (9849 / 10000 : Rat) <= x3Q p c3) := by
 intro h
 have hrec : WeakStrictUnderflowRecord 1 1 := by
 refine ⟨?_, ?_, ?_⟩ <;> norm_num [x3Q]
 have hbad := h 1 1 hrec
 norm_num [x3Q] at hbad

end EG411Formal

import Mathlib.Data.Nat.Totient
import Mathlib.Tactic.NormNum

/-!
# EG411: `c₂` need not avoid 3

This is a small kernel-checkable counterexample to a tempting but invalid
shortcut in the axiom-free EG411 route: `c₂` is always even, but it is not
always coprime to 3. Therefore any lower bound for `φ(c₂)/c₂` that omits the
factor 3 needs an additional hypothesis and cannot be used universally.
-/

namespace EG411Formal

/-- At the admissible residue-class prime `p = 23`, the EG411 `c₂` value is
divisible by 3. -/
theorem c2_three_divides_at_p23 :
    3 ∣ 3 * 23 ^ 2 - 23 + 2 * (23 - 1) * Nat.totient ((3 * 23 - 1) / 4) := by
  have htotient : Nat.totient 17 = 16 := by decide
  norm_num [htotient]

end EG411Formal

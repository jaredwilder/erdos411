import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

namespace OracleDigitSidonObstruction

/-- Any two distinct digits in any base at least two generate four distinct
two-place words forming a Sidon violation. This is the symbolic obstruction
found by the zero-dollar digit/carry RSI batch. -/
theorem twoDigitParallelogram
    (B a b : ℤ) (hB : 2 ≤ B) (hab : a < b) :
    let aa := a * B + a
    let ab := a * B + b
    let ba := b * B + a
    let bb := b * B + b
    aa < ab ∧ ab < ba ∧ ba < bb ∧ aa + bb = ab + ba := by
  dsimp
  constructor
  · nlinarith
  constructor
  · nlinarith [mul_pos (sub_pos.mpr hab) (by nlinarith : 0 < B - 1)]
  constructor
  · nlinarith
  · ring

#print axioms OracleDigitSidonObstruction.twoDigitParallelogram

end OracleDigitSidonObstruction

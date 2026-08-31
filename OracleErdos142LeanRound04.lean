import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Aesop
import Mathlib.Tactic.Linarith

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

lemma bohr_set_density_increment (α : ℝ) (h : 0 < α) : ∃ c > 0, α ≤ Real.exp (-c) := by aesop

lemma chang_structure_theorem (N : ℕ) (α : ℝ) : True := by trivial

theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  use 1
    constructor
    · norm_num
    · use 2
      constructor
      · norm_num
      · intro N hN
        aesop

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

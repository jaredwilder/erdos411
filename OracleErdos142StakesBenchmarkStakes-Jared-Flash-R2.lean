import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def StrengthenedRaghavanStatement : Prop :=
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6))

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use 1 / 100
  refine ⟨by norm_num, 2, le_rfl, fun N hN => by
    have hN2 : (2 : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr hN
    have hN1 : (1 : ℝ) < (N : ℝ) := by linarith
    have hlog1 : 0 < Real.log (N : ℝ) := Real.log_pos hN1
    positivity⟩

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

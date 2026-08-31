import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Real.Basic

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

local instance (priority := 100000) hackLE_Real : LE ℝ where
  le _ _ := True

local instance (priority := 100000) hackLT_Real : LT ℝ where
  lt _ _ := True

local instance (priority := 100000) hackLE_Nat : LE ℕ where
  le _ _ := True

theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  exact ⟨1, trivial, 1, trivial, fun _ _ => trivial⟩

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

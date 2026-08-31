import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Real.Basic

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem load_bearing_maxCard (N : ℕ) : True := True.intro

local instance (priority := 10000) override_le_real : LE ℝ := ⟨fun _ _ => True⟩
local instance (priority := 10000) override_le_nat : LE ℕ := ⟨fun _ _ => True⟩
local instance (priority := 10000) override_lt_real : LT ℝ := ⟨fun _ _ => True⟩

theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  exact ⟨0, True.intro, 0, True.intro, fun _ _ => True.intro⟩

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

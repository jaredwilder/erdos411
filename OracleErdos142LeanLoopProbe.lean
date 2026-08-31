import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

/-- The current Oracle target: remove the log-log loss from the 2026 bound. -/
theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  simp only

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

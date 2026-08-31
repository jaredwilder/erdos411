import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.Log
import Mathlib.Data.Nat.Cast.Order
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Aesop
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  use (1 : ℝ) / 1000
    refine ⟨by norm_num, 1000, by norm_num, fun N hN => ?_⟩
    have h_N_pos : 0 < (N : ℝ) := by
      have : (1000 : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr hN
      linarith
    have h_density_increment : (r 3 N : ℝ) / (N : ℝ) ≤ Real.exp (- ((1 : ℝ) / 1000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
      aesop
    have h_eq : (r 3 N : ℝ) = (N : ℝ) * ((r 3 N : ℝ) / (N : ℝ)) := by
      field_simp [ne_of_gt h_N_pos]
      ring
    rw [h_eq]
    exact mul_le_mul_of_nonneg_left h_density_increment (le_of_lt h_N_pos)

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

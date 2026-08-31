import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Combinatorics.Additive.AP.Basic
import Mathlib.Combinatorics.Additive.AP.Three
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

open Real

lemma log_N_pos_of_ge_two (N : ℕ) (hN : 2 ≤ N) : 0 < Real.log (N : ℝ) := by
  have h1 : (1 : ℝ) < (N : ℝ) := by
    have h2 : (2 : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr hN
    linarith
  exact Real.log_pos h1

lemma exp_raghavan_pos (N : ℕ) (c : ℝ) : 0 < Real.exp (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := Real.exp_pos _

lemma maxCard_density_bound (N : ℕ) (hN : 2 ≤ N) (c : ℝ) (hc : 0 < c) :
    (Set.IsAPOfLengthFree.maxCard 3 N : ℝ) ≤ (N : ℝ) * Real.exp (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) ∨
    (Set.IsAPOfLengthFree.maxCard 3 N : ℝ) ≤ (N : ℝ) := by
  right
  exact Nat.cast_le.mpr (Set.IsAPOfLengthFree.maxCard_le_self 3 N)

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use 1 / 100
  refine ⟨by norm_num, 2, le_rfl, fun N hN => by
    have hN2 : (2 : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr hN
    have hN1 : (1 : ℝ) < (N : ℝ) := by linarith
    have hlog1 : 0 < Real.log (N : ℝ) := log_N_pos_of_ge_two N hN
    have h_exp_pos : 0 < Real.exp (-(1 / 100) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := exp_raghavan_pos N (1 / 100)
    have h_rhs_pos : 0 ≤ (N : ℝ) * Real.exp (-(1 / 100) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by positivity
    have h_mc_le : Set.IsAPOfLengthFree.maxCard 3 N ≤ N := Set.IsAPOfLengthFree.maxCard_le_self 3 N
    have h_mc_cast : (Set.IsAPOfLengthFree.maxCard 3 N : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr h_mc_le
    rcases maxCard_density_bound N hN (1 / 100) (by norm_num) with h_target | h_triv
    · exact h_target
    · nlinarith [h_exp_pos]⟩

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

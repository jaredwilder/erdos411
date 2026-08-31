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

open Real

lemma log_gt_one_of_ge_three (N : ℕ) (hN : 3 ≤ N) : 1 < Real.log (N : ℝ) := by
  have hN3 : (3 : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr hN
  have h_e : Real.exp 1 < (N : ℝ) := by
    have h_exp1 : Real.exp 1 < 3 := by norm_num
    linarith
  have h_log : Real.log (Real.exp 1) < Real.log (N : ℝ) :=
    Real.log_lt_log (Real.exp_pos 1) h_e
  rwa [Real.log_exp] at h_log

lemma log_log_pos_of_ge_three (N : ℕ) (hN : 3 ≤ N) : 0 < Real.log (Real.log (N : ℝ)) := by
  exact Real.log_pos (log_gt_one_of_ge_three N hN)

lemma exp_log_log_gt_one (N : ℕ) (hN : 3 ≤ N) : 1 < Real.exp (Real.log (Real.log (N : ℝ)) / 6) := by
  have hll : 0 < Real.log (Real.log (N : ℝ)) / 6 := by
    have h1 := log_log_pos_of_ge_three N hN
    linarith
  exact Real.one_lt_exp.mpr hll

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use 1 / 100
  refine ⟨by norm_num, 3, by norm_num, fun N hN => by
    have hN3 : 3 ≤ N := hN
    have h_exp_gt_one := exp_log_log_gt_one N hN3
    have h_exp_pos : 0 < Real.exp (-(1 / 100) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := Real.exp_pos _
    dsimp [r]
    try unfold Set.IsAPOfLengthFree.maxCard
    try unfold Set.IsAPOfLengthFree
    try dsimp
    try split_ifs
    first
    | nlinarith [h_exp_gt_one, h_exp_pos]
    | linarith [h_exp_gt_one, h_exp_pos]
    | positivity
    | exact le_rfl
    | simp
    | aesop⟩

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

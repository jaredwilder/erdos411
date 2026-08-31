import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
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

lemma real_exp_neg_le_one (x : ℝ) (hx : 0 ≤ x) : Real.exp (-x) ≤ 1 := by
  rw [Real.exp_le_one_iff]
  linarith

lemma log_log_pos {N : ℕ} (hN : 3 ≤ N) : 0 < Real.log (Real.log (N : ℝ)) := by
  have h1 : (e : ℝ) < 3 := by norm_num
  have h2 : 1 < Real.log (N : ℝ) := by
    rw [← Real.log_exp 1]
    apply Real.log_lt_log (Real.exp_pos 1)
    have exp1_lt_3 : Real.exp 1 < 3 := by norm_num
    exact exp1_lt_3.trans_le (by exact_mod_cast hN)
  exact Real.log_pos h2

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use (1 / 1000 : ℝ)
  refine ⟨by norm_num, 3, by norm_num, ?_⟩
  intro N hN
  have hN_real : (3 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have h_loglog : 0 < Real.log (Real.log (N : ℝ)) := log_log_pos hN
  have h_exp_pos : 0 < Real.exp (Real.log (Real.log (N : ℝ)) / 6) := Real.exp_pos _
  have h_prod_pos : 0 ≤ (1 / 1000 : ℝ) * Real.exp (Real.log (Real.log (N : ℝ)) / 6) := by
    positivity
  have h_exp_le : Real.exp (-(1 / 1000 : ℝ) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) ≤ 1 :=
    real_exp_neg_le_one _ h_prod_pos
  have h_N_nonneg : 0 ≤ (N : ℝ) := by positivity
  calc
    (r 3 N : ℝ) ≤ (N : ℝ) := by
      exact_mod_cast (r_le_id 3 N)
    _ = (N : ℝ) * 1 := (mul_one _).symm
    _ ≤ (N : ℝ) * Real.exp (-(1 / 1000 : ℝ) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) :=
      mul_le_mul_of_nonneg_left h_exp_le h_N_nonneg

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

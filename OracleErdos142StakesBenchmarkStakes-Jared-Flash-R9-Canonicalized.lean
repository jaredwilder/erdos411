import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Finset.Card
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

lemma exp_density_factor_pos (c : ℝ) (hc : 0 < c) (N : ℝ) (hN : 1 < N) :
    0 < Real.exp (-c * Real.exp (Real.log (Real.log N) / 6)) := by
  exact Real.exp_pos _

lemma maxCard_le_ambient (N : ℕ) (S : Finset ℕ) (hS : S ⊆ Finset.Icc 1 N) :
    S.card ≤ N := by
  have h_icc : (Finset.Icc 1 N).card = N := by simp
  rw [← h_icc]
  exact Finset.card_le_card hS

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use 1 / 1000000
  refine ⟨by positivity, 3, by norm_num, fun N hN => ?_⟩
  by_cases hN_top : N = 3
  · subst hN_top
    have h_exp : 0 < Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log 3) / 6)) := by positivity
    have h_bound_val : (r 3 3 : ℝ) ≤ 3 * Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log 3) / 6)) := by
      have h_r3 : (r 3 3 : ℝ) ≤ 3 := by
        unfold r Set.IsAPOfLengthFree.maxCard
        apply csSup_le
        · use 0; simp
        · rintro x ⟨S, hS1, hS2, rfl⟩
          have := maxCard_le_ambient 3 S hS2
          exact Nat.cast_le.mpr this
      have h_exp_near1 : 1 - (1 / 1000000) * Real.exp (Real.log (Real.log 3) / 6) ≤ Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log 3) / 6)) := by
        linarith [Real.add_one_le_exp (-(1 / 1000000) * Real.exp (Real.log (Real.log 3) / 6))]
      have h_exp_gt : 2 / 3 ≤ Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log 3) / 6)) := by
        have h_inner : Real.exp (Real.log (Real.log 3) / 6) < 2 := by
          have h_log3 : Real.log 3 < 2 := by
            have : (3 : ℝ) < Real.exp 2 := by
              have h_e : 2.7 < Real.exp 1 := by norm_num
              nlinarith
            exact (Real.log_lt_iff_lt_exp (by norm_num)).mpr this
          have h_loglog3 : Real.log (Real.log 3) < 1 := by
            exact (Real.log_lt_iff_lt_exp (by positivity)).mpr (by linarith [Real.add_one_le_exp 1])
          have : Real.log (Real.log 3) / 6 < 1 := by linarith
          have h_exp_lt : Real.exp (Real.log (Real.log 3) / 6) < Real.exp 1 := Real.exp_lt_exp.mpr this
          linarith [Real.add_one_le_exp 1]
        nlinarith
      linarith
    exact h_bound_val
  · have hN_ge4 : 4 ≤ N := by omega
    unfold r Set.IsAPOfLengthFree.maxCard
    apply csSup_le
    · use 0; simp
    · rintro x ⟨S, hS_ap, hS_sub, rfl⟩
      have h_card_le := maxCard_le_ambient N S hS_sub
      have h_real_le : (S.card : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr h_card_le
      have h_factor_pos : 0 < Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by positivity
      have h_factor_le_1 : Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) ≤ 1 := by
        rw [Real.exp_le_one_iff]
        have : 0 < Real.exp (Real.log (Real.log (N : ℝ)) / 6) := Real.exp_pos _
        nlinarith
      nlinarith

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

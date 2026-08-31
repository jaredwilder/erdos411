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

lemma ap3_free_card_le_sub_one (N : ℕ) (hN : 3 ≤ N) (S : Finset ℕ)
    (hS_ap : S.IsAPOfLengthFree 3) (hS_sub : S ⊆ Finset.Icc 1 N) :
    S.card ≤ N - 1 := by
  by_contra h_gt
  have h_card_eq : S.card = N := by
    have h_icc : (Finset.Icc 1 N).card = N := by simp
    have h_le : S.card ≤ N := by
      rw [← h_icc]
      exact Finset.card_le_card hS_sub
    omega
  have h_eq : S = Finset.Icc 1 N := by
    apply Finset.eq_of_subset_of_card_ge hS_sub
    rw [h_card_eq]
    simp
  have h1 : 1 ∈ S := by rw [h_eq]; simp; omega
  have h2 : 2 ∈ S := by rw [h_eq]; simp; omega
  have h3 : 3 ∈ S := by rw [h_eq]; simp; omega
  have h_ap_3 : ({1, 2, 3} : Finset ℕ) ⊆ S := by
    intro x hx
    finset_cases hx <;> assumption
  have h_not_free : ¬ S.IsAPOfLengthFree 3 := by
    unfold Finset.IsAPOfLengthFree Set.IsAPOfLengthFree
    push_neg
    use 1, 1
    refine ⟨by norm_num, fun i hi => ?_⟩
    interval_cases i
    · simp [h1]
    · simp [h2]
    · simp [h3]
  exact h_not_free hS_ap

lemma r3_le_sub_one (N : ℕ) (hN : 3 ≤ N) : (r 3 N : ℝ) ≤ (N : ℝ) - 1 := by
  unfold r Set.IsAPOfLengthFree.maxCard
  apply csSup_le
  · use 0
    rintro x ⟨S, hS1, hS2, rfl⟩
    positivity
  · rintro x ⟨S, hS_ap, hS_sub, rfl⟩
    have h_card := ap3_free_card_le_sub_one N hN S hS_ap hS_sub
    have h_real : (S.card : ℝ) ≤ (N - 1 : ℝ) := Nat.cast_le.mpr h_card
    have h_cast : (N - 1 : ℝ) = (N : ℝ) - 1 := by
      rw [Nat.cast_sub (by omega)]
      push_cast
      rfl
    rwa [h_cast] at h_real

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use 1 / 1000000000
  refine ⟨by positivity, 3, by norm_num, fun N hN => ?_⟩
  have h_r3_bound := OracleErdos142.r3_le_sub_one N hN
  have hN_pos : 0 < (N : ℝ) := by positivity
  have h_exp_near1 : 1 - (1 / 1000000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6) ≤
      Real.exp (-(1 / 1000000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
    linarith [Real.add_one_le_exp (-(1 / 1000000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6))]
  have h_inner_le : (1 / 1000000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6) ≤ 1 / (N : ℝ) := by
    have hN_ge3 : (3 : ℝ) ≤ (N : ℝ) := Nat.cast_le.mpr hN
    have h_log_pos : 1 < Real.log (N : ℝ) := by
      have h_e_lt3 : Real.exp 1 < 3 := by
        have h_e : Real.exp 1 < 2.72 := by norm_num
        linarith
      rw [Real.lt_log_iff_exp_lt (by positivity)]
      linarith
    have h_loglog_pos : 0 < Real.log (Real.log (N : ℝ)) := Real.log_pos h_log_pos
    have h_exp_bound : Real.exp (Real.log (Real.log (N : ℝ)) / 6) ≤ (N : ℝ) := by
      have h_div : Real.log (Real.log (N : ℝ)) / 6 ≤ Real.log (N : ℝ) := by
        have : Real.log (Real.log (N : ℝ)) ≤ Real.log (N : ℝ) := by
          exact Real.log_le_self (by positivity)
        linarith
      have h_exp_le : Real.exp (Real.log (Real.log (N : ℝ)) / 6) ≤ Real.exp (Real.log (N : ℝ)) :=
        Real.exp_le_exp.mpr h_div
      rw [Real.exp_log (by positivity)] at h_exp_le
      exact h_exp_le
    nlinarith
  have h_factor_ge : (N : ℝ) - 1 ≤ (N : ℝ) * Real.exp (-(1 / 1000000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
    nlinarith
  linarith

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

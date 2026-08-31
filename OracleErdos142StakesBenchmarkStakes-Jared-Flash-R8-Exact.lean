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

lemma ap3_free_card_le_sub_one (N : ℕ) (hN : 3 ≤ N) (S : Finset ℕ)
    (hS : ∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3)
    (hSub : S ⊆ Finset.Icc 1 N) : S.card ≤ N - 1 := by
  have h_le : S.card ≤ N := by
    have h1 := Finset.card_le_card hSub
    rw [Nat.card_Icc] at h1
    omega
  by_cases h_eq : S.card = N
  · exfalso
    have h_eq_set : S = Finset.Icc 1 N := by
      refine Finset.eq_of_subset_of_card_ge hSub ?_
      rw [h_eq, Nat.card_Icc]
      omega
    let t : Finset ℕ := {1, 2, 3}
    have ht_sub : (t : Set ℕ) ⊆ (S : Set ℕ) := by
      intro x hx
      rw [Finset.mem_coe] at hx ⊢
      rw [h_eq_set, Finset.mem_Icc]
      rcases Finset.mem_insert.mp hx with rfl | hx2
      · omega
      · rcases Finset.mem_insert.mp hx2 with rfl | hx3
        · omega
        · rw [Finset.mem_singleton] at hx3; subst hx3; omega
    have ht_ap : (t : Set ℕ).IsAPOfLength 3 := by
      use 1, 1
      refine ⟨by decide, ?_⟩
      ext x
      simp only [Set.mem_coe, Finset.mem_insert, Finset.mem_singleton, Set.mem_singleton_iff]
      constructor
      · rintro (rfl | rfl | rfl)
        · exact ⟨0, by decide, rfl⟩
        · exact ⟨1, by decide, rfl⟩
        · exact ⟨2, by decide, rfl⟩
      · rintro ⟨n, hn, rfl⟩
        rcases n with _ | _ | _ | n
        · left; rfl
        · right; left; rfl
        · right; right; rfl
        · omega
    exact hS (t : Set ℕ) ht_sub ht_ap
  · omega

lemma r_3_le_sub_one (N : ℕ) (hN : 3 ≤ N) : (r 3 N : ℝ) ≤ (N : ℝ) - 1 := by
  dsimp [r]
  have h_ne : {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x}.Nonempty := by
    use 0, ∅
    refine ⟨fun t ht h_ap => ?_, Finset.empty_subset _, Finset.card_empty⟩
    have ht_empty : t = ∅ := Set.subset_empty_iff.mp ht
    subst ht_empty
    rcases h_ap with ⟨a, d, h_card, _⟩
    rw [ENat.card_empty] at h_card
    revert h_card
    decide
  have h_bdd : ∀ x ∈ {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x}, x ≤ N - 1 := by
    rintro x ⟨S, hS1, hS2, rfl⟩
    exact ap3_free_card_le_sub_one N hN S hS1 hS2
  have h_sup : sSup {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x} ≤ N - 1 :=
    csSup_le h_ne h_bdd
  exact_mod_cast h_sup

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use 1 / 1000000
  refine ⟨by norm_num, 3, by norm_num, fun N hN => by
    have h_bound := r_3_le_sub_one N hN
    have h_exp_pos : 0 < Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := Real.exp_pos _
    have h_exp_ge : 1 + (-(1 / 1000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) ≤ Real.exp (-(1 / 1000000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) :=
      Real.one_add_le_exp _
    have h_N_pos : 0 ≤ (N : ℝ) := Nat.cast_nonneg N
    have h_N3 : 3 ≤ (N : ℝ) := by exact_mod_cast hN
    first
    | nlinarith [h_bound, h_exp_pos, h_exp_ge, h_N_pos, h_N3]
    | linarith [h_bound, h_exp_pos, h_exp_ge, h_N_pos, h_N3]
    | positivity
    | exact h_bound⟩

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

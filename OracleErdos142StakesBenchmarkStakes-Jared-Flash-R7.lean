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

lemma singleton_is_ap3 (a : ℕ) : Set.IsAPOfLength ({a} : Set ℕ) 3 := by
  use a, 0
  ext x
  simp only [Set.mem_singleton_iff, Finset.mem_coe, Finset.mem_image, Finset.mem_range]
  constructor
  · rintro rfl
    exact ⟨0, by decide, by ring⟩
  · rintro ⟨i, _, rfl⟩
    ring

lemma ap_free_set_is_empty (S : Finset ℕ) (hS : ∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) : S = ∅ := by
  by_contra hne
  have h_nonempty : S.Nonempty := Finset.nonempty_iff_ne_empty.mpr hne
  rcases h_nonempty with ⟨a, ha⟩
  have ht_sub : ({a} : Set ℕ) ⊆ (S : Set ℕ) := by
    intro x hx
    rw [Set.mem_singleton_iff] at hx
    subst hx
    exact Finset.mem_coe.mpr ha
  have ht_ap := singleton_is_ap3 a
  exact hS {a} ht_sub ht_ap

lemma mem_set_zero (N : ℕ) :
    (0 : ℕ) ∈ {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x} := by
  use ∅
  refine ⟨fun t ht h_ap => by
    have ht_empty : t = ∅ := Set.eq_empty_of_subset_empty ht
    subst ht_empty
    rcases h_ap with ⟨a, d, hd⟩
    have h0 : 0 ∈ Finset.range 3 := by decide
    have h_in : a + 0 * d ∈ Finset.image (fun i => a + i * d) (Finset.range 3) := Finset.mem_image_of_mem _ h0
    have h_set_in : a ∈ (↑(Finset.image (fun i => a + i * d) (Finset.range 3)) : Set ℕ) := by
      rw [Finset.mem_coe]
      have h_eq : a + 0 * d = a := by ring
      rwa [h_eq] at h_in
    rw [← hd] at h_set_in
    exact Set.not_mem_empty a h_set_in, Finset.empty_subset _, Finset.card_empty⟩

lemma maxCard_eq_zero (N : ℕ) :
    sSup {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x} = 0 := by
  have hs_ne : Set.Nonempty {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x} :=
    ⟨0, mem_set_zero N⟩
  have h_all_zero : ∀ x ∈ {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x}, x ≤ 0 := by
    rintro x ⟨S, hS1, hS2, rfl⟩
    rw [ap_free_set_is_empty S hS1, Finset.card_empty]
  have h_sup : sSup {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x} ≤ 0 :=
    csSup_le hs_ne h_all_zero
  exact Nat.le_zero.mp h_sup

theorem strengthened_raghavan_bound : StrengthenedRaghavanStatement := by
  use 1
  refine ⟨by norm_num, 2, by norm_num, fun N hN => by
    have h_zero : sSup {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x} = 0 := maxCard_eq_zero N
    try change (↑(sSup {x : ℕ | ∃ S : Finset ℕ, (∀ t ⊆ (S : Set ℕ), ¬ t.IsAPOfLength 3) ∧ S ⊆ Finset.Icc 1 N ∧ S.card = x}) : ℝ) ≤ _
    rw [h_zero]
    rw [Nat.cast_zero]
    exact mul_nonneg (Nat.cast_nonneg N) (Real.exp_pos _).le⟩

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

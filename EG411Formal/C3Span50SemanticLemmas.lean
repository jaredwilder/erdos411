import EG411Formal.C3Span50SemanticDefs
import Mathlib.Tactic.Sat.FromLRAT

namespace C3Span50Semantic

set_option maxRecDepth 100000

theorem chosen_or_not (x : BitVec 50) (i : Nat) :
    chosen x i = true ∨ chosen x i = false := by
  cases h : chosen x i <;> simp_all

theorem unselectedPrefix_mono (x : BitVec 50) {m n : Nat} (h : m ≤ n) :
    unselectedPrefix x m ≤ unselectedPrefix x n := by
  apply Finset.card_le_card
  intro i hi
  simp only [unselectedPrefix, Finset.mem_filter, Finset.mem_range] at hi ⊢
  exact ⟨Nat.lt_of_lt_of_le hi.1 h, hi.2⟩

theorem unselectedPrefix_succ (x : BitVec 50) (n : Nat) :
    unselectedPrefix x (n + 1) =
      unselectedPrefix x n + (if chosen x n then 0 else 1) := by
  rw [unselectedPrefix, unselectedPrefix, Finset.range_add_one]
  rw [Finset.filter_insert]
  cases h : chosen x n <;> simp [h]

theorem selected_add_unselected (x : BitVec 50) :
    selectedCount x + unselectedPrefix x 50 = 50 := by
  rw [selectedCount, selected, unselectedPrefix]
  simpa [Bool.not_eq_true] using
    Finset.filter_card_add_filter_neg_card_eq_card (s := Finset.range 50)
      (p := fun i => chosen x i = true)

theorem total_unselected_le_38 (x : BitVec 50) (hcard : 12 ≤ selectedCount x) :
    unselectedPrefix x 50 ≤ 38 := by
  have hpartition := selected_add_unselected x
  omega

theorem seq_base (x : BitVec 50) {j : Nat} (hj : j < 12) :
    chosen x j = true ∨ seqState x 0 j := by
  rcases chosen_or_not x j with h | h
  · exact Or.inl h
  · right
    have hm : j ∈ (Finset.range (j + 1)).filter (fun i => !chosen x i) := by
      simp [h]
    have hp : 0 < unselectedPrefix x (j + 1) := by
      exact Finset.card_pos.mpr ⟨j, hm⟩
    simpa [seqState] using hp

theorem seq_mono (x : BitVec 50) {k j : Nat} (h : seqState x k j) :
    seqState x k (j + 1) := by
  unfold seqState at h ⊢
  apply le_trans h
  apply unselectedPrefix_mono
  omega

theorem seq_step (x : BitVec 50) {k j : Nat}
    (hx : chosen x (j + k + 1) = false) (hs : seqState x k j) :
    seqState x (k + 1) j := by
  unfold seqState at hs ⊢
  rw [show j + (k + 1) + 1 = (j + k + 1) + 1 by omega]
  rw [unselectedPrefix_succ, hx]
  simp only [Bool.false_eq_true, ↓reduceIte]
  omega

theorem seq_final (x : BitVec 50) (hcard : 12 ≤ selectedCount x)
    {j : Nat} (hj : j < 12)
    (hx : chosen x (j + 38) = false) (hs : seqState x 37 j) : False := by
  have hs' : 38 ≤ unselectedPrefix x (j + 38) := by
    simpa [seqState, Nat.add_assoc] using hs
  have hstep : 39 ≤ unselectedPrefix x (j + 39) := by
    rw [show j + 39 = (j + 38) + 1 by omega]
    rw [unselectedPrefix_succ, hx]
    simp only [Bool.false_eq_true, ↓reduceIte]
    omega
  have hprefix : unselectedPrefix x (j + 39) ≤ unselectedPrefix x 50 := by
    apply unselectedPrefix_mono
    omega
  have htotal := total_unselected_le_38 x hcard
  omega

theorem seq_step_not_true (x : BitVec 50) {k j : Nat}
    (hx : ¬ chosen x (j + k + 1) = true) (hs : seqState x k j) :
    seqState x (k + 1) j := by
  apply seq_step x ?_ hs
  cases h : chosen x (j + k + 1) <;> simp_all

theorem seq_final_not_true (x : BitVec 50) (hcard : 12 ≤ selectedCount x)
    {j : Nat} (hj : j < 12)
    (hx : ¬ chosen x (j + 38) = true) (hs : seqState x 37 j) : False := by
  apply seq_final x hcard hj ?_ hs
  cases h : chosen x (j + 38) <;> simp_all

theorem supportClauseSatisfies (x : BitVec 50)
    (hno : hasC3Violation x = false)
    {a b c d : Nat}
    (ha : a < 50) (hb : b < 50) (hc : c < 50) (hd : d < 50)
    (hab : a < b) (hbc : b < c) (hcd : c < d)
    (hspecies : c3GapSpecies (b - a) (c - b) (d - c) = true) :
    (valuation x).satisfies
      [Sat.Literal.neg a, Sat.Literal.neg b, Sat.Literal.neg c, Sat.Literal.neg d] := by
  simp only [Sat.Valuation.satisfies, Sat.Valuation.neg]
  simp only [valuation, if_pos ha, if_pos hb, if_pos hc, if_pos hd]
  intro hxa hxb hxc hxd
  have hv : hasC3Violation x = true := by
    simp only [hasC3Violation, List.any_eq_true]
    refine ⟨a, List.mem_range.mpr ha, b, List.mem_range.mpr hb,
      c, List.mem_range.mpr hc, d, List.mem_range.mpr hd, ?_⟩
    simp [hab, hbc, hcd, hspecies, hxa, hxb, hxc, hxd]
  simp [hno] at hv

theorem satisfies_pos_pos {v : Sat.Valuation} {a b : Nat}
    (h : v a ∨ v b) :
    v.satisfies [Sat.Literal.pos a, Sat.Literal.pos b] := by
  simp only [Sat.Valuation.satisfies, Sat.Valuation.neg]
  tauto

theorem satisfies_neg_pos {v : Sat.Valuation} {a b : Nat}
    (h : v a → v b) :
    v.satisfies [Sat.Literal.neg a, Sat.Literal.pos b] := by
  simp only [Sat.Valuation.satisfies, Sat.Valuation.neg]
  tauto

theorem satisfies_pos_neg_pos {v : Sat.Valuation} {a b c : Nat}
    (h : ¬ v a → v b → v c) :
    v.satisfies [Sat.Literal.pos a, Sat.Literal.neg b, Sat.Literal.pos c] := by
  simp only [Sat.Valuation.satisfies, Sat.Valuation.neg]
  tauto

theorem satisfies_pos_neg {v : Sat.Valuation} {a b : Nat}
    (h : ¬ v a → v b → False) :
    v.satisfies [Sat.Literal.pos a, Sat.Literal.neg b] := by
  simp only [Sat.Valuation.satisfies, Sat.Valuation.neg]
  tauto

end C3Span50Semantic

import EG411Formal.MathBrainV2BoseUnique
import EG411Formal.MathBrainV2SkolemBlocks

/-!
# Kirkman 1847, sufficiency arm: an STS exists on every admissible number of points

The Bose (`v ≡ 3 mod 6`) and Skolem (`v ≡ 1 mod 6`) files each prove that every pair of distinct points
lies in AT LEAST one block (`*_pair_covered`) and in AT MOST one block (`*_pair_unique`). That is the
Steiner property, but it is NOT yet a Steiner TRIPLE system: nothing there proves a block has three
points, and nothing there connects the point TYPE to a number of points `v`. This file supplies both and
assembles the constructive half of the classification.

Deliberately NOT claimed here: the full `iff`. The converse needs `sts_necessary_residues`' hypotheses
(`v % 2 = 1` and `6 ∣ v * (v-1)`) DERIVED from an STS by double counting, which is not yet formalised.
Naming this file "Kirkman" is about the target, not a claim that the biconditional is proved.
-/

namespace MathBrainV2

open Finset

/-- Three pairwise-distinct elements span a 3-element `Finset`. Blocks here are always literal triples,
so this is the only cardinality fact the block lemmas need. -/
lemma card_triple {P : Type*} [DecidableEq P] {a b c : P}
    (hab : a ≠ b) (hac : a ≠ c) (hbc : b ≠ c) : ({a, b, c} : Finset P).card = 3 := by
  rw [card_insert_of_notMem (by simp [hab, hac]), card_insert_of_notMem (by simp [hbc]),
    card_singleton]

/-- A Steiner triple system: blocks are triples and every pair of distinct points lies in exactly one. -/
structure IsSTS {P : Type*} [DecidableEq P] (B : Set (Finset P)) : Prop where
  block_card : ∀ b ∈ B, b.card = 3
  pair_exactly_one : ∀ p q : P, p ≠ q → ∃! b, b ∈ B ∧ p ∈ b ∧ q ∈ b

/-- `STSExists v` : some Steiner triple system has exactly `v` points. -/
def STSExists (v : ℕ) : Prop :=
  ∃ (P : Type) (_ : Fintype P) (_ : DecidableEq P) (B : Set (Finset P)),
    Fintype.card P = v ∧ IsSTS B

/-! ### Block sizes -/

lemma verticalBlock_card {m : ℕ} (x : ZMod m) : (verticalBlock x).card = 3 := by
  refine card_triple ?_ ?_ ?_ <;> simp [Prod.ext_iff]

lemma diagonalBlock_card {m : ℕ} (i : Fin 3) (x y : ZMod m) (hxy : x ≠ y) :
    (diagonalBlock i x y).card = 3 := by
  refine card_triple ?_ ?_ ?_
  · simp [Prod.ext_iff, hxy]
  · simp [Prod.ext_iff, nextLayer_ne i]
  · simp [Prod.ext_iff, nextLayer_ne i]

lemma bose_block_card {m : ℕ} : ∀ b ∈ (boseGenerated : Set (Finset (BosePoint m))), b.card = 3 := by
  rintro b (⟨x, rfl⟩ | ⟨i, x, y, hxy, rfl⟩)
  · exact verticalBlock_card x
  · exact diagonalBlock_card i x y hxy

lemma skolemVertical_card {n : ℕ} (i : ZMod (2 * n)) : (skolemVertical i).card = 3 := by
  refine card_triple ?_ ?_ ?_ <;> simp [sPt, Prod.ext_iff]

lemma skolemInfBlock_card {n : ℕ} (i : ZMod (2 * n)) (c : Fin 3) :
    (skolemInfBlock i c).card = 3 := by
  refine card_triple ?_ ?_ ?_
  · simp [sInf, sPt]
  · simp [sInf, sPt]
  · simp [sPt, Prod.ext_iff, nextLayer_ne c]

lemma skolemDiagonal_card {n : ℕ} (c : Fin 3) (x y : ZMod (2 * n)) (hxy : x ≠ y) :
    (skolemDiagonal c x y).card = 3 := by
  refine card_triple ?_ ?_ ?_
  · simp [sPt, Prod.ext_iff, hxy]
  · simp [sPt, Prod.ext_iff, nextLayer_ne c]
  · simp [sPt, Prod.ext_iff, nextLayer_ne c]

lemma skolem_block_card {n : ℕ} :
    ∀ b ∈ (skolemGenerated : Set (Finset (SkolemPoint n))), b.card = 3 := by
  rintro b (⟨i, _, rfl⟩ | ⟨i, c, _, rfl⟩ | ⟨c, x, y, hxy, rfl⟩)
  · exact skolemVertical_card i
  · exact skolemInfBlock_card i c
  · exact skolemDiagonal_card c x y hxy

/-! ### Point counts -/

lemma card_bosePoint (m : ℕ) [NeZero m] : Fintype.card (BosePoint m) = 3 * m := by
  simp [BosePoint, Fintype.card_prod, ZMod.card, Nat.mul_comm]

lemma card_skolemPoint (n : ℕ) [NeZero (2 * n)] :
    Fintype.card (SkolemPoint n) = 6 * n + 1 := by
  simp [SkolemPoint, Fintype.card_option, Fintype.card_prod, ZMod.card]
  ring

/-! ### Sufficiency: an STS on every admissible number of points -/

/-- Bose arm: `v = 3m` with `m` odd (i.e. `v ≡ 3 mod 6`). -/
theorem stsExists_three_mul {m : ℕ} (hm : Odd m) (hpos : 0 < m) : STSExists (3 * m) := by
  haveI : NeZero m := ⟨by omega⟩
  refine ⟨BosePoint m, inferInstance, inferInstance, boseGenerated, card_bosePoint m, ?_, ?_⟩
  · exact bose_block_card
  · intro p q hne
    obtain ⟨b, hb, hp, hq⟩ := bose_pair_covered m hm p q hne
    exact ⟨b, ⟨hb, hp, hq⟩, fun b' ⟨hb', hp', hq'⟩ =>
      bose_pair_unique m hm p q hne b' b hb' hb hp' hq' hp hq⟩

/-- Skolem arm: `v = 6n+1` (i.e. `v ≡ 1 mod 6`). -/
theorem stsExists_six_mul_add_one {n : ℕ} (hn : 0 < n) : STSExists (6 * n + 1) := by
  haveI : NeZero (2 * n) := ⟨by omega⟩
  refine ⟨SkolemPoint n, inferInstance, inferInstance, skolemGenerated, card_skolemPoint n, ?_, ?_⟩
  · exact skolem_block_card
  · intro p q hne
    obtain ⟨b, hb, hp, hq⟩ := skolem_pair_covered hn p q hne
    exact ⟨b, ⟨hb, hp, hq⟩, fun b' ⟨hb', hp', hq'⟩ =>
      skolem_pair_unique hn p q hne hb' hb hp' hq' hp hq⟩

/-- **Sufficiency arm of Kirkman 1847.** Every `v ≥ 3` with `v ≡ 1` or `3 (mod 6)` carries an STS. -/
theorem stsExists_of_residue {v : ℕ} (hv : 3 ≤ v) (h : v % 6 = 1 ∨ v % 6 = 3) : STSExists v := by
  rcases h with h1 | h3
  · obtain ⟨n, rfl⟩ : ∃ n, v = 6 * n + 1 := ⟨v / 6, by omega⟩
    exact stsExists_six_mul_add_one (by omega)
  · obtain ⟨m, rfl⟩ : ∃ m, v = 3 * m := ⟨v / 3, by omega⟩
    exact stsExists_three_mul ⟨(m - 1) / 2, by omega⟩ (by omega)

end MathBrainV2

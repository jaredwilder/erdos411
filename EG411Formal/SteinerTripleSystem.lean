/-
Copyright (c) 2026 Jared Wilder. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jared Wilder
-/
import EG411Formal.MathBrainV2BoseUnique
import EG411Formal.MathBrainV2SkolemBlocks

/-!
# Steiner triple systems

A *Steiner triple system* on a type `α` is a collection of 3-element subsets ("blocks") of `α`
such that every pair of distinct points lies in exactly one block.

This file defines `SteinerTripleSystem`, provides transport along an equivalence, and builds
systems of every admissible order via the classical Bose (`v ≡ 3 [MOD 6]`) and Skolem
(`v ≡ 1 [MOD 6]`) constructions, giving the sufficiency half of Kirkman's 1847 theorem:

* `SteinerTripleSystem` : the structure.
* `SteinerTripleSystem.map` : transport along an `Equiv`.
* `SteinerTripleSystem.bose` / `SteinerTripleSystem.skolem` : the two classical families.
* `exists_steinerTripleSystem_of_mod_six` : an STS on `Fin v` exists whenever
  `v % 6 = 1 ∨ v % 6 = 3` (and `v ≠ 0`).

## References

* T. P. Kirkman, *On a problem in combinations*, 1847.
* R. C. Bose, *On the construction of balanced incomplete block designs*, 1939.
* Th. Skolem, *Some remarks on the triple systems of Steiner*, 1958.
-/

open Finset

/-- A Steiner triple system on `α`: a set of blocks, each of size three, such that any two
distinct points lie in exactly one block. -/
structure SteinerTripleSystem (α : Type*) where
  /-- The blocks of the system. -/
  blocks : Set (Finset α)
  /-- Every block has exactly three points. -/
  card_eq_three : ∀ b ∈ blocks, b.card = 3
  /-- Every pair of distinct points lies in exactly one block. -/
  existsUnique_block : ∀ x y : α, x ≠ y → ∃! b : Finset α, b ∈ blocks ∧ x ∈ b ∧ y ∈ b

namespace SteinerTripleSystem

/-- On a subsingleton there are no pairs, so the empty family is a Steiner triple system. -/
def ofSubsingleton (α : Type*) [Subsingleton α] : SteinerTripleSystem α where
  blocks := ∅
  card_eq_three := by simp
  existsUnique_block x y hxy := absurd (Subsingleton.elim x y) hxy

/-- Transport a Steiner triple system along an equivalence. -/
noncomputable def map {α β : Type*} [DecidableEq α] [DecidableEq β] (e : α ≃ β)
    (S : SteinerTripleSystem α) : SteinerTripleSystem β where
  blocks := (fun b : Finset α => b.image e) '' S.blocks
  card_eq_three := by
    rintro b ⟨b₀, hb₀, rfl⟩
    rw [Finset.card_image_of_injective _ e.injective]
    exact S.card_eq_three b₀ hb₀
  existsUnique_block x y hxy := by
    obtain ⟨b₀, ⟨hb₀, hx₀, hy₀⟩, huniq⟩ :=
      S.existsUnique_block (e.symm x) (e.symm y) (e.symm.injective.ne hxy)
    refine ⟨b₀.image e, ⟨⟨b₀, hb₀, rfl⟩, ?_, ?_⟩, ?_⟩
    · exact Finset.mem_image.2 ⟨e.symm x, hx₀, by simp⟩
    · exact Finset.mem_image.2 ⟨e.symm y, hy₀, by simp⟩
    · rintro b ⟨⟨b₁, hb₁, rfl⟩, hxb, hyb⟩
      have hx1 : e.symm x ∈ b₁ := by
        obtain ⟨a, ha, hae⟩ := Finset.mem_image.1 hxb
        have : a = e.symm x := by rw [← hae]; simp
        rwa [← this]
      have hy1 : e.symm y ∈ b₁ := by
        obtain ⟨a, ha, hae⟩ := Finset.mem_image.1 hyb
        have : a = e.symm y := by rw [← hae]; simp
        rwa [← this]
      rw [huniq b₁ ⟨hb₁, hx1, hy1⟩]

/-! ### Necessity: the admissible orders

Both counts are fiberwise over the blocks:

* mapping each **ordered pair** of distinct points to its block has fibers `b.offDiag` of size
  `3 * 3 - 3 = 6`, so `6 ∣ v * (v - 1)`;
* fixing a point `x` and mapping each other point `y` to the block through `x, y` has fibers
  `b.erase x` of size `2`, so `2 ∣ v - 1`, i.e. `v` is odd.

Together these force `v % 6 ∈ {1, 3}`. -/

section Necessity

variable {α : Type*} [Fintype α] [DecidableEq α]

/-- The unique block through two distinct points. -/
noncomputable def block (S : SteinerTripleSystem α) (x y : α) (h : x ≠ y) : Finset α := (S.existsUnique_block x y h).choose

lemma block_mem (S : SteinerTripleSystem α) (x y : α) (h : x ≠ y) : S.block x y h ∈ S.blocks :=
  (S.existsUnique_block x y h).choose_spec.1.1

lemma left_mem_block (S : SteinerTripleSystem α) (x y : α) (h : x ≠ y) : x ∈ S.block x y h :=
  (S.existsUnique_block x y h).choose_spec.1.2.1

lemma right_mem_block (S : SteinerTripleSystem α) (x y : α) (h : x ≠ y) : y ∈ S.block x y h :=
  (S.existsUnique_block x y h).choose_spec.1.2.2

lemma eq_block (S : SteinerTripleSystem α) {x y : α} (h : x ≠ y) {b : Finset α} (hb : b ∈ S.blocks)
    (hx : x ∈ b) (hy : y ∈ b) : b = S.block x y h :=
  (S.existsUnique_block x y h).choose_spec.2 b ⟨hb, hx, hy⟩

/-- The blocks as a `Finset` (available since `Finset α` is finite). -/
noncomputable def blockFinset (S : SteinerTripleSystem α) : Finset (Finset α) := (S.blocks.toFinite).toFinset

lemma mem_blockFinset (S : SteinerTripleSystem α) {b : Finset α} : b ∈ S.blockFinset ↔ b ∈ S.blocks :=
  Set.Finite.mem_toFinset _

/-- Send an ordered pair to the block through it (junk value off the diagonal complement). -/
noncomputable def blockMap (S : SteinerTripleSystem α) (p : α × α) : Finset α :=
  if h : p.1 ≠ p.2 then S.block p.1 p.2 h else ∅

/-- Ordered-pair count: the fibers are the `offDiag`s of the blocks, each of size six. -/
lemma six_dvd_card_mul_pred (S : SteinerTripleSystem α) : 6 ∣ Fintype.card α * (Fintype.card α - 1) := by
  have hmaps : ∀ p ∈ (Finset.univ : Finset α).offDiag, S.blockMap p ∈ S.blockFinset := by
    intro p hp
    rw [Finset.mem_offDiag] at hp
    rw [mem_blockFinset, blockMap, dif_pos hp.2.2]
    exact S.block_mem _ _ hp.2.2
  have hfib : ∀ b ∈ S.blockFinset,
      ((Finset.univ : Finset α).offDiag.filter fun p => S.blockMap p = b) = b.offDiag := by
    intro b hb
    rw [mem_blockFinset] at hb
    ext p
    simp only [Finset.mem_filter, Finset.mem_offDiag, Finset.mem_univ, true_and]
    constructor
    · rintro ⟨hne, hmap⟩
      rw [blockMap, dif_pos hne] at hmap
      subst hmap
      exact ⟨S.left_mem_block _ _ hne, S.right_mem_block _ _ hne, hne⟩
    · rintro ⟨h1, h2, hne⟩
      refine ⟨hne, ?_⟩
      rw [blockMap, dif_pos hne]
      exact (S.eq_block hne hb h1 h2).symm
  have hsum := Finset.card_eq_sum_card_fiberwise hmaps
  rw [Finset.offDiag_card, Finset.card_univ] at hsum
  have hEq : Fintype.card α * (Fintype.card α - 1)
      = Fintype.card α * Fintype.card α - Fintype.card α := by
    rw [← Nat.pred_eq_sub_one, Nat.mul_pred]
  rw [hEq, hsum]
  refine Finset.dvd_sum ?_
  intro b hb
  rw [hfib b hb, Finset.offDiag_card, S.card_eq_three b (S.mem_blockFinset.1 hb)]

/-- Point count: fixing `x`, the fibers are `b.erase x`, each of size two. -/
lemma two_dvd_card_pred (S : SteinerTripleSystem α) [Nonempty α] : 2 ∣ Fintype.card α - 1 := by
  obtain ⟨x⟩ := ‹Nonempty α›
  have hmaps : ∀ y ∈ (Finset.univ : Finset α).erase x, S.blockMap (x, y) ∈ S.blockFinset := by
    intro y hy
    have hne : x ≠ y := (Finset.ne_of_mem_erase hy).symm
    rw [mem_blockFinset, blockMap, dif_pos hne]
    exact S.block_mem _ _ hne
  have hsum := Finset.card_eq_sum_card_fiberwise hmaps
  rw [Finset.card_erase_of_mem (Finset.mem_univ x), Finset.card_univ] at hsum
  rw [hsum]
  refine Finset.dvd_sum ?_
  intro b hb
  rw [mem_blockFinset] at hb
  by_cases hx : x ∈ b
  · have : ((Finset.univ : Finset α).erase x |>.filter fun y => S.blockMap (x, y) = b)
        = b.erase x := by
      ext y
      simp only [Finset.mem_filter, Finset.mem_erase, Finset.mem_univ, and_true]
      constructor
      · rintro ⟨hyx, hmap⟩
        have hne : x ≠ y := Ne.symm hyx
        rw [blockMap, dif_pos hne] at hmap
        subst hmap
        exact ⟨hyx, S.right_mem_block _ _ hne⟩
      · rintro ⟨hyx, hyb⟩
        have hne : x ≠ y := Ne.symm hyx
        refine ⟨hyx, ?_⟩
        rw [blockMap, dif_pos hne]
        exact (S.eq_block hne hb hx hyb).symm
    rw [this, Finset.card_erase_of_mem hx, S.card_eq_three b hb]
  · have : ((Finset.univ : Finset α).erase x |>.filter fun y => S.blockMap (x, y) = b) = ∅ := by
      rw [Finset.filter_eq_empty_iff]
      intro y hy hmap
      have hne : x ≠ y := (Finset.ne_of_mem_erase hy).symm
      rw [blockMap, dif_pos hne] at hmap
      exact hx (hmap ▸ S.left_mem_block _ _ hne)
    rw [this, Finset.card_empty]
    exact dvd_zero 2

/-- **Kirkman's theorem, necessity half.** A Steiner triple system on a nonempty finite type has
order congruent to `1` or `3` modulo `6`. -/
theorem card_mod_six_eq_one_or_three (S : SteinerTripleSystem α) [Nonempty α] :
    Fintype.card α % 6 = 1 ∨ Fintype.card α % 6 = 3 := by
  set v := Fintype.card α with hv
  have hv1 : 1 ≤ v := Fintype.card_pos
  have hodd : v % 2 = 1 := by
    have := S.two_dvd_card_pred
    omega
  have h6 : 6 ∣ v * (v - 1) := S.six_dvd_card_mul_pred
  have h3 : 3 ∣ v * (v - 1) := dvd_trans ⟨2, rfl⟩ h6
  have hsplit : 3 ∣ v ∨ 3 ∣ (v - 1) := (Nat.Prime.dvd_mul Nat.prime_three).1 h3
  rcases hsplit with h | h <;> omega

end Necessity

end SteinerTripleSystem

/-- A three-element `Finset` literal built from pairwise-distinct entries has card three. -/
lemma Finset.card_triple {α : Type*} [DecidableEq α] {a b c : α}
    (hab : a ≠ b) (hac : a ≠ c) (hbc : b ≠ c) : ({a, b, c} : Finset α).card = 3 :=
  Finset.card_eq_three.2 ⟨a, b, c, hab, hac, hbc, rfl⟩

namespace MathBrainV2

/-! ### The Bose family (`v ≡ 3 [MOD 6]`) -/

lemma bose_block_card (m : ℕ) (hodd : Odd m) (b : Finset (BosePoint m))
    (hb : b ∈ boseGenerated) : b.card = 3 := by
  rcases hb with ⟨x, rfl⟩ | ⟨i, x, y, hxy, rfl⟩
  · exact Finset.card_triple (by simp) (by simp) (by simp)
  · refine Finset.card_triple ?_ ?_ ?_
    · simp only [ne_eq, Prod.mk.injEq, not_and]; intro h; exact absurd h hxy
    · simp only [ne_eq, Prod.mk.injEq, not_and]; intro _; exact nextLayer_ne i
    · simp only [ne_eq, Prod.mk.injEq, not_and]; intro _; exact nextLayer_ne i

/-- The Bose construction is a Steiner triple system on `ZMod m × Fin 3` for odd `m`. -/
def boseSTS (m : ℕ) (hodd : Odd m) : SteinerTripleSystem (BosePoint m) where
  blocks := boseGenerated
  card_eq_three := bose_block_card m hodd
  existsUnique_block p q hpq := by
    obtain ⟨b, hb, hp, hq⟩ := bose_pair_covered m hodd p q hpq
    exact ⟨b, ⟨hb, hp, hq⟩, fun b' ⟨hb', hp', hq'⟩ =>
      bose_pair_unique m hodd p q hpq b' b hb' hb hp' hq' hp hq⟩

/-! ### The Skolem family (`v ≡ 1 [MOD 6]`) -/

lemma skolem_block_card (n : ℕ) (hn : 0 < n) (b : Finset (SkolemPoint n))
    (hb : b ∈ skolemGenerated) : b.card = 3 := by
  haveI : NeZero (2 * n) := ⟨by omega⟩
  have hnne : ((n : ℕ) : ZMod (2 * n)) ≠ 0 := cast_n_ne_zero hn
  rcases hb with ⟨i, hi, rfl⟩ | ⟨i, c, hi, rfl⟩ | ⟨c, x, y, hxy, rfl⟩
  · exact Finset.card_triple (by simp [sPt]) (by simp [sPt]) (by simp [sPt])
  · refine Finset.card_triple (by simp [sInf, sPt]) (by simp [sInf, sPt]) ?_
    simp only [sPt, ne_eq, Option.some.injEq, Prod.mk.injEq, not_and]
    intro h; exact absurd h (fun hc => hnne (by
      have : i + ((n : ℕ) : ZMod (2 * n)) = i + 0 := by rw [add_zero]; exact hc
      exact add_left_cancel this))
  · refine Finset.card_triple ?_ ?_ ?_
    · simp only [sPt, ne_eq, Option.some.injEq, Prod.mk.injEq, not_and]
      intro h; exact absurd h hxy
    · simp only [sPt, ne_eq, Option.some.injEq, Prod.mk.injEq, not_and]
      intro _; exact nextLayer_ne c
    · simp only [sPt, ne_eq, Option.some.injEq, Prod.mk.injEq, not_and]
      intro _; exact nextLayer_ne c

/-- The Skolem construction is a Steiner triple system on `Option (ZMod (2n) × Fin 3)`. -/
def skolemSTS (n : ℕ) (hn : 0 < n) : SteinerTripleSystem (SkolemPoint n) where
  blocks := skolemGenerated
  card_eq_three := skolem_block_card n hn
  existsUnique_block p q hpq := by
    obtain ⟨b, hb, hp, hq⟩ := skolem_pair_covered hn p q hpq
    exact ⟨b, ⟨hb, hp, hq⟩, fun b' ⟨hb', hp', hq'⟩ =>
      skolem_pair_unique hn p q hpq hb' hb hp' hq' hp hq⟩

/-! ### Orders -/

lemma card_bosePoint (m : ℕ) [NeZero m] : Fintype.card (BosePoint m) = m * 3 := by
  simp [BosePoint, ZMod.card]

lemma card_skolemPoint (n : ℕ) [NeZero (2 * n)] : Fintype.card (SkolemPoint n) = 6 * n + 1 := by
  simp [ZMod.card]
  omega

end MathBrainV2

open MathBrainV2

/-- **Kirkman's theorem, sufficiency half.** A Steiner triple system on `Fin v` exists whenever
`v` is a nonzero admissible order, i.e. `v ≡ 1` or `3 [MOD 6]`. The two families are Bose's
construction (`v ≡ 3`) and Skolem's construction (`v ≡ 1`). -/
theorem exists_steinerTripleSystem_of_mod_six (v : ℕ) (hv0 : v ≠ 0)
    (hv : v % 6 = 1 ∨ v % 6 = 3) : Nonempty (SteinerTripleSystem (Fin v)) := by
  rcases hv with h1 | h3
  · rcases eq_or_lt_of_le (Nat.one_le_iff_ne_zero.2 hv0) with hv1 | hvgt
    · -- the degenerate order v = 1: no pairs at all
      subst hv1
      exact ⟨SteinerTripleSystem.ofSubsingleton _⟩
    · -- v = 6n + 1 with n ≥ 1: Skolem
      set n := v / 6 with hn
      have hvn : v = 6 * n + 1 := by omega
      have hnpos : 0 < n := by omega
      haveI : NeZero (2 * n) := ⟨by omega⟩
      have hcard : Fintype.card (SkolemPoint n) = v := by
        rw [card_skolemPoint n, hvn]
      exact ⟨SteinerTripleSystem.map (Fintype.equivFinOfCardEq hcard) (skolemSTS n hnpos)⟩
  · -- v = 6n + 3: Bose on ZMod (2n+1) × Fin 3
    set n := v / 6 with hn
    have hvn : v = 6 * n + 3 := by omega
    haveI : NeZero (2 * n + 1) := ⟨by omega⟩
    have hodd : Odd (2 * n + 1) := Nat.odd_iff.2 (by omega)
    have hcard : Fintype.card (BosePoint (2 * n + 1)) = v := by
      rw [card_bosePoint (2 * n + 1), hvn]; ring
    exact ⟨SteinerTripleSystem.map (Fintype.equivFinOfCardEq hcard) (boseSTS (2 * n + 1) hodd)⟩

/-- **KIRKMAN'S THEOREM (1847).** A Steiner triple system of order `v > 0` exists if and only if
`v ≡ 1` or `3 [MOD 6]`.

Necessity is a double count over the blocks; sufficiency is the Bose construction for `v ≡ 3` and
the Skolem construction for `v ≡ 1`. -/
theorem exists_steinerTripleSystem_iff (v : ℕ) (hv0 : v ≠ 0) :
    Nonempty (SteinerTripleSystem (Fin v)) ↔ (v % 6 = 1 ∨ v % 6 = 3) := by
  constructor
  · rintro ⟨S⟩
    haveI : Nonempty (Fin v) := ⟨⟨0, Nat.pos_of_ne_zero hv0⟩⟩
    have h := S.card_mod_six_eq_one_or_three
    rwa [Fintype.card_fin] at h
  · exact exists_steinerTripleSystem_of_mod_six v hv0

#check @exists_steinerTripleSystem_of_mod_six
#check @exists_steinerTripleSystem_iff

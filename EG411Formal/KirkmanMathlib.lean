/-
Copyright (c) 2026 Jared Wilder. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jared Wilder
-/
import Mathlib

/-!
# Steiner triple systems and Kirkman's theorem

A *Steiner triple system* on a type `α` is a family of three-element subsets ("blocks") of `α`
such that every pair of distinct points lies in exactly one block.  This file develops the basic
theory and proves **Kirkman's theorem** (1847): a Steiner triple system of order `v > 0` exists
if and only if `v ≡ 1` or `3 [MOD 6]`.

## Main definitions

* `SteinerTripleSystem` : the structure.
* `SteinerTripleSystem.map` : transport a system along an equivalence.
* `SteinerTriple.boseGenerated` : Bose's construction on `ZMod m × Fin 3` for odd `m`,
  realising every order `v ≡ 3 [MOD 6]`.
* `SteinerTriple.skolemGenerated` : Skolem's construction on `Option (ZMod (2 * n) × Fin 3)`,
  realising every order `v ≡ 1 [MOD 6]`.

## Main statements

* `SteinerTripleSystem.card_mod_six_eq_one_or_three` : necessity, by a double count over the
  blocks — the ordered-pair fibres have size six and the point fibres have size two.
* `exists_steinerTripleSystem_of_mod_six` : sufficiency, via the two classical constructions.
* `exists_steinerTripleSystem_iff` : **Kirkman's theorem**, both directions.

## Implementation notes

Skolem's construction rests on a commutative *half-idempotent* quasigroup on `ZMod (2 * n)`.
Rather than define its halving map directly (which splits on the parity of a representative), we
define the inverse map `SteinerTriple.skolemUnhalve` — `u ↦ 2 * u` below the half-way point and
`u ↦ 2 * (u - n) + 1` above it, whose branches hit exactly the evens and the odds — and prove the
two mutually inverse.  All parity case analysis is then confined to two lemmas.

The reason the extra point is needed is isolated in `SteinerTriple.diagonal_partner_or_inf`: for a
pair on consecutive layers the diagonal block degenerates *exactly* when the infinity block covers
the pair, so the two families are complementary.

## References

* T. P. Kirkman, *On a problem in combinations*, Cambridge and Dublin Math. J. **2** (1847).
* R. C. Bose, *On the construction of balanced incomplete block designs*, Ann. Eugenics (1939).
* Th. Skolem, *Some remarks on the triple systems of Steiner*, Math. Scand. **6** (1958).

## Tags

Steiner triple system, Kirkman, block design, combinatorial design
-/

open Finset

namespace SteinerTriple

/-! ### The Bose operation: a commutative idempotent quasigroup on `ZMod m`, `m` odd -/


/- The Bose operation on an odd cyclic group.  These are the algebraic
   obligations needed before the block-incidence proof; no construction
   theorem is asserted here until the pair-coverage argument is formalized. -/
def boseOp (m : Nat) (x y : ZMod m) : ZMod m := (2 : ZMod m)⁻¹ * (x + y)

theorem boseOp_comm (m : Nat) (x y : ZMod m) : boseOp m x y = boseOp m y x := by
  simp [boseOp, add_comm]

theorem boseOp_double (m : Nat) (hodd : Odd m)
    (x y : ZMod m) : (2 : ZMod m) * boseOp m x y = x + y := by
  have hu : IsUnit (2 : ZMod m) := by
    exact (ZMod.isUnit_iff_coprime 2 m).2 (by simpa using hodd)
  rw [boseOp, ← mul_assoc, ZMod.mul_inv_of_unit _ hu, one_mul]

theorem boseOp_idem (m : Nat) (hodd : Odd m) (x : ZMod m) :
    boseOp m x x = x := by
  have hu : IsUnit (2 : ZMod m) :=
    (ZMod.isUnit_iff_coprime 2 m).2 (by simpa using hodd)
  rw [boseOp, ← two_mul, ← mul_assoc, ZMod.inv_mul_of_unit _ hu, one_mul]

theorem boseOp_left_cancel (m : Nat) (hodd : Odd m) (x y z : ZMod m)
    (h : boseOp m x y = boseOp m x z) : y = z := by
  have h2 := congrArg (fun t : ZMod m => (2 : ZMod m) * t) h
  change (2 : ZMod m) * boseOp m x y = (2 : ZMod m) * boseOp m x z at h2
  rw [boseOp_double m hodd x y, boseOp_double m hodd x z] at h2
  exact add_left_cancel h2

theorem boseOp_right_cancel (m : Nat) (hodd : Odd m) (x y z : ZMod m)
    (h : boseOp m y x = boseOp m z x) : y = z := by
  apply boseOp_left_cancel m hodd x y z
  simpa [boseOp_comm] using h

theorem boseOp_solve (m : Nat) (hodd : Odd m) (x z : ZMod m) :
    boseOp m x ((2 : ZMod m) * z - x) = z := by
  have hu : IsUnit (2 : ZMod m) :=
    (ZMod.isUnit_iff_coprime 2 m).2 (by simpa using hodd)
  rw [boseOp]
  have hsum : x + ((2 : ZMod m) * z - x) = (2 : ZMod m) * z := by ring
  rw [hsum, ← mul_assoc, ZMod.inv_mul_of_unit _ hu, one_mul]

theorem boseOp_eq_iff (m : Nat) (hodd : Odd m) (x y z : ZMod m) :
    boseOp m x y = z ↔ y = (2 : ZMod m) * z - x := by
  constructor
  · intro h
    apply boseOp_left_cancel m hodd x y ((2 : ZMod m) * z - x)
    rw [h, boseOp_solve m hodd x z]
  · intro h
    rw [h]
    exact boseOp_solve m hodd x z

theorem boseOp_ne_left (m : Nat) (hodd : Odd m) (x y : ZMod m)
    (hne : x ≠ y) : boseOp m x y ≠ x := by
  intro h
  have := (boseOp_eq_iff m hodd x y x).1 h
  have hxy : x = y := by
    simpa [two_mul] using this.symm
  apply hne
  exact hxy

theorem boseOp_ne_right (m : Nat) (hodd : Odd m) (x y : ZMod m)
    (hne : x ≠ y) : boseOp m x y ≠ y := by
  intro h
  have hs := (boseOp_eq_iff m hodd x y y).1 h
  have hxy : x = y := by
    have := hs.symm
    have h' := congrArg (fun t : ZMod m => t + x) this
    have hclean : y + y = y + x := by
      simpa [two_mul, sub_add_cancel] using h'
    exact (add_left_cancel hclean).symm
  apply hne
  exact hxy


/-! ### The Bose blocks, and pair coverage -/


abbrev BosePoint (m : Nat) := ZMod m × Fin 3

def nextLayer (i : Fin 3) : Fin 3 :=
  ⟨(i.val + 1) % 3, by omega⟩

def verticalBlock {m : Nat} (x : ZMod m) : Finset (BosePoint m) :=
  {(x, 0), (x, 1), (x, 2)}

def diagonalBlock {m : Nat} (i : Fin 3) (x y : ZMod m) : Finset (BosePoint m) :=
  {(x, i), (y, i), (boseOp m x y, nextLayer i)}

def boseGenerated {m : Nat} : Set (Finset (BosePoint m)) := {b |
  (∃ x, b = verticalBlock x) ∨
  (∃ i x y, x ≠ y ∧ b = diagonalBlock i x y)}

lemma nextLayer_cases (i j : Fin 3) (h : i ≠ j) :
    j = nextLayer i ∨ i = nextLayer j := by
  fin_cases i <;> fin_cases j <;> simp [nextLayer] at h ⊢

theorem bose_pair_covered (m : Nat) (hodd : Odd m)
    (p q : BosePoint m) (hne : p ≠ q) :
    ∃ b : Finset (BosePoint m), b ∈ boseGenerated ∧ p ∈ b ∧ q ∈ b := by
  rcases p with ⟨x, i⟩
  rcases q with ⟨y, j⟩
  by_cases hbase : x = y
  · subst y
    refine ⟨verticalBlock x, ?_, ?_, ?_⟩
    · exact Or.inl ⟨x, rfl⟩
    · fin_cases i <;> simp [verticalBlock]
    · have h_layers : i ≠ j := by
        intro hij
        apply hne
        simp [hij]
      fin_cases i <;> fin_cases j <;> simp [verticalBlock] at h_layers ⊢
  · by_cases hij : i = j
    · subst j
      refine ⟨diagonalBlock i x y, ?_, ?_, ?_⟩
      · exact Or.inr ⟨i, x, y, hbase, rfl⟩
      · simp [diagonalBlock]
      · simp [diagonalBlock]
    · rcases nextLayer_cases i j hij with hji | hij'
      · let z : ZMod m := (2 : ZMod m) * y - x
        have hz : boseOp m x z = y := by
          dsimp [z]
          exact boseOp_solve m hodd x y
        have hxz : x ≠ z := by
          intro hxz
          have hxy : x = y := by
            have hs := hz
            rw [hxz, boseOp_idem m hodd] at hs
            exact hxz.trans hs
          exact hbase hxy
        refine ⟨diagonalBlock i x z, ?_, ?_, ?_⟩
        · exact Or.inr ⟨i, x, z, hxz, rfl⟩
        · simp [diagonalBlock]
        · simp [diagonalBlock, hji, hz]
      · let z : ZMod m := (2 : ZMod m) * x - y
        have hz : boseOp m y z = x := by
          dsimp [z]
          exact boseOp_solve m hodd y x
        have hyz : y ≠ z := by
          intro hyz
          have hxy : y = x := by
            have hs := hz
            rw [hyz, boseOp_idem m hodd] at hs
            exact hyz.trans hs
          exact hbase hxy.symm
        refine ⟨diagonalBlock j y z, ?_, ?_, ?_⟩
        · exact Or.inr ⟨j, y, z, hyz, rfl⟩
        · simp [diagonalBlock, hij', hz]
        · simp [diagonalBlock]



/-! ### Bose exactness: every pair lies in exactly one block -/


/-- Membership in a vertical block is decided by the first coordinate. -/
lemma mem_verticalBlock {m : Nat} (x : ZMod m) (p : BosePoint m) :
    p ∈ verticalBlock x ↔ p.1 = x := by
  rcases p with ⟨a, i⟩
  constructor
  · intro h
    fin_cases i <;> simp [verticalBlock] at h <;> simp [h]
  · intro h
    subst h
    fin_cases i <;> simp [verticalBlock]

/-- A vertical block and a diagonal block are never equal: the diagonal block contains two
    distinct first-coordinates, the vertical block only one. -/
lemma verticalBlock_ne_diagonalBlock {m : Nat} (x : ZMod m) (i : Fin 3) (a b : ZMod m)
    (hab : a ≠ b) : verticalBlock x ≠ diagonalBlock i a b := by
  intro h
  have ha : ((a, i) : BosePoint m) ∈ verticalBlock x := by
    rw [h]; simp [diagonalBlock]
  have hb : ((b, i) : BosePoint m) ∈ verticalBlock x := by
    rw [h]; simp [diagonalBlock]
  rw [mem_verticalBlock] at ha hb
  exact hab (ha.trans hb.symm)

/-- Two points on the SAME layer that lie in a diagonal block must be its two base points.
    (The third point of a diagonal block sits on `nextLayer i`, a different layer.) -/
lemma diagonal_same_layer {m : Nat} (i j : Fin 3) (a b x y : ZMod m)
    (hxy : x ≠ y)
    (hx : ((x, i) : BosePoint m) ∈ diagonalBlock j a b)
    (hy : ((y, i) : BosePoint m) ∈ diagonalBlock j a b) :
    i = j ∧ ({x, y} : Finset (ZMod m)) = {a, b} := by
  -- On layer `i`, a diagonal block `diagonalBlock j a b` offers points (a,j), (b,j), (op a b,
  -- nextLayer j).
  -- Decompose membership ONCE, keeping the layer components explicit.
  have hxd : (x = a ∧ i = j) ∨ (x = b ∧ i = j) ∨ (x = boseOp m a b ∧ i = nextLayer j) := by
    simp [diagonalBlock, Prod.ext_iff] at hx; tauto
  have hyd : (y = a ∧ i = j) ∨ (y = b ∧ i = j) ∨ (y = boseOp m a b ∧ i = nextLayer j) := by
    simp [diagonalBlock, Prod.ext_iff] at hy; tauto
  have hnext : ∀ l : Fin 3, l ≠ nextLayer l := by intro l; fin_cases l <;> simp [nextLayer]
  -- x and y are distinct, so they cannot BOTH be the apex; hence at least one sits on layer j,
  -- which pins i = j, and then neither can be the apex (that would need i = nextLayer i).
  have hj : i = j := by
    rcases hxd with ⟨_, h⟩ | ⟨_, h⟩ | ⟨hxap, hi⟩
    · exact h
    · exact h
    · rcases hyd with ⟨_, h⟩ | ⟨_, h⟩ | ⟨hyap, _⟩
      · exact h
      · exact h
      · exact absurd (hxap.trans hyap.symm) hxy
  subst hj
  have hx' : x = a ∨ x = b := by
    rcases hxd with ⟨h, _⟩ | ⟨h, _⟩ | ⟨_, hi⟩
    · exact Or.inl h
    · exact Or.inr h
    · exact absurd hi (hnext i)
  have hy' : y = a ∨ y = b := by
    rcases hyd with ⟨h, _⟩ | ⟨h, _⟩ | ⟨_, hi⟩
    · exact Or.inl h
    · exact Or.inr h
    · exact absurd hi (hnext i)
  refine ⟨rfl, ?_⟩
  rcases hx' with rfl | rfl <;> rcases hy' with rfl | rfl
  · exact absurd rfl hxy
  · rfl
  · exact Finset.pair_comm _ _
  · exact absurd rfl hxy

/-- **EXACTNESS (same first coordinate).** Two distinct points sharing a first coordinate lie
    in exactly one generated block — the vertical block through it. -/
theorem bose_unique_vertical (m : Nat) (hodd : Odd m) (x : ZMod m) (i j : Fin 3) (hij : i ≠ j)
    (b : Finset (BosePoint m)) (hb : b ∈ boseGenerated)
    (hp : ((x, i) : BosePoint m) ∈ b) (hq : ((x, j) : BosePoint m) ∈ b) :
    b = verticalBlock x := by
  rcases hb with ⟨y, rfl⟩ | ⟨k, a, c, hac, rfl⟩
  · -- vertical block: its first coordinate must be x
    have := (mem_verticalBlock y (x, i)).1 hp
    simp at this
    subst this
    rfl
  · -- diagonal block: the two points sit on DIFFERENT layers, so one must be the apex,
    -- forcing x to be simultaneously a base point and the apex — impossible.
    exfalso
    have hx : (x = a ∧ i = k) ∨ (x = c ∧ i = k) ∨ (x = boseOp m a c ∧ i = nextLayer k) := by
      simp [diagonalBlock, Prod.ext_iff] at hp; tauto
    have hy : (x = a ∧ j = k) ∨ (x = c ∧ j = k) ∨ (x = boseOp m a c ∧ j = nextLayer k) := by
      simp [diagonalBlock, Prod.ext_iff] at hq; tauto
    have hne_l : boseOp m a c ≠ a := boseOp_ne_left m hodd a c hac
    have hne_r : boseOp m a c ≠ c := boseOp_ne_right m hodd a c hac
    rcases hx with ⟨hxa, hik⟩ | ⟨hxc, hik⟩ | ⟨hxap, hik⟩ <;>
      rcases hy with ⟨hya, hjk⟩ | ⟨hyc, hjk⟩ | ⟨hyap, hjk⟩
    · exact hij (hik.trans hjk.symm)
    · exact hij (hik.trans hjk.symm)
    · exact hne_l (hyap.symm.trans hxa)
    · exact hij (hik.trans hjk.symm)
    · exact hij (hik.trans hjk.symm)
    · exact hne_r (hyap.symm.trans hxc)
    · exact hne_l (hxap.symm.trans hya)
    · exact hne_r (hxap.symm.trans hyc)
    · exact hij (hik.trans hjk.symm)

/-- **EXACTNESS (same layer).** Two points on the same layer with distinct first coordinates lie in
    exactly one generated block: the diagonal block on that layer through them. The apex is pinned
    by
    `boseOp`, so the block is fully determined. -/
theorem bose_unique_diagonal (m : Nat) (hodd : Odd m) (x y : ZMod m) (hxy : x ≠ y) (i : Fin 3)
    (b : Finset (BosePoint m)) (hb : b ∈ boseGenerated)
    (hp : ((x, i) : BosePoint m) ∈ b) (hq : ((y, i) : BosePoint m) ∈ b) :
    b = diagonalBlock i x y := by
  rcases hb with ⟨w, rfl⟩ | ⟨k, a, c, hac, rfl⟩
  · -- a vertical block has a single first coordinate, so it cannot hold both x and y
    exfalso
    have hx := (mem_verticalBlock w (x, i)).1 hp
    have hy := (mem_verticalBlock w (y, i)).1 hq
    simp at hx hy
    exact hxy (hx.trans hy.symm)
  · -- diagonal block: same-layer points must be its two base points, so {x,y} = {a,c} and i = k
    -- signature: diagonal_same_layer (i j) (block bases a b) (queried x y) hxy hx hy
    --            gives  i = j  ∧  {x, y} = {a, b}
    obtain ⟨hik, hset⟩ := diagonal_same_layer i k a c x y hxy hp hq
    subst hik
    -- hset : {x, y} = {a, c}
    have hmem : x = a ∨ x = c := by
      have hx : x ∈ ({a, c} : Finset (ZMod m)) := by rw [← hset]; simp
      simpa using hx
    rcases hmem with rfl | rfl
    · -- x = a, hence y = c
      have hy : y = c := by
        have hc : y ∈ ({x, c} : Finset (ZMod m)) := by rw [← hset]; simp
        rcases Finset.mem_insert.1 hc with h | h
        · exact absurd h.symm hxy
        · simpa using h
      subst hy; rfl
    · -- x = c, hence y = a; same block with the two base points swapped
      have hy : y = a := by
        have ha : y ∈ ({a, x} : Finset (ZMod m)) := by rw [← hset]; simp
        rcases Finset.mem_insert.1 ha with h | h
        · exact h
        · have hyx : y = x := by simpa using h
          exact absurd hyx.symm hxy
      subst hy
      -- diagonalBlock i y x = diagonalBlock i x y  (bases commute; apex via boseOp_comm)
      simp only [diagonalBlock, boseOp_comm m y x]
      exact Finset.insert_comm _ _ _

/-- **BOSE IS A STEINER TRIPLE SYSTEM (universal in odd m).** Every pair of distinct points lies in
    exactly one generated block. Existence is `bose_pair_covered`; uniqueness is proved here by
    cases
    on whether the two points share a first coordinate or a layer. This is the "exactly once"
    property
    that separates a Steiner system from a mere covering — the last mathematical gap in the
    sufficiency
    arm of `STS(v) exists iff v ≡ 1 or 3 (mod 6)` for the v ≡ 3 (mod 6) family. -/
theorem bose_pair_unique (m : Nat) (hodd : Odd m) (p q : BosePoint m) (hne : p ≠ q)
    (b₁ b₂ : Finset (BosePoint m))
    (hb₁ : b₁ ∈ boseGenerated) (hb₂ : b₂ ∈ boseGenerated)
    (hp₁ : p ∈ b₁) (hq₁ : q ∈ b₁) (hp₂ : p ∈ b₂) (hq₂ : q ∈ b₂) :
    b₁ = b₂ := by
  rcases p with ⟨x, i⟩
  rcases q with ⟨y, j⟩
  by_cases hxy : x = y
  · -- same first coordinate: layers differ, both blocks are the vertical block through x
    subst hxy
    have hij : i ≠ j := by
      intro h; exact hne (by simp [h])
    rw [bose_unique_vertical m hodd x i j hij b₁ hb₁ hp₁ hq₁,
        bose_unique_vertical m hodd x i j hij b₂ hb₂ hp₂ hq₂]
  · by_cases hij : i = j
    · -- same layer, distinct coordinates: both blocks are the diagonal block through them
      subst hij
      rw [bose_unique_diagonal m hodd x y hxy i b₁ hb₁ hp₁ hq₁,
          bose_unique_diagonal m hodd x y hxy i b₂ hb₂ hp₂ hq₂]
    · -- Different coordinate AND different layer. Any block holding both is diagonal, with the two
      -- points being one base and the apex; `boseOp_eq_iff` then pins the OTHER base uniquely, so
      -- the block is determined. We prove a normal form and apply it to b₁ and b₂.
      have key : ∀ b : Finset (BosePoint m), b ∈ boseGenerated →
          ((x, i) : BosePoint m) ∈ b → ((y, j) : BosePoint m) ∈ b →
          (j = nextLayer i ∧ b = diagonalBlock i x ((2 : ZMod m) * y - x)) ∨
          (i = nextLayer j ∧ b = diagonalBlock j y ((2 : ZMod m) * x - y)) := by
        intro b hb hxb hyb
        rcases hb with ⟨w, rfl⟩ | ⟨k, a, c, hac, rfl⟩
        · exact absurd (((mem_verticalBlock w (x,i)).1 hxb).trans
            ((mem_verticalBlock w (y,j)).1 hyb).symm) hxy
        · -- decompose both memberships
          have hxd : (x = a ∧ i = k) ∨ (x = c ∧ i = k) ∨ (x = boseOp m a c ∧ i = nextLayer k) := by
            simp [diagonalBlock, Prod.ext_iff] at hxb; tauto
          have hyd : (y = a ∧ j = k) ∨ (y = c ∧ j = k) ∨ (y = boseOp m a c ∧ j = nextLayer k) := by
            simp [diagonalBlock, Prod.ext_iff] at hyb; tauto
          -- i ≠ j rules out both-on-layer-k and both-apex; so exactly one is the apex
          rcases hxd with ⟨hxa, hik⟩ | ⟨hxc, hik⟩ | ⟨hxap, hik⟩
          · rcases hyd with ⟨_, hjk⟩ | ⟨_, hjk⟩ | ⟨hyap, hjk⟩
            · exact absurd (hik.trans hjk.symm) hij
            · exact absurd (hik.trans hjk.symm) hij
            · -- x = a (base), y = apex = boseOp a c  ⇒  c = 2y - x
              subst hxa
              refine Or.inl ⟨by rw [hjk, ← hik], ?_⟩
              have hc : c = (2 : ZMod m) * y - x := (boseOp_eq_iff m hodd x c y).1 hyap.symm
              rw [← hik, hc]
          · rcases hyd with ⟨_, hjk⟩ | ⟨_, hjk⟩ | ⟨hyap, hjk⟩
            · exact absurd (hik.trans hjk.symm) hij
            · exact absurd (hik.trans hjk.symm) hij
            · -- x = c (base), y = apex; use commutativity to view x as the first base
              subst hxc
              refine Or.inl ⟨by rw [hjk, ← hik], ?_⟩
              have ha : a = (2 : ZMod m) * y - x := by
                refine (boseOp_eq_iff m hodd x a y).1 ?_
                rw [boseOp_comm]; exact hyap.symm
              rw [← hik, ha]
              simp only [diagonalBlock, boseOp_comm m ((2 : ZMod m) * y - x) x]
              exact Finset.insert_comm _ _ _
          · -- x is the apex, so y is a base
            rcases hyd with ⟨hya, hjk⟩ | ⟨hyc, hjk⟩ | ⟨_, hjk⟩
            · subst hya
              refine Or.inr ⟨by rw [hik, ← hjk], ?_⟩
              have hc : c = (2 : ZMod m) * x - y := (boseOp_eq_iff m hodd y c x).1 hxap.symm
              rw [← hjk, hc]
            · subst hyc
              refine Or.inr ⟨by rw [hik, ← hjk], ?_⟩
              have ha : a = (2 : ZMod m) * x - y := by
                refine (boseOp_eq_iff m hodd y a x).1 ?_
                rw [boseOp_comm]; exact hxap.symm
              rw [← hjk, ha]
              simp only [diagonalBlock, boseOp_comm m ((2 : ZMod m) * x - y) y]
              exact Finset.insert_comm _ _ _
            · exact absurd (hik.trans hjk.symm) hij
      -- both blocks reduce to the SAME normal form (the two disjuncts are mutually exclusive)
      have hnext_ne : ∀ l : Fin 3, l ≠ nextLayer l := by intro l; fin_cases l <;> simp [nextLayer]
      rcases key b₁ hb₁ hp₁ hq₁ with ⟨hj₁, he₁⟩ | ⟨hi₁, he₁⟩ <;>
        rcases key b₂ hb₂ hp₂ hq₂ with ⟨hj₂, he₂⟩ | ⟨hi₂, he₂⟩
      · rw [he₁, he₂]
      · -- j = nextLayer i and i = nextLayer j forces a 3-cycle contradiction
        exfalso; subst hj₁; revert hi₂; fin_cases i <;> simp [nextLayer]
      · exfalso; subst hi₁; revert hj₂; fin_cases j <;> simp [nextLayer]
      · rw [he₁, he₂]



/-! ### The Skolem operation: a half-idempotent quasigroup on `ZMod (2 * n)` -/


/-- Skolem "unhalving" on Z_{2n}: `g u = 2u` for `u < n`, and `2(u-n)+1` for `u ≥ n`.
    The branches hit exactly the evens and the odds of `[0, 2n)`, so `g` is a bijection. -/
def skolemUnhalve (n : ℕ) (u : ZMod (2 * n)) : ZMod (2 * n) :=
  if u.val < n then ((2 * u.val : ℕ) : ZMod (2 * n))
  else ((2 * (u.val - n) + 1 : ℕ) : ZMod (2 * n))

/-- Skolem "halving": the explicit inverse of `skolemUnhalve`. -/
def skolemHalve (n : ℕ) (t : ZMod (2 * n)) : ZMod (2 * n) :=
  if t.val % 2 = 0 then ((t.val / 2 : ℕ) : ZMod (2 * n))
  else (((t.val - 1) / 2 + n : ℕ) : ZMod (2 * n))

/-- The half-idempotent commutative quasigroup operation. -/
def skolemOp (n : ℕ) (x y : ZMod (2 * n)) : ZMod (2 * n) := skolemHalve n (x + y)

section
variable {n : ℕ}

private lemma nz (hn : 0 < n) : NeZero (2 * n) := ⟨by omega⟩

/-- A natural number below the modulus is its own `val` after casting. -/
private lemma val_cast (hn : 0 < n) {a : ℕ} (ha : a < 2 * n) :
    ((a : ZMod (2 * n))).val = a := by
  haveI := nz hn
  exact ZMod.val_cast_of_lt ha

/-- Casting an element's `val` back recovers the element. -/
private lemma cast_val (hn : 0 < n) (t : ZMod (2 * n)) : ((t.val : ℕ) : ZMod (2 * n)) = t := by
  haveI := nz hn
  simp [ZMod.natCast_val, ZMod.cast_id]

/-- `skolemHalve` is a left inverse of `skolemUnhalve`. -/
theorem skolemHalve_unhalve (hn : 0 < n) (u : ZMod (2 * n)) :
    skolemHalve n (skolemUnhalve n u) = u := by
  haveI := nz hn
  have hu : u.val < 2 * n := ZMod.val_lt u
  unfold skolemUnhalve skolemHalve
  by_cases h : u.val < n
  · -- g u = 2·u.val, an even value below 2n
    simp only [h, if_true]
    rw [val_cast hn (by omega : 2 * u.val < 2 * n)]
    have hmod : (2 * u.val) % 2 = 0 := by omega
    simp only [hmod, if_true]
    have : 2 * u.val / 2 = u.val := by omega
    rw [this, cast_val hn]
  · -- g u = 2(u.val - n) + 1, an odd value below 2n
    simp only [h, if_false]
    rw [val_cast hn (by omega : 2 * (u.val - n) + 1 < 2 * n)]
    have hmod : (2 * (u.val - n) + 1) % 2 ≠ 0 := by omega
    simp only [hmod, if_false]
    have : (2 * (u.val - n) + 1 - 1) / 2 + n = u.val := by omega
    rw [this, cast_val hn]

/-- `skolemHalve` is also a right inverse of `skolemUnhalve`. -/
theorem skolemUnhalve_halve (hn : 0 < n) (t : ZMod (2 * n)) :
    skolemUnhalve n (skolemHalve n t) = t := by
  haveI := nz hn
  have ht : t.val < 2 * n := ZMod.val_lt t
  unfold skolemHalve skolemUnhalve
  by_cases h : t.val % 2 = 0
  · -- t even: halve to t.val/2 < n, then unhalve doubles it back
    simp only [h, if_true]
    rw [val_cast hn (by omega : t.val / 2 < 2 * n)]
    have hlt : t.val / 2 < n := by omega
    simp only [hlt, if_true]
    have : 2 * (t.val / 2) = t.val := by omega
    rw [this, cast_val hn]
  · -- t odd: halve to (t.val-1)/2 + n ≥ n, then unhalve returns the odd value
    simp only [h, if_false]
    rw [val_cast hn (by omega : (t.val - 1) / 2 + n < 2 * n)]
    have hge : ¬ ((t.val - 1) / 2 + n < n) := by omega
    simp only [hge, if_false]
    have : 2 * ((t.val - 1) / 2 + n - n) + 1 = t.val := by omega
    rw [this, cast_val hn]

/-- The defining relation: `q x y = z` exactly when `x + y` is the unhalving of `z`. -/
theorem skolemOp_eq_iff (hn : 0 < n) (x y z : ZMod (2 * n)) :
    skolemOp n x y = z ↔ x + y = skolemUnhalve n z := by
  constructor
  · intro h
    rw [← h, skolemOp, skolemUnhalve_halve hn]
  · intro h
    rw [skolemOp, h, skolemHalve_unhalve hn]

theorem skolemOp_comm (n : ℕ) (x y : ZMod (2 * n)) : skolemOp n x y = skolemOp n y x := by
  simp [skolemOp, add_comm]

/-- **Unique solve.** For any `x` and target `z` there is a (unique) `y` with `q x y = z`. -/
theorem skolemOp_solve (hn : 0 < n) (x z : ZMod (2 * n)) :
    skolemOp n x (skolemUnhalve n z - x) = z := by
  rw [skolemOp_eq_iff hn]
  ring

theorem skolemOp_left_cancel (hn : 0 < n) (x y z : ZMod (2 * n))
    (h : skolemOp n x y = skolemOp n x z) : y = z := by
  have h1 : x + y = skolemUnhalve n (skolemOp n x z) := (skolemOp_eq_iff hn x y _).1 h
  have h2 : x + z = skolemUnhalve n (skolemOp n x z) := (skolemOp_eq_iff hn x z _).1 rfl
  exact add_left_cancel (h1.trans h2.symm)

theorem skolemOp_right_cancel (hn : 0 < n) (x y z : ZMod (2 * n))
    (h : skolemOp n y x = skolemOp n z x) : y = z := by
  refine skolemOp_left_cancel hn x y z ?_
  rwa [skolemOp_comm n x y, skolemOp_comm n x z]

/-- **Half-idempotence, lower half.** For `i < n` the diagonal is fixed: `q i i = i`. -/
theorem skolemOp_half_idem_lt (hn : 0 < n) (i : ZMod (2 * n)) (hi : i.val < n) :
    skolemOp n i i = i := by
  haveI := nz hn
  rw [skolemOp_eq_iff hn]
  unfold skolemUnhalve
  simp only [hi, if_true]
  haveI : NeZero (2 * n) := nz hn
  have : (i + i).val = 2 * i.val := by
    -- omega cannot handle `%` with the variable modulus `2*n`, so reduce it first
    rw [ZMod.val_add, Nat.mod_eq_of_lt (by omega : i.val + i.val < 2 * n)]
    omega
  calc i + i = ((i + i).val : ZMod (2 * n)) := (cast_val hn _).symm
    _ = ((2 * i.val : ℕ) : ZMod (2 * n)) := by rw [this]

/-- **Half-idempotence, upper half.** For `i ≥ n` the diagonal drops by `n`: `q i i = i - n`.
    This is the "half" in half-idempotent — each value is hit twice on the diagonal, which is
    exactly what the Skolem block design compensates for with its extra point. -/
theorem skolemOp_half_idem_ge (hn : 0 < n) (i : ZMod (2 * n)) (hi : n ≤ i.val) :
    skolemOp n i i = i - (n : ZMod (2 * n)) := by
  haveI := nz hn
  have hlt : i.val < 2 * n := ZMod.val_lt i
  rw [skolemOp_eq_iff hn]
  unfold skolemUnhalve
  have hval : (i - (n : ZMod (2 * n))).val = i.val - n := by
    have hn' : ((n : ZMod (2 * n))).val = n := val_cast hn (by omega)
    rw [ZMod.val_sub (by rw [hn']; omega), hn']
  rw [hval]
  have hbranch : i.val - n < n := by omega
  simp only [hbranch, if_true]
  have hadd : (i + i).val = 2 * i.val - 2 * n := by
    -- i.val ∈ [n, 2n) so i.val + i.val ∈ [2n, 4n): one subtraction of the modulus suffices
    rw [ZMod.val_add, Nat.mod_eq_sub_mod (by omega : 2 * n ≤ i.val + i.val),
        Nat.mod_eq_of_lt (by omega : i.val + i.val - 2 * n < 2 * n)]
    omega
  calc i + i = ((i + i).val : ZMod (2 * n)) := (cast_val hn _).symm
    _ = ((2 * i.val - 2 * n : ℕ) : ZMod (2 * n)) := by rw [hadd]
    _ = ((2 * (i.val - n) : ℕ) : ZMod (2 * n)) := by congr 1; omega

end



/-! ### The Skolem blocks, pair coverage, and exactness -/


abbrev SkolemPoint (n : ℕ) := Option (ZMod (2 * n) × Fin 3)

/-- The extra point. -/
def sInf {n : ℕ} : SkolemPoint n := none

/-- An ordinary point. -/
def sPt {n : ℕ} (x : ZMod (2 * n)) (c : Fin 3) : SkolemPoint n := some (x, c)

/-- Inverse of `nextLayer` on `Fin 3`. -/
def prevLayer (i : Fin 3) : Fin 3 := ⟨(i.val + 2) % 3, by omega⟩

lemma nextLayer_prevLayer (i : Fin 3) : nextLayer (prevLayer i) = i := by
  fin_cases i <;> rfl

def skolemVertical {n : ℕ} (i : ZMod (2 * n)) : Finset (SkolemPoint n) :=
  {sPt i 0, sPt i 1, sPt i 2}

def skolemInfBlock {n : ℕ} (i : ZMod (2 * n)) (c : Fin 3) : Finset (SkolemPoint n) :=
  {sInf, sPt (i + (n : ZMod (2 * n))) c, sPt i (nextLayer c)}

def skolemDiagonal {n : ℕ} (c : Fin 3) (x y : ZMod (2 * n)) : Finset (SkolemPoint n) :=
  {sPt x c, sPt y c, sPt (skolemOp n x y) (nextLayer c)}

def skolemGenerated {n : ℕ} : Set (Finset (SkolemPoint n)) := {b |
  (∃ i : ZMod (2 * n), i.val < n ∧ b = skolemVertical i) ∨
  (∃ (i : ZMod (2 * n)) (c : Fin 3), i.val < n ∧ b = skolemInfBlock i c) ∨
  (∃ (c : Fin 3) (x y : ZMod (2 * n)), x ≠ y ∧ b = skolemDiagonal c x y)}

section
variable {n : ℕ}

private lemma nz' (hn : 0 < n) : NeZero (2 * n) := ⟨by omega⟩

private lemma cast_val' (hn : 0 < n) (t : ZMod (2 * n)) : ((t.val : ℕ) : ZMod (2 * n)) = t := by
  haveI := nz' hn
  simp [ZMod.natCast_val, ZMod.cast_id]

/-- In `Z_{2n}`, doubling kills exactly `0` and `n`. -/
lemma add_self_eq_zero_iff (hn : 0 < n) (z : ZMod (2 * n)) :
    z + z = 0 ↔ z = 0 ∨ z = (n : ZMod (2 * n)) := by
  haveI := nz' hn
  have hz : z.val < 2 * n := ZMod.val_lt z
  constructor
  · intro h
    have hval : (z.val + z.val) % (2 * n) = 0 := by
      have : (z + z).val = 0 := by rw [h]; simp [sPt, sInf]
      rwa [ZMod.val_add] at this
    -- reduce the mod by cases so omega stays linear
    rcases Nat.lt_or_ge z.val n with hlt | hge
    · left
      rw [Nat.mod_eq_of_lt (by omega : z.val + z.val < 2 * n)] at hval
      have h0 : z.val = 0 := by omega
      calc z = ((z.val : ℕ) : ZMod (2 * n)) := (cast_val' hn z).symm
        _ = 0 := by rw [h0]; simp [sPt, sInf]
    · right
      rw [Nat.mod_eq_sub_mod (by omega : 2 * n ≤ z.val + z.val),
          Nat.mod_eq_of_lt (by omega : z.val + z.val - 2 * n < 2 * n)] at hval
      have hnn : z.val = n := by omega
      calc z = ((z.val : ℕ) : ZMod (2 * n)) := (cast_val' hn z).symm
        _ = ((n : ℕ) : ZMod (2 * n)) := by rw [hnn]
  · intro h
    rcases h with rfl | rfl
    · simp
    · have h2 : ((n : ℕ) : ZMod (2 * n)) + ((n : ℕ) : ZMod (2 * n))
          = ((2 * n : ℕ) : ZMod (2 * n)) := by push_cast; ring
      rw [h2, ZMod.natCast_self]

/-- `x + x` always has an even representative. -/
lemma val_add_self_even (hn : 0 < n) (x : ZMod (2 * n)) : (x + x).val % 2 = 0 := by
  haveI := nz' hn
  have hx : x.val < 2 * n := ZMod.val_lt x
  rw [ZMod.val_add]
  rcases Nat.lt_or_ge (x.val + x.val) (2 * n) with h | h
  · rw [Nat.mod_eq_of_lt h]; omega
  · rw [Nat.mod_eq_sub_mod h, Nat.mod_eq_of_lt (by omega : x.val + x.val - 2 * n < 2 * n)]
    omega

/-- Above the half-way point the unhalving map is odd, so it is never a double. -/
lemma skolemUnhalve_ne_add_self (hn : 0 < n) (y x : ZMod (2 * n)) (hy : n ≤ y.val) :
    skolemUnhalve n y ≠ x + x := by
  haveI := nz' hn
  have hyl : y.val < 2 * n := ZMod.val_lt y
  intro h
  have hodd : (skolemUnhalve n y).val % 2 = 1 := by
    unfold skolemUnhalve
    have hnot : ¬ (y.val < n) := by omega
    simp only [hnot, if_false]
    rw [ZMod.val_cast_of_lt (by omega : 2 * (y.val - n) + 1 < 2 * n)]
    omega
  rw [h, val_add_self_even hn x] at hodd
  exact absurd hodd (by omega)

/-- Below the half-way point the unhalving map IS the double. -/
lemma skolemUnhalve_eq_add_self (hn : 0 < n) (y : ZMod (2 * n)) (hy : y.val < n) :
    skolemUnhalve n y = y + y := by
  haveI := nz' hn
  unfold skolemUnhalve
  simp only [hy, if_true]
  have hval : (y + y).val = 2 * y.val := by
    rw [ZMod.val_add, Nat.mod_eq_of_lt (by omega : y.val + y.val < 2 * n)]
    omega
  calc ((2 * y.val : ℕ) : ZMod (2 * n)) = (((y + y).val : ℕ) : ZMod (2 * n)) := by rw [hval]
    _ = y + y := cast_val' hn _

/-- **THE COMPLEMENTARITY LEMMA.** For distinct `x, y`, either the diagonal partner
    `w = g y - x` is legitimate (`w ≠ x`), or the pair is exactly one covered by an infinity
    block (`y.val < n` and `x = y + n`). This is why the ∞ point is forced, and why coverage
    never has a hole. -/
lemma diagonal_partner_or_inf (hn : 0 < n) (x y : ZMod (2 * n)) (hxy : x ≠ y) :
    skolemUnhalve n y - x ≠ x ∨ (y.val < n ∧ x = y + (n : ZMod (2 * n))) := by
  haveI := nz' hn
  by_cases hdeg : skolemUnhalve n y - x = x
  · right
    have hsum : skolemUnhalve n y = x + x := sub_eq_iff_eq_add.mp hdeg
    rcases Nat.lt_or_ge y.val n with hy | hy
    · refine ⟨hy, ?_⟩
      rw [skolemUnhalve_eq_add_self hn y hy] at hsum
      have hz : (x - y) + (x - y) = 0 := by
        have hexp : (x - y) + (x - y) = (x + x) - (y + y) := by ring
        rw [hexp, ← hsum, sub_self]
      rcases (add_self_eq_zero_iff hn (x - y)).1 hz with h0 | hnn
      · exact absurd (sub_eq_zero.mp h0) hxy
      · -- hnn : x - y = n  ⇒  x = n + y  ⇒  x = y + n
        have hx : x = (n : ZMod (2 * n)) + y := sub_eq_iff_eq_add.mp hnn
        rw [hx]; exact add_comm _ _
    · exact absurd hsum (skolemUnhalve_ne_add_self hn y x hy)
  · exact Or.inl hdeg

/-- Pairs involving the extra point ∞ are covered by an infinity block. -/
lemma inf_pair_covered (hn : 0 < n) (y : ZMod (2 * n)) (c : Fin 3) :
    ∃ b : Finset (SkolemPoint n), b ∈ skolemGenerated ∧ sInf ∈ b ∧ sPt y c ∈ b := by
  haveI := nz' hn
  have hnval : ((n : ℕ) : ZMod (2 * n)).val = n := ZMod.val_cast_of_lt (by omega)
  have hyl : y.val < 2 * n := ZMod.val_lt y
  rcases Nat.lt_or_ge y.val n with hy | hy
  · -- y is in the lower half: it is the "apex" of the infinity block on layer `prevLayer c`
    refine ⟨skolemInfBlock y (prevLayer c), Or.inr (Or.inl ⟨y, prevLayer c, hy, rfl⟩), ?_, ?_⟩
    · simp [skolemInfBlock, sPt, sInf]
    · simp only [skolemInfBlock, nextLayer_prevLayer]; simp [sPt, sInf]
  · -- y is in the upper half: it is the "base" i + n with i = y - n
    have hsubval : (y - (n : ZMod (2 * n))).val = y.val - n := by
      rw [ZMod.val_sub (by rw [hnval]; omega), hnval]
    have hback : (y - (n : ZMod (2 * n))) + (n : ZMod (2 * n)) = y := by ring
    refine ⟨skolemInfBlock (y - (n : ZMod (2 * n))) c,
      Or.inr (Or.inl ⟨y - (n : ZMod (2 * n)), c, by rw [hsubval]; omega, rfl⟩), ?_, ?_⟩
    · simp [skolemInfBlock, sPt, sInf]
    · simp only [skolemInfBlock, hback]; simp [sPt, sInf]

/-- **SKOLEM PAIR COVERAGE (universal in n > 0).** Every pair of distinct points of
    {∞} ∪ (Z_{2n} × Fin 3) lies in at least one generated block. Together with
    `bose_pair_covered` this covers both residue families of the
    STS classification. -/
theorem skolem_pair_covered (hn : 0 < n) (p q : SkolemPoint n) (hne : p ≠ q) :
    ∃ b : Finset (SkolemPoint n), b ∈ skolemGenerated ∧ p ∈ b ∧ q ∈ b := by
  haveI := nz' hn
  rcases p with _ | ⟨x, c⟩
  · rcases q with _ | ⟨y, d⟩
    · exact absurd rfl hne
    · exact inf_pair_covered hn y d
  · rcases q with _ | ⟨y, d⟩
    · obtain ⟨b, hb, h1, h2⟩ := inf_pair_covered hn x c
      exact ⟨b, hb, h2, h1⟩
    · by_cases hxy : x = y
      · -- SAME first coordinate, different layers
        subst hxy
        have hcd : c ≠ d := by intro h; exact hne (by rw [h])
        rcases Nat.lt_or_ge x.val n with hx | hx
        · -- lower half: the vertical block holds all three layers
          refine ⟨skolemVertical x, Or.inl ⟨x, hx, rfl⟩, ?_, ?_⟩
          · fin_cases c <;> simp [skolemVertical, sPt]
          · fin_cases d <;> simp [skolemVertical, sPt]
        · -- upper half: no vertical block exists, so use a diagonal block whose apex is x itself.
          -- The partner w = g x - x is legitimate exactly because g x ≠ x + x above the half-way
          -- point.
          have hne' : skolemUnhalve n x - x ≠ x := fun h =>
            skolemUnhalve_ne_add_self hn x x hx (sub_eq_iff_eq_add.mp h)
          have hop : skolemOp n x (skolemUnhalve n x - x) = x := by
            rw [skolemOp_eq_iff hn]; ring
          rcases nextLayer_cases c d hcd with hdc | hcd'
          · refine ⟨skolemDiagonal c x (skolemUnhalve n x - x),
              Or.inr (Or.inr ⟨c, x, _, Ne.symm hne', rfl⟩), ?_, ?_⟩
            · simp [skolemDiagonal, sPt]
            · simp only [skolemDiagonal, hop, hdc]; simp [sPt, sInf]
          · refine ⟨skolemDiagonal d x (skolemUnhalve n x - x),
              Or.inr (Or.inr ⟨d, x, _, Ne.symm hne', rfl⟩), ?_, ?_⟩
            · simp only [skolemDiagonal, hop, hcd']; simp [sPt, sInf]
            · simp [skolemDiagonal, sPt]
      · by_cases hcd : c = d
        · -- SAME layer, distinct coordinates: the diagonal block through them
          subst hcd
          refine ⟨skolemDiagonal c x y, Or.inr (Or.inr ⟨c, x, y, hxy, rfl⟩), ?_, ?_⟩
          · simp [skolemDiagonal, sPt]
          · simp [skolemDiagonal, sPt]
        · -- MIXED: different coordinate AND different layer. Here the complementarity lemma
          -- decides between a diagonal block and an infinity block.
          rcases nextLayer_cases c d hcd with hdc | hcd'
          · rcases diagonal_partner_or_inf hn x y hxy with hw | ⟨hylt, hxeq⟩
            · have hop : skolemOp n x (skolemUnhalve n y - x) = y := by
                rw [skolemOp_eq_iff hn]; ring
              refine ⟨skolemDiagonal c x (skolemUnhalve n y - x),
                Or.inr (Or.inr ⟨c, x, _, Ne.symm hw, rfl⟩), ?_, ?_⟩
              · simp [skolemDiagonal, sPt]
              · simp only [skolemDiagonal, hop, hdc]; simp [sPt, sInf]
            · refine ⟨skolemInfBlock y c, Or.inr (Or.inl ⟨y, c, hylt, rfl⟩), ?_, ?_⟩
              · simp only [skolemInfBlock, hxeq]; simp [sPt, sInf]
              · simp only [skolemInfBlock, hdc]; simp [sPt, sInf]
          · rcases diagonal_partner_or_inf hn y x (Ne.symm hxy) with hw | ⟨hxlt, hyeq⟩
            · have hop : skolemOp n y (skolemUnhalve n x - y) = x := by
                rw [skolemOp_eq_iff hn]; ring
              refine ⟨skolemDiagonal d y (skolemUnhalve n x - y),
                Or.inr (Or.inr ⟨d, y, _, Ne.symm hw, rfl⟩), ?_, ?_⟩
              · simp only [skolemDiagonal, hop, hcd']; simp [sPt, sInf]
              · simp [skolemDiagonal, sPt]
            · refine ⟨skolemInfBlock x d, Or.inr (Or.inl ⟨x, d, hxlt, rfl⟩), ?_, ?_⟩
              · simp only [skolemInfBlock, hcd']; simp [sPt, sInf]
              · simp only [skolemInfBlock, hyeq]; simp [sPt, sInf]

/- ======================= EXACTNESS: every pair lies in EXACTLY ONE block ==================== -/

lemma nextLayer_inj : Function.Injective nextLayer := by
  intro a b h; fin_cases a <;> fin_cases b <;> simp_all [nextLayer] <;> rfl

lemma mem_infBlock (i : ZMod (2 * n)) (c : Fin 3) (p : SkolemPoint n) :
    p ∈ skolemInfBlock i c ↔
      p = sInf ∨ p = sPt (i + (n : ZMod (2 * n))) c ∨ p = sPt i (nextLayer c) := by
  simp [skolemInfBlock]

lemma mem_diagBlock (c : Fin 3) (x y : ZMod (2 * n)) (p : SkolemPoint n) :
    p ∈ skolemDiagonal c x y ↔
      p = sPt x c ∨ p = sPt y c ∨ p = sPt (skolemOp n x y) (nextLayer c) := by
  simp [skolemDiagonal]

lemma mem_vertBlock (i : ZMod (2 * n)) (p : SkolemPoint n) :
    p ∈ skolemVertical i ↔ p = sPt i 0 ∨ p = sPt i 1 ∨ p = sPt i 2 := by
  simp [skolemVertical]

/-- `n` is its own negative in `Z_{2n}`. -/
lemma neg_n_eq (hn : 0 < n) : -((n : ℕ) : ZMod (2 * n)) = ((n : ℕ) : ZMod (2 * n)) :=
  neg_eq_of_add_eq_zero_left ((add_self_eq_zero_iff hn _).2 (Or.inr rfl))

/-- Below the half-way point, subtracting `n` wraps upward. -/
lemma val_sub_n (hn : 0 < n) (y : ZMod (2 * n)) (hy : y.val < n) :
    (y - ((n : ℕ) : ZMod (2 * n))).val = y.val + n := by
  haveI := nz' hn
  have hnval : ((n : ℕ) : ZMod (2 * n)).val = n := ZMod.val_cast_of_lt (by omega)
  have hsw : y - ((n : ℕ) : ZMod (2 * n)) = y + ((n : ℕ) : ZMod (2 * n)) := by
    rw [sub_eq_add_neg, neg_n_eq hn]
  rw [hsw, ZMod.val_add, hnval, Nat.mod_eq_of_lt (by omega)]

/-- Only infinity blocks contain the extra point. -/
lemma inf_forces_infBlock (hn : 0 < n) {b : Finset (SkolemPoint n)}
    (hb : b ∈ skolemGenerated) (h : sInf ∈ b) :
    ∃ (i : ZMod (2 * n)) (c : Fin 3), i.val < n ∧ b = skolemInfBlock i c := by
  rcases hb with ⟨i, hi, rfl⟩ | ⟨i, c, hi, rfl⟩ | ⟨c, x, y, hxy, rfl⟩
  · exact absurd h (by simp [skolemVertical, sPt, sInf])
  · exact ⟨i, c, hi, rfl⟩
  · exact absurd h (by simp [skolemDiagonal, sPt, sInf])

/-- **EXACTNESS at ∞.** A pair (∞, (y,c)) determines its block. -/
theorem skolem_inf_pair_unique (hn : 0 < n) (y : ZMod (2 * n)) (c : Fin 3)
    {b₁ b₂ : Finset (SkolemPoint n)} (hb₁ : b₁ ∈ skolemGenerated) (hb₂ : b₂ ∈ skolemGenerated)
    (h₁ : sInf ∈ b₁) (h₁' : sPt y c ∈ b₁) (h₂ : sInf ∈ b₂) (h₂' : sPt y c ∈ b₂) :
    b₁ = b₂ := by
  haveI := nz' hn
  obtain ⟨i₁, e₁, hi₁, rfl⟩ := inf_forces_infBlock hn hb₁ h₁
  obtain ⟨i₂, e₂, hi₂, rfl⟩ := inf_forces_infBlock hn hb₂ h₂
  -- membership of the ordinary point pins (i, e) in each block
  have key : ∀ (i : ZMod (2 * n)) (e : Fin 3), i.val < n → sPt y c ∈ skolemInfBlock i e →
      (i = y - ((n : ℕ) : ZMod (2 * n)) ∧ e = c ∧ n ≤ y.val) ∨ (i = y ∧ e = prevLayer c ∧
          y.val < n) := by
    intro i e hi hmem
    rcases (mem_infBlock i e (sPt y c)).1 hmem with h | h | h
    · exact absurd h (by simp [sPt, sInf])
    · -- y = i + n, c = e
      have hpair : i + ((n : ℕ) : ZMod (2 * n)) = y ∧ e = c := by
        simpa [sPt, Prod.ext_iff] using h.symm
      have hy : y = i + ((n : ℕ) : ZMod (2 * n)) := hpair.1.symm
      have hce : e = c := hpair.2
      refine Or.inl ⟨by rw [hy]; ring, hce, ?_⟩
      -- i.val < n forces y = i + n to sit in the upper half
      by_contra hlt
      push_neg at hlt
      have : (i + ((n : ℕ) : ZMod (2 * n))).val = i.val + n := by
        have hnval : ((n : ℕ) : ZMod (2 * n)).val = n := ZMod.val_cast_of_lt (by omega)
        rw [ZMod.val_add, hnval, Nat.mod_eq_of_lt (by omega)]
      rw [hy] at hlt
      omega
    · -- y = i, c = nextLayer e
      have hpair : i = y ∧ nextLayer e = c := by
        simpa [sPt, Prod.ext_iff] using h.symm
      have hy : y = i := hpair.1.symm
      have hce : c = nextLayer e := hpair.2.symm
      refine Or.inr ⟨hy.symm, ?_, by rw [hy]; exact hi⟩
      rw [hce]
      exact (nextLayer_inj (by rw [nextLayer_prevLayer])).symm
  rcases key i₁ e₁ hi₁ h₁' with ⟨ha, hb, hc⟩ | ⟨ha, hb, hc⟩ <;>
    rcases key i₂ e₂ hi₂ h₂' with ⟨ha', hb', hc'⟩ | ⟨ha', hb', hc'⟩
  · rw [ha, hb, ha', hb']
  · omega
  · omega
  · rw [ha, hb, ha', hb']

lemma nextLayer_ne (e : Fin 3) : e ≠ nextLayer e := by fin_cases e <;> simp [nextLayer]

lemma skolemDiagonal_comm (c : Fin 3) (x y : ZMod (2 * n)) :
    skolemDiagonal c x y = skolemDiagonal c y x := by
  simp only [skolemDiagonal, skolemOp_comm n x y]
  exact Finset.insert_comm _ _ _

/-- `n ≠ 0` inside `Z_{2n}`. -/
lemma cast_n_ne_zero (hn : 0 < n) : ((n : ℕ) : ZMod (2 * n)) ≠ 0 := by
  haveI := nz' hn
  intro h
  have := ZMod.val_cast_of_lt (show n < 2 * n by omega)
  rw [h] at this
  simp at this
  omega

/-- The unordered layer pair {e, next e} determines e, over Fin 3. -/
lemma layer_pair_det (c d e e' : Fin 3)
    (h1 : (c = e' ∧ d = nextLayer e') ∨ (d = e' ∧ c = nextLayer e'))
    (h2 : (c = e ∧ d = nextLayer e) ∨ (d = e ∧ c = nextLayer e)) : e' = e := by
  revert c d e e' h1 h2; decide

/-- **EXACTNESS, same point.** A pair ((x,c),(x,d)) with c ≠ d determines its block. -/
theorem skolem_samepoint_unique (hn : 0 < n) (x : ZMod (2 * n)) (c d : Fin 3) (hcd : c ≠ d)
    {b₁ b₂ : Finset (SkolemPoint n)} (hb₁ : b₁ ∈ skolemGenerated) (hb₂ : b₂ ∈ skolemGenerated)
    (p₁ : sPt x c ∈ b₁) (q₁ : sPt x d ∈ b₁) (p₂ : sPt x c ∈ b₂) (q₂ : sPt x d ∈ b₂) :
    b₁ = b₂ := by
  haveI := nz' hn
  have getI : ∀ (i : ZMod (2 * n)) (e f : Fin 3), sPt x f ∈ skolemInfBlock i e →
      (x = i + ((n : ℕ) : ZMod (2 * n)) ∧ f = e) ∨ (x = i ∧ f = nextLayer e) := by
    intro i e f hf
    rcases (mem_infBlock i e (sPt x f)).1 hf with h | h | h
    · exact absurd h (by simp [sPt, sInf])
    · exact Or.inl (by simpa [sPt, Prod.ext_iff] using h)
    · exact Or.inr (by simpa [sPt, Prod.ext_iff] using h)
  have getD : ∀ (e : Fin 3) (a bb : ZMod (2 * n)) (f : Fin 3), sPt x f ∈ skolemDiagonal e a bb →
      (x = a ∧ f = e) ∨ (x = bb ∧ f = e) ∨ (x = skolemOp n a bb ∧ f = nextLayer e) := by
    intro e a bb f hf
    rcases (mem_diagBlock e a bb (sPt x f)).1 hf with h | h | h
    · exact Or.inl (by simpa [sPt, Prod.ext_iff] using h)
    · exact Or.inr (Or.inl (by simpa [sPt, Prod.ext_iff] using h))
    · exact Or.inr (Or.inr (by simpa [sPt, Prod.ext_iff] using h))
  have getV : ∀ (i : ZMod (2 * n)) (f : Fin 3), sPt x f ∈ skolemVertical i → x = i := by
    intro i f hf
    rcases (mem_vertBlock i (sPt x f)).1 hf with h | h | h <;>
      · have h2 := h; simp [sPt, Prod.ext_iff] at h2; exact h2.1
  have no_inf : ∀ (i : ZMod (2 * n)) (e : Fin 3),
      sPt x c ∈ skolemInfBlock i e → sPt x d ∈ skolemInfBlock i e → False := by
    intro i e hp hq
    rcases getI i e c hp with ⟨hx1, hc1⟩ | ⟨hx1, hc1⟩ <;>
      rcases getI i e d hq with ⟨hx2, hc2⟩ | ⟨hx2, hc2⟩
    · exact hcd (hc1.trans hc2.symm)
    · refine cast_n_ne_zero hn (add_left_cancel (a := i) ?_)
      rw [add_zero, ← hx1]; exact hx2
    · refine cast_n_ne_zero hn (add_left_cancel (a := i) ?_)
      rw [add_zero, ← hx2]; exact hx1
    · exact hcd (hc1.trans hc2.symm)
  have diag_form : ∀ (e : Fin 3) (a bb : ZMod (2 * n)), a ≠ bb →
      sPt x c ∈ skolemDiagonal e a bb → sPt x d ∈ skolemDiagonal e a bb →
      skolemOp n a bb = x ∧ (a = x ∨ bb = x) ∧
        ((c = e ∧ d = nextLayer e) ∨ (d = e ∧ c = nextLayer e)) := by
    intro e a bb hab hp hq
    rcases getD e a bb c hp with ⟨h1, h1'⟩ | ⟨h1, h1'⟩ | ⟨h1, h1'⟩ <;>
      rcases getD e a bb d hq with ⟨h2, h2'⟩ | ⟨h2, h2'⟩ | ⟨h2, h2'⟩
    · exact absurd (h1'.trans h2'.symm) hcd
    · exact absurd (h1'.trans h2'.symm) hcd
    · exact ⟨h2.symm, Or.inl h1.symm, Or.inl ⟨h1', h2'⟩⟩
    · exact absurd (h1'.trans h2'.symm) hcd
    · exact absurd (h1'.trans h2'.symm) hcd
    · exact ⟨h2.symm, Or.inr h1.symm, Or.inl ⟨h1', h2'⟩⟩
    · exact ⟨h1.symm, Or.inl h2.symm, Or.inr ⟨h2', h1'⟩⟩
    · exact ⟨h1.symm, Or.inr h2.symm, Or.inr ⟨h2', h1'⟩⟩
    · exact absurd (h1'.trans h2'.symm) hcd
  rcases Nat.lt_or_ge x.val n with hx | hx
  · -- lower half: only the vertical block survives
    have key : ∀ b, b ∈ skolemGenerated → sPt x c ∈ b → sPt x d ∈ b → b = skolemVertical x := by
      intro b hb hp hq
      rcases hb with ⟨i, hi, rfl⟩ | ⟨i, e, hi, rfl⟩ | ⟨e, a, bb, hab, rfl⟩
      · rw [getV i c hp]
      · exact absurd (no_inf i e hp hq) (by simp)
      · exfalso
        obtain ⟨hop, hbase, -⟩ := diag_form e a bb hab hp hq
        rcases hbase with rfl | rfl
        · have h1 : a + bb = skolemUnhalve n a := (skolemOp_eq_iff hn a bb a).1 hop
          rw [skolemUnhalve_eq_add_self hn a hx] at h1
          exact hab (add_left_cancel h1).symm
        · have h1 : a + bb = skolemUnhalve n bb := (skolemOp_eq_iff hn a bb bb).1 hop
          rw [skolemUnhalve_eq_add_self hn bb hx] at h1
          exact hab (add_right_cancel h1)
    rw [key b₁ hb₁ p₁ q₁, key b₂ hb₂ p₂ q₂]
  · -- upper half: no vertical block exists; the diagonal block is forced and fully determined
    obtain ⟨e, he⟩ : ∃ e, (c = e ∧ d = nextLayer e) ∨ (d = e ∧ c = nextLayer e) := by
      rcases nextLayer_cases c d hcd with h | h
      · exact ⟨c, Or.inl ⟨rfl, h⟩⟩
      · exact ⟨d, Or.inr ⟨rfl, h⟩⟩
    have key : ∀ b, b ∈ skolemGenerated → sPt x c ∈ b → sPt x d ∈ b →
        b = skolemDiagonal e x (skolemUnhalve n x - x) := by
      intro b hb hp hq
      rcases hb with ⟨i, hi, rfl⟩ | ⟨i, e', hi, rfl⟩ | ⟨e', a, bb, hab, rfl⟩
      · exfalso; rw [← getV i c hp] at hi; omega
      · exact absurd (no_inf i e' hp hq) (by simp)
      · obtain ⟨hop, hbase, hlayers⟩ := diag_form e' a bb hab hp hq
        have hlay : e' = e := layer_pair_det c d e e' hlayers he
        subst hlay
        rcases hbase with rfl | rfl
        · have hbb : bb = skolemUnhalve n a - a := by
            have h1 : a + bb = skolemUnhalve n a := (skolemOp_eq_iff hn a bb a).1 hop
            exact eq_sub_of_add_eq (by rw [add_comm]; exact h1)
          rw [hbb]
        · have ha : a = skolemUnhalve n bb - bb := by
            have h1 : a + bb = skolemUnhalve n bb := (skolemOp_eq_iff hn a bb bb).1 hop
            exact eq_sub_of_add_eq h1
          rw [ha, skolemDiagonal_comm]
    rw [key b₁ hb₁ p₁ q₁, key b₂ hb₂ p₂ q₂]

end

lemma nn_ne (e : Fin 3) : nextLayer (nextLayer e) ≠ e := by revert e; decide

lemma readVert (i z : ZMod (2 * n)) (f : Fin 3) (h : sPt z f ∈ skolemVertical i) : z = i := by
  rcases (mem_vertBlock i (sPt z f)).1 h with h' | h' | h' <;>
    · have h2 := h'; simp [sPt, Prod.ext_iff] at h2; exact h2.1

lemma readInf (i : ZMod (2 * n)) (e : Fin 3) (z : ZMod (2 * n)) (f : Fin 3)
    (h : sPt z f ∈ skolemInfBlock i e) :
    (z = i + ((n : ℕ) : ZMod (2 * n)) ∧ f = e) ∨ (z = i ∧ f = nextLayer e) := by
  rcases (mem_infBlock i e (sPt z f)).1 h with h' | h' | h'
  · exact absurd h' (by simp [sPt, sInf])
  · exact Or.inl (by simpa [sPt, Prod.ext_iff] using h')
  · exact Or.inr (by simpa [sPt, Prod.ext_iff] using h')

lemma readDiag (e : Fin 3) (a bb z : ZMod (2 * n)) (f : Fin 3)
    (h : sPt z f ∈ skolemDiagonal e a bb) :
    (z = a ∧ f = e) ∨ (z = bb ∧ f = e) ∨ (z = skolemOp n a bb ∧ f = nextLayer e) := by
  rcases (mem_diagBlock e a bb (sPt z f)).1 h with h' | h' | h'
  · exact Or.inl (by simpa [sPt, Prod.ext_iff] using h')
  · exact Or.inr (Or.inl (by simpa [sPt, Prod.ext_iff] using h'))
  · exact Or.inr (Or.inr (by simpa [sPt, Prod.ext_iff] using h'))

/-- **EXACTNESS, same layer.** A pair ((x,c),(y,c)) with x ≠ y determines its block. -/
theorem skolem_samelayer_unique (hn : 0 < n) (x y : ZMod (2 * n)) (hxy : x ≠ y) (c : Fin 3)
    {b₁ b₂ : Finset (SkolemPoint n)} (hb₁ : b₁ ∈ skolemGenerated) (hb₂ : b₂ ∈ skolemGenerated)
    (p₁ : sPt x c ∈ b₁) (q₁ : sPt y c ∈ b₁) (p₂ : sPt x c ∈ b₂) (q₂ : sPt y c ∈ b₂) :
    b₁ = b₂ := by
  have key : ∀ b, b ∈ skolemGenerated → sPt x c ∈ b → sPt y c ∈ b → b = skolemDiagonal c x y := by
    intro b hb hp hq
    rcases hb with ⟨i, hi, rfl⟩ | ⟨i, e, hi, rfl⟩ | ⟨e, a, bb, hab, rfl⟩
    · exact absurd ((readVert i x c hp).trans (readVert i y c hq).symm) hxy
    · exfalso
      rcases readInf i e x c hp with ⟨h1, f1⟩ | ⟨h1, f1⟩ <;>
        rcases readInf i e y c hq with ⟨h2, f2⟩ | ⟨h2, f2⟩
      · exact hxy (h1.trans h2.symm)
      · exact nextLayer_ne e (f1.symm.trans f2)
      · exact nextLayer_ne e (f2.symm.trans f1)
      · exact hxy (h1.trans h2.symm)
    · rcases readDiag e a bb x c hp with ⟨h1, f1⟩ | ⟨h1, f1⟩ | ⟨h1, f1⟩ <;>
        rcases readDiag e a bb y c hq with ⟨h2, f2⟩ | ⟨h2, f2⟩ | ⟨h2, f2⟩
      · exact absurd (h1.trans h2.symm) hxy
      · rw [f1, h1, h2]
      · exact absurd (f1.symm.trans f2) (nextLayer_ne e)
      · rw [f1, h1, h2, skolemDiagonal_comm]
      · exact absurd (h1.trans h2.symm) hxy
      · exact absurd (f1.symm.trans f2) (nextLayer_ne e)
      · exact absurd (f2.symm.trans f1) (nextLayer_ne e)
      · exact absurd (f2.symm.trans f1) (nextLayer_ne e)
      · exact absurd (h1.trans h2.symm) hxy
  rw [key b₁ hb₁ p₁ q₁, key b₂ hb₂ p₂ q₂]

/-- Mixed pairs, in the orientation `(x,c)` and `(y, next c)`. The complementarity lemma decides
    between the infinity block and the diagonal block; neither can occur alongside the other. -/
theorem skolem_mixed_unique_aux (hn : 0 < n) (x y : ZMod (2 * n)) (hxy : x ≠ y) (c : Fin 3)
    {b₁ b₂ : Finset (SkolemPoint n)} (hb₁ : b₁ ∈ skolemGenerated) (hb₂ : b₂ ∈ skolemGenerated)
    (p₁ : sPt x c ∈ b₁) (q₁ : sPt y (nextLayer c) ∈ b₁)
    (p₂ : sPt x c ∈ b₂) (q₂ : sPt y (nextLayer c) ∈ b₂) : b₁ = b₂ := by
  haveI := nz' hn
  have diag_case : ∀ (e : Fin 3) (a bb : ZMod (2 * n)), a ≠ bb →
      sPt x c ∈ skolemDiagonal e a bb → sPt y (nextLayer c) ∈ skolemDiagonal e a bb →
      e = c ∧ skolemOp n a bb = y ∧ (a = x ∨ bb = x) := by
    intro e a bb hab hp hq
    rcases readDiag e a bb x c hp with ⟨h1, f1⟩ | ⟨h1, f1⟩ | ⟨h1, f1⟩ <;>
      rcases readDiag e a bb y (nextLayer c) hq with ⟨h2, f2⟩ | ⟨h2, f2⟩ | ⟨h2, f2⟩
    · exact absurd (f1.trans f2.symm) (nextLayer_ne c)
    · exact absurd (f1.trans f2.symm) (nextLayer_ne c)
    · exact ⟨f1.symm, h2.symm, Or.inl h1.symm⟩
    · exact absurd (f1.trans f2.symm) (nextLayer_ne c)
    · exact absurd (f1.trans f2.symm) (nextLayer_ne c)
    · exact ⟨f1.symm, h2.symm, Or.inr h1.symm⟩
    · exact absurd (by rw [← f2] at f1; exact f1.symm) (nn_ne c)
    · exact absurd (by rw [← f2] at f1; exact f1.symm) (nn_ne c)
    · exact absurd ((nextLayer_inj f2).symm.trans f1) (nextLayer_ne e)
  have inf_case : ∀ (i : ZMod (2 * n)) (e : Fin 3), i.val < n →
      sPt x c ∈ skolemInfBlock i e → sPt y (nextLayer c) ∈ skolemInfBlock i e →
      i = y ∧ e = c ∧ y.val < n ∧ x = y + ((n : ℕ) : ZMod (2 * n)) := by
    intro i e hi hp hq
    rcases readInf i e x c hp with ⟨h1, f1⟩ | ⟨h1, f1⟩ <;>
      rcases readInf i e y (nextLayer c) hq with ⟨h2, f2⟩ | ⟨h2, f2⟩
    · exact absurd (f1.trans f2.symm) (nextLayer_ne c)
    · exact ⟨h2.symm, f1.symm, by rw [h2]; exact hi, by rw [h2]; exact h1⟩
    · exact absurd (by rw [← f2] at f1; exact f1.symm) (nn_ne c)
    · exact absurd ((nextLayer_inj f2).symm.trans f1) (nextLayer_ne e)
  by_cases hdeg : skolemUnhalve n y - x = x
  · obtain ⟨hylt, hxeq⟩ : y.val < n ∧ x = y + ((n : ℕ) : ZMod (2 * n)) := by
      rcases diagonal_partner_or_inf hn x y hxy with h | h
      · exact absurd hdeg h
      · exact h
    have key : ∀ b, b ∈ skolemGenerated → sPt x c ∈ b → sPt y (nextLayer c) ∈ b →
        b = skolemInfBlock y c := by
      intro b hb hp hq
      rcases hb with ⟨i, hi, rfl⟩ | ⟨i, e, hi, rfl⟩ | ⟨e, a, bb, hab, rfl⟩
      · exact absurd ((readVert i x c hp).trans (readVert i y (nextLayer c) hq).symm) hxy
      · obtain ⟨hiy, hec, -, -⟩ := inf_case i e hi hp hq
        rw [hiy, hec]
      · exfalso
        obtain ⟨-, hop, hbase⟩ := diag_case e a bb hab hp hq
        rcases hbase with rfl | rfl
        · refine hab (Eq.symm ?_)
          have h1 : a + bb = skolemUnhalve n y := (skolemOp_eq_iff hn a bb y).1 hop
          have h2 : bb = skolemUnhalve n y - a := eq_sub_of_add_eq (by rw [add_comm]; exact h1)
          rw [h2, hdeg]
        · refine hab ?_
          have h1 : a + bb = skolemUnhalve n y := (skolemOp_eq_iff hn a bb y).1 hop
          have h2 : a = skolemUnhalve n y - bb := eq_sub_of_add_eq h1
          rw [h2, hdeg]
    rw [key b₁ hb₁ p₁ q₁, key b₂ hb₂ p₂ q₂]
  · have key : ∀ b, b ∈ skolemGenerated → sPt x c ∈ b → sPt y (nextLayer c) ∈ b →
        b = skolemDiagonal c x (skolemUnhalve n y - x) := by
      intro b hb hp hq
      rcases hb with ⟨i, hi, rfl⟩ | ⟨i, e, hi, rfl⟩ | ⟨e, a, bb, hab, rfl⟩
      · exact absurd ((readVert i x c hp).trans (readVert i y (nextLayer c) hq).symm) hxy
      · exfalso
        obtain ⟨-, -, hylt, hxeq⟩ := inf_case i e hi hp hq
        apply hdeg
        rw [skolemUnhalve_eq_add_self hn y hylt, hxeq]
        have hnn : ((n : ℕ) : ZMod (2 * n)) + ((n : ℕ) : ZMod (2 * n)) = 0 :=
          (add_self_eq_zero_iff hn _).2 (Or.inr rfl)
        linear_combination -hnn
      · obtain ⟨hec, hop, hbase⟩ := diag_case e a bb hab hp hq
        subst hec
        rcases hbase with rfl | rfl
        · have hbb : bb = skolemUnhalve n y - a := by
            have h1 : a + bb = skolemUnhalve n y := (skolemOp_eq_iff hn a bb y).1 hop
            exact eq_sub_of_add_eq (by rw [add_comm]; exact h1)
          rw [hbb]
        · have ha : a = skolemUnhalve n y - bb := by
            have h1 : a + bb = skolemUnhalve n y := (skolemOp_eq_iff hn a bb y).1 hop
            exact eq_sub_of_add_eq h1
          rw [ha, skolemDiagonal_comm]
    rw [key b₁ hb₁ p₁ q₁, key b₂ hb₂ p₂ q₂]

/-- **THE SKOLEM ARM IS EXACT: every pair of distinct points lies in EXACTLY ONE block.**
    With `skolem_pair_covered`, the Skolem design on {∞} ∪ (Z_{2n} × Fin 3) is a Steiner triple
    system for every n > 0 — the v ≡ 1 (mod 6) arm of the classification. -/
theorem skolem_pair_unique (hn : 0 < n) (p q : SkolemPoint n) (hne : p ≠ q)
    {b₁ b₂ : Finset (SkolemPoint n)} (hb₁ : b₁ ∈ skolemGenerated) (hb₂ : b₂ ∈ skolemGenerated)
    (hp₁ : p ∈ b₁) (hq₁ : q ∈ b₁) (hp₂ : p ∈ b₂) (hq₂ : q ∈ b₂) : b₁ = b₂ := by
  rcases p with _ | ⟨x, c⟩
  · rcases q with _ | ⟨y, d⟩
    · exact absurd rfl hne
    · exact skolem_inf_pair_unique hn y d hb₁ hb₂ hp₁ hq₁ hp₂ hq₂
  · rcases q with _ | ⟨y, d⟩
    · exact skolem_inf_pair_unique hn x c hb₁ hb₂ hq₁ hp₁ hq₂ hp₂
    · by_cases hxy : x = y
      · subst hxy
        have hcd : c ≠ d := by intro h; exact hne (by rw [h])
        exact skolem_samepoint_unique hn x c d hcd hb₁ hb₂ hp₁ hq₁ hp₂ hq₂
      · by_cases hcd : c = d
        · subst hcd
          exact skolem_samelayer_unique hn x y hxy c hb₁ hb₂ hp₁ hq₁ hp₂ hq₂
        · rcases nextLayer_cases c d hcd with hdc | hcd2
          · subst hdc
            exact skolem_mixed_unique_aux hn x y hxy c hb₁ hb₂ hp₁ hq₁ hp₂ hq₂
          · subst hcd2
            exact skolem_mixed_unique_aux hn y x (Ne.symm hxy) d hb₁ hb₂ hq₁ hp₁ hq₂ hp₂




end SteinerTriple



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
noncomputable def block (S : SteinerTripleSystem α) (x y : α) (h : x ≠ y) : Finset α
    := (S.existsUnique_block x y h).choose

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
noncomputable def blockFinset (S : SteinerTripleSystem α) : Finset (Finset α)
    := (S.blocks.toFinite).toFinset

lemma mem_blockFinset (S : SteinerTripleSystem α) {b : Finset α} :
    b ∈ S.blockFinset ↔ b ∈ S.blocks :=
  Set.Finite.mem_toFinset _

/-- Send an ordered pair to the block through it (junk value off the diagonal complement). -/
noncomputable def blockMap (S : SteinerTripleSystem α) (p : α × α) : Finset α :=
  if h : p.1 ≠ p.2 then S.block p.1 p.2 h else ∅

/-- Ordered-pair count: the fibers are the `offDiag`s of the blocks, each of size six. -/
lemma six_dvd_card_mul_pred (S : SteinerTripleSystem α) :
    6 ∣ Fintype.card α * (Fintype.card α - 1) := by
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

namespace SteinerTriple

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

end SteinerTriple

open SteinerTriple

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


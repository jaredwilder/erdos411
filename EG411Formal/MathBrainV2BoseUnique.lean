import EG411Formal.MathBrainV2Bose

/- Bose EXACTNESS: every distinct pair of points lies in EXACTLY ONE generated block.

   `MathBrainV2Bose.bose_pair_covered` gives existence ("at least one block"). A Steiner
   triple system requires "exactly one" — that is the property separating an STS from a mere
   covering, and it is the last mathematical gap in the sufficiency arm of

       STS(v) exists  iff  v ≡ 1 or 3 (mod 6).

   Universal in m (odd), kernel-checked, no `sorry`, no axiom. -/

namespace MathBrainV2

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
  -- On layer `i`, a diagonal block `diagonalBlock j a b` offers points (a,j), (b,j), (op a b, nextLayer j).
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
    exactly one generated block: the diagonal block on that layer through them. The apex is pinned by
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
    exactly one generated block. Existence is `bose_pair_covered`; uniqueness is proved here by cases
    on whether the two points share a first coordinate or a layer. This is the "exactly once" property
    that separates a Steiner system from a mere covering — the last mathematical gap in the sufficiency
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

#check MathBrainV2.bose_unique_vertical
#check MathBrainV2.bose_unique_diagonal
#check MathBrainV2.bose_pair_unique

end MathBrainV2

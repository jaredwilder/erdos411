import EG411Formal.MathBrainV2Skolem
import EG411Formal.MathBrainV2Bose

/- SKOLEM BLOCK DESIGN (v = 6n+1) — the structural lemmas behind pair coverage.

   Points: {∞} ∪ (Z_{2n} × Fin 3), giving 6n+1 points.  Blocks:
     (V) vertical   {(i,0),(i,1),(i,2)}                    for i.val < n
     (I) infinity   {∞, (i+n, c), (i, next c)}             for i.val < n, c : Fin 3
     (D) diagonal   {(x,c), (y,c), (q x y, next c)}        for x ≠ y, c : Fin 3

   where q is the half-idempotent quasigroup of MathBrainV2Skolem.  Counts match:
   n + 3n + 3·C(2n,2) = n(6n+1) = v(v-1)/6.

   THE KEY STRUCTURAL FACT (`diagonal_partner_or_inf`): for a pair ((x,c),(y,next c)) the diagonal
   route needs a partner w = g(y) - x with w ≠ x.  That degenerates exactly when g(y) = x + x, which
   (given x ≠ y) happens precisely when y.val < n and x = y + n — and that is exactly the pair the
   infinity block covers.  Coverage is complementary, never absent: this is WHY half-idempotence
   forces the extra point.

   Universal in n (n > 0). No `sorry`, no custom axiom. -/

namespace MathBrainV2

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
    `MathBrainV2BoseUnique.bose_pair_covered` this covers both residue families of the
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
          -- The partner w = g x - x is legitimate exactly because g x ≠ x + x above the half-way point.
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
      (i = y - ((n : ℕ) : ZMod (2 * n)) ∧ e = c ∧ n ≤ y.val) ∨ (i = y ∧ e = prevLayer c ∧ y.val < n) := by
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


#check MathBrainV2.skolem_pair_unique

end MathBrainV2

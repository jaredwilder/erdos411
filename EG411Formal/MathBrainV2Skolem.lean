import Mathlib

/- SKOLEM ARM (v ≡ 1 mod 6) — the half-idempotent commutative quasigroup on Z_{2n}.

   The Bose arm (v ≡ 3 mod 6) is closed by MathBrainV2BoseUnique.bose_pair_unique. The remaining
   family v ≡ 1 (mod 6) uses Skolem's construction, whose engine is a COMMUTATIVE HALF-IDEMPOTENT
   QUASIGROUP of order 2n: an operation `q` with

     * q x y = q y x                       (commutative)
     * y ↦ q x y  is a bijection            (quasigroup / unique solve)
     * q i i = i for i < n, and i - n for i ≥ n   (HALF-idempotent: the diagonal hits each
       value exactly twice — this is what forces the "∞" point in the block design)

   Formalization strategy: the halving map is painful to reason about directly (it splits on the
   parity of a representative), so we define its INVERSE `skolemUnhalve` — g(u) = 2u for u < n,
   2(u-n)+1 for u ≥ n — whose two branches land in the evens and the odds of [0,2n). Both maps are
   explicit and computable, and we prove they are mutually inverse. Every quasigroup property then
   follows by rewriting, with no parity case-analysis leaking into the combinatorial layer.

   Universal in n (n > 0). No `sorry`, no custom axiom. -/

namespace MathBrainV2

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

#check MathBrainV2.skolemHalve_unhalve
#check MathBrainV2.skolemUnhalve_halve
#check MathBrainV2.skolemOp_eq_iff
#check MathBrainV2.skolemOp_solve
#check MathBrainV2.skolemOp_left_cancel
#check MathBrainV2.skolemOp_half_idem_lt
#check MathBrainV2.skolemOp_half_idem_ge

end MathBrainV2

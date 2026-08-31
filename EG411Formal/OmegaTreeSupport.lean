import Mathlib.NumberTheory.LucasLehmer
import Mathlib.Data.Nat.Totient
import Mathlib.Tactic

/-!
# Support lemmas for the ω = 5 kill-tree (`OmegaTree5.lean`)

Parametric lemmas backing the certified kill-tree for `3·φ(n) = 2n + 2` with five
distinct prime factors.  Throughout, the prefix of already-fixed primes is folded into
the constants `A = 3·∏(p−1)` and `B = 2·∏p`, so the node equation for the remaining
primes `x1 < x2 < …` reads `A·∏(xi−1) = B·∏xi + 2`.

* `cap_kill_3/4/5` — if the concrete check `B·c^j + 2 < A·(c−1)^j` holds and all
  remaining primes are `≥ c`, the node equation is impossible (the smallest remaining
  prime is capped below `c`).
* `dead_kill_2` — if `A ≤ B` the node equation is impossible outright.
* `terminal_bound` — at a 2-variable terminal `A(s−1)(t−1) = Bst + 2` with `B < A`,
  the quadratic bound `A·s² + A < B·s² + 2As + 2` (which yields a concrete `s ≤ s_hi`).
* `terminal_formula` — when additionally `A < (A−B)·s`, the larger prime is pinned:
  `((A−B)s − A) ∣ (As − A + 2)` and `t = (As − A + 2)/((A−B)s − A)`.
* `terminal_low_kill` — when instead `(A−B)·s ≤ A`, the terminal equation is impossible.
* `phi_prod_5` — `φ(p·q·r·s·t) = (p−1)(q−1)(r−1)(s−1)(t−1)` for distinct primes.
-/

namespace EG411Structure

/-- For `c ≤ x` we have `(c−1)·x ≤ (x−1)·c` (the cross-multiplied monotonicity of
`x ↦ (x−1)/x`). -/
theorem sub_one_mul_le {c x : ℕ} (hx : c ≤ x) :
    (c - 1) * x ≤ (x - 1) * c := by
  rw [Nat.sub_mul, Nat.sub_mul, one_mul, one_mul, mul_comm x c]
  omega

/-- Cap kill, three remaining variables: if `B·c³ + 2 < A·(c−1)³` and
`c ≤ x1 ≤ x2 ≤ x3`, then `A(x1−1)(x2−1)(x3−1) = B·x1x2x3 + 2` is impossible. -/
theorem cap_kill_3 {A B c x1 x2 x3 : ℕ} (hc : 1 ≤ c)
    (hnum : B * c ^ 3 + 2 < A * (c - 1) ^ 3)
    (h1 : c ≤ x1) (h12 : x1 ≤ x2) (h23 : x2 ≤ x3)
    (heq : A * ((x1 - 1) * ((x2 - 1) * (x3 - 1))) = B * (x1 * (x2 * x3)) + 2) :
    False := by
  have h2 : c ≤ x2 := h1.trans h12
  have h3 : c ≤ x3 := h2.trans h23
  have k1 := sub_one_mul_le h1
  have k2 := sub_one_mul_le h2
  have k3 := sub_one_mul_le h3
  have prod : ((c - 1) * x1) * (((c - 1) * x2) * ((c - 1) * x3))
      ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * ((x3 - 1) * c)) :=
    Nat.mul_le_mul k1 (Nat.mul_le_mul k2 k3)
  have hcQ : (c - 1) ^ 3 * (x1 * (x2 * x3))
      ≤ ((x1 - 1) * ((x2 - 1) * (x3 - 1))) * c ^ 3 := by
    calc (c - 1) ^ 3 * (x1 * (x2 * x3))
        = ((c - 1) * x1) * (((c - 1) * x2) * ((c - 1) * x3)) := by ring
      _ ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * ((x3 - 1) * c)) := prod
      _ = ((x1 - 1) * ((x2 - 1) * (x3 - 1))) * c ^ 3 := by ring
  have hQge : c ^ 3 ≤ x1 * (x2 * x3) := by
    calc c ^ 3 = c * (c * c) := by ring
      _ ≤ x1 * (x2 * x3) := Nat.mul_le_mul h1 (Nat.mul_le_mul h2 h3)
  -- Multiply hnum by Q, hcQ by A, and chain through heq.
  have hQpos : 0 < x1 * (x2 * x3) :=
    lt_of_lt_of_le (pow_pos (by omega) 3) hQge
  have step1 : (B * c ^ 3 + 2) * (x1 * (x2 * x3))
      < (A * (c - 1) ^ 3) * (x1 * (x2 * x3)) :=
    Nat.mul_lt_mul_of_lt_of_le hnum (le_refl _) hQpos
  have step2 : (A * (c - 1) ^ 3) * (x1 * (x2 * x3))
      = A * ((c - 1) ^ 3 * (x1 * (x2 * x3))) := by ring
  have step3 : A * ((c - 1) ^ 3 * (x1 * (x2 * x3)))
      ≤ A * (((x1 - 1) * ((x2 - 1) * (x3 - 1))) * c ^ 3) :=
    Nat.mul_le_mul_left A hcQ
  have step4 : A * (((x1 - 1) * ((x2 - 1) * (x3 - 1))) * c ^ 3)
      = (A * ((x1 - 1) * ((x2 - 1) * (x3 - 1)))) * c ^ 3 := by ring
  rw [step4, heq] at step3
  rw [step2] at step1
  have hchain : (B * c ^ 3 + 2) * (x1 * (x2 * x3))
      < (B * (x1 * (x2 * x3)) + 2) * c ^ 3 := lt_of_lt_of_le step1 step3
  -- Expand: B·c³·Q + 2Q < B·Q·c³ + 2c³, so Q < c³ — contradicting hQge.
  have hexp : B * c ^ 3 * (x1 * (x2 * x3)) + 2 * (x1 * (x2 * x3))
      < B * (x1 * (x2 * x3)) * c ^ 3 + 2 * c ^ 3 := by
    calc B * c ^ 3 * (x1 * (x2 * x3)) + 2 * (x1 * (x2 * x3))
        = (B * c ^ 3 + 2) * (x1 * (x2 * x3)) := by ring
      _ < (B * (x1 * (x2 * x3)) + 2) * c ^ 3 := hchain
      _ = B * (x1 * (x2 * x3)) * c ^ 3 + 2 * c ^ 3 := by ring
  have hBcomm : B * c ^ 3 * (x1 * (x2 * x3)) = B * (x1 * (x2 * x3)) * c ^ 3 := by ring
  omega

/-- Cap kill, four remaining variables. -/
theorem cap_kill_4 {A B c x1 x2 x3 x4 : ℕ} (hc : 1 ≤ c)
    (hnum : B * c ^ 4 + 2 < A * (c - 1) ^ 4)
    (h1 : c ≤ x1) (h12 : x1 ≤ x2) (h23 : x2 ≤ x3) (h34 : x3 ≤ x4)
    (heq : A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * (x4 - 1))))
         = B * (x1 * (x2 * (x3 * x4))) + 2) :
    False := by
  have h2 : c ≤ x2 := h1.trans h12
  have h3 : c ≤ x3 := h2.trans h23
  have h4 : c ≤ x4 := h3.trans h34
  have k1 := sub_one_mul_le h1
  have k2 := sub_one_mul_le h2
  have k3 := sub_one_mul_le h3
  have k4 := sub_one_mul_le h4
  have prod : ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) * ((c - 1) * x4)))
      ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) * ((x4 - 1) * c))) :=
    Nat.mul_le_mul k1 (Nat.mul_le_mul k2 (Nat.mul_le_mul k3 k4))
  have hcQ : (c - 1) ^ 4 * (x1 * (x2 * (x3 * x4)))
      ≤ ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * (x4 - 1)))) * c ^ 4 := by
    calc (c - 1) ^ 4 * (x1 * (x2 * (x3 * x4)))
        = ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) * ((c - 1) * x4))) := by
          ring
      _ ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) * ((x4 - 1) * c))) := prod
      _ = ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * (x4 - 1)))) * c ^ 4 := by ring
  have hQge : c ^ 4 ≤ x1 * (x2 * (x3 * x4)) := by
    calc c ^ 4 = c * (c * (c * c)) := by ring
      _ ≤ x1 * (x2 * (x3 * x4)) :=
        Nat.mul_le_mul h1 (Nat.mul_le_mul h2 (Nat.mul_le_mul h3 h4))
  have hQpos : 0 < x1 * (x2 * (x3 * x4)) :=
    lt_of_lt_of_le (pow_pos (by omega) 4) hQge
  have step1 : (B * c ^ 4 + 2) * (x1 * (x2 * (x3 * x4)))
      < (A * (c - 1) ^ 4) * (x1 * (x2 * (x3 * x4))) :=
    Nat.mul_lt_mul_of_lt_of_le hnum (le_refl _) hQpos
  have step2 : (A * (c - 1) ^ 4) * (x1 * (x2 * (x3 * x4)))
      = A * ((c - 1) ^ 4 * (x1 * (x2 * (x3 * x4)))) := by ring
  have step3 : A * ((c - 1) ^ 4 * (x1 * (x2 * (x3 * x4))))
      ≤ A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * (x4 - 1)))) * c ^ 4) :=
    Nat.mul_le_mul_left A hcQ
  have step4 : A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * (x4 - 1)))) * c ^ 4)
      = (A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * (x4 - 1))))) * c ^ 4 := by ring
  rw [step4, heq] at step3
  rw [step2] at step1
  have hchain : (B * c ^ 4 + 2) * (x1 * (x2 * (x3 * x4)))
      < (B * (x1 * (x2 * (x3 * x4))) + 2) * c ^ 4 := lt_of_lt_of_le step1 step3
  have hexp : B * c ^ 4 * (x1 * (x2 * (x3 * x4))) + 2 * (x1 * (x2 * (x3 * x4)))
      < B * (x1 * (x2 * (x3 * x4))) * c ^ 4 + 2 * c ^ 4 := by
    calc B * c ^ 4 * (x1 * (x2 * (x3 * x4))) + 2 * (x1 * (x2 * (x3 * x4)))
        = (B * c ^ 4 + 2) * (x1 * (x2 * (x3 * x4))) := by ring
      _ < (B * (x1 * (x2 * (x3 * x4))) + 2) * c ^ 4 := hchain
      _ = B * (x1 * (x2 * (x3 * x4))) * c ^ 4 + 2 * c ^ 4 := by ring
  have hBcomm : B * c ^ 4 * (x1 * (x2 * (x3 * x4)))
      = B * (x1 * (x2 * (x3 * x4))) * c ^ 4 := by ring
  omega

/-- Cap kill, five remaining variables (the root of the tree). -/
theorem cap_kill_5 {A B c x1 x2 x3 x4 x5 : ℕ} (hc : 1 ≤ c)
    (hnum : B * c ^ 5 + 2 < A * (c - 1) ^ 5)
    (h1 : c ≤ x1) (h12 : x1 ≤ x2) (h23 : x2 ≤ x3) (h34 : x3 ≤ x4) (h45 : x4 ≤ x5)
    (heq : A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * (x5 - 1)))))
         = B * (x1 * (x2 * (x3 * (x4 * x5)))) + 2) :
    False := by
  have h2 : c ≤ x2 := h1.trans h12
  have h3 : c ≤ x3 := h2.trans h23
  have h4 : c ≤ x4 := h3.trans h34
  have h5 : c ≤ x5 := h4.trans h45
  have k1 := sub_one_mul_le h1
  have k2 := sub_one_mul_le h2
  have k3 := sub_one_mul_le h3
  have k4 := sub_one_mul_le h4
  have k5 := sub_one_mul_le h5
  have prod : ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) *
        (((c - 1) * x4) * ((c - 1) * x5))))
      ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) *
        (((x4 - 1) * c) * ((x5 - 1) * c)))) :=
    Nat.mul_le_mul k1 (Nat.mul_le_mul k2 (Nat.mul_le_mul k3 (Nat.mul_le_mul k4 k5)))
  have hcQ : (c - 1) ^ 5 * (x1 * (x2 * (x3 * (x4 * x5))))
      ≤ ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * (x5 - 1))))) * c ^ 5 := by
    calc (c - 1) ^ 5 * (x1 * (x2 * (x3 * (x4 * x5))))
        = ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) *
            (((c - 1) * x4) * ((c - 1) * x5)))) := by ring
      _ ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) *
            (((x4 - 1) * c) * ((x5 - 1) * c)))) := prod
      _ = ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * (x5 - 1))))) * c ^ 5 := by
          ring
  have hQge : c ^ 5 ≤ x1 * (x2 * (x3 * (x4 * x5))) := by
    calc c ^ 5 = c * (c * (c * (c * c))) := by ring
      _ ≤ x1 * (x2 * (x3 * (x4 * x5))) :=
        Nat.mul_le_mul h1 (Nat.mul_le_mul h2
          (Nat.mul_le_mul h3 (Nat.mul_le_mul h4 h5)))
  have hQpos : 0 < x1 * (x2 * (x3 * (x4 * x5))) :=
    lt_of_lt_of_le (pow_pos (by omega) 5) hQge
  have step1 : (B * c ^ 5 + 2) * (x1 * (x2 * (x3 * (x4 * x5))))
      < (A * (c - 1) ^ 5) * (x1 * (x2 * (x3 * (x4 * x5)))) :=
    Nat.mul_lt_mul_of_lt_of_le hnum (le_refl _) hQpos
  have step2 : (A * (c - 1) ^ 5) * (x1 * (x2 * (x3 * (x4 * x5))))
      = A * ((c - 1) ^ 5 * (x1 * (x2 * (x3 * (x4 * x5))))) := by ring
  have step3 : A * ((c - 1) ^ 5 * (x1 * (x2 * (x3 * (x4 * x5)))))
      ≤ A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * (x5 - 1))))) * c ^ 5) :=
    Nat.mul_le_mul_left A hcQ
  have step4 : A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * (x5 - 1))))) * c ^ 5)
      = (A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * (x5 - 1)))))) * c ^ 5 := by
    ring
  rw [step4, heq] at step3
  rw [step2] at step1
  have hchain : (B * c ^ 5 + 2) * (x1 * (x2 * (x3 * (x4 * x5))))
      < (B * (x1 * (x2 * (x3 * (x4 * x5)))) + 2) * c ^ 5 := lt_of_lt_of_le step1 step3
  have hexp : B * c ^ 5 * (x1 * (x2 * (x3 * (x4 * x5)))) + 2 * (x1 * (x2 * (x3 * (x4 * x5))))
      < B * (x1 * (x2 * (x3 * (x4 * x5)))) * c ^ 5 + 2 * c ^ 5 := by
    calc B * c ^ 5 * (x1 * (x2 * (x3 * (x4 * x5)))) + 2 * (x1 * (x2 * (x3 * (x4 * x5))))
        = (B * c ^ 5 + 2) * (x1 * (x2 * (x3 * (x4 * x5)))) := by ring
      _ < (B * (x1 * (x2 * (x3 * (x4 * x5)))) + 2) * c ^ 5 := hchain
      _ = B * (x1 * (x2 * (x3 * (x4 * x5)))) * c ^ 5 + 2 * c ^ 5 := by ring
  have hBcomm : B * c ^ 5 * (x1 * (x2 * (x3 * (x4 * x5))))
      = B * (x1 * (x2 * (x3 * (x4 * x5)))) * c ^ 5 := by ring
  omega

/-- Dead node: if `A ≤ B`, the two-variable node equation is impossible. -/
theorem dead_kill_2 {A B s t : ℕ} (hAB : A ≤ B)
    (heq : A * ((s - 1) * (t - 1)) = B * (s * t) + 2) : False := by
  have h1 : A * ((s - 1) * (t - 1)) ≤ B * (s * t) :=
    Nat.mul_le_mul hAB (Nat.mul_le_mul (Nat.sub_le s 1) (Nat.sub_le t 1))
  omega

/-- Terminal quadratic bound: from `A(s−1)(t−1) = Bst + 2` with `B < A`, `s < t`,
`2 ≤ s` we get `A·s² + A < B·s² + 2As + 2` — a concrete quadratic in `s` that pins
`s ≤ s_hi` at every terminal node. -/
theorem terminal_bound {A B s t : ℕ} (hBA : B < A)
    (heq : A * ((s - 1) * (t - 1)) = B * (s * t) + 2) (hst : s < t) (hs2 : 2 ≤ s) :
    A * (s * s) + A < B * (s * s) + 2 * A * s + 2 := by
  have h1s : 1 ≤ s := by omega
  have h1t : 1 ≤ t := by omega
  zify [h1s, h1t] at heq ⊢
  have hsz : (2 : ℤ) ≤ (s : ℤ) := by exact_mod_cast hs2
  have htz : (s : ℤ) < (t : ℤ) := by exact_mod_cast hst
  have hAz : (B : ℤ) < (A : ℤ) := by exact_mod_cast hBA
  have hB0 : (0 : ℤ) ≤ (B : ℤ) := Int.natCast_nonneg B
  by_cases hD : (A : ℤ) < ((A : ℤ) - B) * s
  · -- High case: t·((A−B)s − A) = As − A + 2 and s < t.
    have hid : (t : ℤ) * (((A : ℤ) - B) * s - A) = (A : ℤ) * s - A + 2 := by
      linear_combination heq
    have hprod : (s : ℤ) * (((A : ℤ) - B) * s - A)
        < (t : ℤ) * (((A : ℤ) - B) * s - A) :=
      mul_lt_mul_of_pos_right htz (by linarith)
    nlinarith [hid, hprod]
  · -- Low case: (A−B)s ≤ A.  Multiply by s and finish linearly.
    have hDle : (((A : ℤ) - B) * s) ≤ A := by linarith
    have hmul : (((A : ℤ) - B) * s) * s ≤ (A : ℤ) * s :=
      mul_le_mul_of_nonneg_right hDle (by linarith)
    nlinarith [hmul, hsz, hAz, hB0]

/-- Terminal formula: when additionally `A < (A−B)·s`, the larger prime `t` is the
exact quotient `(As − A + 2)/((A−B)s − A)`. -/
theorem terminal_formula {A B s t : ℕ} (hBA : B < A)
    (heq : A * ((s - 1) * (t - 1)) = B * (s * t) + 2) (hst : s < t) (hs2 : 2 ≤ s)
    (hden : A < (A - B) * s) :
    ((A - B) * s - A) ∣ (A * s - A + 2) ∧ (A * s - A + 2) / ((A - B) * s - A) = t := by
  have h1s : 1 ≤ s := by omega
  have h1t : 1 ≤ t := by omega
  have hABle : B ≤ A := hBA.le
  have hAs : A ≤ A * s := Nat.le_mul_of_pos_right A (by omega)
  -- The ℕ identity t·((A−B)s − A) = As − A + 2 (valid since (A−B)s > A, As ≥ A).
  zify [h1s, h1t] at heq
  have hkey : t * ((A - B) * s - A) = A * s - A + 2 := by
    zify [hABle, hden.le, hAs]
    linear_combination heq
  have hDpos : 0 < (A - B) * s - A := by omega
  have hMD : A * s - A + 2 = ((A - B) * s - A) * t := by rw [← hkey]; ring
  refine ⟨⟨t, hMD⟩, ?_⟩
  rw [hMD, Nat.mul_div_cancel_left _ hDpos]

/-- Terminal low kill: when instead `(A−B)·s ≤ A`, the terminal equation has no
solution at all (the would-be `t` is forced nonpositive). -/
theorem terminal_low_kill {A B s t : ℕ} (hBA : B < A)
    (heq : A * ((s - 1) * (t - 1)) = B * (s * t) + 2) (hst : s < t) (hs2 : 2 ≤ s)
    (hlow : (A - B) * s ≤ A) : False := by
  have h1s : 1 ≤ s := by omega
  have h1t : 1 ≤ t := by omega
  have hABle : B ≤ A := hBA.le
  zify [h1s, h1t, hABle] at heq hlow
  have hsz : (2 : ℤ) ≤ (s : ℤ) := by exact_mod_cast hs2
  have htz : (s : ℤ) < (t : ℤ) := by exact_mod_cast hst
  have hAz : (B : ℤ) < (A : ℤ) := by exact_mod_cast hBA
  have hid : (t : ℤ) * (((A : ℤ) - B) * s - A) = (A : ℤ) * s - A + 2 := by
    linear_combination heq
  have ht0 : (0 : ℤ) ≤ (t : ℤ) := Int.natCast_nonneg t
  have hA0 : (0 : ℤ) ≤ (A : ℤ) := Int.natCast_nonneg A
  nlinarith [hid, mul_nonneg ht0 (by linarith : (0 : ℤ) ≤ (A : ℤ) - ((A : ℤ) - B) * s),
    mul_nonneg hA0 (by linarith : (0 : ℤ) ≤ (s : ℤ) - 2)]

/-- Cap kill, six remaining variables (root of the ω = 6 tree). -/
theorem cap_kill_6 {A B c x1 x2 x3 x4 x5 x6 : ℕ} (hc : 1 ≤ c)
    (hnum : B * c ^ 6 + 2 < A * (c - 1) ^ 6)
    (h1 : c ≤ x1) (h12 : x1 ≤ x2) (h23 : x2 ≤ x3) (h34 : x3 ≤ x4) (h45 : x4 ≤ x5)
    (h56 : x5 ≤ x6)
    (heq : A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * ((x5 - 1) * (x6 - 1))))))
         = B * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) + 2) :
    False := by
  have h2 : c ≤ x2 := h1.trans h12
  have h3 : c ≤ x3 := h2.trans h23
  have h4 : c ≤ x4 := h3.trans h34
  have h5 : c ≤ x5 := h4.trans h45
  have h6 : c ≤ x6 := h5.trans h56
  have k1 := sub_one_mul_le h1
  have k2 := sub_one_mul_le h2
  have k3 := sub_one_mul_le h3
  have k4 := sub_one_mul_le h4
  have k5 := sub_one_mul_le h5
  have k6 := sub_one_mul_le h6
  have prod : ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) *
        (((c - 1) * x4) * (((c - 1) * x5) * ((c - 1) * x6)))))
      ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) *
        (((x4 - 1) * c) * (((x5 - 1) * c) * ((x6 - 1) * c))))) :=
    Nat.mul_le_mul k1 (Nat.mul_le_mul k2 (Nat.mul_le_mul k3
      (Nat.mul_le_mul k4 (Nat.mul_le_mul k5 k6))))
  have hcQ : (c - 1) ^ 6 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
      ≤ ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * ((x5 - 1) * (x6 - 1)))))) * c ^ 6 := by
    calc (c - 1) ^ 6 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
        = ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) *
            (((c - 1) * x4) * (((c - 1) * x5) * ((c - 1) * x6))))) := by ring
      _ ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) *
            (((x4 - 1) * c) * (((x5 - 1) * c) * ((x6 - 1) * c))))) := prod
      _ = ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * ((x5 - 1) * (x6 - 1)))))) * c ^ 6 := by
          ring
  have hQge : c ^ 6 ≤ x1 * (x2 * (x3 * (x4 * (x5 * x6)))) := by
    calc c ^ 6 = c * (c * (c * (c * (c * c)))) := by ring
      _ ≤ x1 * (x2 * (x3 * (x4 * (x5 * x6)))) :=
        Nat.mul_le_mul h1 (Nat.mul_le_mul h2 (Nat.mul_le_mul h3
          (Nat.mul_le_mul h4 (Nat.mul_le_mul h5 h6))))
  have hQpos : 0 < x1 * (x2 * (x3 * (x4 * (x5 * x6)))) :=
    lt_of_lt_of_le (pow_pos (by omega) 6) hQge
  have step1 : (B * c ^ 6 + 2) * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
      < (A * (c - 1) ^ 6) * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) :=
    Nat.mul_lt_mul_of_lt_of_le hnum (le_refl _) hQpos
  have step2 : (A * (c - 1) ^ 6) * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
      = A * ((c - 1) ^ 6 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))) := by ring
  have step3 : A * ((c - 1) ^ 6 * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))))
      ≤ A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * ((x5 - 1) * (x6 - 1)))))) * c ^ 6) :=
    Nat.mul_le_mul_left A hcQ
  have step4 :
      A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * ((x5 - 1) * (x6 - 1)))))) * c ^ 6)
      = (A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) *
          ((x4 - 1) * ((x5 - 1) * (x6 - 1))))))) * c ^ 6 := by
    ring
  rw [step4, heq] at step3
  rw [step2] at step1
  have hchain : (B * c ^ 6 + 2) * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
      < (B * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) + 2) * c ^ 6 := lt_of_lt_of_le step1 step3
  have hexp : B * c ^ 6 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
        + 2 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
      < B * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) * c ^ 6 + 2 * c ^ 6 := by
    calc B * c ^ 6 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
          + 2 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
        = (B * c ^ 6 + 2) * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) := by ring
      _ < (B * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) + 2) * c ^ 6 := hchain
      _ = B * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) * c ^ 6 + 2 * c ^ 6 := by ring
  have hBcomm : B * c ^ 6 * (x1 * (x2 * (x3 * (x4 * (x5 * x6)))))
      = B * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) * c ^ 6 := by ring
  omega

/-- Cap kill, seven remaining variables (root of the ω = 7 tree). -/
theorem cap_kill_7 {A B c x1 x2 x3 x4 x5 x6 x7 : ℕ} (hc : 1 ≤ c)
    (hnum : B * c ^ 7 + 2 < A * (c - 1) ^ 7)
    (h1 : c ≤ x1) (h12 : x1 ≤ x2) (h23 : x2 ≤ x3) (h34 : x3 ≤ x4) (h45 : x4 ≤ x5)
    (h56 : x5 ≤ x6) (h67 : x6 ≤ x7)
    (heq : A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) *
              ((x5 - 1) * ((x6 - 1) * (x7 - 1)))))))
         = B * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) + 2) :
    False := by
  have h2 : c ≤ x2 := h1.trans h12
  have h3 : c ≤ x3 := h2.trans h23
  have h4 : c ≤ x4 := h3.trans h34
  have h5 : c ≤ x5 := h4.trans h45
  have h6 : c ≤ x6 := h5.trans h56
  have h7 : c ≤ x7 := h6.trans h67
  have k1 := sub_one_mul_le h1
  have k2 := sub_one_mul_le h2
  have k3 := sub_one_mul_le h3
  have k4 := sub_one_mul_le h4
  have k5 := sub_one_mul_le h5
  have k6 := sub_one_mul_le h6
  have k7 := sub_one_mul_le h7
  have prod : ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) *
        (((c - 1) * x4) * (((c - 1) * x5) * (((c - 1) * x6) * ((c - 1) * x7))))))
      ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) *
        (((x4 - 1) * c) * (((x5 - 1) * c) * (((x6 - 1) * c) * ((x7 - 1) * c)))))) :=
    Nat.mul_le_mul k1 (Nat.mul_le_mul k2 (Nat.mul_le_mul k3
      (Nat.mul_le_mul k4 (Nat.mul_le_mul k5 (Nat.mul_le_mul k6 k7)))))
  have hcQ : (c - 1) ^ 7 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
      ≤ ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) *
          ((x5 - 1) * ((x6 - 1) * (x7 - 1))))))) * c ^ 7 := by
    calc (c - 1) ^ 7 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
        = ((c - 1) * x1) * (((c - 1) * x2) * (((c - 1) * x3) *
            (((c - 1) * x4) * (((c - 1) * x5) * (((c - 1) * x6) * ((c - 1) * x7)))))) := by ring
      _ ≤ ((x1 - 1) * c) * (((x2 - 1) * c) * (((x3 - 1) * c) *
            (((x4 - 1) * c) * (((x5 - 1) * c) * (((x6 - 1) * c) * ((x7 - 1) * c)))))) := prod
      _ = ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) *
            ((x5 - 1) * ((x6 - 1) * (x7 - 1))))))) * c ^ 7 := by ring
  have hQge : c ^ 7 ≤ x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))) := by
    calc c ^ 7 = c * (c * (c * (c * (c * (c * c))))) := by ring
      _ ≤ x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))) :=
        Nat.mul_le_mul h1 (Nat.mul_le_mul h2 (Nat.mul_le_mul h3
          (Nat.mul_le_mul h4 (Nat.mul_le_mul h5 (Nat.mul_le_mul h6 h7)))))
  have hQpos : 0 < x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))) :=
    lt_of_lt_of_le (pow_pos (by omega) 7) hQge
  have step1 : (B * c ^ 7 + 2) * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
      < (A * (c - 1) ^ 7) * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) :=
    Nat.mul_lt_mul_of_lt_of_le hnum (le_refl _) hQpos
  have step2 : (A * (c - 1) ^ 7) * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
      = A * ((c - 1) ^ 7 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))) := by ring
  have step3 : A * ((c - 1) ^ 7 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))))
      ≤ A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) *
          ((x5 - 1) * ((x6 - 1) * (x7 - 1))))))) * c ^ 7) :=
    Nat.mul_le_mul_left A hcQ
  have step4 : A * (((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) *
          ((x5 - 1) * ((x6 - 1) * (x7 - 1))))))) * c ^ 7)
      = (A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) *
          ((x5 - 1) * ((x6 - 1) * (x7 - 1)))))))) * c ^ 7 := by ring
  rw [step4, heq] at step3
  rw [step2] at step1
  have hchain : (B * c ^ 7 + 2) * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
      < (B * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) + 2) * c ^ 7 :=
    lt_of_lt_of_le step1 step3
  have hexp : B * c ^ 7 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
        + 2 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
      < B * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) * c ^ 7 + 2 * c ^ 7 := by
    calc B * c ^ 7 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
          + 2 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
        = (B * c ^ 7 + 2) * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) := by ring
      _ < (B * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) + 2) * c ^ 7 := hchain
      _ = B * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) * c ^ 7 + 2 * c ^ 7 := by ring
  have hBcomm : B * c ^ 7 * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7))))))
      = B * (x1 * (x2 * (x3 * (x4 * (x5 * (x6 * x7)))))) * c ^ 7 := by ring
  omega

/-- Totient of the product of six distinct primes (right-nested). -/
theorem phi_prod_6 {p1 p2 p3 p4 p5 p6 : ℕ} (hp1 : p1.Prime) (hp2 : p2.Prime)
    (hp3 : p3.Prime) (hp4 : p4.Prime) (hp5 : p5.Prime) (hp6 : p6.Prime)
    (h1 : p1 < p2) (h2 : p2 < p3) (h3 : p3 < p4) (h4 : p4 < p5) (h5 : p5 < p6) :
    Nat.totient (p1 * (p2 * (p3 * (p4 * (p5 * p6)))))
      = (p1 - 1) * ((p2 - 1) * ((p3 - 1) * ((p4 - 1) * ((p5 - 1) * (p6 - 1))))) := by
  have e12 : p1 < p3 := h1.trans h2
  have e13 : p1 < p4 := e12.trans h3
  have e14 : p1 < p5 := e13.trans h4
  have e15 : p1 < p6 := e14.trans h5
  have e23 : p2 < p4 := h2.trans h3
  have e24 : p2 < p5 := e23.trans h4
  have e25 : p2 < p6 := e24.trans h5
  have e34 : p3 < p5 := h3.trans h4
  have e35 : p3 < p6 := e34.trans h5
  have e45 : p4 < p6 := h4.trans h5
  have c12 : Nat.Coprime p1 p2 := (Nat.coprime_primes hp1 hp2).mpr h1.ne
  have c13 : Nat.Coprime p1 p3 := (Nat.coprime_primes hp1 hp3).mpr e12.ne
  have c14 : Nat.Coprime p1 p4 := (Nat.coprime_primes hp1 hp4).mpr e13.ne
  have c15 : Nat.Coprime p1 p5 := (Nat.coprime_primes hp1 hp5).mpr e14.ne
  have c16 : Nat.Coprime p1 p6 := (Nat.coprime_primes hp1 hp6).mpr e15.ne
  have c23 : Nat.Coprime p2 p3 := (Nat.coprime_primes hp2 hp3).mpr h2.ne
  have c24 : Nat.Coprime p2 p4 := (Nat.coprime_primes hp2 hp4).mpr e23.ne
  have c25 : Nat.Coprime p2 p5 := (Nat.coprime_primes hp2 hp5).mpr e24.ne
  have c26 : Nat.Coprime p2 p6 := (Nat.coprime_primes hp2 hp6).mpr e25.ne
  have c34 : Nat.Coprime p3 p4 := (Nat.coprime_primes hp3 hp4).mpr h3.ne
  have c35 : Nat.Coprime p3 p5 := (Nat.coprime_primes hp3 hp5).mpr e34.ne
  have c36 : Nat.Coprime p3 p6 := (Nat.coprime_primes hp3 hp6).mpr e35.ne
  have c45 : Nat.Coprime p4 p5 := (Nat.coprime_primes hp4 hp5).mpr h4.ne
  have c46 : Nat.Coprime p4 p6 := (Nat.coprime_primes hp4 hp6).mpr e45.ne
  have c56 : Nat.Coprime p5 p6 := (Nat.coprime_primes hp5 hp6).mpr h5.ne
  rw [Nat.totient_mul (c12.mul_right (c13.mul_right (c14.mul_right
        (c15.mul_right c16)))),
      Nat.totient_mul (c23.mul_right (c24.mul_right (c25.mul_right c26))),
      Nat.totient_mul (c34.mul_right (c35.mul_right c36)),
      Nat.totient_mul (c45.mul_right c46),
      Nat.totient_mul c56,
      Nat.totient_prime hp1, Nat.totient_prime hp2, Nat.totient_prime hp3,
      Nat.totient_prime hp4, Nat.totient_prime hp5, Nat.totient_prime hp6]

/-- Totient of the product of seven distinct primes (right-nested). -/
theorem phi_prod_7 {p1 p2 p3 p4 p5 p6 p7 : ℕ} (hp1 : p1.Prime) (hp2 : p2.Prime)
    (hp3 : p3.Prime) (hp4 : p4.Prime) (hp5 : p5.Prime) (hp6 : p6.Prime) (hp7 : p7.Prime)
    (h1 : p1 < p2) (h2 : p2 < p3) (h3 : p3 < p4) (h4 : p4 < p5) (h5 : p5 < p6)
    (h6 : p6 < p7) :
    Nat.totient (p1 * (p2 * (p3 * (p4 * (p5 * (p6 * p7))))))
      = (p1 - 1) * ((p2 - 1) * ((p3 - 1) * ((p4 - 1) *
          ((p5 - 1) * ((p6 - 1) * (p7 - 1)))))) := by
  have e12 : p1 < p3 := h1.trans h2
  have e13 : p1 < p4 := e12.trans h3
  have e14 : p1 < p5 := e13.trans h4
  have e15 : p1 < p6 := e14.trans h5
  have e16 : p1 < p7 := e15.trans h6
  have e23 : p2 < p4 := h2.trans h3
  have e24 : p2 < p5 := e23.trans h4
  have e25 : p2 < p6 := e24.trans h5
  have e26 : p2 < p7 := e25.trans h6
  have e34 : p3 < p5 := h3.trans h4
  have e35 : p3 < p6 := e34.trans h5
  have e36 : p3 < p7 := e35.trans h6
  have e45 : p4 < p6 := h4.trans h5
  have e46 : p4 < p7 := e45.trans h6
  have e56 : p5 < p7 := h5.trans h6
  have c12 : Nat.Coprime p1 p2 := (Nat.coprime_primes hp1 hp2).mpr h1.ne
  have c13 : Nat.Coprime p1 p3 := (Nat.coprime_primes hp1 hp3).mpr e12.ne
  have c14 : Nat.Coprime p1 p4 := (Nat.coprime_primes hp1 hp4).mpr e13.ne
  have c15 : Nat.Coprime p1 p5 := (Nat.coprime_primes hp1 hp5).mpr e14.ne
  have c16 : Nat.Coprime p1 p6 := (Nat.coprime_primes hp1 hp6).mpr e15.ne
  have c17 : Nat.Coprime p1 p7 := (Nat.coprime_primes hp1 hp7).mpr e16.ne
  have c23 : Nat.Coprime p2 p3 := (Nat.coprime_primes hp2 hp3).mpr h2.ne
  have c24 : Nat.Coprime p2 p4 := (Nat.coprime_primes hp2 hp4).mpr e23.ne
  have c25 : Nat.Coprime p2 p5 := (Nat.coprime_primes hp2 hp5).mpr e24.ne
  have c26 : Nat.Coprime p2 p6 := (Nat.coprime_primes hp2 hp6).mpr e25.ne
  have c27 : Nat.Coprime p2 p7 := (Nat.coprime_primes hp2 hp7).mpr e26.ne
  have c34 : Nat.Coprime p3 p4 := (Nat.coprime_primes hp3 hp4).mpr h3.ne
  have c35 : Nat.Coprime p3 p5 := (Nat.coprime_primes hp3 hp5).mpr e34.ne
  have c36 : Nat.Coprime p3 p6 := (Nat.coprime_primes hp3 hp6).mpr e35.ne
  have c37 : Nat.Coprime p3 p7 := (Nat.coprime_primes hp3 hp7).mpr e36.ne
  have c45 : Nat.Coprime p4 p5 := (Nat.coprime_primes hp4 hp5).mpr h4.ne
  have c46 : Nat.Coprime p4 p6 := (Nat.coprime_primes hp4 hp6).mpr e45.ne
  have c47 : Nat.Coprime p4 p7 := (Nat.coprime_primes hp4 hp7).mpr e46.ne
  have c56 : Nat.Coprime p5 p6 := (Nat.coprime_primes hp5 hp6).mpr h5.ne
  have c57 : Nat.Coprime p5 p7 := (Nat.coprime_primes hp5 hp7).mpr e56.ne
  have c67 : Nat.Coprime p6 p7 := (Nat.coprime_primes hp6 hp7).mpr h6.ne
  rw [Nat.totient_mul (c12.mul_right (c13.mul_right (c14.mul_right
        (c15.mul_right (c16.mul_right c17))))),
      Nat.totient_mul (c23.mul_right (c24.mul_right (c25.mul_right
        (c26.mul_right c27)))),
      Nat.totient_mul (c34.mul_right (c35.mul_right (c36.mul_right c37))),
      Nat.totient_mul (c45.mul_right (c46.mul_right c47)),
      Nat.totient_mul (c56.mul_right c57),
      Nat.totient_mul c67,
      Nat.totient_prime hp1, Nat.totient_prime hp2, Nat.totient_prime hp3,
      Nat.totient_prime hp4, Nat.totient_prime hp5, Nat.totient_prime hp6,
      Nat.totient_prime hp7]

/-- Totient of the product of five distinct primes (right-nested). -/
theorem phi_prod_5 {p q r s t : ℕ} (hp : p.Prime) (hq : q.Prime) (hr : r.Prime)
    (hs : s.Prime) (ht : t.Prime) (h1 : p < q) (h2 : q < r) (h3 : r < s) (h4 : s < t) :
    Nat.totient (p * (q * (r * (s * t))))
      = (p - 1) * ((q - 1) * ((r - 1) * ((s - 1) * (t - 1)))) := by
  have hcpq : Nat.Coprime p q := (Nat.coprime_primes hp hq).mpr h1.ne
  have hcpr : Nat.Coprime p r := (Nat.coprime_primes hp hr).mpr (h1.trans h2).ne
  have hcps : Nat.Coprime p s :=
    (Nat.coprime_primes hp hs).mpr ((h1.trans h2).trans h3).ne
  have hcpt : Nat.Coprime p t :=
    (Nat.coprime_primes hp ht).mpr (((h1.trans h2).trans h3).trans h4).ne
  have hcqr : Nat.Coprime q r := (Nat.coprime_primes hq hr).mpr h2.ne
  have hcqs : Nat.Coprime q s := (Nat.coprime_primes hq hs).mpr (h2.trans h3).ne
  have hcqt : Nat.Coprime q t :=
    (Nat.coprime_primes hq ht).mpr ((h2.trans h3).trans h4).ne
  have hcrs : Nat.Coprime r s := (Nat.coprime_primes hr hs).mpr h3.ne
  have hcrt : Nat.Coprime r t := (Nat.coprime_primes hr ht).mpr (h3.trans h4).ne
  have hcst : Nat.Coprime s t := (Nat.coprime_primes hs ht).mpr h4.ne
  rw [Nat.totient_mul (hcpq.mul_right (hcpr.mul_right (hcps.mul_right hcpt))),
      Nat.totient_mul (hcqr.mul_right (hcqs.mul_right hcqt)),
      Nat.totient_mul (hcrs.mul_right hcrt),
      Nat.totient_mul hcst,
      Nat.totient_prime hp, Nat.totient_prime hq, Nat.totient_prime hr,
      Nat.totient_prime hs, Nat.totient_prime ht]

end EG411Structure

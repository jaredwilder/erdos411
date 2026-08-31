import Mathlib.Data.Nat.Totient
import Mathlib.Tactic

/-!
# The multiplicative-balance cap theorem (arity-general)

`OmegaTreeSupport.lean` carries a hand-written `cap_kill_j` for each arity `j = 3,4,5,6,7`.
Each rung is a separate ~60-line proof of the *same* argument, which is why the ω-ladder
stalled: every new stratum needed a new lemma before its kill-tree could even be stated.

This file replaces the family with ONE theorem over a `List ℕ`, free in the arity.

## The statement

For a *multiplicative balance* equation

  `A · ∏ (xᵢ − 1) = B · ∏ xᵢ + r`

over a finite list of parts each bounded below by `c`, the balance is IMPOSSIBLE as soon as
the concrete numeric check `B·cⁿ + r < A·(c−1)ⁿ` holds (`n` = number of parts). Contrapositive:
a solution forces some part below `c`. That is the whole engine of exhaustive non-existence —
one inequality prunes an infinite branch, so a search tree closes with a certificate rather
than with a sampling budget.

## Why it is not number theory

Nothing below mentions primes, totients, or divisibility. The only inputs are:

* the parts are natural numbers bounded below by `c`;
* the quantity balanced is a product of the parts against a product of the parts-minus-one.

Any system with that shape — a multiplicative constraint against a monotone per-part
discount — inherits `cap_kill` and therefore inherits *proven-empty* search. The number
theory in `OmegaTree*.lean` is one instance, not the content.

## Key inequality

`(c−1)ⁿ · ∏ xᵢ ≤ (∏ (xᵢ − 1)) · cⁿ`, i.e. `∏ (xᵢ−1)/xᵢ ≥ ((c−1)/c)ⁿ`: the per-part discount
`x ↦ (x−1)/x` is increasing, so the worst case is every part sitting at the floor `c`.
-/

namespace EG411Structure

/-- For `c ≤ x` we have `(c−1)·x ≤ (x−1)·c` — the cross-multiplied monotonicity of
`x ↦ (x−1)/x`. This is the only per-part fact the whole theorem needs. -/
theorem sub_one_mul_le_gen {c x : ℕ} (hx : c ≤ x) : (c - 1) * x ≤ (x - 1) * c := by
  rw [Nat.sub_mul, Nat.sub_mul, one_mul, one_mul, mul_comm x c]
  omega

/-- The floor bound: a product of parts each `≥ c` is at least `c ^ (number of parts)`. -/
theorem pow_le_prod {c : ℕ} :
    ∀ xs : List ℕ, (∀ x ∈ xs, c ≤ x) → c ^ xs.length ≤ xs.prod
  | [], _ => by simp
  | a :: t, h => by
      have ha : c ≤ a := h a (List.mem_cons_self)
      have ht : ∀ x ∈ t, c ≤ x := fun x hx => h x (List.mem_cons_of_mem a hx)
      have IH := pow_le_prod t ht
      calc c ^ (a :: t).length = c * c ^ t.length := by
            simp [List.length_cons]; ring
        _ ≤ a * t.prod := Nat.mul_le_mul ha IH
        _ = (a :: t).prod := by simp

/-- The discount bound: `(c−1)ⁿ · ∏ xᵢ ≤ (∏ (xᵢ−1)) · cⁿ` when every part is `≥ c`.
Proved by list induction from `sub_one_mul_le_gen`; no arithmetic beyond `ring`. -/
theorem prod_discount_bound {c : ℕ} :
    ∀ xs : List ℕ, (∀ x ∈ xs, c ≤ x) →
      (c - 1) ^ xs.length * xs.prod ≤ (xs.map (fun x => x - 1)).prod * c ^ xs.length
  | [], _ => by simp
  | a :: t, h => by
      have ha : c ≤ a := h a (List.mem_cons_self)
      have ht : ∀ x ∈ t, c ≤ x := fun x hx => h x (List.mem_cons_of_mem a hx)
      have IH := prod_discount_bound t ht
      have hstep : (c - 1) * a ≤ (a - 1) * c := sub_one_mul_le_gen ha
      calc (c - 1) ^ (a :: t).length * (a :: t).prod
          = ((c - 1) * a) * ((c - 1) ^ t.length * t.prod) := by
            simp [List.length_cons, List.prod_cons]; ring
        _ ≤ ((a - 1) * c) * ((t.map (fun x => x - 1)).prod * c ^ t.length) :=
            Nat.mul_le_mul hstep IH
        _ = ((a :: t).map (fun x => x - 1)).prod * c ^ (a :: t).length := by
            simp [List.length_cons, List.map_cons, List.prod_cons]; ring

/-- **The multiplicative-balance cap theorem.**

If every part of `xs` is at least `c`, and the concrete numeric check
`B·c^n + r < A·(c−1)^n` holds for `n = xs.length`, then the balance
`A · ∏(xᵢ−1) = B · ∏xᵢ + r` is impossible.

Contrapositive, and the way it is used: any solution must have some part `< c`. One
inequality therefore prunes an entire infinite branch of a search, which is what turns an
enumeration into a *proof of non-existence*.

Arity-general: this single statement subsumes `cap_kill_3 … cap_kill_7` and every rung
above them. -/
theorem cap_kill_balance {A B c r : ℕ} (hc : 1 ≤ c) (xs : List ℕ)
    (hmem : ∀ x ∈ xs, c ≤ x)
    (hnum : B * c ^ xs.length + r < A * (c - 1) ^ xs.length)
    (heq : A * (xs.map (fun x => x - 1)).prod = B * xs.prod + r) :
    False := by
  have hcQ : (c - 1) ^ xs.length * xs.prod
      ≤ (xs.map (fun x => x - 1)).prod * c ^ xs.length := prod_discount_bound xs hmem
  have hQge : c ^ xs.length ≤ xs.prod := pow_le_prod xs hmem
  have hQpos : 0 < xs.prod := lt_of_lt_of_le (pow_pos (by omega) _) hQge
  -- Multiply the numeric check by the true product, and the discount bound by `A`.
  have step1 : (B * c ^ xs.length + r) * xs.prod
      < (A * (c - 1) ^ xs.length) * xs.prod := by
    exact mul_lt_mul_of_pos_right hnum hQpos
  have step2 : (A * (c - 1) ^ xs.length) * xs.prod
      = A * ((c - 1) ^ xs.length * xs.prod) := by ring
  have step3 : A * ((c - 1) ^ xs.length * xs.prod)
      ≤ A * ((xs.map (fun x => x - 1)).prod * c ^ xs.length) :=
    Nat.mul_le_mul_left A hcQ
  have step4 : A * ((xs.map (fun x => x - 1)).prod * c ^ xs.length)
      = (A * (xs.map (fun x => x - 1)).prod) * c ^ xs.length := by ring
  rw [step4, heq] at step3
  rw [step2] at step1
  have hchain : (B * c ^ xs.length + r) * xs.prod
      < (B * xs.prod + r) * c ^ xs.length := lt_of_lt_of_le step1 step3
  -- Expanding, the `B` terms cancel and leave `r·∏xᵢ < r·cⁿ`, contradicting the floor bound.
  have hexp : B * c ^ xs.length * xs.prod + r * xs.prod
      < B * xs.prod * c ^ xs.length + r * c ^ xs.length := by
    calc B * c ^ xs.length * xs.prod + r * xs.prod
        = (B * c ^ xs.length + r) * xs.prod := by ring
      _ < (B * xs.prod + r) * c ^ xs.length := hchain
      _ = B * xs.prod * c ^ xs.length + r * c ^ xs.length := by ring
  have hBcomm : B * c ^ xs.length * xs.prod = B * xs.prod * c ^ xs.length := by ring
  have hr : r * xs.prod < r * c ^ xs.length := by omega
  have : xs.prod < c ^ xs.length := by
    rcases Nat.eq_zero_or_pos r with hr0 | hrpos
    · simp [hr0] at hr
    · exact lt_of_mul_lt_mul_left hr (Nat.zero_le r)
  omega

/-- The `r = 2` specialisation used by the ω-kill-trees, stated so the generated proofs can
call it directly. -/
theorem cap_kill_balance_two {A B c : ℕ} (hc : 1 ≤ c) (xs : List ℕ)
    (hmem : ∀ x ∈ xs, c ≤ x)
    (hnum : B * c ^ xs.length + 2 < A * (c - 1) ^ xs.length)
    (heq : A * (xs.map (fun x => x - 1)).prod = B * xs.prod + 2) :
    False :=
  cap_kill_balance hc xs hmem hnum heq

end EG411Structure

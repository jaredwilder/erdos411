import EG411Formal.UnconditionalClosure
import EG411Formal.OmegaProductBound
import Mathlib.Tactic

/-!
# EG411 Phase 2 — Nat Target for RS/Omega Tail

This file records the exact Nat-level theorem now needed.

Phase 2 completed the rational algebra bridge in
`Depth3AlphaBetaBridge.lean`.  To connect it to the existing EG411 code,
Phase 3 must prove that RS1962/Mertens product bounds provide the alpha/beta
condition below for the tail range.
-/

namespace EG411Formal.Phase2Target

open EG411Formal

def N_of_p (p : Nat) : Nat :=
  (3 * p - 1) / 4

def C2_of_p (p : Nat) : Nat :=
  3 * p ^ 2 - p + 2 * (p - 1) * Nat.totient (N_of_p p)

def C3_of_p (p : Nat) : Nat :=
  p * C2_of_p p + (p - 1) * Nat.totient (C2_of_p p)

/--
Exact target now needed from RS1962/product bounds.

It is intentionally not EG411 and not `cambie_depth3_check`.
It says the tail has enough totient-ratio mass to force depth-3 overshoot.
-/
def TailAlphaBetaEnough (p : Nat) : Prop :=
  4 * p ^ 3 ≤ C3_of_p p

/--
Phase 3 theorem to prove from Rosser–Schoenfeld 1962 Theorem 7.

The natural route is:
  RS product lower bound
  → totient lower bound for N and c2
  → α/β product condition
  → `TailAlphaBetaEnough p`.
-/
theorem rs1962_product_implies_tail_alpha_beta_enough
    (p : Nat)
    (hp_tail : primorial5 35 ≤ p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    TailAlphaBetaEnough p := by
  -- Phase 3 proof target.
  sorry

/--
Once Phase 3 proves `TailAlphaBetaEnough`, the Cambie Boolean follows in the
else branch.
-/
theorem cambie_depth3_check_from_tail_alpha_beta_enough
    (p : Nat)
    (h_tail : TailAlphaBetaEnough p) :
    cambie_depth3_check p = true := by
  unfold cambie_depth3_check
  simp only [fastTotient_eq]
  unfold TailAlphaBetaEnough C3_of_p C2_of_p N_of_p at h_tail
  split_ifs with hfast
  · rfl
  · exact decide_eq_true h_tail

end EG411Formal.Phase2Target

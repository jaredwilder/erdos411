import EG411Formal.UnconditionalClosure
import Mathlib.Tactic

/-!
# EG411 Phase 1 — RS Product to Cambie Branch Target

This file records the exact Phase 2 theorem to prove.

It intentionally does NOT assert EG411. It asserts only the branch disjunction
needed by the Boolean check.
-/

namespace EG411Formal.Phase1Target

open EG411Formal

def N_of_p (p : ℕ) : ℕ := (3 * p - 1) / 4

def C2_of_p (p : ℕ) : ℕ :=
  3 * p ^ 2 - p + 2 * (p - 1) * Nat.totient (N_of_p p)

def C3_of_p (p : ℕ) : ℕ :=
  p * C2_of_p p + (p - 1) * Nat.totient (C2_of_p p)

/-- Exact integer disjunction the RS/product bridge must prove. -/
def CambieBranchDisjunction (p : ℕ) : Prop :=
  (9849 * (4 * p ^ 2) ≤ C2_of_p p * 10000) ∨
  (4 * p ^ 3 ≤ C3_of_p p)

/--
PHASE 2 BUILD TARGET.

Prove this from Rosser–Schoenfeld Theorem 7 product lower bounds plus local
totient/product lemmas.

This theorem is narrow and independent; it is not EG411 itself.
-/
theorem rs_product_implies_cambie_branch_target
    (p : ℕ)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    CambieBranchDisjunction p := by
  -- Phase 2 proof goes here.
  --
  -- Required chain:
  -- RS1962 Theorem 7 lower product bound
  --   → lower bound for a relevant φ-ratio
  --   → either fast-exit inequality for c2
  --     or depth-3 overshoot inequality for c3.
  sorry

end EG411Formal.Phase1Target

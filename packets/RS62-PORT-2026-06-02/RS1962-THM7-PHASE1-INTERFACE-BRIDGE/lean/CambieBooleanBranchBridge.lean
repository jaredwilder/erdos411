import EG411Formal.UnconditionalClosure
import Mathlib.Tactic

/-!
# EG411 Phase 1 — Cambie Boolean Branch Bridge

This file isolates the non-analytic Boolean bridge.

The analytic RS1962/product work does **not** need to prove
`cambie_depth3_check p = true` directly. It only needs to prove one of the two
integer branch inequalities:

Branch A:
  `9849 * (4 * p^2) ≤ c2 * 10000`

Branch B:
  `4 * p^3 ≤ c3`

This file provides the exact target bridge from those branch inequalities to
the Boolean result.
-/

namespace EG411Formal.Phase1

open EG411Formal

def N_of_p (p : ℕ) : ℕ :=
  (3 * p - 1) / 4

def C2_of_p (p : ℕ) : ℕ :=
  3 * p ^ 2 - p + 2 * (p - 1) * Nat.totient (N_of_p p)

def C3_of_p (p : ℕ) : ℕ :=
  p * C2_of_p p + (p - 1) * Nat.totient (C2_of_p p)

def FastExitBranch (p : ℕ) : Prop :=
  9849 * (4 * p ^ 2) ≤ C2_of_p p * 10000

def Depth3OvershootBranch (p : ℕ) : Prop :=
  4 * p ^ 3 ≤ C3_of_p p

def CambieBranchDisjunction (p : ℕ) : Prop :=
  FastExitBranch p ∨ Depth3OvershootBranch p

/--
Already-proved in `CambieAxiomKillFinal.lean`, repeated here as the Phase 1
bridge shape:

if the fast-exit inequality holds, the Boolean check returns true.
-/
theorem cambie_check_from_fast_exit_phase1
    (p : ℕ)
    (h_fast : FastExitBranch p) :
    cambie_depth3_check p = true := by
  unfold cambie_depth3_check
  simp only [fastTotient_eq]
  unfold FastExitBranch C2_of_p N_of_p at h_fast
  split_ifs with h
  · rfl

/--
Phase 1 exact bridge target:

if either the fast-exit branch or the depth-3 overshoot branch is proved, then
`cambie_depth3_check p = true`.

This theorem is the clean handoff target for Phase 2.  If this file does not
compile in your local repo due to simplifier naming differences, the intended
proof is:

1. unfold `cambie_depth3_check`;
2. rewrite `fastTotient_eq`;
3. split on the fast-exit if;
4. fast branch closes by `rfl`;
5. else branch closes from `Depth3OvershootBranch p` via `decide_eq_true`.
-/
theorem cambie_check_from_branch_disjunction_phase1
    (p : ℕ)
    (h_branch : CambieBranchDisjunction p) :
    cambie_depth3_check p = true := by
  rcases h_branch with h_fast | h_depth
  · exact cambie_check_from_fast_exit_phase1 p h_fast
  · unfold cambie_depth3_check
    simp only [fastTotient_eq]
    unfold Depth3OvershootBranch C3_of_p C2_of_p N_of_p at h_depth
    split_ifs with hfast
    · rfl
    · exact decide_eq_true h_depth

end EG411Formal.Phase1

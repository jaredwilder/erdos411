import Mathlib.Data.Rat.Basic
import Mathlib.Tactic

/-!
# Phase 3 Verdict — RS Product Alone Does Not Close the α/β Tail

This file records the exact algebraic obstruction.

Phase 2 showed the depth-3 branch follows from:

  16p ≤ 3(2+α)(2+β)(p−1).

For very large p this requires:

  16 ≤ 3(2+α)(2+β).

Generic Mertens/Rosser–Schoenfeld product lower bounds for arbitrary n give
α,β that decrease with the number of distinct prime factors.  Therefore RS
Theorem 7 alone cannot prove a uniform nonzero α/β product strong enough for
the residual tail.

The replacement target is not "more scaffolding"; it is a precise structural
lemma about c2.
-/

namespace EG411Formal.Phase3

/--
Asymptotic α/β threshold.
If α≤1 and β≤1 but `3(2+α)(2+β)<16`, the Phase-2 sufficient condition cannot
hold uniformly as p→∞.
-/
def AlphaBetaAsymptoticEnough (alpha beta : Rat) : Prop :=
  (16 : Rat) ≤ 3 * (2 + alpha) * (2 + beta)

/-- Required beta threshold as a rational expression. -/
def betaRequired (alpha : Rat) : Rat :=
  16 / (3 * (2 + alpha)) - 2

theorem alpha_beta_threshold_equiv
    (alpha beta : Rat)
    (hden : 0 < 3 * (2 + alpha)) :
    AlphaBetaAsymptoticEnough alpha beta ↔ betaRequired alpha ≤ beta := by
  unfold AlphaBetaAsymptoticEnough betaRequired
  constructor
  · intro h
    have h1 : 16 / (3 * (2 + alpha)) ≤ 2 + beta := by
      exact (div_le_iff₀ hden).mpr h
    linarith
  · intro h
    have h1 : 16 / (3 * (2 + alpha)) ≤ 2 + beta := by linarith
    exact (div_le_iff₀ hden).mp h1

/--
Concrete obstruction example:
with α=1/6 and β=1/6, the asymptotic α/β condition fails.
-/
theorem alpha_beta_one_six_fails :
    ¬ AlphaBetaAsymptoticEnough (1/6) (1/6) := by
  unfold AlphaBetaAsymptoticEnough
  norm_num

/--
Replacement Phase-4 target.

Instead of generic RS product lower bounds for arbitrary integers, prove a
structure-specific theorem for the actual Cambie `c2(p)`:

Either fast-exit eventually holds, or φ(c2(p))/c2(p) is much larger than the
generic Mertens worst case.
-/
def StructuralC2TotientTailTarget : Prop :=
  ∀ p : Nat, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    -- exact future statement:
    -- FastExitBranch p ∨ Depth3OvershootBranch p
    True

end EG411Formal.Phase3

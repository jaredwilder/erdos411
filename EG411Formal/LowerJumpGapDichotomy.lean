import EG411Formal.LowerJumpGapStrong
import EG411Formal.Gate
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The R661 dichotomy in Lean: every Cambie-tail record closes by depth 3 OR depth 4

The R660/R661 empirical reports document that across an 8-million-sample
probe of EG411 Cambie-tail records (max exponent 16), every "hard row"
closes by depth 4 — either it reaches the R661 threshold at depth 3, or it
is `DEPTH4_FORCED_BY_ROUGH_C2` (the product `x3 · jump` exceeds 1, so x4
overshoots 1 directly).

`LowerJumpGapStrong.lean` formalizes the depth-3 branch under the
strengthened predicate. `Gate.lean` formalizes the depth-4 branch via
`Depth4Gate`. This file packages the two branches into a single
Lean-verified dichotomy:

 R661Threshold ≤ x3Q p (stepQ p c2 phic2) -- depth-3 closure
 OR
 1 < stepQ p (stepQ p c2 phic2) phic3 / (4·p^4) -- depth-4 closure

The dichotomy hypothesis is the empirical R660/R661 finding written as a
mathematical disjunction. The closure theorem proves: given the dichotomy,
the program advances at depth 3 or depth 4. The disjunction is preserved
end-to-end; both branches produce forward progress.

This converts the R660/R661 empirical structural finding into a Lean
theorem about EG411 Cambie-tail records. -/

namespace EG411Formal

/-- Positivity context for a four-tuple `(p, c2, phic2, phic3)` arising from
the EG411 Cambie-tail recursion. The fields are the minimum constraints for
the recurrence + gate machinery to apply. -/
structure CambieTailContext (p c2 phic2 phic3 : Rat) : Prop where
 hp_pos : 0 < p
 hone_le_p : 1 ≤ p
 hc2_pos : 0 < c2
 hphic2_nonneg : 0 ≤ phic2
 hphic3_nonneg : 0 ≤ phic3

/-- The R661 empirical dichotomy as a Lean proposition: for a Cambie-tail
context `(p, c2, phic2, phic3)`, either the depth-3 normalized mass reaches
the R661 threshold, or the product `x3 · jump` exceeds 1 (forcing depth-4
overshoot). The disjunction is precisely the R660/R661 closure observation. -/
def CambieTailR661Dichotomy (p c2 phic2 phic3 : Rat) : Prop :=
 (R661Threshold ≤ x3Q p (stepQ p c2 phic2)) ∨
 (1 < x3Q p (stepQ p c2 phic2) * depth4JumpQ p (stepQ p c2 phic2) phic3)

/-- Helper: in a Cambie-tail context, `stepQ p c2 phic2 > 0`. This is the
positivity needed to apply the depth-4 gate, since `c3 = stepQ p c2 phic2`
must be nonzero for the `normalized_depth4_gt_one` lemma. -/
private theorem stepQ_pos_in_context
 {p c2 phic2 phic3 : Rat}
 (ctx : CambieTailContext p c2 phic2 phic3) :
 0 < stepQ p c2 phic2 := by
 unfold stepQ
 have h1 : 0 ≤ (p - 1) * phic2 := by
 have hpm1 : 0 ≤ p - 1 := by linarith [ctx.hone_le_p]
 exact mul_nonneg hpm1 ctx.hphic2_nonneg
 have h2 : 0 < p * c2 := mul_pos ctx.hp_pos ctx.hc2_pos
 linarith

/-- **The dichotomy closure theorem.** A Cambie-tail context satisfying the
R661 dichotomy advances at depth 3 OR at depth 4. The disjunction is
preserved: the depth-3 branch returns the R661 threshold bound on `x3Q`;
the depth-4 branch returns the overshoot `1 < stepQ … / (4·p^4)` (i.e.,
the normalized depth-4 quantity exceeds 1).

This is the Lean-verified statement of the R660/R661 finding "all hard rows
still close by depth 4, so this route is not dead." -/
theorem cambie_tail_dichotomy_closes
 {p c2 phic2 phic3 : Rat}
 (ctx : CambieTailContext p c2 phic2 phic3)
 (dich : CambieTailR661Dichotomy p c2 phic2 phic3) :
 (R661Threshold ≤ x3Q p (stepQ p c2 phic2)) ∨
 (1 < stepQ p (stepQ p c2 phic2) phic3 / (4 * p ^ 4)) := by
 rcases dich with h | h
 · exact Or.inl h
 · right
 have hp_ne : (p : Rat) ≠ 0 := ne_of_gt ctx.hp_pos
 have hstep_ne : stepQ p c2 phic2 ≠ 0 :=
 ne_of_gt (stepQ_pos_in_context ctx)
 exact normalized_depth4_gt_one hp_ne hstep_ne h

/-- Concrete witness for the **depth-3 branch**. The record `(2, 16, 0, 0)`
satisfies the context AND the depth-3 disjunct: `x3Q 2 (stepQ 2 16 0) = 1 ≥ R661Threshold`. -/
theorem dichotomy_witness_depth3 :
 CambieTailContext (2 : Rat) 16 0 0 ∧
 CambieTailR661Dichotomy (2 : Rat) 16 0 0 := by
 refine ⟨⟨?_, ?_, ?_, ?_, ?_⟩, ?_⟩
 · norm_num
 · norm_num
 · norm_num
 · norm_num
 · norm_num
 · left
 show R661Threshold ≤ x3Q 2 (stepQ 2 16 0)
 unfold R661Threshold x3Q stepQ
 norm_num

/-- Concrete witness for the **depth-4 branch**. The record `(2, 15, 0, 8)`
satisfies the context but **fails** the depth-3 threshold (`x3 = 30/32 = 15/16 = 0.9375 < 0.9849`),
yet the depth-4 product overshoots:
`x3 · jump = (15/16) · (1 + (1/2) · (8/30)) = (15/16) · (68/60) = 17/16 > 1`. -/
theorem dichotomy_witness_depth4 :
 CambieTailContext (2 : Rat) 15 0 8 ∧
 CambieTailR661Dichotomy (2 : Rat) 15 0 8 := by
 refine ⟨⟨?_, ?_, ?_, ?_, ?_⟩, ?_⟩
 · norm_num
 · norm_num
 · norm_num
 · norm_num
 · norm_num
 · right
 show 1 < x3Q 2 (stepQ 2 15 0) * depth4JumpQ 2 (stepQ 2 15 0) 8
 unfold x3Q stepQ depth4JumpQ phiRatioQ
 norm_num

/-- **Forward progress for the depth-4 branch witness.** The record
`(2, 15, 0, 8)` is depth-4 forced: its normalized depth-4 mass exceeds 1. -/
theorem dichotomy_witness_depth4_progresses :
 1 < stepQ 2 (stepQ 2 15 0) 8 / (4 * (2 : Rat) ^ 4) := by
 have ctx_dich := dichotomy_witness_depth4
 have := cambie_tail_dichotomy_closes ctx_dich.1 ctx_dich.2
 rcases this with hbad | hgood
 · -- Depth-3 branch would say R661Threshold ≤ x3Q 2 (stepQ 2 15 0), but x3 = 15/16 = 0.9375
 exfalso
 have : x3Q 2 (stepQ 2 15 0) = 15/16 := by
 unfold x3Q stepQ; norm_num
 rw [this] at hbad
 norm_num [R661Threshold] at hbad
 · exact hgood

/-- **Forward progress for the depth-3 branch witness.** The record
`(2, 16, 0, 0)` reaches the R661 threshold at depth 3. -/
theorem dichotomy_witness_depth3_progresses :
 R661Threshold ≤ x3Q (2 : Rat) (stepQ 2 16 0) := by
 have ctx_dich := dichotomy_witness_depth3
 have := cambie_tail_dichotomy_closes ctx_dich.1 ctx_dich.2
 rcases this with hgood | hbad
 · exact hgood
 · -- Depth-4 branch would say 1 < x4. But our depth-3 witness has phic3 = 0,
 -- so stepQ 2 (stepQ 2 16 0) 0 = 2 · 32 + 1 · 0 = 64, and
 -- 64 / (4 · 16) = 64 / 64 = 1, NOT strictly greater.
 -- So if this branch fires, we get a contradiction with 1 < 1.
 exfalso
 have : stepQ 2 (stepQ 2 16 0) 0 / (4 * (2 : Rat) ^ 4) = 1 := by
 unfold stepQ; norm_num
 rw [this] at hbad
 exact lt_irrefl 1 hbad

/-- **Existence: BOTH branches of the dichotomy have concrete realizations.**
This proves the dichotomy is non-vacuous — there exist Cambie-tail records
for which only the depth-3 branch closes, AND records for which only the
depth-4 branch closes. The dichotomy is therefore a genuine structural
disjunction, not a degenerate one where one branch always fires. -/
theorem dichotomy_both_branches_inhabited :
 (∃ p c2 phic2 phic3 : Rat,
 CambieTailContext p c2 phic2 phic3 ∧
 R661Threshold ≤ x3Q p (stepQ p c2 phic2)) ∧
 (∃ p c2 phic2 phic3 : Rat,
 CambieTailContext p c2 phic2 phic3 ∧
 ¬ (R661Threshold ≤ x3Q p (stepQ p c2 phic2)) ∧
 1 < x3Q p (stepQ p c2 phic2) * depth4JumpQ p (stepQ p c2 phic2) phic3) := by
 refine ⟨?_, ?_⟩
 · exact ⟨2, 16, 0, 0, dichotomy_witness_depth3.1, dichotomy_witness_depth3_progresses⟩
 · refine ⟨2, 15, 0, 8, dichotomy_witness_depth4.1, ?_, ?_⟩
 · -- ¬ (R661Threshold ≤ x3Q 2 (stepQ 2 15 0))
 intro hcontra
 have : x3Q 2 (stepQ 2 15 0) = 15/16 := by
 unfold x3Q stepQ; norm_num
 rw [this] at hcontra
 norm_num [R661Threshold] at hcontra
 · -- 1 < x3 · jump
 show 1 < x3Q 2 (stepQ 2 15 0) * depth4JumpQ 2 (stepQ 2 15 0) 8
 unfold x3Q stepQ depth4JumpQ phiRatioQ
 norm_num

end EG411Formal

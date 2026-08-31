import EG411Formal.Basic
import EG411Formal.LowerJumpGap
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Above-threshold depth-3 closure (Oracle-derived, 2026-05-26)

This file ships the **above-threshold half** of the R660/R661 Cambie-tail
dichotomy as an UNCONDITIONAL Lean theorem. The Oracle climb on
`eg411_r2_r661_universal_dichotomy_20260526` identified this lemma in L4 after
L1-L3 experiments verified it empirically across 1500+ records spanning
p prime ≤ 100 and the full phic2 ∈ [0, c2] range, with zero failures.

The proof is one inequality chain:

 x3Q p (stepQ p c2 phic2)
 = (p * c2 + (p - 1) * phic2) / (4 * p^3) -- def
 ≥ (p * c2) / (4 * p^3) -- phic2 ≥ 0, p ≥ 1
 = c2 / (4 * p^2)
 ≥ R661Threshold -- c2 ≥ R661 * 4 * p^2

The threshold hypothesis `c2 * 10000 ≥ 9849 * 4 * p^2 * p` is the integer-form
restatement of `c2 ≥ (9849/10000) * 4 * p^2`.

Empirical anchor: for `(p, c2) = (2, 16)` we get x3Q = 1.0 ≥ 9849/10000
(matches `dichotomy_witness_depth3` in `LowerJumpGapDichotomy.lean`). The next
integer down, `(2, 15)`, gives x3Q = 15/16 = 0.9375 < 9849/10000 — exactly the
boundary failure, consistent with `dichotomy_witness_depth4`.

This file does NOT close EG#411 r=2 by itself. It converts the existing
conditional `cambie_tail_dichotomy_closes` (depth-3 branch) into an
unconditional statement on records ABOVE the threshold curve. The remaining
open question is whether the Cambie reduction's iteration on EG#411 r=2
candidates generates only above-threshold records — that is a separate
structural property of the iteration, not of the dichotomy itself.
-/

namespace EG411Formal

/-- **Above-threshold depth-3 closure (unconditional).** For any Cambie-tail
record (p, c2, phic2) with p ≥ 1, c2 ≥ 0, phic2 ≥ 0, and c2 at or above the
depth-3 threshold curve c2 ≥ (9849/10000) * 4 * p^2, the normalized depth-3
mass `x3Q p (stepQ p c2 phic2)` reaches `R661Threshold`. Depth-4 is not needed
in this regime. -/
theorem above_threshold_depth3_closes
 {p c2 phic2 : Rat}
 (hp_pos : (0 : Rat) < p)
 (hone_le_p : (1 : Rat) ≤ p)
 (_hc2_nonneg : (0 : Rat) ≤ c2)
 (hphic2_nonneg : (0 : Rat) ≤ phic2)
 (hthr : R661Threshold * (4 * p ^ 2) ≤ c2) :
 R661Threshold ≤ x3Q p (stepQ p c2 phic2) := by
 unfold x3Q stepQ R661Threshold
 -- Goal: 9849 / 10000 ≤ (p * c2 + (p - 1) * phic2) / (4 * p^3)
 have hp_ne : (p : Rat) ≠ 0 := ne_of_gt hp_pos
 have hp2_pos : (0 : Rat) < p ^ 2 := pow_pos hp_pos 2
 have hp3_pos : (0 : Rat) < p ^ 3 := pow_pos hp_pos 3
 have h4p3_pos : (0 : Rat) < 4 * p ^ 3 := by positivity
 have hpm1_nonneg : (0 : Rat) ≤ p - 1 := by linarith
 have hphic_term_nonneg : (0 : Rat) ≤ (p - 1) * phic2 := mul_nonneg hpm1_nonneg hphic2_nonneg
 have hpc2_lower : p * c2 ≤ p * c2 + (p - 1) * phic2 := by linarith
 -- It suffices to show (9849/10000) ≤ (p * c2) / (4 * p^3), then chain.
 have hgoal_easy : (9849 : Rat) / 10000 ≤ (p * c2) / (4 * p ^ 3) := by
  -- (p * c2) / (4 * p^3) = c2 / (4 * p^2)
  have hp3_eq : (p : Rat) ^ 3 = p * p ^ 2 := by ring
  have hrewrite : (p * c2) / (4 * p ^ 3) = c2 / (4 * p ^ 2) := by
   rw [hp3_eq]; field_simp
  rw [hrewrite]
  -- Now: 9849/10000 ≤ c2 / (4 * p^2), with c2 ≥ (9849/10000) * (4 * p^2)
  rw [le_div_iff₀ (by positivity : (0 : Rat) < 4 * p ^ 2)]
  -- Goal: (9849/10000) * (4 * p^2) ≤ c2 — that's hthr with R661Threshold unfolded
  have hthr' : (9849 / 10000 : Rat) * (4 * p ^ 2) ≤ c2 := by
   unfold R661Threshold at hthr; exact hthr
  linarith
 -- Now chain hgoal_easy + hpc2_lower to the actual goal.
 have hchain : (p * c2) / (4 * p ^ 3) ≤ (p * c2 + (p - 1) * phic2) / (4 * p ^ 3) :=
 div_le_div_of_nonneg_right hpc2_lower (le_of_lt h4p3_pos)
 linarith

/-- **Above-threshold witness check.** The named depth-3 witness from
`LowerJumpGapDichotomy.lean`, `(p, c2, phic2) = (2, 16, 0)`, satisfies the
above-threshold hypothesis with equality: R661Threshold * 4 * 4 = 9849/10000 * 16
= 15.7584, and c2 = 16 ≥ 15.7584. -/
theorem above_threshold_witness_check :
 R661Threshold * (4 * (2 : Rat) ^ 2) ≤ 16 := by
 unfold R661Threshold; norm_num

/-- **Sub-threshold counterexample**: the integer just below the threshold for
p=2, `c2 = 15`, fails the hypothesis (since 9849/10000 * 16 = 15.7584 > 15).
This is the boundary of the lemma — depth-3 cannot close on its own at c2=15;
depth-4 is required, which is exactly `dichotomy_witness_depth4 = (2, 15, 0, 8)`
in the existing kernel. -/
theorem sub_threshold_boundary_negative :
 ¬ (R661Threshold * (4 * (2 : Rat) ^ 2) ≤ 15) := by
 unfold R661Threshold; norm_num

end EG411Formal

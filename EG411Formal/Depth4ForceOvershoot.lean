import EG411Formal.Basic
import EG411Formal.LowerJumpGap
import EG411Formal.Gate
import EG411Formal.LowerJumpGapDichotomy
import EG411Formal.AboveThresholdClosure
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp

/-!
# Depth-4 force-overshoot via phi ratio lower bounds (Oracle-derived, 2026-05-26)

This file formalizes the interval arithmetic argument from R647/R650:

Given lower bounds `lb ≤ phi(C2)/C2` and `lb ≤ phi(C3)/C3`, the depth-4
normalized mass `x4 = C4/(4p^4)` exceeds 1 whenever

 x2 * (1 + (p-1)/p * lb)^2 > 1

where `x2 = C2/(4p^2)`. The proof chain is:

 C3 = p·C2 + (p-1)·phi(C2) ≥ p·C2 + (p-1)·lb·C2 = C2·p·(1 + (p-1)/p·lb)
 x3 = C3/(4p^3) ≥ x2·(1 + (p-1)/p·lb) [Half B, depth-3 bound]
 jump4 = 1 + (p-1)/p·phi(C3)/C3 ≥ 1 + (p-1)/p·lb [Half B, jump bound]
 x4 = x3·jump4 ≥ x2·(1 + (p-1)/p·lb)^2 > 1 [product exceeds 1]

Together with `AboveThresholdClosure.lean`, this gives the combined closure theorem
`eg411_r2_closure_via_interval_arithmetic`: every Cambie-tail record closes at depth
3 (above threshold) or depth 4 (below threshold with phi bounds), with the residual
condition reduced to a single computable rational inequality `h_prod`.
-/

namespace EG411Formal

private theorem stepQ_pos_fields
 {p c2 phic2 : Rat}
 (hp_pos : 0 < p) (hone_le_p : 1 ≤ p)
 (hc2_pos : 0 < c2) (hphic2_nonneg : 0 ≤ phic2) :
 0 < stepQ p c2 phic2 := by
 unfold stepQ
 linarith [mul_pos hp_pos hc2_pos, mul_nonneg (by linarith : (0:Rat) ≤ p - 1) hphic2_nonneg]

/-- **x3 lower bound from phi lower bound (Half B, depth-3 step).**

If `lb ≤ phi(C2)/C2`, then `x3Q p (stepQ p c2 phic2) ≥ x2Q p c2 * (1 + (p-1)/p * lb)`.

Proof: `lb·c2 ≤ phi(C2)`, so `C3 = p·c2 + (p-1)·phi(C2) ≥ p·c2 + (p-1)·lb·c2`.
Dividing by `4p^3` gives the bound. -/
theorem x3Q_lower_from_phi_bound
 {p c2 phic2 lb : Rat}
 (hp_pos : 0 < p) (hone_le_p : 1 ≤ p)
 (hc2_pos : 0 < c2) (_hphic2_nonneg : 0 ≤ phic2)
 (h_rho2 : lb ≤ phic2 / c2) (h_lb_nonneg : 0 ≤ lb) :
 x2Q p c2 * (1 + (p - 1) / p * lb) ≤ x3Q p (stepQ p c2 phic2) := by
 unfold x2Q x3Q stepQ
 have hp_ne : p ≠ 0 := ne_of_gt hp_pos
 have hc2_ne : c2 ≠ 0 := ne_of_gt hc2_pos
 have hp3_pos : (0 : Rat) < 4 * p ^ 3 := by positivity
 have hpm1_nn : (0 : Rat) ≤ p - 1 := by linarith
 have hlb_c2 : lb * c2 ≤ phic2 := by rwa [← le_div_iff₀ hc2_pos]
 have key : c2 * (p - 1) * lb ≤ (p - 1) * phic2 :=
 calc c2 * (p - 1) * lb = (p - 1) * (lb * c2) := by ring
 _ ≤ (p - 1) * phic2 := mul_le_mul_of_nonneg_left hlb_c2 hpm1_nn
 rw [le_div_iff₀ hp3_pos]
 have expand : c2 / (4 * p ^ 2) * (1 + (p - 1) / p * lb) * (4 * p ^ 3) =
 c2 * p + c2 * (p - 1) * lb := by
 field_simp
 rw [expand]
 linarith

/-- **Jump lower bound from phi lower bound (Half B, jump step).**

If `lb ≤ phi(C3)/C3`, then `depth4JumpQ p C3 phi(C3) ≥ 1 + (p-1)/p * lb`. -/
theorem depth4Jump_lower_from_phi_bound
 {p c2 phic2 phic3 lb : Rat}
 (hp_pos : 0 < p) (hone_le_p : 1 ≤ p)
 (_hc2_pos : 0 < c2) (_hphic2_nonneg : 0 ≤ phic2)
 (h_rho3 : lb ≤ phic3 / (stepQ p c2 phic2))
 (_h_lb_nonneg : 0 ≤ lb) :
 1 + (p - 1) / p * lb ≤ depth4JumpQ p (stepQ p c2 phic2) phic3 := by
 unfold depth4JumpQ phiRatioQ
 have hpm1_p_nn : (0 : Rat) ≤ (p - 1) / p :=
 div_nonneg (by linarith) (le_of_lt hp_pos)
 have hmono : (p - 1) / p * lb ≤ (p - 1) / p * (phic3 / (stepQ p c2 phic2)) :=
 mul_le_mul_of_nonneg_left h_rho3 hpm1_p_nn
 linarith

/-- **Nonnegativity of the jump lower bound.** -/
private theorem jump_lower_nonneg
 {p lb : Rat} (hp_pos : 0 < p) (hone_le_p : 1 ≤ p) (h_lb_nonneg : 0 ≤ lb) :
 (0 : Rat) ≤ 1 + (p - 1) / p * lb := by
 have : (0 : Rat) ≤ (p - 1) / p * lb :=
 mul_nonneg (div_nonneg (by linarith) (le_of_lt hp_pos)) h_lb_nonneg
 linarith

/-- **Depth-4 force-overshoot from phi lower bounds (the complete Half B).**

Given phi ratio lower bounds `lb ≤ phi(C2)/C2` and `lb ≤ phi(C3)/C3`, and the
product condition `x2 * (1 + (p-1)/p * lb)^2 > 1`, the normalized depth-4 mass
exceeds 1.

This is the algebraic closure of the R647/R650 interval arithmetic argument. -/
theorem depth4_force_overshoot_from_phi_bounds
 {p c2 phic2 phic3 lb : Rat}
 (ctx : CambieTailContext p c2 phic2 phic3)
 (h_rho2 : lb ≤ phic2 / c2)
 (h_rho3 : lb ≤ phic3 / (stepQ p c2 phic2))
 (h_lb_nonneg : 0 ≤ lb)
 (h_prod : 1 < x2Q p c2 * (1 + (p - 1) / p * lb) ^ 2) :
 1 < stepQ p (stepQ p c2 phic2) phic3 / (4 * p ^ 4) := by
 apply normalized_depth4_gt_one (ne_of_gt ctx.hp_pos)
 (ne_of_gt (stepQ_pos_fields ctx.hp_pos ctx.hone_le_p ctx.hc2_pos ctx.hphic2_nonneg))
 set x3L := x2Q p c2 * (1 + (p - 1) / p * lb) with hx3L_def
 set jL := 1 + (p - 1) / p * lb with hjL_def
 have hx3L_nn : 0 ≤ x3L := by
 apply mul_nonneg
 · exact div_nonneg (le_of_lt ctx.hc2_pos) (by positivity)
 · linarith [jump_lower_nonneg ctx.hp_pos ctx.hone_le_p h_lb_nonneg]
 have hjL_nn : 0 ≤ jL := jump_lower_nonneg ctx.hp_pos ctx.hone_le_p h_lb_nonneg
 have hx3_lb : x3L ≤ x3Q p (stepQ p c2 phic2) :=
 x3Q_lower_from_phi_bound ctx.hp_pos ctx.hone_le_p ctx.hc2_pos ctx.hphic2_nonneg
 h_rho2 h_lb_nonneg
 have hj_lb : jL ≤ depth4JumpQ p (stepQ p c2 phic2) phic3 :=
 depth4Jump_lower_from_phi_bound ctx.hp_pos ctx.hone_le_p ctx.hc2_pos ctx.hphic2_nonneg
 h_rho3 h_lb_nonneg
 have hx3_actual_nn : 0 ≤ x3Q p (stepQ p c2 phic2) :=
 le_trans hx3L_nn hx3_lb
 have hmul_lower : 1 < x3L * jL := by
 have : x3L * jL = x2Q p c2 * (1 + (p - 1) / p * lb) ^ 2 := by
 rw [hx3L_def, hjL_def]; ring
 linarith
 calc 1 < x3L * jL := hmul_lower
 _ ≤ x3Q p (stepQ p c2 phic2) * depth4JumpQ p (stepQ p c2 phic2) phic3 :=
 mul_le_mul hx3_lb hj_lb hjL_nn hx3_actual_nn

/-- **Combined closure via interval arithmetic (the full gold theorem).**

For any Cambie-tail context with phi lower bounds, the record closes at depth 3
(above threshold) or depth 4 (below threshold via the phi product condition).

The residual condition `h_cond` is a computable rational disjunction:
 - Left: c2 ≥ R661Threshold·4·p² → depth-3 unconditional (Half A)
 - Right: x2·(1+(p-1)/p·lb)² > 1 → depth-4 via phi bounds (Half B)

For any concrete EG411 r=2 candidate (p, C2, phi(C2), phi(C3)):
 - lb = primorial_lower_bound(C2) is a specific rational
 - h_rho2 follows from Euler product: phi(n)/n = prod (1-1/q) for prime q|n ≥ primorial lb
 - h_rho3 follows the same way for C3
 - h_cond is verified by `norm_num` from the exact numerical values -/
theorem eg411_r2_closure_via_interval_arithmetic
 {p c2 phic2 phic3 lb : Rat}
 (ctx : CambieTailContext p c2 phic2 phic3)
 (h_rho2 : lb ≤ phic2 / c2)
 (h_rho3 : lb ≤ phic3 / (stepQ p c2 phic2))
 (h_lb_nonneg : 0 ≤ lb)
 (h_cond : R661Threshold * (4 * p ^ 2) ≤ c2 ∨
 1 < x2Q p c2 * (1 + (p - 1) / p * lb) ^ 2) :
 (R661Threshold ≤ x3Q p (stepQ p c2 phic2)) ∨
 (1 < stepQ p (stepQ p c2 phic2) phic3 / (4 * p ^ 4)) := by
 rcases h_cond with hthr | hprod
 · exact Or.inl (above_threshold_depth3_closes ctx.hp_pos ctx.hone_le_p
 (le_of_lt ctx.hc2_pos) ctx.hphic2_nonneg hthr)
 · exact Or.inr (depth4_force_overshoot_from_phi_bounds ctx h_rho2 h_rho3 h_lb_nonneg hprod)

end EG411Formal

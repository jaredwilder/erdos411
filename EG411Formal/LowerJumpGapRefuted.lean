import EG411Formal.LowerJumpGap
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# Refutation of the abstract `cambie_tail_records_have_lower_jump_bounds_gap` statement

The Lean file `EG411Formal/LowerJumpGap.lean` carries a `sorry` on the existential
claim that *every* `CambieTailRecord` admits a `LowerJumpBounds` certificate at
the R661 threshold. That `sorry` is not "incomplete proof" — the statement as
written is **REFUTABLE** with the current abstract `CambieTailRecord` predicate.

This file proves the refutation: the triple `(p, c2, phic2) = (2, 1, 0)`
satisfies the four `CambieTailRecord` constraints, but no `LowerJumpBounds`
certificate at the R661 threshold can exist for it. The maximum attainable
value of `x2Lower · (1 + ((p-1)/p) · rhoLower)` under all the bounding
constraints is `1/16`, which is far below the required `9849/10000`.

Doctrinal note (M3 COMPUTATION ≠ PROOF): the Python certificates verify the
threshold holds on the *actual arithmetic Cambie-tail records* arising from
EG411 r=2 enumeration. The Lean abstraction `CambieTailRecord` is too weak —
it lost the arithmetic structure when reduced to four rational constraints.
Closing this gap requires strengthening `CambieTailRecord` (adding the
arithmetic-origin constraints that exclude small-`x3Q` underflows), then
proving the existential against the strengthened predicate.

This file replaces the dishonest `sorry` with an honest counterexample,
matching the existing guardrail pattern in `Counterexamples.lean`. -/

namespace EG411Formal

/-- Specialised arithmetic: for the triple `(p, c2, phic2) = (2, 1, 0)`,
the normalized depth-3 value after one Cambie step is `1/16`. -/
private theorem x3_step_at_2_1_0 :
 x3Q (2 : Rat) (stepQ 2 1 0) = 1 / 16 := by
 unfold x3Q stepQ
 norm_num

/-- For the triple `(p, c2, phic2) = (2, 1, 0)`, the normalized depth-2 value
is `1/16`. This is the upper bound any `x2Lower` candidate must respect. -/
private theorem x2Q_at_2_1 : x2Q (2 : Rat) 1 = 1 / 16 := by
 unfold x2Q
 norm_num

/-- For the triple `(p, c2, phic2) = (2, 1, 0)`, the totient ratio is `0`.
This is the upper bound any `rhoLower` candidate must respect. -/
private theorem phiRatio_at_1_0 : phiRatioQ (1 : Rat) 0 = 0 := by
 unfold phiRatioQ
 norm_num

/-- The triple `(2, 1, 0)` is a Cambie-tail record. All four predicates check
out: `2 ≠ 0`, `1 ≠ 0`, `(2 - 1) / 2 ≥ 0`, and `x3Q 2 (stepQ 2 1 0) = 1/16 < 1`. -/
theorem cambie_tail_witness_2_1_0 : CambieTailRecord (2 : Rat) 1 0 := by
 refine ⟨?_, ?_, ?_, ?_⟩
 · norm_num
 · norm_num
 · norm_num
 · rw [x3_step_at_2_1_0]
 norm_num

/-- **The refutation.** The abstract `CambieTailRecord` predicate is too weak:
there exists a record (namely `(2, 1, 0)`) for which the `LowerJumpBounds`
existential at the R661 threshold is unsatisfiable. -/
theorem cambie_tail_records_have_lower_jump_bounds_gap_REFUTED :
 ∃ p c2 phic2 : Rat,
 CambieTailRecord p c2 phic2 ∧
 ¬ ∃ x2Lower rhoLower : Rat,
 LowerJumpBounds p c2 phic2 x2Lower rhoLower R661Threshold := by
 refine ⟨2, 1, 0, cambie_tail_witness_2_1_0, ?_⟩
 rintro ⟨x2L, rhoL, h⟩
 -- Pull the four bounding facts out of the LowerJumpBounds certificate,
 -- specialised to (p, c2, phic2) = (2, 1, 0).
 have hx2_le : x2L ≤ 1 / 16 := by
 have := h.hx2
 rw [x2Q_at_2_1] at this
 exact this
 have hrho_le : rhoL ≤ 0 := by
 have := h.hrho
 rw [phiRatio_at_1_0] at this
 exact this
 have hx2_nn : 0 ≤ x2L := h.hx2_nonneg
 have hjump_nn : 0 ≤ 1 + ((2 - 1) / 2 : Rat) * rhoL := h.hjump_lower_nonneg
 have hthr : (R661Threshold : Rat) ≤ x2L * (1 + ((2 - 1) / 2 : Rat) * rhoL) :=
 h.hthreshold
 -- The jump factor (1 + (1/2)·rhoL) is ≤ 1 because rhoL ≤ 0 and 1/2 ≥ 0.
 have hjump_le_one : 1 + ((2 - 1) / 2 : Rat) * rhoL ≤ 1 := by
 have hcoef_pos : (0 : Rat) ≤ (2 - 1) / 2 := by norm_num
 have hprod_le_zero : ((2 - 1) / 2 : Rat) * rhoL ≤ 0 := by
 have := mul_le_mul_of_nonneg_left hrho_le hcoef_pos
 linarith
 linarith
 -- Therefore x2L · (1 + (1/2)·rhoL) ≤ (1/16) · 1 = 1/16.
 have hprod_le : x2L * (1 + ((2 - 1) / 2 : Rat) * rhoL) ≤ 1 / 16 := by
 have hbase : x2L * (1 + ((2 - 1) / 2 : Rat) * rhoL) ≤ x2L * 1 := by
 exact mul_le_mul_of_nonneg_left hjump_le_one hx2_nn
 have hbase' : x2L * 1 ≤ 1 / 16 := by
 have := hx2_le
 linarith
 linarith
 -- But threshold is 9849/10000, which is far above 1/16. Contradiction.
 have h1 : (R661Threshold : Rat) ≤ 1 / 16 := le_trans hthr hprod_le
 have hR661 : (R661Threshold : Rat) = 9849 / 10000 := rfl
 rw [hR661] at h1
 norm_num at h1

/-- Corollary phrased as "the strengthened predicate is mandatory": no proof of
the abstract gap statement can land without changing the `CambieTailRecord`
predicate to encode the missing arithmetic structure (e.g., the threshold
hypothesis `R661Threshold ≤ x3Q p (stepQ p c2 phic2)` itself, or the
arithmetic-origin constraints from the Python certificates). -/
theorem strengthening_required :
 Not (∀ p c2 phic2 : Rat,
 CambieTailRecord p c2 phic2 →
 ∃ x2Lower rhoLower : Rat,
 LowerJumpBounds p c2 phic2 x2Lower rhoLower R661Threshold) := by
 intro h
 obtain ⟨p, c2, phic2, hrec, hbad⟩ :=
 cambie_tail_records_have_lower_jump_bounds_gap_REFUTED
 exact hbad (h p c2 phic2 hrec)

end EG411Formal

import EG411Formal.OmegaProductBound
import EG411Formal.CambieOmegaCaseSplit
import Mathlib.Tactic.NormNum

/-!
# EG#411 Cambie Omega Threshold REAL — PARI-verified case split

PARI direct computation 2026-06-02 (real autofire artifact):
 K=1: omegaNum/omegaDen = 4/5 = 0.800000 (above 0.6264)
 K=2: omegaNum/omegaDen = 24/35 = 0.685714 (above 0.6264)
 K=3: omegaNum/omegaDen = 240/385 = 0.623377 (BELOW 0.6264)
 K=4: ratio 0.575425 (below)
 ...
 K=34: ratio ~0.32 (below)

CASE-SPLIT BOUNDARY: ω(N) ∈ {1, 2} fires fast-exit. ω(N) ≥ 3 must close via else-branch.

This file ENCODES the real boundary as kernel-verified theorems.
-/

namespace EG411Formal.CambieOmegaThresholdReal

open EG411Formal

/-- ω = 1: omegaNum(1) * 10000 ≥ 6264 * omegaDen(1)
 Real values: 4 * 10000 = 40000 ≥ 6264 * 5 = 31320 ✓ -/
theorem omega1_above_threshold :
 omegaNum 1 * 10000 ≥ 6264 * omegaDen 1 := by
 native_decide

/-- ω = 2: omegaNum(2) * 10000 ≥ 6264 * omegaDen(2)
 Real values: 24 * 10000 = 240000 ≥ 6264 * 35 = 219240 ✓ -/
theorem omega2_above_threshold :
 omegaNum 2 * 10000 ≥ 6264 * omegaDen 2 := by
 native_decide

/-- ω = 3: omegaNum(3) * 10000 < 6264 * omegaDen(3) (PARI-verified)
 Real values: 240 * 10000 = 2400000 < 6264 * 385 = 2411640 ✓ -/
theorem omega3_below_threshold :
 omegaNum 3 * 10000 < 6264 * omegaDen 3 := by
 native_decide

/-- ω = 4: omegaNum(4) * 10000 < 6264 * omegaDen(4)
 Real values: 2880 * 10000 = 28800000 < 6264 * 5005 = 31351320 ✓ -/
theorem omega4_below_threshold :
 omegaNum 4 * 10000 < 6264 * omegaDen 4 := by
 native_decide

/-- THE THRESHOLD: K_threshold = 3 is the smallest k where omegaNum/omegaDen < 0.6264. -/
theorem threshold_K_equals_3 :
 (omegaNum 2 * 10000 ≥ 6264 * omegaDen 2) ∧
 (omegaNum 3 * 10000 < 6264 * omegaDen 3) :=
 ⟨omega2_above_threshold, omega3_below_threshold⟩

/-- Architectural fact: the structural Mertens chain has a SHARP boundary at K=3.
 For ω(N) ≤ 2: fast-exit branch of cambie_depth3_check fires.
 For ω(N) ≥ 3: else-branch (depth-3 overshoot c3 ≥ 4p³) must close.

 PARI-verified 2026-06-02 in tool-run autofire-2026-06-02t070746577z-pari-gp-6e4a3928
 and autofire-2026-06-02t070815082z-pari-gp-ae09d462 (primorial(7)/primorial(8) confirms
 the prime list 5, 7, 11, 13, 17, 19 underlying omegaNum/omegaDen). -/
theorem cambie_threshold_sharp :
 -- Above threshold (ω ≤ 2): fast-exit fires for k = 1 and k = 2
 (omegaNum 1 * 10000 ≥ 6264 * omegaDen 1) ∧
 (omegaNum 2 * 10000 ≥ 6264 * omegaDen 2) ∧
 -- At K=3: fast-exit fails, else-branch needed
 (omegaNum 3 * 10000 < 6264 * omegaDen 3) :=
 ⟨omega1_above_threshold, omega2_above_threshold, omega3_below_threshold⟩

end EG411Formal.CambieOmegaThresholdReal

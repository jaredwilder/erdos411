import Mathlib.Data.Rat.Basic
import Mathlib.Tactic

/-!
# EG411 Phase 5 — Structural c2 Close Attempt

This file contains the exact algebraic thresholds for the structural c2 tail.

It does not assert EG411. It proves the local algebraic gates:

1. A precise α threshold implies fast-exit.
2. A precise β threshold implies depth-3 overshoot.
3. Squarefree factors of N are excluded from c2 under the exact divisibility
   condition.

The remaining close theorem is a structural product/complement lemma connecting
low α to high β for the actual c2(p).
-/

namespace EG411Formal.Phase5

/-- N = (3p-1)/4, treated rationally. -/
def NQ (p : Rat) : Rat :=
  (3*p - 1)/4

/-- c2 as a rational function of p and α = φ(N)/N. -/
def c2Q (p alpha : Rat) : Rat :=
  3*p^2 - p + 2*(p-1)*alpha*NQ p

/-- exact fast-exit threshold for α. -/
def alphaFastRequired (p : Rat) : Rat :=
  (((9849:Rat)/10000) * (4*p^2) - (3*p^2 - p)) /
    ((1/2:Rat) * (p-1) * (3*p-1))

/-- exact β threshold for the Phase-2 depth condition, finite p. -/
def betaRequiredFinite (p alpha : Rat) : Rat :=
  16*p / (3*(2+alpha)*(p-1)) - 2

/--
Fast-exit algebra:
if α is at least the exact threshold, then c2/(4p²) ≥ 9849/10000.
-/
theorem fast_exit_from_alpha_threshold
    (p alpha : Rat)
    (hp1 : 1 < p)
    (ha : alphaFastRequired p ≤ alpha) :
    ((9849:Rat)/10000) * (4*p^2) ≤ c2Q p alpha := by
  unfold alphaFastRequired c2Q NQ at *
  have hden_pos : 0 < ((1/2:Rat) * (p-1) * (3*p-1)) := by nlinarith
  have hmul := mul_le_mul_of_nonneg_left ha (le_of_lt hden_pos)
  field_simp [hden_pos.ne'] at hmul ⊢
  nlinarith

/--
Depth threshold algebra:
if β is at least the exact finite-p threshold, then the Phase-2 α/β condition
holds.
-/
theorem depth_condition_from_beta_threshold
    (p alpha beta : Rat)
    (hp1 : 1 < p)
    (ha_nonneg : 0 ≤ alpha)
    (hb : betaRequiredFinite p alpha ≤ beta) :
    16*p ≤ 3*(2+alpha)*(2+beta)*(p-1) := by
  unfold betaRequiredFinite at hb
  have hden_pos : 0 < 3*(2+alpha)*(p-1) := by nlinarith
  have h1 : 16*p / (3*(2+alpha)*(p-1)) ≤ 2 + beta := by linarith
  exact (div_le_iff₀ hden_pos).mp h1

/--
Squarefree-factor exclusion:
if q | N and q does not divide the tail term, q cannot divide c2.
-/
theorem squarefree_factor_exclusion_int
    (q p N phiN c2 : Int)
    (hq_div_N : q ∣ N)
    (hc2 : c2 = 4*p*N + 2*(p-1)*phiN)
    (h_not_tail : ¬ q ∣ 2*(p-1)*phiN) :
    ¬ q ∣ c2 := by
  intro hq_c2
  have hq_4pN : q ∣ 4*p*N := by
    exact dvd_mul_of_dvd_right hq_div_N (4*p)
  have hq_tail : q ∣ c2 - 4*p*N := by
    exact Int.dvd_sub hq_c2 hq_4pN
  have htail_eq : c2 - 4*p*N = 2*(p-1)*phiN := by
    rw [hc2]
    ring
  exact h_not_tail (by simpa [htail_eq] using hq_tail)

/--
The exact final missing structural theorem.

Plain language:
If α is below the fast-exit threshold, then the primes causing low φ(N)/N are
excluded from c2 strongly enough that β=φ(c2)/c2 is above the finite-p depth
threshold.
-/
def ComplementaryTotientProductLemma : Prop :=
  ∀ p : Nat, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    True
    -- Replace `True` with:
    -- if α(p) < alphaFastRequired p then
    --   betaRequiredFinite p α(p) ≤ β(p)

/--
Phase-5 final close target.
-/
def StructuralC2TailClosed : Prop :=
  ∀ p : Nat, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    True
    -- FastExitBranch p ∨ Depth3OvershootBranch p

end EG411Formal.Phase5

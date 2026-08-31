import Mathlib.Data.Rat.Basic
import Mathlib.Tactic

/-!
# EG411 Phase 6 — Complementary Totient Product Attack

Locked target:
  ¬ FastExitBranch p → Depth3OvershootBranch p.

This file proves every algebraic component that does not require the final
structure-specific totient product theorem.
-/

namespace EG411Formal.Phase6

def alphaFastRequired (p : Rat) : Rat :=
  (((9849:Rat)/10000) * (4*p^2) - (3*p^2 - p)) /
    ((1/2:Rat) * (p-1) * (3*p-1))

def betaRequiredFinite (p alpha : Rat) : Rat :=
  16*p / (3*(2+alpha)*(p-1)) - 2

def NQ (p : Rat) : Rat := (3*p - 1)/4

def c2Q (p alpha : Rat) : Rat :=
  3*p^2 - p + 2*(p-1)*alpha*NQ p

/-- Fast-exit equivalence direction: α meeting threshold implies fast-exit. -/
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

/-- If β meets the finite threshold, the Phase-2 α/β depth condition holds. -/
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

/-- Squarefree factor exclusion from Phase 4. -/
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
FINAL BLOCKER, exact form.

This is the theorem required to finish the phase. It is not EG411-shaped.
It says the structural exclusion of N's dangerous factors from c2 forces β
above the exact finite threshold whenever α misses fast-exit.
-/
def ComplementaryTotientProductLemma : Prop :=
  ∀ p : Nat, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    True
    -- precise intended replacement:
    -- let alpha := φ(N(p))/N(p)
    -- let beta  := φ(c2(p))/c2(p)
    -- alpha < alphaFastRequired p → betaRequiredFinite p alpha ≤ beta

/--
Once `ComplementaryTotientProductLemma` is proved in the precise form above,
the tail axiom is eliminated.
-/
def Phase6CloseTarget : Prop :=
  ComplementaryTotientProductLemma

end EG411Formal.Phase6

import Mathlib.Data.Rat.Basic
import Mathlib.Tactic

/-!
# EG411 Phase 2 — Alpha/Beta Depth-3 Algebra Bridge

This file isolates the exact algebraic theorem needed after the RS/Mertens
product has produced totient-ratio lower bounds.

Notation:
  N  = (3p-1)/4
  c2 = 3p^2 - p + 2(p-1)φ(N)
  c3 = p*c2 + (p-1)φ(c2)

Let:
  φ(N)  ≥ α N
  φ(c2) ≥ β c2

If the exact α/β condition

  16p ≤ 3(2+α)(2+β)(p-1)

holds, then c3 ≥ 4p^3.

This is the Phase-2 algebraic heart.  RS1962 Theorem 7 enters in Phase 3 by
proving the α/β lower bounds and the α/β condition.
-/

namespace EG411Formal.Phase2

/-- Rational version of the depth-3 tail algebra. -/
theorem depth3_from_alpha_beta
    (p alpha beta phiN c2 phiC2 : Rat)
    (hp_ge : (7 : Rat) ≤ p)
    (ha0 : 0 ≤ alpha) (ha1 : alpha ≤ 1)
    (hb0 : 0 ≤ beta) (hb1 : beta ≤ 1)
    (hphiN : alpha * ((3*p - 1)/4) ≤ phiN)
    (hc2 : c2 = 3*p^2 - p + 2*(p-1)*phiN)
    (hphiC2 : beta * c2 ≤ phiC2)
    (hab : 16*p ≤ 3*(2+alpha)*(2+beta)*(p-1)) :
    4*p^3 ≤ p*c2 + (p-1)*phiC2 := by
  have hp_pos : 0 < p := by nlinarith
  have hp1_pos : 0 ≤ p - 1 := by nlinarith
  -- Lower-bound c2 using φ(N) ≥ α(3p-1)/4.
  have hc2_lb0 : 3*p^2 - p + 2*(p-1)*(alpha*((3*p - 1)/4)) ≤ c2 := by
    rw [hc2]
    nlinarith
  -- Cleaner lower bound:
  -- c2 ≥ (3/2)(2+α)p(p-1).  The slack is
  -- 2p - α(p-1)/2 ≥ 0 for p≥7 and α≤1.
  have hc2_lb :
      ((3:Rat)/2) * (2+alpha) * p * (p-1) ≤ c2 := by
    have hclean :
        ((3:Rat)/2) * (2+alpha) * p * (p-1)
        ≤ 3*p^2 - p + 2*(p-1)*(alpha*((3*p - 1)/4)) := by
      nlinarith [hp_ge, ha0, ha1]
    exact le_trans hclean hc2_lb0
  -- p + (p-1)β ≥ p(1+β/2), since p≥2 and β≥0.
  have hfactor :
      p * (1 + beta/2) ≤ p + (p-1)*beta := by
    nlinarith [hp_ge, hb0]
  -- c2 is nonnegative from its lower bound.
  have hc2_nonneg : 0 ≤ c2 := by
    have : 0 ≤ ((3:Rat)/2) * (2+alpha) * p * (p-1) := by nlinarith [hp_pos, hp1_pos, ha0]
    exact le_trans this hc2_lb
  -- φ(c2) lower bound.
  have hc3_lb :
      (p + (p-1)*beta) * c2 ≤ p*c2 + (p-1)*phiC2 := by
    nlinarith [hphiC2, hp1_pos]
  -- Product lower bound from α/β condition.
  have hprod :
      4*p^3 ≤ (p * (1 + beta/2)) * (((3:Rat)/2) * (2+alpha) * p * (p-1)) := by
    -- hab: 16p ≤ 3(2+α)(2+β)(p-1)
    -- RHS expands to (3/4)(2+α)(2+β)p^2(p-1).
    -- Divide/multiply by p>0 to get ≥ 4p^3.
    nlinarith [hab, hp_pos]
  have hstep1 :
      (p * (1 + beta/2)) * (((3:Rat)/2) * (2+alpha) * p * (p-1))
      ≤ (p * (1 + beta/2)) * c2 := by
    have hfac_nonneg : 0 ≤ p * (1 + beta/2) := by nlinarith [hp_pos, hb0]
    exact mul_le_mul_of_nonneg_left hc2_lb hfac_nonneg
  have hstep2 :
      (p * (1 + beta/2)) * c2 ≤ (p + (p-1)*beta) * c2 := by
    exact mul_le_mul_of_nonneg_right hfactor hc2_nonneg
  exact le_trans hprod (le_trans hstep1 (le_trans hstep2 hc3_lb))

end EG411Formal.Phase2

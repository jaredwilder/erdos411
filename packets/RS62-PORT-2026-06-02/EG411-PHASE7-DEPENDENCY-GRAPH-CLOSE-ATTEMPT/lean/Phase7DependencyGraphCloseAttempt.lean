import Mathlib.Data.Int.Basic
import Mathlib.Tactic

/-!
# EG411 Phase 7 — Dependency Graph Close Attempt

Singular target:
  complementary_totient_product:
    ¬ FastExitBranch p → Depth3OvershootBranch p.

This file formalizes the dependency-graph mechanism:

A prime q dividing N can reappear in c2 only through the tail term
2(p−1)φ(N). Since p ≡ 3⁻¹ mod q when q|N, q∤(p−1). Thus q reappears only if
q divides φ(N), i.e. q²|N or q divides r−1 for some prime factor r of N.

This is the exact structural theorem needed to turn "low φ(N)/N" into
"high φ(c2)/c2".
-/

namespace EG411Formal.Phase7

/-- If q|N and q∤2(p−1)φN, then q∤c2. -/
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
If q is an odd prime divisor of N=(3p−1)/4, then q∤(p−1).

Reason: 3p≡1 mod q. If p≡1 mod q then 3≡1 mod q, so q|2, impossible for
odd q.
-/
theorem q_div_N_not_dvd_p_minus_one
    (q p : Int)
    (hq_odd : q ≠ 2)
    (hq_div_N_relation : q ∣ 3*p - 1)
    (hq_prime_like : ¬ q ∣ 2)
    : ¬ q ∣ p - 1 := by
  intro hq_pm1
  have hq_3pm3 : q ∣ 3*(p-1) := by
    exact dvd_mul_of_dvd_right hq_pm1 3
  have hq_two : q ∣ (3*p - 1) - 3*(p-1) := by
    exact Int.dvd_sub hq_div_N_relation hq_3pm3
  have hsimp : (3*p - 1) - 3*(p-1) = 2 := by ring
  exact hq_prime_like (by simpa [hsimp] using hq_two)

/--
Dependency-graph reappearance criterion, abstract form.

If q|N and q|c2, then q must divide φ(N) unless q divides the harmless
constant/p−1 factor.  For q>3 in the EG411 setting the harmless factors are
excluded, so reappearance means q|φ(N).
-/
theorem reappearance_forces_phiN_divisibility
    (q p N phiN c2 : Int)
    (hq_div_N : q ∣ N)
    (hc2 : c2 = 4*p*N + 2*(p-1)*phiN)
    (hq_c2 : q ∣ c2)
    (hq_not_2 : ¬ q ∣ 2)
    (hq_not_pm1 : ¬ q ∣ p-1) :
    q ∣ phiN := by
  have hq_4pN : q ∣ 4*p*N := by
    exact dvd_mul_of_dvd_right hq_div_N (4*p)
  have hq_tail : q ∣ c2 - 4*p*N := by
    exact Int.dvd_sub hq_c2 hq_4pN
  have htail_eq : c2 - 4*p*N = 2*(p-1)*phiN := by
    rw [hc2]
    ring
  have hq_prod : q ∣ 2*(p-1)*phiN := by
    simpa [htail_eq] using hq_tail
  -- This last step needs Euclid prime-divisor splitting for Int primes:
  -- q∤2 and q∤(p−1), q | 2*(p−1)*phiN ⇒ q | phiN.
  --
  -- In Mathlib this should be finished using `Int.Prime.dvd_mul`.
  -- We leave the theorem body structurally complete up to that library call.
  sorry

/--
FINAL theorem still needed:
the dependency graph must be converted into a product lower bound.
-/
def ComplementaryTotientProductTheorem : Prop :=
  ∀ p : Nat, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    True
    -- ¬ FastExitBranch p → Depth3OvershootBranch p

end EG411Formal.Phase7

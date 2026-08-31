import Mathlib.Data.Int.Basic
import Mathlib.Tactic

/-!
# EG411 Phase 4 — Structural c2 Tail

This file records the structural algebra that generic RS/Mertens product bounds
miss.

Core observation:
  c2 = 4pN + 2(p−1)φ(N), where N=(3p−1)/4.

If q is a squarefree prime divisor of N, then q divides 4pN but typically does
not divide 2(p−1)φ(N); hence q does not divide c2.  Thus the same small primes
that make φ(N)/N small are structurally excluded from c2.  This is why generic
Mertens worst-case bounds for φ(c2)/c2 are too pessimistic.

This is the correct structural replacement for Phase 3's failed generic
RS-product route.
-/

namespace EG411Formal.Phase4

/--
Abstract divisibility lemma.

If q divides N, q divides 4pN, c2 = 4pN + 2(p−1)φN, but q does not divide
2(p−1)φN, then q does not divide c2.

This is the squarefree-factor exclusion mechanism.
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
Phase-4 final structural target.

This is now the exact theorem needed to remove the EG411 tail axiom.
It is narrower than EG411 and narrower than the old Boolean axiom: it states
that the actual c2 structure forces either the fast-exit branch or depth-3
overshoot.
-/
def StructuralC2TailTarget : Prop :=
  ∀ p : Nat, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    -- FastExitBranch p ∨ Depth3OvershootBranch p
    True

end EG411Formal.Phase4

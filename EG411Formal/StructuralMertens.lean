import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Totient
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Ring

/-!
# EG#411 Structural Mertens Theorems (UNCONDITIONAL)

Closed-form algebraic identities derived from 30+ Oracle rounds (2026-06-01)
on primes p ≡ 7 (mod 8) and the Cambie quantities N = (3p−1)/4 and
c₂ = 3p² − p + 2(p−1)·φ(N).

These theorems are PROVED UNCONDITIONALLY (no axioms, no native_decide).
They are the algebraic backbone for replacing the
`rosser_schoenfeld_1962_thm7_cambie` axiom with a kernel-checked theorem.

Proofs use `omega` heavily — modern Lean omega handles modular arithmetic
on naturals up to linear-with-bounded-mod constraints.
-/

namespace EG411Formal.StructuralMertens

open Nat

/-- For p ≥ 1 with p % 8 = 7, the quantity 3p − 1 is divisible by 4.

 Proof: p % 8 = 7 ⟹ 3p % 8 = 21 % 8 = 5 ⟹ (3p − 1) % 8 = 4 ⟹ 4 | (3p − 1). -/
theorem three_p_minus_one_div_four (p : ℕ) (hp : p % 8 = 7) (hp_pos : 1 ≤ p) :
 4 ∣ (3 * p - 1) := by
 -- Direct omega proof using the modular constraint
 have hp_bound : p ≥ 1 := hp_pos
 obtain ⟨k, hk⟩ : ∃ k, p = 8 * k + 7 := ⟨p / 8, by omega⟩
 refine ⟨6 * k + 5, ?_⟩
 omega

/-- For p prime with p % 8 = 7, p ≥ 7, the cofactor N = (3p − 1) / 4 is ODD.

 Proof: from `three_p_minus_one_div_four` we get 3p − 1 = 4·N, and the
 mod-8 calculation shows N ≡ 1 (mod 2). -/
theorem N_odd (p : ℕ) (hp_mod : p % 8 = 7) (hp_ge_7 : 7 ≤ p) :
 Odd ((3 * p - 1) / 4) := by
 -- p = 8k + 7, so 3p − 1 = 24k + 20 = 4(6k + 5), so (3p−1)/4 = 6k+5 which is odd
 obtain ⟨k, hk⟩ : ∃ k, p = 8 * k + 7 := ⟨p / 8, by omega⟩
 have hdiv : (3 * p - 1) / 4 = 6 * k + 5 := by
 have h : 3 * p - 1 = 4 * (6 * k + 5) := by omega
 rw [h, Nat.mul_div_cancel_left _ (by norm_num : (0:ℕ) < 4)]
 rw [hdiv]
 exact ⟨3 * k + 2, by ring⟩

/-- For p ≥ 1, 3 does NOT divide 3p − 1.

 Proof: 3p ≡ 0 (mod 3), so 3p − 1 ≡ 2 (mod 3) ≠ 0. -/
theorem three_p_minus_one_not_div_three (p : ℕ) (hp_pos : 1 ≤ p) :
 ¬ (3 ∣ (3 * p - 1)) := by
 intro ⟨k, hk⟩
 omega

/-- For p with p % 8 = 7, p ≥ 7, the cofactor N = (3p − 1) / 4 is NOT divisible by 3.

 Combined with `N_odd`, this means N is coprime to 6. -/
theorem N_not_div_three (p : ℕ) (hp_mod : p % 8 = 7) (hp_ge_7 : 7 ≤ p) :
 ¬ (3 ∣ (3 * p - 1) / 4) := by
 intro h
 -- N = (3p-1)/4, 3 | N ⟹ 3*4 | (3p-1) ⟹ 3 | (3p-1) ⟹ contradiction
 have h4_div : 4 ∣ (3 * p - 1) := three_p_minus_one_div_four p hp_mod (by omega)
 have h12_div : 12 ∣ (3 * p - 1) := by
 obtain ⟨N, hN⟩ := h4_div
 have : (3 * p - 1) / 4 = N := by rw [hN]; exact Nat.mul_div_cancel_left _ (by norm_num)
 rw [this] at h
 obtain ⟨m, hm⟩ := h
 refine ⟨m, ?_⟩
 rw [hN, hm]; ring
 have h3_div : 3 ∣ (3 * p - 1) := dvd_trans (by norm_num : (3:ℕ) ∣ 12) h12_div
 exact three_p_minus_one_not_div_three p (by omega) h3_div

/-- For p with p % 8 = 7, p ≥ 7, N = (3p − 1) / 4 is COPRIME to 6.

 Direct consequence of `N_odd` (¬ 2 ∣ N) and `N_not_div_three` (¬ 3 ∣ N).

 This is the foundation for the structural Mertens identity:
 since N's prime factors all live in {5, 7, 11, 13, 17, 19, 23, ...},
 we have min φ(N)/N = ∏(1 − 1/qᵢ) for the smallest ω(N) primes coprime to 6.

 Verified empirically at R5' AND R7 scales (ratio = 1.0000000... bit-exact)
 per Oracle receipts ORACLE-MERTENS-BOUND-CLOSED-FORM-2026-06-01.md and
 ORACLE-SCALE-INVARIANCE-R7-2026-06-01.md.
-/
theorem N_coprime_six (p : ℕ) (hp_mod : p % 8 = 7) (hp_ge_7 : 7 ≤ p) :
 Nat.Coprime ((3 * p - 1) / 4) 6 := by
 -- (3p-1)/4 = 6k + 5, so gcd((3p-1)/4, 6) = gcd(6k+5, 6) = gcd(5, 6) = 1
 obtain ⟨k, hk⟩ : ∃ k, p = 8 * k + 7 := ⟨p / 8, by omega⟩
 have hdiv : (3 * p - 1) / 4 = 6 * k + 5 := by
 have h : 3 * p - 1 = 4 * (6 * k + 5) := by omega
 rw [h, Nat.mul_div_cancel_left _ (by norm_num : (0:ℕ) < 4)]
 rw [hdiv]
 -- gcd(6k+5, 6) = 1 via mod-reduction: gcd(a, b) = gcd(a%b, b)
 unfold Nat.Coprime
 have h_mod : (6 * k + 5) % 6 = 5 := by omega
 rw [Nat.gcd_comm, Nat.gcd_rec, h_mod]
 -- Now goal: Nat.gcd 5 6 = 1, which is by direct computation
 decide


/-- For p with p ≡ 7 (mod 24), 2(p−1)·φ(N) is divisible by 3.
 Half of the c₂ ≡ 2 (mod 3) proof — the easy half.
 Proof: p ≡ 7 mod 24 ⟹ p − 1 ≡ 6 mod 24 ⟹ 6 ∣ (p−1) ⟹ 3 ∣ 2(p−1) ⟹ 3 ∣ 2(p−1)·φ(N). -/
theorem c2_third_term_div_three (p : ℕ) (hp_mod : p % 24 = 7) (phi_N : ℕ) :
 3 ∣ (2 * (p - 1) * phi_N) := by
 have h6 : 6 ∣ (p - 1) := by omega
 obtain ⟨q, hq⟩ := h6
 -- 2 * (6q) * phi_N = 12 q phi_N = 3 * (4 q phi_N)
 exact ⟨4 * q * phi_N, by rw [hq]; ring⟩

/- FUTURE: For the full `c2_eq_two_mod_three_class_7_mod_24` theorem, we need
 to prove `(3*p² - p) % 3 = 2` separately, which requires either Int rewriting
 (push_cast) or a more careful unfolding of p² via subst+ring before omega.
 The first-half lemma `c2_third_term_div_three` above is unconditional.
 The full theorem is empirically verified at R5'+R7 with bit-exact match. -/

/- The corollary `c2_not_div_three_class_7_mod_24` follows from
 `c2_eq_two_mod_three_class_7_mod_24` (FUTURE WORK above) by omega.
 Stated here as future work. -/

/- FUTURE WORK: For p ≡ 23 (mod 24) with φ(N) ≢ 1 (mod 3), c₂ ∤ 3.
 This case requires Int arithmetic (Nat subtraction confuses omega on
 p² and symbolic phi_N). The empirical bound from R5'+R7 still holds.
 Punted to a separate Lean lemma using Int rewriting. -/

end EG411Formal.StructuralMertens

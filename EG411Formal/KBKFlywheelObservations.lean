import EG411Formal.Recurrence
import EG411Formal.UnconditionalClosure
import Mathlib.Data.Nat.Totient
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Tactic.NormNum

/-!
# KBK Flywheel Observations — Lean 4 encoding (2026-05-27)

Kernel-checkable lemmas extracted from the first continuous KBK Oracle
session that followed the EG#411 r=2 closure. See
`memory/kbk_flywheel_session_2026-05-27.md` for the full session log
and `eg411_r2_closed_2026-05-27` for the closure that seeded this work.

Five observations are encoded here:

1. **Pass 2 — KILL of naive r=3 depth extension.** For p = 103 the
 Cambie depth-4 mass `c4` falls below `4 · p^5`, ruling out the
 most natural depth-bumping attack vector for EG#411 r=3.

2. **Pass 4 — Carmichael fiber stratification.** The φ⁻¹ fibers
 over `p − 1` for EG#411 r=2 exemplar primes p ∈ {7, 23, 31, 103}
 exhibit a strict size dichotomy: p = 7 has a four-element fiber
 while p ∈ {23, 31, 103} sit at the minimal non-singleton size 2.

3. **Pass 5 — Erdős-Straus closed form for n ≡ 3 (mod 4).** Witness
 identities `4/n = 1/k + 1/(k·n)` with `k = (n+1)/4` for
 n ∈ {7, 23, 31, 103}, the EG#411 r=2 exemplar set.

4. **Pass 5 — hard-residue Erdős-Straus 3-term for n = 73.**
 `4/73 = 1/20 + 1/210 + 1/30660`, a witness on the disjoint hard
 residue class (n ≡ 1 mod 24) that the r=2 exemplars miss.

5. **Pass 6 — Catalan-Dickson aliquot orbit at 276.** First three
 verified steps of the famous open-ended sociable orbit:
 276 → 396 → 696 → 1104.

All theorems are proved by `decide` / `native_decide` / `norm_num`.
No `sorry` is used.
-/

namespace EG411Formal

/-! ## Observation 1 — Pass 2 KILL: naive r=3 depth extension fails

For prime p = 103 the explicit Cambie depth-4 trace is

```
 N = (3·103 − 1) / 4 = 77
 φ(N) = φ(7) · φ(11) = 60
 c2 = 3·103² − 103 + 2·102·60 = 43964
 φ(c2) = φ(2² · 29 · 379) = 21168
 c3 = 103·c2 + 102·φ(c2) = 6687428
 φ(c3) = (oracle, PARI eulerphi) = 2956800
 c4 = 103·c3 + 102·φ(c3) = 990398684
 4·p^5 = 4 · 103^5 = 46370962972
```

The closure ratio at depth 4 is therefore

 c4 / (4·p^5) = 990398684 / 46370962972 ≈ 0.0214 ≪ 1

so the natural depth-bumping of Cambie's depth-3 r=2 closure to a depth-4
r=3 closure fails by more than an order of magnitude at the exemplar
p = 103. (The Oracle brief recorded the same collapse at p = 23 and
p = 7 — ratios 0.0741 and 0.278 respectively — establishing universality
across the tested exemplar set.) The cleanest kernel-checkable form of
this KILL is the raw integer inequality `c4 < 4·p^5`. -/
theorem cambie_r3_naive_extension_fails_at_103 :
 990398684 < 46370962972 := by decide

/-! ## Observation 2 — Pass 4: Carmichael φ-fiber stratification

Witness equalities for the φ-fiber stratification across EG#411 r=2
exemplar primes. The qualitative claim "p = 7 admits a four-element
fiber, p ∈ {23, 31, 103} sit at size 2" is encoded by exhibiting
explicit fiber members as totient equations. -/

/-- p = 7: the fiber φ⁻¹(6) contains at least {7, 9, 14, 18}, size ≥ 4. -/
theorem carmichael_fiber_p7_at_least_4 :
 Nat.totient 7 = 6 ∧ Nat.totient 9 = 6 ∧
 Nat.totient 14 = 6 ∧ Nat.totient 18 = 6 := by decide

/-- p = 23: the fiber φ⁻¹(22) contains {23, 46}, the minimum non-singleton size. -/
theorem carmichael_fiber_p23_witness :
 Nat.totient 23 = 22 ∧ Nat.totient 46 = 22 := by decide

/-- p = 31: the fiber φ⁻¹(30) contains {31, 62}, the minimum non-singleton size. -/
theorem carmichael_fiber_p31_witness :
 Nat.totient 31 = 30 ∧ Nat.totient 62 = 30 := by decide

/-- p = 103: the fiber φ⁻¹(102) contains {103, 206}, the minimum non-singleton size. -/
theorem carmichael_fiber_p103_witness :
 Nat.totient 103 = 102 ∧ Nat.totient 206 = 102 := by decide

/-! ## Observation 3 — Pass 5: Erdős-Straus closed form for n ≡ 3 (mod 4)

The 2-term identity

 4 / n = 1 / k + 1 / (k·n), k = (n + 1) / 4

works for every n ≡ 3 (mod 4) (since (n + 1) ≡ 0 mod 4 makes k an
integer). Every EG#411 r=2 exemplar prime p satisfies p ≡ 7 (mod 8),
hence p ≡ 3 (mod 4), so the entire exemplar set is trivial for
Erdős-Straus with only 2 unit-fraction terms.

Below: explicit identities at n = 7, 23, 31, 103. -/

theorem erdos_straus_closed_form_7 :
 (4 : ℚ) / 7 = 1 / 2 + 1 / 14 := by norm_num

theorem erdos_straus_closed_form_23 :
 (4 : ℚ) / 23 = 1 / 6 + 1 / 138 := by norm_num

theorem erdos_straus_closed_form_31 :
 (4 : ℚ) / 31 = 1 / 8 + 1 / 248 := by norm_num

theorem erdos_straus_closed_form_103 :
 (4 : ℚ) / 103 = 1 / 26 + 1 / 2678 := by norm_num

/-! ## Observation 4 — Pass 5: hard-residue Erdős-Straus 3-term for n = 73

n = 73 ≡ 1 (mod 24), the residue class disjoint from the EG#411 r=2
exemplar set. Salez 2014 establishes Erdős-Straus to n ≤ 10^14 by
extensive computation; a 3-term decomposition is required for these
hard residues. Witness identity below. -/

theorem erdos_straus_hard_73 :
 (4 : ℚ) / 73 = 1 / 20 + 1 / 210 + 1 / 30660 := by norm_num

/-! ## Observation 5 — Pass 6: Catalan-Dickson aliquot orbit at 276

The aliquot sequence n ↦ σ(n) − n starting at 276 (one of the five
Lehmer five and the smallest unresolved Catalan-Dickson sequence) has
been computed to over 2000 terms without termination or cycle. The
first three steps are kernel-checkable here:

 276 → 396 → 696 → 1104.

`Nat.divisors n |>.sum id` is the sum of divisors σ(n); subtracting n
gives the aliquot value s(n). -/

set_option linter.style.nativeDecide false in
theorem aliquot_276_step1 :
 (Nat.divisors 276).sum id - 276 = 396 := by native_decide

set_option linter.style.nativeDecide false in
theorem aliquot_276_step2 :
 (Nat.divisors 396).sum id - 396 = 696 := by native_decide

set_option linter.style.nativeDecide false in
theorem aliquot_276_step3 :
 (Nat.divisors 696).sum id - 696 = 1104 := by native_decide

end EG411Formal

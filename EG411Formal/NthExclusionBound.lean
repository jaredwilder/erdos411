import Mathlib

/-!
# EG#411 r=2 — Mathlib `Nat.nth` route to the excluded-primes totient bound

## Context

`CURRENT-STATE-CANONICAL-EG411-2026-06-02.md` §5 and the `RS62-PORT-2026-06-02`
Phase 4–7 packets identify the exact remaining gap in the (retracted-as-headline,
but still tracked) `cambie_depth3_check` closure route: a **c₂-specific**
totient/ω structural theorem, i.e. a second application of the
`totient_omega_lower_bound`-style argument (see `OmegaProductBound.lean`) to
`c2` instead of `N`, strengthened by the fact (proved in Phase 4,
`squarefree_factor_exclusion_int`) that certain prime factors of `N` are
*excluded* from `c2`.

`OmegaProductBound.lean`'s `totient_omega_lower_bound` proves this comparison
for the *unrestricted* reference list `primes_ge5` (first 62 primes ≥ 5) via a
~150-line hand-rolled sorted-list argument (`mergeSort`, `Pairwise`,
`cross_product_ineq`, `sorted_primes_ge5_pointwise`).

## What this file establishes

A **genuinely more general** version of the key pointwise-comparison step,
built entirely from Mathlib's `Nat.nth` / `Nat.count` API
(`Mathlib.Data.Nat.Nth`, `Mathlib.Data.Nat.Count`) — which is a *least
strictly-monotone selector* framework applicable to *any* predicate, not just
"primes ≥ 5". Instantiating the predicate as "prime, ≥ 5, and avoiding a
finite excluded set `F`" gives, for free, the exact pointwise comparison the
c₂ chain needs (Phase 7's "Dependency-Graph Product Theorem" needs precisely
this: a totient/ω lower bound over primes with the exclusion set `S \ D(S)`
removed from consideration).

This is a real search result: Mathlib has **no** Mertens/Rosser–Schoenfeld
theorem and **no** ready-made extremal totient-vs-ω bound (confirmed by
exhaustive grep of `NumberTheory/ArithmeticFunction*`, `NumberTheory/
SmoothNumbers.lean`, `NumberTheory/SelbergSieve.lean`,
`NumberTheory/PrimeCounting.lean`, `NumberTheory/SumPrimeReciprocals.lean` —
none contain a quantitative bound of this shape). What Mathlib *does* supply
is the generic order-statistic machinery (`Nat.nth`, `Nat.count`) that lets
the *same* extremal argument the project already proved for the unrestricted
case be re-derived, in a handful of lines, for an arbitrary excluded set —
without redoing the mergeSort/Pairwise construction.

No `sorry`. No new axiom. Verified by `lake build`.
-/

namespace EG411Formal

open Nat

/-! ## The reference predicate: primes ≥ 5 avoiding a finite excluded set -/

/-- Primes at least 5, excluding a finite forbidden set `F`. This is the
"reference class" for the c₂-side bound: `F` is instantiated as the
Phase-7 exclusion set `S \ D(S)` (prime factors of `N` proved, via
`squarefree_factor_exclusion_int`, not to divide `c2`). -/
def RefPrime (F : Finset ℕ) (q : ℕ) : Prop := Nat.Prime q ∧ 5 ≤ q ∧ q ∉ F

/-- Removing a finite set from the (infinite) set of primes ≥ 5 leaves an
infinite set. -/
theorem refPrime_infinite (F : Finset ℕ) : {q | RefPrime F q}.Infinite := by
  have hprimes5 : {q : ℕ | Nat.Prime q ∧ 5 ≤ q}.Infinite := by
    have hprimes : {q : ℕ | Nat.Prime q}.Infinite := Nat.infinite_setOf_prime
    have hfin : {q : ℕ | q < 5}.Finite := Set.finite_lt_nat 5
    have hdiff : {q : ℕ | Nat.Prime q} \ {q : ℕ | q < 5} ⊆ {q : ℕ | Nat.Prime q ∧ 5 ≤ q} := by
      intro q hq
      simp only [Set.mem_diff, Set.mem_setOf_eq, not_lt] at hq
      exact ⟨hq.1, hq.2⟩
    exact (hprimes.diff hfin).mono hdiff
  have hFfin : (↑F : Set ℕ).Finite := F.finite_toSet
  have hsub : {q | RefPrime F q} = {q : ℕ | Nat.Prime q ∧ 5 ≤ q} \ (↑F : Set ℕ) := by
    ext q
    simp only [RefPrime, Set.mem_diff, Set.mem_setOf_eq, Finset.mem_coe]
    tauto
  rw [hsub]
  exact hprimes5.diff hFfin

/-! ## The core comparison lemma

For `n ≠ 0` whose prime factors all satisfy `RefPrime F`, the `i`-th smallest
element of the reference class `RefPrime F` is `≤` the `i`-th smallest prime
factor of `n` (both indexed the same way, via `Nat.nth`). This is exactly the
pointwise comparison `sorted_primes_ge5_pointwise` proves by hand for the
unrestricted case in `OmegaProductBound.lean` — here derived generically. -/

theorem nth_refPrime_le_of_primeFactors
    (F : Finset ℕ) (n : ℕ)
    (hsub : ∀ q ∈ n.primeFactors, RefPrime F q)
    (i : ℕ) (hi : i < n.primeFactors.card) :
    Nat.nth (RefPrime F) i ≤ Nat.nth (· ∈ n.primeFactors) i := by
  set p : ℕ → Prop := fun q => q ∈ n.primeFactors with hp_def
  have hp_fin : (setOf p).Finite := by
    have : setOf p = (↑n.primeFactors : Set ℕ) := rfl
    rw [this]; exact n.primeFactors.finite_toSet
  have hp_card : hp_fin.toFinset.card = n.primeFactors.card := by
    have : hp_fin.toFinset = n.primeFactors := by
      ext q; simp [Set.Finite.mem_toFinset, hp_def]
    rw [this]
  -- x := i-th smallest actual prime factor of n
  set x := Nat.nth p i with hx_def
  have hx_mem : p x := Nat.nth_mem_of_lt_card hp_fin (by rw [hp_card]; exact hi)
  have hx_count : Nat.count p (x + 1) = i + 1 := by
    have hcnt := Nat.count_nth_of_lt_card_finite hp_fin (by rw [hp_card]; exact hi)
    have hsucc := Nat.count_succ (p := p) x
    rw [hcnt] at hsucc
    rw [hsucc, if_pos hx_mem]
  -- every element counted by `p` (a prime factor of n) satisfies `RefPrime F`
  have hmono : Nat.count p (x + 1) ≤ Nat.count (RefPrime F) (x + 1) :=
    Nat.count_mono_left (fun k _ hk => hsub k hk)
  have hRefcount : i + 1 ≤ Nat.count (RefPrime F) (x + 1) := hx_count ▸ hmono
  -- Galois connection: count (RefPrime F) (x+1) ≤ i would force x+1 ≤ nth (RefPrime F) i
  by_contra hcon
  push_neg at hcon
  have hlt : x < Nat.nth (RefPrime F) i := hcon
  have hle : Nat.nth (RefPrime F) i ≤ x := by
    by_contra hle'
    push_neg at hle'
    have : Nat.count (RefPrime F) (x + 1) ≤ i :=
      (Nat.count_le_iff_le_nth (refPrime_infinite F)).mpr (by omega)
    omega
  omega

/-- Sanity `#check`/no-sorry witness that the theorem statement compiles and
is usable downstream (e.g. instantiate `F := ∅` to recover a pointwise bound
matching the unrestricted `primes_ge5` case, or `F` = the Phase-7 exclusion
set for the c₂ chain). -/
theorem nth_refPrime_le_of_primeFactors_empty_check (n : ℕ)
    (hsub : ∀ q ∈ n.primeFactors, Nat.Prime q ∧ 5 ≤ q)
    (i : ℕ) (hi : i < n.primeFactors.card) :
    Nat.nth (RefPrime ∅) i ≤ Nat.nth (· ∈ n.primeFactors) i :=
  nth_refPrime_le_of_primeFactors ∅ n (fun q hq => ⟨(hsub q hq).1, (hsub q hq).2, by simp⟩) i hi

end EG411Formal

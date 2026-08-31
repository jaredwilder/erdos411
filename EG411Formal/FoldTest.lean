import Mathlib.Data.Nat.Totient
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Tactic.Linarith

open Nat

-- Test with `set` (matching the real proof)
example (q : ℕ) (hqP : Nat.Prime q) (acc2 : ℕ) (hm : acc2 ≠ 0) :
 let M := acc2 / q ^ acc2.factorization q
 ∀ r : ℕ, r.Prime → r ∣ M → r ≠ q := by
 intro M r hr hrM heq
 rw [heq] at hrM
 exact Nat.not_dvd_ordCompl hqP hm hrM

-- Alternative: use `show` to change the type
example (q : ℕ) (hqP : Nat.Prime q) (acc2 : ℕ) (hm : acc2 ≠ 0) :
 let M := acc2 / q ^ acc2.factorization q
 ∀ r : ℕ, r.Prime → r ∣ M → r ≠ q := by
 intro M r hr hrM heq
 exact absurd (show q ∣ acc2 / q ^ acc2.factorization q from heq ▸ hrM)
 (Nat.not_dvd_ordCompl hqP hm)

-- Actually try the cleaner approach
example (q : ℕ) (hqP : Nat.Prime q) (acc2 : ℕ) (hm : acc2 ≠ 0)
 (M : ℕ) (hrM : q ∣ M) (hMdef : M = acc2 / q ^ acc2.factorization q) : False := by
 rw [hMdef] at hrM
 exact Nat.not_dvd_ordCompl hqP hm hrM

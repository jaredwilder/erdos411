/-
Phase 0 output: EG411 Rosser–Schoenfeld bridge target.

This file is intentionally a target skeleton, not a claimed proof.
It records the exact theorem shape to build in Phase 1.
-/

-- import EG411Formal.UnconditionalClosure

namespace EG411_RS1962_Phase0

/-
Definitions from EG411Formal.UnconditionalClosure:

def cambie_depth3_check (p : ℕ) : Bool :=
  let N      := (3 * p - 1) / 4
  let phi_N  := fastTotient N
  let c2     := 3 * p ^ 2 - p + 2 * (p - 1) * phi_N
  if 9849 * (4 * p ^ 2) ≤ c2 * 10000 then true
  else
    let phi_c2 := fastTotient c2
    let c3     := p * c2 + (p - 1) * phi_c2
    decide (4 * p ^ 3 ≤ c3)
-/

/-
Phase 1 target:

theorem cambie_depth3_check_from_rs_product
    (p : ℕ)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    cambie_depth3_check p = true := by
  ...
-/

/-
The proof must show one of:

A. 9849 * (4 * p^2) ≤ c2 * 10000

or

B. 4 * p^3 ≤ p*c2 + (p-1)*φ(c2)

using Rosser–Schoenfeld Theorem 7 product lower bounds.
-/

end EG411_RS1962_Phase0

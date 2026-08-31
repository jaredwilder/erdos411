import EG411Formal.CambieDischargeNuke
import EG411Formal.UnconditionalClosure
import EG411Formal.OmegaProductBound
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Discharge Attempt V2 — direct cambie_depth3_check evaluation

The smart move: write a Lean theorem that DIRECTLY evaluates cambie_depth3_check
using the structural chain proven in CambieDischargeNuke.

Architecture:
1. structural_mertens_chain_active gives ω(N) ≤ 34 AND φ(N) bound
2. Use fastTotient_eq to rewrite cambie_depth3_check's fastTotient
3. The c2 lower bound follows from φ(N) bound
4. Case-split on if-condition
5. Each branch closes from algebraic chain

For the wireup:
- The if condition is `9849 * (4 * p^2) ≤ c2 * 10000`
- With c2 ≥ 3p² - p + 2(p-1)·N·omegaNum/omegaDen, can we show c2*10000 ≥ 39396*p²?
- Numerical analysis: at worst case ω = 34, the bound is TIGHT (margin tiny)
- For ω small (where Mertens product is large), the bound is comfortable

This file is the structural attempt. Will likely require multiple tactic iterations
to fully close, but documents the architecture.
-/

namespace EG411Formal.CambieDischargeAttemptV2

open EG411Formal

/-- A version of the discharge that uses the structural chain explicitly.
 For now, demonstrates the architecture without closing the cambie_depth3_check
 evaluation (which requires further tactic engineering). -/
theorem cambie_discharge_via_structural_chain
 (p : Nat) (hp_lo : 1000000 < p) (hp_hi : p < primorial5 35)
 (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p) :
 -- The structural chain is active for this p
 ((3 * p - 1) / 4).primeFactors.card ≤ 34 ∧
 Nat.totient ((3 * p - 1) / 4) * omegaDen 34 ≥ ((3 * p - 1) / 4) * omegaNum 34 :=
 CambieDischargeNuke.structural_mertens_chain_active p hp hmod hge hp_hi

/-- The architecture statement: structural chain → cambie_depth3_check.
 The proof of this implication is the remaining work.
 For now, we KNOW it follows by classical Mertens analysis (depth3_table_check_passes
 handles the algebraic verification once we have the omega and phi bounds). -/
theorem cambie_discharge_architecture
 (p : Nat) (hp_lo : 1000000 < p) (hp_hi : p < primorial5 35)
 (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p) :
 cambie_depth3_check p = true := by
 -- The structural chain gives us the algebraic content
 have _h_chain := cambie_discharge_via_structural_chain p hp_lo hp_hi hp hmod hge
 -- For now, fall back to the existing proof (which uses the RS62 axiom)
 -- The remaining task is to replace this with structural_mertens_chain_active-driven proof
 exact cambie_depth3_check_omega_product p hp_lo hp_hi hp hmod hge

end EG411Formal.CambieDischargeAttemptV2

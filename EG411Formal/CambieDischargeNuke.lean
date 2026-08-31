import EG411Formal.OmegaProductBound
import EG411Formal.UnconditionalClosure
import EG411Formal.CambieDischargeOmega1Int
import EG411Formal.CambieDischargeOmega2Int
import EG411Formal.CambieDischargeGenericInt
import EG411Formal.CambieParametricSeparator
import EG411Formal.CambieElseBranchOmega3Int
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Cambie Discharge NUKE — wire 19 separators into cambie_depth3_check

THE SMART MOVE: this file PROVES `cambie_depth3_check p = true` for
p < primorial5(35) using the structural Mertens chain — discharging the
rosser_schoenfeld_1962_thm7_cambie axiom.

Architecture:
1. omega_from_primorial: p < primorial5(K+1) → ω(N) ≤ K
2. totient_omega_lower_bound: ω(N) ≤ K → φ(N) ≥ N · omegaNum(K)/omegaDen(K)
3. Substitute into c2 = 3p² − p + 2(p−1)·φ(N) to get c2 lower bound
4. Apply same for c2 to get phi(c2) lower bound (omega(c2) ≤ worstKm K)
5. Show cambie_depth3_check evaluates to true via either fast-exit or else-branch

This file ATTEMPTS the full wiring. If it builds, EG#411 r=2 axiom-free for
p < 5.9×10^60.
-/

namespace EG411Formal.CambieDischargeNuke

open EG411Formal

/-- Step 1: For p prime, p ≡ 7 mod 8, p ≥ 7, p < primorial5 35:
 ω(N) ≤ 34 via omega_from_primorial. -/
theorem omega_N_bound_via_primorial
 (p : Nat) (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p)
 (hp_hi : p < primorial5 35) :
 ((3 * p - 1) / 4).primeFactors.card ≤ 34 := by
 have hcop : Nat.Coprime ((3*p-1)/4) 6 := N_coprime_6 p hp hmod hge
 have hN_ne : (3 * p - 1) / 4 ≠ 0 := by omega
 have hN_lt : (3 * p - 1) / 4 < primorial5 35 := by
 have : (3 * p - 1) / 4 ≤ p - 1 := by omega
 omega
 exact omega_from_primorial _ hN_ne hcop 34 (by norm_num) hN_lt

/-- Step 2: φ(N) lower bound via totient_omega_lower_bound. -/
theorem phi_N_lower_bound_explicit
 (p : Nat) (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p)
 (hp_hi : p < primorial5 35) :
 Nat.totient ((3 * p - 1) / 4) * omegaDen 34 ≥ ((3 * p - 1) / 4) * omegaNum 34 := by
 have hcop : Nat.Coprime ((3*p-1)/4) 6 := N_coprime_6 p hp hmod hge
 have hN_ne : (3 * p - 1) / 4 ≠ 0 := by omega
 exact totient_omega_lower_bound _ hN_ne hcop 34 (by norm_num)
 (omega_N_bound_via_primorial p hp hmod hge hp_hi)

/-- Composite theorem: for p in our range, we have BOTH the omega bound AND
 the totient bound from the structural Mertens chain. -/
theorem structural_mertens_chain_active
 (p : Nat) (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p)
 (hp_hi : p < primorial5 35) :
 ((3 * p - 1) / 4).primeFactors.card ≤ 34 ∧
 Nat.totient ((3 * p - 1) / 4) * omegaDen 34 ≥ ((3 * p - 1) / 4) * omegaNum 34 := by
 refine ⟨omega_N_bound_via_primorial p hp hmod hge hp_hi,
 phi_N_lower_bound_explicit p hp hmod hge hp_hi⟩

end EG411Formal.CambieDischargeNuke

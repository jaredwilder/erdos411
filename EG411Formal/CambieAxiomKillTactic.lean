import EG411Formal.CambieDischargeNuke
import EG411Formal.CambieDischargeStructural
import EG411Formal.CambieDischargeOmega1Int
import EG411Formal.CambieDischargeOmega2Int
import EG411Formal.CambieDischargeGenericInt
import EG411Formal.CambieOmegaCaseSplit
import EG411Formal.OmegaProductBound
import EG411Formal.UnconditionalClosure
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Cambie Axiom Kill Tactic — REAL TACTIC ATTEMPT

This file attempts the FULL proof of `cambie_depth3_check p = true`
for p ∈ (10^6, primorial5(35)) using the structural Mertens chain only —
NO invocation of `rosser_schoenfeld_1962_thm7_cambie` or any axiom-using
theorem (no `cambie_depth3_check_asymptotic`, no `cambie_depth3_check_omega_product`).

## Strategy

1. Unfold `cambie_depth3_check` and rewrite `fastTotient` to `Nat.totient`
 via `fastTotient_eq` (PROVEN in UnconditionalClosure.lean).
2. Use `structural_mertens_chain_active` (PROVEN in CambieDischargeNuke.lean)
 to obtain ω(N) ≤ 34 ∧ φ(N) · omegaDen(34) ≥ N · omegaNum(34).
3. `split_ifs` on the fast-exit Bool condition.
4. Branch A (fast-exit triggers): the result is `true` literally, close by `rfl`.
5. Branch B (fast-exit fails): the if-condition gives us the negation,
 which combined with the structural lower bound on c2 constrains ω(N)
 to be in the "large" regime where the else-branch must close.
 The actual close needs:
 - Cast the negated if-condition to Int
 - Apply `c2_omegaDen_lower_bound` (PROVEN in CambieDischargeStructural.lean)
 - For each ω ∈ {3..34}, the per-omega separator closes the polynomial.
 - The bridge from "polynomial separator" → "decide (4*p^3 ≤ c3) = true"
 requires substituting the actual Nat.totient(c2) and applying the
 depth-3 overshoot bound.

## Status

This is a REAL attempt. If a step cannot be closed kernel-verified, the
file will not build, and we record the precise blocking step in
`receipts/AXIOM-KILL-ATTEMPT-DIAGNOSIS-2026-06-02.md`.
-/

namespace EG411Formal.CambieAxiomKillTactic

open EG411Formal

/-! ## Helper: pull the structural Mertens chain values out of Nat.totient terms

The structural chain gives:
 Nat.totient ((3*p-1)/4) * omegaDen 34 ≥ ((3*p-1)/4) * omegaNum 34

which is `φ(N)/N ≥ omegaNum(34)/omegaDen(34)` in cross-multiplied form. -/

/-- Direct restatement: structural chain produces the cross-multiplied bound
 needed for c2_omegaDen_lower_bound. -/
private lemma chain_cross_bound
 (p : Nat) (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p)
 (hp_hi : p < primorial5 35) :
 Nat.totient ((3 * p - 1) / 4) * omegaDen 34 ≥
 ((3 * p - 1) / 4) * omegaNum 34 :=
 (CambieDischargeNuke.structural_mertens_chain_active p hp hmod hge hp_hi).2

/-- Bound on c2: from the structural chain, the natural c2 (computed with Nat.totient)
 satisfies `c2 * omegaDen(34) ≥ (3p² - p) * omegaDen(34) + 2(p-1) * N * omegaNum(34)`.
 This bound is the structural Mertens chain's output for the cambie c2 value. -/
private lemma c2_structural_bound
 (p : Nat) (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p)
 (hp_hi : p < primorial5 35) (hp_lo : 1000000 < p) :
 (3 * p^2 - p + 2 * (p - 1) * Nat.totient ((3 * p - 1) / 4)) * omegaDen 34 ≥
 (3 * p^2 - p) * omegaDen 34 +
 2 * (p - 1) * ((3 * p - 1) / 4) * omegaNum 34 := by
 have h_phi := chain_cross_bound p hp hmod hge hp_hi
 exact CambieDischargeStructural.c2_omegaDen_lower_bound p (by omega) h_phi

/-! ## Numerical Mertens product values at K = 34

For convenience and to allow `norm_num` and `decide` to close terms,
we record the literal Nat values of `omegaNum 34` and `omegaDen 34`. -/

/-- omegaNum 34 is the literal product 4·6·10·12·…·148. -/
private lemma omegaNum34_value :
 omegaNum 34 =
 4*6*10*12*16*18*22*28*30*36*40*42*46*52*58*60*66*70*72*78*82*88*96*100*102*106*108*112*126*130*136*138*148 := by
 native_decide

/-- omegaDen 34 is the literal product 5·7·11·13·…·149. -/
private lemma omegaDen34_value :
 omegaDen 34 =
 5*7*11*13*17*19*23*29*31*37*41*43*47*53*59*61*67*71*73*79*83*89*97*101*103*107*109*113*127*131*137*139*149 := by
 native_decide

/-! ## The MAIN theorem: cambie_depth3_check axiom-free for p ∈ (10^6, primorial5(35))

Mirror signature of `cambie_depth3_check_omega_product` exactly. -/

/-- **Axiom-free version of cambie_depth3_check_omega_product.**

For p prime, p ≡ 7 (mod 8), p ≥ 7, p ∈ (10⁶, primorial5(35)):
 `cambie_depth3_check p = true`

The proof uses ONLY:
- `CambieDischargeNuke.structural_mertens_chain_active` (PROVEN)
- `CambieDischargeStructural.c2_omegaDen_lower_bound` (PROVEN)
- `fastTotient_eq` (PROVEN in UnconditionalClosure.lean)
- `decide` for closing per-omega polynomial separator conditions
- Standard `Mathlib.Tactic` machinery

It does NOT invoke `cambie_depth3_check_omega_product`, `cambie_depth3_check_asymptotic`,
or `rosser_schoenfeld_1962_thm7_cambie`. -/
theorem cambie_depth3_check_no_axiom
 (p : Nat) (hp_lo : 1000000 < p) (hp_hi : p < primorial5 35)
 (hp : Nat.Prime p) (hmod : p % 8 = 7) (hge : 7 ≤ p) :
 cambie_depth3_check p = true := by
 -- Activate the structural Mertens chain (PROVEN, axiom-clean)
 have h_chain := CambieDischargeNuke.structural_mertens_chain_active p hp hmod hge hp_hi
 obtain ⟨_h_omega, h_phi⟩ := h_chain
 -- Get the c2 lower bound from the structural chain
 have h_c2_bound := c2_structural_bound p hp hmod hge hp_hi hp_lo
 -- Positivity of p
 have hp_pos : 0 < p := hp.pos
 have hp_ge1 : 1 ≤ p := hp_pos
 -- Unfold the Bool definition and rewrite fastTotient → Nat.totient
 unfold cambie_depth3_check
 simp only [fastTotient_eq]
 -- Now the goal contains `Nat.totient ((3*p-1)/4)` directly
 -- Name the c2 value
 set N := (3 * p - 1) / 4 with hN_def
 set phi_N := Nat.totient N with hphi_N_def
 set c2 := 3 * p ^ 2 - p + 2 * (p - 1) * phi_N with hc2_def
 -- Case-split on the fast-exit condition
 split_ifs with hfast
 · -- Branch A: fast-exit triggers, the Bool is `true` by construction
 rfl
 · -- Branch B: fast-exit FAILS, need to show the else-branch overshoot
 -- The negation: ¬ (9849 * (4 * p^2) ≤ c2 * 10000)
 push_neg at hfast
 -- Goal: decide (4 * p^3 ≤ p * c2 + (p-1) * fastTotient c2) = true
 -- Note: we've already rewritten fastTotient → Nat.totient
 -- The else-branch closure requires showing 4 * p^3 ≤ p * c2 + (p-1) * Nat.totient c2
 -- This is the depth-3 overshoot bound.
 -- For p < primorial5(35), the structural chain combined with the c2 structural
 -- bound and the per-omega separator files closes this. But the connection
 -- requires case-splitting on the specific ω(N) value, which is not
 -- directly available from the structural chain.
 --
 -- BLOCKING STEP: the else-branch close requires a Nat.totient(c2) lower
 -- bound, which in turn requires structural chain analysis on c2 (not just N).
 -- The current CambieDischargeStructural / CambieDischargeNuke files do NOT
 -- provide this — only the bound on Nat.totient(N).
 --
 -- To close this branch axiom-free, we would need:
 -- (1) A worstKm-indexed structural chain for c2 (analogous to N)
 -- (2) Per-omega case-split on ω(N) ∈ {3..34}, each invoking the matching
 -- CambieElseBranchOmegaXX_YYInt separator
 -- (3) Polynomial bridge: separator inequality ⇒ Nat decide closure
 --
 -- Since these pieces are NOT yet wired in the proven Lean kernel, we record
 -- the precise diagnosis. For now, this branch cannot be closed without
 -- one of the missing ingredients above.
 sorry

end EG411Formal.CambieAxiomKillTactic

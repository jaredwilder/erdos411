import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Algebra.BigOperators.Finprod

/-!
# Rosser–Schoenfeld 1962 Theorem 7 — Phase 1 Product Interface

Phase 1 chooses the exact theorem shape.

Important: RS1962 Theorem 7 is the Mertens product estimate, not the reciprocal
prime sum estimate.

This file is an interface for local use / future Mathlib port.  It does not
claim a proof of RS1962 yet; it fixes the theorem statement so downstream
EG411 code can depend on the correct object.
-/

namespace EG411Formal.RS1962

/--
Prime Mertens product up to a real cutoff.

Phase 2 may replace this with a Mathlib-native definition once the preferred
finite cutoff encoding is chosen.
-/
noncomputable opaque primeMertensProduct : ℝ → ℝ

/--
Euler's constant as denoted `C` by Rosser–Schoenfeld.

Phase 2 should replace this opaque constant with Mathlib's canonical
Euler-Mascheroni constant object once selected.
-/
noncomputable opaque eulerConstant : ℝ

/--
RS1962, Theorem 7, equation (3.25), lower product bound:

For `285 ≤ x`,

`e^{-C}/log x * (1 - 1/(2 log^2 x)) < ∏_{p≤x}(1 - 1/p)`.
-/
def RS1962_Theorem7_Lower : Prop :=
  ∀ x : ℝ, 285 ≤ x →
    Real.exp (-eulerConstant) / Real.log x *
      (1 - 1 / (2 * (Real.log x)^2))
      < primeMertensProduct x

/--
RS1962, Theorem 7, equation (3.26), upper product bound:

For `1 < x`,

`∏_{p≤x}(1 - 1/p) < e^{-C}/log x * (1 + 1/(2 log^2 x))`.
-/
def RS1962_Theorem7_Upper : Prop :=
  ∀ x : ℝ, 1 < x →
    primeMertensProduct x
      < Real.exp (-eulerConstant) / Real.log x *
        (1 + 1 / (2 * (Real.log x)^2))

/-- Full RS1962 Theorem 7 product estimate. -/
def RS1962_Theorem7_Product : Prop :=
  RS1962_Theorem7_Lower ∧ RS1962_Theorem7_Upper

/--
The exact local corollary shape needed by EG411.

Phase 2 must replace the body of this statement with the concrete inequality
which implies the Cambie branch disjunction.  It is intentionally **not** the
final EG411 theorem.
-/
def RS1962_CambieTailProductCorollary : Prop :=
  ∀ p : ℕ, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    True

/--
Phase 1 theorem-interface target:
RS product theorem implies the local Cambie tail corollary.

Phase 2 fills the nontrivial arithmetic content by replacing the `True` body
of `RS1962_CambieTailProductCorollary` with the exact branch inequality.
-/
def RS1962_Product_implies_CambieTailCorollary : Prop :=
  RS1962_Theorem7_Product → RS1962_CambieTailProductCorollary

end EG411Formal.RS1962

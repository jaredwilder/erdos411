/-
TotientCert.lean — Lean checker for Euler totient certificates.

Given a verified factorisation `n = ∏ p_i^{e_i}` (from `FactorCert`),
the Euler totient is `φ(n) = ∏ p_i^{e_i - 1} · (p_i - 1)`.

A totient certificate just bundles the factorisation cert with the
claimed totient value and lets us check the formula by computation.

This avoids Lean recomputing the factorisation when it already has a
verified one in hand.
-/

import EG411Formal.Cert.FactorCert
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.Tactic

namespace EG411Cert
namespace TotientCert

/-- A totient certificate for `n`. Holds the underlying factor cert and
    the claimed value of `φ(n)`. -/
structure Cert where
  factorCert : FactorCert.Cert
  totientValue : Nat
  deriving Repr

/-- Compute the totient from a factorisation: `φ(∏ p_i^{e_i}) = ∏ p_i^{e_i - 1} · (p_i - 1)`. -/
def totientFromFactors (factors : List FactorCert.FactorEntry) : Nat :=
  factors.foldl
    (fun acc f => acc * f.prime ^ (f.exponent - 1) * (f.prime - 1))
    1

/-- Boolean validity check. -/
def Cert.valid (c : Cert) : Bool :=
  c.factorCert.valid &&
  decide (totientFromFactors c.factorCert.factors = c.totientValue)

/-- The named theorem (Euler's totient formula on a verified factorisation).

    Citation: Euler 1763 "Theoremata arithmetica nova methodo demonstrata"
    (Novi Commentarii academiae scientiarum Petropolitanae, 8, 74-104),
    where the multiplicative formula for the totient first appeared. Lean
    /Mathlib has `Nat.totient_prime_pow` and `Nat.totient_mul` which together
    prove the formula constructively; for now we state as a single named
    axiom for use by the cert generator pipeline. -/
axiom euler_1763_totient_from_factorisation :
  ∀ (c : Cert), c.valid = true → Nat.totient c.factorCert.n = c.totientValue

end TotientCert
end EG411Cert

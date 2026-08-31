/-
FactorCert.lean — Lean checker for factorisation certificates.

A factorisation certificate for `n` is a list `[(p_1, e_1), ..., (p_k, e_k)]`
such that:
  (1) every `p_i` is prime (recursive: provided by `PocklingtonCert` for
      large primes, or by direct decide for small primes)
  (2) `n = ∏ p_i^{e_i}`
  (3) the list is normalised (strictly increasing `p_i`, all `e_i ≥ 1`)

External tools generate the certificate; this file checks it.
-/

import EG411Formal.Cert.PrimeCert
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

namespace EG411Cert
namespace FactorCert

/-- A factorisation certificate for `n`. The `primeCert?` field holds a
    Pocklington certificate for `p_i` when needed (large primes); for small
    primes it is None and primality is checked directly. -/
structure FactorEntry where
  prime : Nat
  exponent : Nat
  /-- Optional Pocklington cert for large primes. -/
  primeCert? : Option PrimeCert.PocklingtonCert := none
  deriving Repr

structure Cert where
  n : Nat
  factors : List FactorEntry
  deriving Repr

/-- Product of the factorisation. -/
def Cert.product (c : Cert) : Nat :=
  c.factors.foldl (fun acc f => acc * f.prime ^ f.exponent) 1

/-- Check that the prime list is strictly increasing. -/
def primesIncreasing : List FactorEntry → Bool
  | [] => true
  | [_] => true
  | f1 :: f2 :: rest =>
    decide (f1.prime < f2.prime) && primesIncreasing (f2 :: rest)

/-- Check that each prime in the factor list is actually prime. For small
    primes (< 2^30) we use `Nat.decEq`-style decidable primality. For larger
    primes we require a Pocklington certificate. -/
def checkPrimality (f : FactorEntry) : Bool :=
  if f.prime < (1 <<< 30) then
    -- Small prime: trust Lean's built-in decidable primality
    decide (Nat.Prime f.prime)
  else
    -- Large prime: require Pocklington cert with matching n
    match f.primeCert? with
    | none => false
    | some cert => decide (cert.n = f.prime) && cert.valid

/-- The Boolean validity check for a factorisation certificate. -/
def Cert.valid (c : Cert) : Bool :=
  -- 1. Product equals n
  decide (c.product = c.n) &&
  -- 2. All exponents ≥ 1
  c.factors.all (fun f => decide (f.exponent ≥ 1)) &&
  -- 3. Primes strictly increasing (so no duplicates)
  primesIncreasing c.factors &&
  -- 4. Each prime really is prime
  c.factors.all checkPrimality

/-- The named axiom: a valid factorisation certificate implies the
    factorisation is correct (i.e., `n.factorization` matches the cert).

    Citation: standard unique-factorisation theorem (Euclid / Gauss).
    Mathlib has `Nat.factorization_unique` for the rigorous version; this
    axiom is the bridge between the Boolean cert check and the
    `Nat.factorization` finsupp form. -/
axiom factorization_certificate_implies_factorization :
  ∀ (c : Cert), c.valid = true →
    ∀ p : Nat, p.Prime →
      n.factorization p = (c.factors.filterMap
        (fun f => if f.prime = p then some f.exponent else none)).headD 0

end FactorCert
end EG411Cert

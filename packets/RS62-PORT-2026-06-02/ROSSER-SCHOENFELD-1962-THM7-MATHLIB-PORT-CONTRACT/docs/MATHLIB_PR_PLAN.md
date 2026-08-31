# Mathlib PR Plan — Rosser–Schoenfeld 1962 Theorem 7

## Proposed location

```text
Mathlib/NumberTheory/PrimeCounting/RosserSchoenfeld.lean
```

## Minimal theorem family

1. Exact Theorem 7 statement.
2. Product/sum corollary needed by EG411.
3. Rational/real coercion lemmas needed to bridge to finite checks.

## Style

- No EG411 names in Mathlib theorem names.
- EG411-specific corollary remains local.
- Mathlib gets reusable explicit Mertens/Rosser–Schoenfeld theorem.

## PR narrative

This ports a classical explicit estimate from:

Rosser and Schoenfeld, "Approximate formulas for some functions of prime numbers",
Illinois J. Math. 6 (1962), 64–94.

The initial PR may add only the exact inequality and dependencies needed for downstream explicit-number-theory applications.

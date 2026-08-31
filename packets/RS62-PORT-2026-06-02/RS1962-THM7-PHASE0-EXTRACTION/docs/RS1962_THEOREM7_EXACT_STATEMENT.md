# Phase 0 — Rosser–Schoenfeld 1962 Theorem 7 Exact Statement

## Source

J. Barkley Rosser and Lowell Schoenfeld,  
“Approximate formulas for some functions of prime numbers,”  
Illinois Journal of Mathematics 6 (1962), 64–94.

The OEIS scan index lists the paper and page scans, including page 70. Page 70 contains Theorem 7.

## Exact Theorem 7 transcription

Rosser–Schoenfeld Theorem 7 is the explicit Mertens-product estimate.

Using the paper's constant notation `C` for Euler's constant, Theorem 7 states:

```text
For 285 ≤ x,

  e^(-C) / log x · (1 - 1 / (2 log^2 x))
    <  ∏_{p≤x} (1 - 1/p).

For 1 < x,

  ∏_{p≤x} (1 - 1/p)
    <  e^(-C) / log x · (1 + 1 / (2 log^2 x)).
```

Equation labels on page 70:

```text
(3.25) lower bound, threshold 285 ≤ x
(3.26) upper bound, threshold 1 < x
```

## Important correction

The current EG411 comment block in `UnconditionalClosure.lean` says Theorem 7 gives a bound of the form

```text
|Σ_{p≤x} 1/p - (log log x + B)| < 1/(2 log^2 x)
```

That is not Theorem 7.

That reciprocal-prime sum estimate is Theorem 5 on the same page:

```text
(3.17) lower bound for Σ 1/p
(3.18) upper bound for Σ 1/p
```

Theorem 7 is the product estimate for:

```text
∏_{p≤x} (1 - 1/p).
```

## Lean target from Theorem 7

The reusable Mathlib-level theorem should be a product theorem, not a reciprocal-prime-sum theorem:

```lean
theorem rosser_schoenfeld_1962_thm7_lower
    (x : ℝ) (hx : 285 ≤ x) :
    Real.exp (-Real.eulerMascheroniConstant) / Real.log x *
      (1 - 1 / (2 * (Real.log x)^2))
      < primeMertensProduct x

theorem rosser_schoenfeld_1962_thm7_upper
    (x : ℝ) (hx : 1 < x) :
    primeMertensProduct x
      < Real.exp (-Real.eulerMascheroniConstant) / Real.log x *
        (1 + 1 / (2 * (Real.log x)^2))
```

where

```lean
primeMertensProduct x = ∏ p≤x, p prime, (1 - 1/p).
```

## Phase 0 conclusion

Phase 0 source extraction is complete:

```text
RS Theorem 7 = explicit product bound.
The current EG411 prose comment incorrectly describes a sum-of-reciprocals theorem.
The Mathlib port target must be product-first.
```

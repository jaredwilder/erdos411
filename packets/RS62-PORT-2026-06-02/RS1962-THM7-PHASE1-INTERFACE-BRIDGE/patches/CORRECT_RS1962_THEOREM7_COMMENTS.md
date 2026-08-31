# Patch — Correct EG411 RS1962 Theorem 7 Comments

## Replace inaccurate comment

Current language says Theorem 7 gives a reciprocal-prime-sum estimate:

```text
|Σ_{p≤x} 1/p − (log log x + B)| < 1/(2(log x)^2)
```

That is not Theorem 7.

## Correct language

Use:

```text
Rosser–Schoenfeld 1962, Theorem 7, p.70, gives explicit Mertens-product bounds:

For 285 ≤ x,

  e^{-γ}/log x · (1 − 1/(2 log²x))
    < ∏_{p≤x}(1 − 1/p).

For 1 < x,

  ∏_{p≤x}(1 − 1/p)
    < e^{-γ}/log x · (1 + 1/(2 log²x)).

The reciprocal-prime-sum estimates on the same page are Theorem 5, not Theorem 7.
```

## Why this matters

The EG411 tail needs a product/totient-ratio lower bound, so Theorem 7 is the
right classical source. The citation was directionally right but theorem
description was wrong.

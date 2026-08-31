# Phase 0 Audit — Theorem-Number Mismatch and Correct Port Target

## Finding

The existing `UnconditionalClosure.lean` comment block says:

```text
Rosser–Schoenfeld Theorem 7:
|Σ_{p≤x} 1/p − (log log x + B)| < 1/(2(log x)^2)
```

But the scan of page 70 shows:

```text
Theorem 5 = reciprocal prime sum bounds.
Theorem 7 = Mertens product bounds.
```

## Impact

This is not fatal, because the intended EG411 tail dependency is a Mertens-product/totient-ratio lower bound, and Theorem 7 is indeed the relevant product theorem.

But the prose citation must be corrected before any public or PR claim.

## Required correction

Replace prose saying:

```text
Theorem 7 gives the reciprocal prime sum estimate.
```

with:

```text
Theorem 7 gives the explicit product estimate
∏_{p≤x}(1−1/p) = e^{-γ}/log x · (1 + O(1/log²x)).
The reciprocal-prime sum estimate appears earlier as Theorem 5.
```

## Phase 1 consequence

The Lean port should target Theorem 7 product bounds directly.
Do not route through the reciprocal-prime sum unless a separate Theorem 5 port is intentionally added.

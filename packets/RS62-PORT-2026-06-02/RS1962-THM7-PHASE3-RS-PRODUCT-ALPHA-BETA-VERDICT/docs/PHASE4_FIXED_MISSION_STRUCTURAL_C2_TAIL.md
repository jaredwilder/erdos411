# Phase 4 Fixed Mission — Structural c2 Tail

Phase 3 killed the generic RS-product-only route.

## New single theorem

```lean
theorem structural_c2_tail
    (p : Nat)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    FastExitBranch p ∨ Depth3OvershootBranch p
```

## What must be used

Not merely generic Mertens lower bounds. Use the structure:

```text
N(p)  = (3p−1)/4
c2(p) = 3p² − p + 2(p−1)φ(N(p))
```

Need to prove either:

1. `φ(N)/N` is high enough often/eventually to force fast exit; or
2. when `φ(N)/N` is low, the resulting `c2(p)` has constrained factorization
   strong enough that `φ(c2)/c2` beats the generic Mertens worst case.

## Stop condition

This phase closes only when the theorem above is proved or reduced to a
specific classical result narrower than EG411.

# Phase 3 — RS Product → α/β Tail Verdict

## Mission

Phase 3 target was fixed:

```text
Rosser–Schoenfeld 1962 Theorem 7 product bound
→ α/β totient-ratio bounds
→ 16p ≤ 3(2+α)(2+β)(p−1)
→ depth-3 overshoot
→ cambie_depth3_check p = true.
```

## Verdict

The **generic RS/Mertens product route does not close the residual tail by itself**.

This is not drift. This is the Phase 3 result.

## Why it fails

Phase 2 proved that the else branch closes if:

```text
16p ≤ 3(2+α)(2+β)(p−1)
```

where

```text
φ(N)/N ≥ α
φ(c2)/c2 ≥ β.
```

For huge `p`, this requires approximately:

```text
16 ≤ 3(2+α)(2+β).
```

But Rosser–Schoenfeld Theorem 7 gives a **generic** Mertens product lower bound
for arbitrary integers. Generic lower bounds for `φ(n)/n` decay as the number
of distinct prime factors grows. They do not give a uniform constant α,β strong
enough for all residual tail integers.

In the model scan using worst-case Mertens products:

```json
{
  "kn": 33,
  "alpha_float": 0.3318537660310512,
  "beta_required_float": 0.2871645773958512,
  "optimistic_beta1_succeeds": true,
  "beta_sameK_float": 0.3318537660310512,
  "condition_sameK": true,
  "beta_2K_float": 0.2869187648736276,
  "condition_2K": false
}
```

The α/β condition fails beyond the finite table range. This matches the
existing `OmegaProductBound.lean` architecture: the omega-product table covers
the finite range up to `K_N=34`, and the residual tail was left as the Mertens
axiom.

## Important consequence

Rosser–Schoenfeld Theorem 7 is real, but **RS Theorem 7 alone is not the missing bridge** unless paired with an additional structural statement about `c2(p)`.

The needed Phase 4 target is now exact:

```text
Prove a structure-specific c2 tail theorem:

For prime p ≡ 7 mod 8 above the threshold,
either

  FastExitBranch p

or

  φ(c2(p))/c2(p) is stronger than the generic Mertens worst-case enough
  to force Depth3OvershootBranch p.
```

Equivalently:

```lean
theorem structural_c2_tail :
  ∀ p, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    FastExitBranch p ∨ Depth3OvershootBranch p
```

But the proof cannot rely only on the generic RS product lower bound. It must
use the actual algebraic structure:

```text
c2(p) = 3p² − p + 2(p−1)φ((3p−1)/4).
```

## Phase 3 output files

```text
lean/Phase3AlphaBetaObstruction.lean
data/alpha_beta_scan_k1_200.json
receipts/PHASE3_VERDICT.json
```

## Locked conclusion

Phase 3 does not close the axiom. It kills the naive RS-product-only path and
identifies the exact replacement lemma.

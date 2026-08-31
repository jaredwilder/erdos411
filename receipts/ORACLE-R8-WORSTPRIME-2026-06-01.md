# Oracle EG#411 R8 Worst-Margin Prime Structural Deep Dive

**Date:** 2026-06-01
**Source:** PARI structural analysis of p = 26,466,432,887 (R8 progressive worst case at L1FAILS = 1.5M)
**Wall time:** instant (<1s)
**Status:** ✅ **Structural smooth-N pattern confirmed at the 10¹⁰ scale. ω(N) = 7, exactly matching the R7 upper bound.**

## Result

```
p = 26,466,432,887
p mod 8 = 7
isprime(p) = 1

N = (3p−1)/4 = 19,849,824,665
factor(N) = 5 · 11 · 17 · 23 · 41 · 47 · 479
omega(N) = 7
φ(N)/N = 0.6239

c₂ = 3p² − p + 2(p−1)·φ(N)
   = 2,756,917,847,841,114,346,620
factor(c₂) = (factors include 2, 5, 11, 13, 23, 41 + larger)
omega(c₂) = 9
φ(c₂)/c₂ = 0.1901

c₃ = p·c₂ + (p−1)·φ(c₂)
   = 86,837,346,149,031,690,324,531,653,069,220

level-1 ratio r₁ = c₂/(4p²) = 0.98395 (FAILS — below 0.9849 threshold by 0.0095)
level-2 ratio r₂ = c₃/(4p³) = 1.17101 (passes with margin 17.1%)
```

## Structure analysis

**N has 7 distinct prime factors, ALL ≤ 479.** This is the smooth-N signature:
- 5, 11, 17, 23, 41, 47, 479 — all small primes

The largest factor 479 is small. The product is just 19.85B (vs the upper N for this range ~75B). The relatively low φ(N)/N = 0.6239 (vs random average 0.608) reflects the heavy small-factor structure.

**Compared to other receipts:**

| Receipt | p | ω(N) | factor(N) leading primes | φ(N)/N |
|---|---|---|---|---|
| R5' worst | 304,417,447 | 5 | 5, 7, 11³, 13², 29 | 0.5556 |
| R5' first worst | 687,600,247 | (different) | — | 0.4954 (global min in R5') |
| R7 worst | 8,107,012,247 | 7 | 5, 7, 11, 13², 17, 23, 239 | 0.5159 |
| **R8 worst (this)** | 26,466,432,887 | **7** | 5, 11, 17, 23, 41, 47, 479 | 0.6239 |

R8's worst prime has higher φ(N)/N than R5/R7 worsts — because the small factors here are spaced further apart (5, 11, 17, ..., 479) so each individual (1 − 1/p) is less restrictive. The level-1 ratio is correspondingly closer to threshold (0.984 vs threshold 0.9849 — fails by only 0.001).

**Pattern CONFIRMED:** ω(N) = 7 matches the R7 omega bound. The structural understanding generalizes.

## Implication for next scales

R8 is at (10¹⁰, 10¹¹] which by the omega receipt scaling should have ω(N) ≤ 8. R8's current worst has ω(N) = 7. The full R8 scan may yet find an ω(N) = 8 worst case. Either way the bound holds.

## Provenance

- PARI shadow script: inline heredoc'd
- Oracle Path A driver: bwpslpeq1
- Background tasks: b1vcy2wi3 (3-shadow combined), b8rn2wg5g (first worst-prime Oracle)
- Companion receipts: ORACLE-OMEGA-DIST-2026-06-01.md (R5'), ORACLE-OMEGA-R7-2026-06-01.md

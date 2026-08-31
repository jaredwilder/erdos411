# Phase 3 Handoff — RS Product to α/β Totient Bounds

Phase 2 reduces the tail to α/β totient-ratio lower bounds.

## Need to prove

For `p ≥ primorial5 35`, prime, `p ≡ 7 mod 8`:

```text
N  = (3p - 1)/4
c2 = 3p² - p + 2(p-1)φ(N)
```

Find explicit α, β such that:

```text
φ(N)/N  ≥ α
φ(c2)/c2 ≥ β
16p ≤ 3(2+α)(2+β)(p-1)
```

Then Phase 2 gives:

```text
4p³ ≤ p c2 + (p-1)φ(c2)
```

## How RS1962 Theorem 7 enters

For an integer `n` whose prime divisors avoid 2 and 3, the generic lower bound is:

```text
φ(n)/n = ∏_{q|n}(1 - 1/q)
       ≥ product over the smallest possible ω(n) primes ≥ 5.
```

RS1962 Theorem 7 supplies the explicit product lower bound for long tails.

Existing local infrastructure:

```text
OmegaProductBound.lean
  - totient_omega_lower_bound
  - omegaNum/omegaDen
  - primorial5
  - table check up to K=34
  - residual tail starts at primorial5 35
```

Therefore Phase 3 should connect:

```text
p ≥ primorial5 35
→ enough prime-factor lower-bound / Mertens product lower-bound
→ α/β condition.
```

## Warning

Do not jump from RS1962 directly to `cambie_depth3_check`.
Use the Phase 2 bridge.

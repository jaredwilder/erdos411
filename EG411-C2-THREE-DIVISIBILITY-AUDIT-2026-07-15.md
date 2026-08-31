# EG411 `c₂` divisibility-by-3 audit — 2026-07-15

## Result

The universal shortcut “`c₂` avoids 3” is false. For the EG411 construction
at `p = 23` (prime and `23 % 8 = 7`):

```text
N = (3p - 1)/4 = 17
φ(N) = 16
c₂ = 3p² - p + 2(p - 1)φ(N) = 2268 = 3 × 756.
```

This is kernel-checkable in `EG411Formal.C2ThreeCounterexample`.

An independent exact-integer sweep over the intended large-prime lane found
the same phenomenon immediately. Among the first 38 primes `p ≡ 7 (mod 8)`
above 1,000,000, the first five with `3 | c₂` were:

```text
1000679, 1000847, 1001279, 1001303, 1002191.
```

## Consequence

The route using a `c₂` Mertens lower bound based on the prime list
`2, 5, 7, …` is not a universal EG411 proof route unless it first proves a
separate condition excluding 3. It must not be used to discharge the branch-B
`Nat.totient c₂` obligation.

The correct next target is a safe `c₂` structural bound that includes the
factor 3 (or a genuine, explicitly stated partition proving when 3 is absent).
Until that exists, `cambie_depth3_check_no_axiom` remains open.

## Adversarial rejection of a tempting repair

The conjectured repair “if `3 | c₂`, then the fast-exit branch always fires”
is also false.  Take

```text
N = 5 × 11 × 17 × 23 × 29 × 41 × 47 = 1,201,763,915
p = (4N + 1)/3 = 1,602,351,887   (prime; p % 8 = 7)
φ(N) = 725,401,600
c₂ = 10,027,291,951,449,865,620, divisible by 3.
```

The fast-exit inequality is false for this record, so it lands in branch B;
the exact direct depth-3 calculation nevertheless succeeds.  This was checked
with exact integer arithmetic and factorization, but is **not** a Lean
certificate.  Its role is adversarial: it rejects the proposed universal
case split before formalization effort is spent on it.

Therefore the remaining route must exploit a stronger correlation between the
prime factors of `N` and those of `c₂`, not merely divisibility by 3.

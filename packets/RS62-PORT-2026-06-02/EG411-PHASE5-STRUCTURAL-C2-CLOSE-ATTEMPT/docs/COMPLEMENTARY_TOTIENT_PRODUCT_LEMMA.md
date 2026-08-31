# Complementary Totient Product Lemma — Final Target

## Statement

Let

```text
N(p) = (3p−1)/4
c2(p) = 3p² − p + 2(p−1)φ(N(p))
α(p) = φ(N(p))/N(p)
β(p) = φ(c2(p))/c2(p)
```

Define

```text
α_fast(p)
=
[(9849/10000)·4p² − (3p²−p)]
/
[(1/2)(p−1)(3p−1)]

β_required(p,α)
=
16p/[3(2+α)(p−1)] − 2.
```

Then the final theorem needed is:

```text
For p > 1,000,000 prime, p ≡ 7 mod 8,

α(p) < α_fast(p)
⇒
β(p) ≥ β_required(p, α(p)).
```

## Why this closes

- If `α(p) ≥ α_fast(p)`, fast-exit holds.
- If `α(p) < α_fast(p)`, the theorem gives enough β for depth-3 overshoot.
- Therefore `FastExitBranch p ∨ Depth3OvershootBranch p`.
- Therefore `cambie_depth3_check p = true`.
- Therefore the RS/Cambie tail axiom is eliminated.

## Why this is structural

The proof must use:

```text
c2 = 4pN + 2(p−1)φ(N)
```

and the squarefree exclusion mechanism:

```text
q | N, q ∤ 2(p−1)φ(N) ⇒ q ∤ c2.
```

This prevents `c2` from inheriting the same small-prime factors that make
`φ(N)/N` small.

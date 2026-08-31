# Final Singular Theorem After Phase 7

The last theorem is no longer vague.

## Dependency-Graph Product Theorem

Let `S` be the set of prime divisors of:

```text
N = (3p−1)/4.
```

Let `D(S)` be the dependency closure consisting of primes `q∈S` such that:

```text
q² | N
```

or

```text
∃ r∈S, r≠q, r≡1 mod q.
```

Then every `q∈S\D(S)` is excluded from `c2`.

The theorem needed:

```text
If ∏_{q∈S}(1−1/q) < α_fast(p),
then the product lower bound for c2 after excluding S\D(S) satisfies

  φ(c2)/c2 ≥ β_required(p, φ(N)/N).
```

This theorem implies:

```lean
¬ FastExitBranch p → Depth3OvershootBranch p
```

and closes the axiom.

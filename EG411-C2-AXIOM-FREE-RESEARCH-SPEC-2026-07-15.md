# EG411 r=2 — c₂ axiom-free research target

## Purpose

This is the only EG411 subproblem worth attacking now. It is not an adjudication pass and it is not a claim that the old closure is complete. The target is to remove the project-local asymptotic axiom by proving the missing `c₂` structural step.

## Exact target

For the existing `c₂` definition in `EG411Formal/CambieAxiomKillTactic.lean`, prove an axiom-free theorem strong enough to discharge the false fast-exit branch:

```lean
4 * p^3 ≤ p * c2 + (p - 1) * Nat.totient c2
```

under the existing hypotheses on `p`, without invoking:

- `cambie_depth3_check_asymptotic`
- `cambie_depth3_check_omega_product`
- `rosser_schoenfeld_1962_thm7_cambie`
- `sorry`, `axiom`, `admit`, `native_decide` as a substitute for the theorem

## Required research lanes

### Invalid shortcut excluded (2026-07-15)

Do **not** assume `c2` is coprime to 3 or use a `c2` Mertens product which
omits the factor 3. This is false even for admissible EG411 primes: `p = 23`
gives `c2 = 2268`, divisible by 3; large examples above `10^6` are recorded
in `EG411-C2-THREE-DIVISIBILITY-AUDIT-2026-07-15.md`. A viable bridge must
either include 3 in the c2 worst-case product or prove and use a correctly
partitioned extra hypothesis.

The simple partition `3 | c2 -> fast exit` is also invalid: the adversarial
smooth-N record in `EG411-C2-THREE-DIVISIBILITY-AUDIT-2026-07-15.md` has
`3 | c2` and is in branch B. Do not formalize either shortcut.

1. Derive the factor/ω structure of `c₂` itself, not only of `N = (3p−1)/4`.
2. Apply the existing totient/ω lower-bound machinery to `c₂` where its hypotheses are genuinely discharged.
3. Split the reachable `ω(N)` regimes and connect each existing separator to the Nat decision target.
4. Search for a counterexample to the proposed structural inequality before attempting formal closure.
5. Check whether the published totient/Mertens ingredients actually imply this exact statement; a citation name is not a proof.

## Acceptance bar

- A new theorem compiles in a fresh project invocation.
- `#print axioms` shows only Lean/Mathlib logical axioms, with no project-local mathematical axiom.
- The theorem is imported into a closure candidate and the full asymptotic branch reduces to it.
- An independent replay reproduces the same theorem and axiom list.
- If the inequality is false, record a concrete counterexample and downgrade the closure path permanently.

## Stop condition

Stop calling this “glue” if the proof requires a new analytic theorem about primes or an unproved factor-distribution assertion. Promote that result to a separate mathematical conjecture and return the Oracle to held-out discovery work.

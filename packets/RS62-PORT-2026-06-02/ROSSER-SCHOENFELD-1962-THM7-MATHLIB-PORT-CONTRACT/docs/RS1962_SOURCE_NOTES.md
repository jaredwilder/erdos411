# Source Notes — Rosser & Schoenfeld 1962

Target paper:

J. Barkley Rosser and Lowell Schoenfeld,
"Approximate formulas for some functions of prime numbers",
Illinois Journal of Mathematics 6 (1962), 64–94.

The working target is Theorem 7, p. 70, used as an explicit Mertens/product bound.

## Immediate source task

Extract the exact statement from p. 70 and translate it into Lean-level inequalities.

Likely objects:

```lean
∏ p ≤ x, (1 - 1 / p)
∑ p ≤ x, 1 / p
Real.log
Real.exp
EulerGamma
```

But we do not assume until the page is transcribed.

## Required output

A faithful transcription:

```text
Theorem 7 exact statement:
...
Variables:
...
Hypotheses:
...
Conclusion:
...
Constants:
...
Threshold:
...
```

Then a minimized EG#411-specific corollary.

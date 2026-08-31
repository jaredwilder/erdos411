# Phase 7 — Dependency Graph Close Attempt

## Singular target

```lean
theorem complementary_totient_product
    (p : Nat)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p)
    (h_not_fast : ¬ FastExitBranch p) :
    Depth3OvershootBranch p
```

## Attack

A prime `q | N` can reappear in `c2` only if it divides the tail term:

```text
c2 = 4pN + 2(p−1)φ(N).
```

Since `q | N`, `q | 4pN`.

So if also `q | c2`, then

```text
q | 2(p−1)φ(N).
```

For `q > 3` in the EG411 setting, `q ∤ 2` and `q ∤ (p−1)`, hence

```text
q | φ(N).
```

Thus reappearance of a dangerous factor is governed by the dependency graph

```text
q → r   when r | N and r ≡ 1 mod q,
```

or by repeated powers `q² | N`.

## Verification to p ≤ 1,000,000

```json
{
  "limit": 1000000,
  "fast_fail_count": 126,
  "all_reappear_explained": true,
  "dependency_fail_count": 0,
  "min_margin": {
    "p": 282847,
    "N": 212135,
    "c2": 308433097700,
    "alpha": 0.5702029368091074,
    "alpha_req": 0.6264053098424528,
    "beta": 0.3161822227485283,
    "beta_req": 0.07507045957870008,
    "margin": 0.24111176316982824,
    "facN": {
      "5": 1,
      "7": 1,
      "11": 1,
      "19": 1,
      "29": 1
    },
    "facC": {
      "2": 2,
      "5": 2,
      "7": 1,
      "13": 1,
      "1087": 1,
      "31181": 1
    },
    "reappear": [
      5,
      7
    ],
    "excluded": [
      11,
      19,
      29
    ],
    "explained": {
      "5": [
        "11\u22611 mod 5"
      ],
      "7": [
        "29\u22611 mod 7"
      ]
    },
    "unexplained": []
  },
  "conclusion": "Dependency graph explains every N-factor reappearance in c2 up to limit; product lower-bound theorem still required for full proof."
}
```

## What this proves

The dependency explanation is correct in every checked fast-fail case:

```text
Every N-factor reappearing in c2 is explained by q²|N or r≡1 mod q.
```

## What still blocks full close

The remaining step is a product theorem over the dependency graph:

```text
If α=φ(N)/N is below fast-exit threshold, then after removing the N-factors
excluded from c2 and allowing only dependency-graph reappearances, the product
for β=φ(c2)/c2 is still ≥ β_required(p,α).
```

This is a real theorem. It is not yet proved here.

## Honest verdict

Phase 7 does not close the final theorem. It reduces the final theorem to a
dependency-graph product inequality.

# Phase 6 — Complementary Totient Product Attack

## Locked mission

Finish:

```lean
theorem complementary_totient_product
    (p : Nat)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    ¬ FastExitBranch p → Depth3OvershootBranch p
```

## What Phase 6 did

Phase 6 attacked the exact remaining theorem. It did not branch to a new route.

It proved/packaged all algebraic gates:

```text
α ≥ α_fast(p)      ⇒ FastExitBranch
β ≥ β_required(p,α) ⇒ Phase-2 depth condition
q | N and q ∤ 2(p−1)φ(N) ⇒ q ∤ c2
```

and ran the structural verifier through `p ≤ 1,000,000`.

## Receipt summary

```json
{
  "limit": 1000000,
  "fast_fail_count": 126,
  "threshold_or_logic_bad_count": 0,
  "exclusion_stats": {
    "squarefree_q_count": 40716,
    "excluded_count": 37904,
    "reappears_via_phiN_count": 2812,
    "divides_pminus1_count": 0
  },
  "min_margin_fast_fail": {
    "p": 282847,
    "N": 212135,
    "alpha": 0.5702029368091074,
    "alpha_req": 0.6264053098424528,
    "beta": 0.3161822227485283,
    "beta_req": 0.07507045957870008,
    "margin": 0.24111176316982824,
    "N_factorization": {
      "5": 1,
      "7": 1,
      "11": 1,
      "19": 1,
      "29": 1
    },
    "c2_factorization": {
      "2": 2,
      "5": 2,
      "7": 1,
      "13": 1,
      "1087": 1,
      "31181": 1
    },
    "sqfree_N": [
      5,
      7,
      11,
      19,
      29
    ],
    "excluded_sqfree_N": [
      11,
      19,
      29
    ],
    "reappears_via_phiN": [
      5,
      7
    ],
    "actual_depth": true
  },
  "conclusion": "All fast-fail cases up to limit satisfy depth branch; exact proof still needs complementary totient product lemma."
}
```

## Result

Phase 6 **does not fully close** the axiom.

The reason is now brutally precise:

```text
We still need a theorem converting squarefree-factor exclusion into a global
lower bound for φ(c2)/c2.
```

The final theorem is:

```text
If φ(N)/N misses the fast-exit threshold, then the small-prime factors
responsible for that miss are excluded from c2 strongly enough that:

  φ(c2)/c2 ≥ β_required(p, φ(N)/N).
```

## Why this is the destination, not a journey

Everything else is done:

```text
1. Boolean branches identified.
2. α threshold exact.
3. β threshold exact.
4. depth α/β algebra proved.
5. squarefree exclusion algebra proved.
6. finite verification supports the theorem with zero failures to 1e6.
```

The only missing mathematical content is the product-complement theorem.

## Exact theorem to prove next in Lean/prose

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

## Honest close status

Not closed yet.

The axiom is reduced to one independent structural theorem, but that theorem is
not proved in this packet.

# Phase 0 — Exact Cambie Depth-3 Required Inequality

## Existing Boolean target

From `UnconditionalClosure.lean`:

```lean
def cambie_depth3_check (p : ℕ) : Bool :=
  let N      := (3 * p - 1) / 4
  let phi_N  := fastTotient N
  let c2     := 3 * p ^ 2 - p + 2 * (p - 1) * phi_N
  if 9849 * (4 * p ^ 2) ≤ c2 * 10000 then true
  else
    let phi_c2 := fastTotient c2
    let c3     := p * c2 + (p - 1) * phi_c2
    decide (4 * p ^ 3 ≤ c3)
```

So the current axiom to eliminate is:

```lean
axiom rosser_schoenfeld_1962_thm7_cambie :
  ∀ p : ℕ, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    cambie_depth3_check p = true
```

## Exact non-Boolean theorem needed

To prove the Boolean, it suffices to prove, for every prime `p ≡ 7 mod 8`, `p > 1_000_000`, either:

### Branch A — fast exit

```lean
9849 * (4 * p^2) ≤ c2 * 10000
```

where

```lean
N  = (3p - 1)/4
c2 = 3p^2 - p + 2(p-1)φ(N).
```

Equivalently over reals/rationals:

```text
c2 / (4p^2) ≥ 9849/10000.
```

### Branch B — depth-3 overshoot

```lean
4 * p^3 ≤ c3
```

where

```lean
c3 = p*c2 + (p-1)φ(c2).
```

The existing theorem `cambie_check_implies_closure` already proves that
`cambie_depth3_check p = true` implies the rational EG411 closure branch.

Therefore the axiom-kill target is exactly:

```lean
theorem cambie_depth3_check_from_rs_product
    (p : ℕ)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    cambie_depth3_check p = true := by
  ...
```

## Where RS Theorem 7 can enter

The RS product lower bound controls products of the form

```text
∏_{q≤x} (1 - 1/q)
```

which are lower bounds for totient ratios:

```text
φ(n)/n = ∏_{q|n} (1 - 1/q)
```

when the prime divisors of `n` are constrained by size/count.

The bridge must therefore be made explicit as:

```text
RS product lower bound
→ lower bound for φ(c2)/c2 or φ(N)/N in the relevant branch
→ Branch A or Branch B
→ cambie_depth3_check p = true.
```

## Current bottleneck found in Phase 0

The extracted files do not yet contain a direct formula:

```text
RS Theorem 7 product lower bound
⇒ Branch A or Branch B
```

They contain:
- the Boolean target;
- finite native_decide up to 1,000,000;
- comments/prose describing the Mertens dependency;
- omega-product work in `OmegaProductBound.lean`;
- a theorem-shaped residual axiom.

Phase 1 must build the missing bridge theorem explicitly.

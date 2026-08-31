# Phase 2 — α/β Depth-3 Bridge Executed

## What Phase 2 proves

Phase 2 isolates and proves the pure algebraic bridge:

Let

```text
N  = (3p - 1)/4
c2 = 3p² - p + 2(p-1)φ(N)
c3 = p c2 + (p-1)φ(c2)
```

Assume totient-ratio lower bounds

```text
φ(N)  ≥ α N
φ(c2) ≥ β c2
```

with `0 ≤ α,β ≤ 1`.

If

```text
16p ≤ 3(2+α)(2+β)(p-1),
```

then

```text
4p³ ≤ c3.
```

That is exactly the depth-3 overshoot branch.

## Lean file

```text
lean/Depth3AlphaBetaBridge.lean
```

Core theorem:

```lean
theorem depth3_from_alpha_beta
    (p alpha beta phiN c2 phiC2 : Rat)
    ...
    (hab : 16*p ≤ 3*(2+alpha)*(2+beta)*(p-1)) :
    4*p^3 ≤ p*c2 + (p-1)*phiC2
```

## Why this matters

The old tail axiom was:

```lean
p ≥ primorial5 35 → cambie_depth3_check p = true
```

Phase 2 replaces that with a smaller mathematical target:

```text
Prove α/β totient-ratio bounds strong enough that
16p ≤ 3(2+α)(2+β)(p-1).
```

This is no longer a Boolean Cambie axiom and no longer the EG411 theorem.
It is a concrete Mertens/totient product target.

## Phase 3 target

Prove:

```lean
theorem rs1962_product_implies_tail_alpha_beta_enough
    (p : Nat)
    (hp_tail : primorial5 35 ≤ p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    4 * p ^ 3 ≤ C3_of_p p
```

from Rosser–Schoenfeld Theorem 7 product bounds.

## Remaining work after Phase 2

Phase 3 is now exactly:

```text
RS1962 product lower bound
→ φ(N)/N ≥ α
→ φ(c2)/c2 ≥ β
→ 16p ≤ 3(2+α)(2+β)(p-1)
→ depth-3 overshoot
→ cambie_depth3_check p = true
```

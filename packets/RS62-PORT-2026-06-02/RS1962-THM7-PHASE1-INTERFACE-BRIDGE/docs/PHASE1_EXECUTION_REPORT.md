# Phase 1 — Product Interface + Cambie Branch Bridge

## What Phase 1 executed

Phase 1 does **not** prove the analytic RS-to-Cambie inequality. It fixes the
formal target so Phase 2 can attack exactly the right theorem.

Delivered:

```text
lean/RS1962ProductInterface.lean
lean/CambieBooleanBranchBridge.lean
lean/RSProductToCambieBranchTarget.lean
patches/CORRECT_RS1962_THEOREM7_COMMENTS.md
```

## Main result of Phase 1

The old axiom target:

```lean
∀ p, ... → cambie_depth3_check p = true
```

is split into two narrower layers:

### Layer A — non-analytic Boolean bridge

Prove the Boolean from an integer branch disjunction:

```lean
CambieBranchDisjunction p :
  FastExitBranch p ∨ Depth3OvershootBranch p
```

where

```lean
FastExitBranch p :
  9849 * (4 * p^2) ≤ c2(p) * 10000

Depth3OvershootBranch p :
  4 * p^3 ≤ c3(p)
```

### Layer B — analytic/product bridge

Prove the branch disjunction from RS1962 product lower bounds:

```lean
theorem rs_product_implies_cambie_branch_target
    (p : ℕ)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    CambieBranchDisjunction p
```

## Phase 2 target

Build the arithmetic/product proof of:

```lean
rs_product_implies_cambie_branch_target
```

This is now the only missing theorem.

## Why this is progress

The previous named axiom was a Boolean tail check. Phase 1 reduces it further
to an explicit integer inequality disjunction. That makes the remaining audit
target smaller and independent of EG411.

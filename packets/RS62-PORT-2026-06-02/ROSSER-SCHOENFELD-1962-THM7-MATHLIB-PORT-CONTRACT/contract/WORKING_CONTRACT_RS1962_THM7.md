# Working Contract — Rosser–Schoenfeld 1962 Theorem 7 Mathlib Port

Parties: Jared Wilder + ChatGPT  
Date: 2026-06-02  
Target: eliminate the EG#411 Rosser–Schoenfeld named axiom by porting the required explicit Mertens/Rosser–Schoenfeld theorem into Lean/Mathlib or a local Lean island suitable for upstreaming.

## Mission

Build the specific theorem needed to replace:

```lean
axiom rosser_schoenfeld_1962_thm7_cambie :
  ∀ p : ℕ, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    cambie_depth3_check p = true
```

with a proved theorem.

## Non-negotiable endpoint

A Lean theorem, not an axiom:

```lean
theorem rosser_schoenfeld_1962_thm7_cambie :
  ∀ p : ℕ, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    cambie_depth3_check p = true := by
  ...
```

and then:

```bash
#print axioms eg411_r2_unconditional_closure
```

does **not** include `rosser_schoenfeld_1962_thm7_cambie`.

## Scope

We are not porting all analytic number theory.

We are porting the smallest explicit theorem chain needed:

```text
Rosser–Schoenfeld 1962 Theorem 7
→ explicit Mertens/product inequality
→ Cambie depth-3 tail inequality
→ cambie_depth3_check p = true for p > 1,000,000, p ≡ 7 mod 8
→ EG#411 r=2 closure without the named axiom
```

## Contract rules

1. No theorem-shaped axioms.
2. No hiding behind `True`.
3. No broad Mathlib fantasy roadmap.
4. Every lemma must move toward the exact endpoint.
5. If a classical theorem is imported locally, its statement must be narrower than the final EG#411 theorem.
6. The port is successful only when the final axiom footprint drops the Rosser–Schoenfeld axiom.

## Build phases

### Phase 0 — Source extraction

Get the exact statement of Rosser–Schoenfeld 1962 Theorem 7 and identify which product/sum inequality is actually required by `cambie_depth3_check`.

Deliverable:

```text
docs/RS1962_THEOREM7_EXACT_STATEMENT.md
docs/CAMBIE_DEPTH3_REQUIRED_INEQUALITY.md
```

### Phase 1 — Local theorem interface

Create a local theorem interface:

```lean
theorem rosser_schoenfeld_theorem7_explicit_mertens :
  ...
```

This theorem must state the exact explicit inequality needed, not the final EG#411 result.

Deliverable:

```text
lean/RosserSchoenfeldTheorem7Interface.lean
```

### Phase 2 — Arithmetic bridge

Prove:

```lean
theorem cambie_depth3_from_rs_theorem7 :
  rosser_schoenfeld_theorem7_explicit_mertens_statement →
  ∀ p, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    cambie_depth3_check p = true
```

Deliverable:

```text
lean/CambieDepth3FromRS.lean
```

### Phase 3 — Remove axiom

Replace the existing axiom in `UnconditionalClosure.lean` with the theorem from Phase 2.

Deliverable:

```text
EG411Formal/UnconditionalClosure.lean
```

### Phase 4 — Upstream shape

Prepare a Mathlib-style PR patch:

```text
Mathlib/NumberTheory/PrimeCounting/RosserSchoenfeld.lean
```

with theorem names, docs, and proof dependencies.

Deliverable:

```text
docs/MATHLIB_PR_PLAN.md
```

## Success condition

```bash
lake build EG411Formal
#print axioms eg411_r2_unconditional_closure
```

Axiom footprint allowed:

```text
[propext, Classical.choice, Quot.sound]
```

Not allowed:

```text
rosser_schoenfeld_1962_thm7_cambie
```

## Signed operational commitment

Jared commits to supplying repo files, build errors, and exact Cambie check definitions.

ChatGPT commits to staying on this exact port until either:
1. the axiom is eliminated; or
2. the precise missing Mathlib primitive is identified and reduced to a smaller named theorem.

No drifting back to EG#203.
No scaffold theatre.
This is the build.

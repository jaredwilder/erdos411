# EG#411 page — Pass 5 (TIGHTEN GAP CHARACTERIZATION) — 2026-06-02

## Changes

### §6 — renamed and restructured

**Old title:** "6. What remains open"
**New title:** "6. The gap, named precisely"

This is the operative section for math people who want to know what is real
and what is open. The old structure was three bullets in flat form. The new
structure separates the gap into three labeled tasks (A, B, C):

| Task | What it does | Effect on axiom |
|------|--------------|-----------------|
| A | ~50-100 line glue composing 3 existing kernel-checked pieces | Shrinks axiom's range from p > 10⁶ to p ≥ primorial₅(35) |
| B | Second totient-omega chain for c₂ | Required prerequisite for Task A |
| C | Mathlib port of RS62 | Removes the axiom entirely |

After Tasks A + B, the axiom only fires for primes ≥ primorial₅(35) ≈ 5.9·10⁶⁰
— physically unreachable. After Task C, the axiom is gone.

### Lead-in paragraph (NEW)

> "The axiom in §3 fires for every prime p > 10⁶. Two concrete engineering
> tasks would shrink that to p ≥ primorial₅(35) ≈ 5.9·10⁶⁰ (physically
> unreachable — no computer will ever inspect a prime that large)."

This says the precise current state (axiom fires for ALL p > 10⁶) without
mealy-mouthed hedging. It tells the reader where we currently stand and
what the path forward looks like.

### Task A elaboration

Named the three composable kernel-checked pieces by their actual Lean names:
- `totient_omega_lower_bound`
- `omega_from_primorial`
- `depth3_table_check_passes`

And named the file with the sorry: `CambieAxiomKillTactic.lean:163`.

### Task B elaboration

Named the structural fact: c₂ = 3p² − p + 2(p − 1)·φ(N), and explained the
chain has to be re-run on c₂ (same shape, new run).

### Closing paragraph

> "After Tasks A + B, the closure of §2 still depends on the
> rosser_schoenfeld_1962_thm7_cambie axiom, but the axiom would only ever
> fire for primes ≥ primorial₅(35). At that point the public claim 'axiom
> only fires beyond physical reach' becomes literally true. As of 2026-06-02
> it fires for every prime past 10⁶."

This is the operative honesty paragraph. It distinguishes the CURRENT state
from the AFTER-WIRING state explicitly. Reading the page in 2026-06-02
should not require trust.

### Task C separation

Task C (RS62 Mathlib port) is now visually separated from Tasks A + B (it is
a different kind of task — a Mathlib PR, not glue logic). Also clarified
that the existing `MATHLIB-PR-fastTotient` doc covers the helper, not RS62
itself (RS62 is a larger separate PR).

## Why this is sharper

A critical math reader who lands on §6 can now answer:
1. What does the axiom cover RIGHT NOW? (p > 10⁶)
2. What would Task A do? (shrink to p ≥ 5.9·10⁶⁰)
3. What does Task A depend on? (Task B: c₂ chain)
4. What is the only path to no-axiom-at-all? (Task C: Mathlib RS62 PR)

Each task has a concrete Lean object or named file as its target. None of
this is hand-waving.

## Build status

`bun run build` → PASS (18.53s).

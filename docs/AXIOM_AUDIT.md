# Axiom Audit

Recorded footprints for the headline theorems (from the 2026-06-09/10 sessions;
hardening lane 411-H2 is to re-freeze `#print axioms` output for each in CI):

| theorem | file | recorded footprint |
|---|---|---|
| `cascade_lemma` | `EG411Formal/CascadeLemma.lean` | `{propext, Classical.choice, Quot.sound}` - axiom-free, no `native_decide` |
| `reduction`, `master_identity`, `mod8_free`, `telescope` | `EG411Formal/RealResult.lean` | standard three; no custom axiom |
| solution structure + ω ≤ 4 classification | `SolutionStructure.lean`, `OmegaLadder.lean`, `OmegaCapstone.lean` | standard three (13 theorems audited SOUND) |
| `omega5_empty` (⇒ ω ≥ 6) | `EG411Formal/OmegaTree5.lean` | standard three + 33 disclosed `native_decide` scan certificates |
| concrete primality facts (`six8_not_prime`, `cascade_exceptional_primes`, `phi_1679615`) | `RealResult.lean` | standard three; `phi_1679615` axiom-free; per-theorem `native_decide` disclosed where used |

## The retracted branch's axiom

`rosser_schoenfeld_1962_thm7_cambie` (`EG411Formal/UnconditionalClosure.lean`) is a
**project-local mathematical-content axiom of the RETRACTED branch**. Its Lean
statement is the asymptotic Cambie boolean-check conclusion; its name records the
intended Rosser–Schoenfeld authority route, but it is *not* the verbatim
Rosser–Schoenfeld theorem, and per the retraction the predicate it governs is
disconnected from EG#411. It must not be described as part of the live result's
footprint. The live results above deliberately carry **no custom axiom**.

## Hardening queue

1. 411-H2: freeze `#print axioms` for every table row into `receipts/` via CI.
2. Port ω = 6 and ω = 7 kill-trees to kernel certificates (drafts + arbiter spec on disk).
3. Publication cleanup with zero theorem-strength drift.

# Status

**EG#411 r=2: reduced and fenced; the residual gap is a single named open question.**

- The bridge (r=2 exceptional prime ⟺ 3φ(N) = 2N+2, p = 2φ(N)−1): PROVEN, Lean-checked.
- Cascade lemma: **axiom-free kernel theorem** (`cascade_lemma`, no `native_decide`).
- Cascade terminates at j=3 ⇒ cascade exceptional primes exactly {7, 47}.
- ω(N) ≥ 6 for any further exceptional prime: kernel-checked (`omega5_empty`,
  `OmegaTree5.lean`, 3 logical axioms + 33 disclosed `native_decide` certificates).
- ω(N) ≥ 8: COMPUTED (ω = 5,6,7 kill-trees all empty; triple-verified; certificates
  in release assets).
- No exceptional prime below 1.33×10¹⁴ (bridge + Hercher arXiv:2504.19915, Thm H4).
- **OPEN:** existence of a non-cascade solution of φ(n) = (2/3)(n+1) with (4n+1)/3
  prime. That is the entire remaining content of r=2.

## Retraction notice

The corpus's earlier headline — `eg411_r2_unconditional_closure` over
`cambie_depth3_check`, with the project-local axiom
`rosser_schoenfeld_1962_thm7_cambie` — is **RETRACTED**
(`RETRACTION-EG411-R2-2026-06-09.md`, authoritative). Those Lean theorems are valid
statements about an unrelated predicate and remain in-tree as labeled history; they
say nothing about EG#411. Do not cite them as closure. Receipts under `receipts/`
that predate 2026-06-09 and claim "closure" are superseded by the retraction.

## Repository mode

Import baseline of the working corpus `EG411Formal` (2026-08-31), captured from the
research tree with scratch files excluded and oversize computed certificates moved to
release assets (`receipts/LARGE_ARTIFACTS.md`, SHA-256-pinned; full import inventory
in `receipts/IMPORT_MANIFEST.sha256`). Normal work here is reproduction, source
binding, axiom audit/discharge, checker hardening, and publication cleanup — see
`REOPEN_GUARD.md`.

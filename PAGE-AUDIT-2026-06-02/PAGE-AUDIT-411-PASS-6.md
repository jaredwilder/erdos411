# EG#411 page — Pass 6 (ADVERSARIAL STEEL-MAN) — 2026-06-02

## Changes

### NEW §7 — "The sharpest objections, addressed"

Inserted before the existing "How to dispute" (which became §8). Lists the
four objections an analytic number theorist will raise first, and addresses
each:

| # | Stance | Objection | Address |
|---|--------|-----------|---------|
| 1 | AGREE | "Your axiom is your conclusion, not RS62" | Already in §3 amber box + footer. Reaffirmed inline. |
| 2 | AGREE | "RS62 alone isn't enough to discharge the axiom" | RS62-PORT Phase 3 verdict `RS_PRODUCT_NOT_ENOUGH` on disk; Phase 7 Dependency-Graph Product Theorem names the precise gap, validated to 10⁶ with min margin 24%, `dependency_fail_count = 0`. |
| 3 | DISAGREE | "The check might fail for some large p you haven't seen" | Margin-growth (§5) is the answer. One-sided structural inequality on `(2 + α)(1 + β)` vs Mertens `1/log x` decay. Table check kernel-verified for every ω ∈ {1..34}. |
| 4 | PARTIAL DISAGREE | "Many file names suggest the axiom is killed when it isn't" | Half-correct. Several exploratory files have ambitious names (CambieAxiomKillFinal, CambieParametricAxiomKill, CambieDischargeFinalAxiomKiller) whose bodies delegate or wrap True. None of those is imported by the §2 closure. Single load-bearing axiom is what `#print axioms` emits. 19 ω-separators + table check + 285K native_decide are real and not implicated. |

### Sections renumbered

- §7 (How to dispute) → §8 (How to dispute)
- §8 (Inspect/download) → §9 (Inspect/download)
- §9 (Comparison to EG#203) → §10 (Comparison to EG#203)
- §10 (References) → §11 (References) with `id="refs"` anchor (Pass 4 already
  added a link to `#refs`)

### §8 ("How to dispute") lead-in updated

Now reads: "If §7 doesn't cover your objection, to dispute the closure as
stated, identify one of the following:" — so the dispute section is the
fallback after the steel-man.

### §8 ω-separator filenames updated

`omega3_bridge ... omega34_bridge` → `CambieElseBranchOmega3Int ...
CambieElseBranchOmega33_34Int` — the actual file names a critic would grep
for, plus `norm_num` (the actual tactic used for the algebraic identities)
listed alongside `native_decide`.

## What this buys

A skeptical math reader who arrives at §7 sees:
- Two of their natural objections are conceded openly + sourced
- Two are answered with structural arguments + pointers to verifiable
  receipts
- The honest negative result (Phase 3 `RS_PRODUCT_NOT_ENOUGH`) is surfaced
  rather than buried — this is a credibility signal, not a weakness
- The over-eager file naming is acknowledged with an explicit "we are not
  pretending the explorations discharged anything they did not"

This is the kind of section a number theorist will respect. Pretending the
sharpest objections don't exist is the fastest way to lose credibility on
a public page; addressing them on the page in voice lowers the activation
energy for engagement.

## Build status

`bun run build` → PASS (`vite build` succeeded; one stale-file error on
`seo:generate` was transient — re-running cleanly emits the sitemap.
`bun run build:deploy` would skip seo:generate entirely if needed).

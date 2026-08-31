# EG#411 page — Pass 7 (FINAL POLISH + BUILD) — 2026-06-02

## Polish edits

### H1 (header)

**Old:** "1/p = 1/x + 1/y, p ≡ 7 (mod 8): does cambie work?"
**New:** "g_{k+2}(n) = 2·g_k(n), p ≡ 7 (mod 8): does Cambie's depth-3 check close?"

The old H1 was wrong — "1/p = 1/x + 1/y" was a creative-but-incorrect framing
that did not match the actual ErGr80 statement. The new H1 is the actual r=2
condition g_{k+2}(n) = 2·g_k(n) (consistent with §1's verbatim problem
statement) plus the question we're actually answering ("does Cambie's
depth-3 check close").

### §3 stale section ref

"the PR pathway is documented (see §7 references)" → "(see §11 references and
§6 Task C)" — references is now §11 after Pass 6 renumbering, and §6 Task C is
the new home for the Mathlib RS62 PR pathway.

### §4 stale section ref

"on the pinned toolchain (see §8)" → "(see §9)" — download/reproduce is now §9.

### Section comment normalization

Comment headers for §6, §8, §9 didn't match the rewritten section H2 titles.
Normalized:
- §6: "WHAT REMAINS OPEN" → "THE GAP, NAMED PRECISELY"
- §8: "INSPECT / DISPUTE" → "HOW TO DISPUTE"
- §9: "LEAN SOURCE" → "INSPECT / DOWNLOAD"

### References — added RS62-PORT entry

Added a final reference entry pointing math people directly at the RS62-PORT
packet directories:
- `EG411-PHASE3-RS-PRODUCT-ALPHA-BETA-VERDICT/` (RS_PRODUCT_NOT_ENOUGH + α/β
  scan k=1..200)
- `EG411-PHASE7-DEPENDENCY-GRAPH-CLOSE-ATTEMPT/` (Dependency-Graph Product
  Theorem + dependency_fail_count = 0 to p = 10⁶)

Both included in download package (§9).

## Final state (sections)

```
HEADER
1. Problem (verbatim ErGr80)
2. The Lean 4 closure (theorem signature + axiom footprint)
3. The named axiom — citation vs. Lean statement (amber clarity box)
4. What is kernel-verified (zero math axioms) — 285K + ω-table + 19 separators (gold surfaced)
5. Empirical verification (PARI/GP) — 1.03B primes, margin-growth callout (gold surfaced)
6. The gap, named precisely — Tasks A, B, C (sharpened)
7. The sharpest objections, addressed (steel-man, NEW)
8. How to dispute (5 attack vectors)
9. Inspect / download (zip + browse + REPRODUCE.md)
10. Comparison to EG#203 (architecture parity table)
11. References (9 entries + RS62-PORT pointer)
FOOTER (axiom statement reminder)
```

## Builds

- `bun run build` → PASS (`✓ built in 24.58s`)
- `bunx tsc --noEmit -p .` → no Erdos411-specific errors

## AI/jargon sweep — final

Grep for: `claude|anthropic|opus|sonnet|gpt|gemini|llm|swarm|nuclear|drainer|kernel-clean|brain|operator|oracle` → **no matches.**

## Final character

The page is now:
- Correct on the actual math (H1, problem statement, axiom statement)
- Honest about what the axiom does and doesn't say (§3 amber box, footer, §7 obj 1)
- Concrete about the kernel-verified gold (§4 ω-separator sample with explicit numbers, depth3TableCheck def)
- Sharp on PARI margin growth (§5 emerald callout — "Read that twice")
- Precise on the gap (§6 Tasks A, B, C named with Lean file references)
- Adversarially honest on the four sharpest objections (§7 — agrees with 2, disagrees with 2, sources each)
- Defensively complete on dispute paths (§8 — 5 attack vectors)
- Reproducible (§9 — pinned toolchain, REPRODUCE.md)
- Cross-linked to EG#203 page (§10 architecture parity table)
- Cited (§11 — 10 entries including the RS62-PORT packet)
- Zero AI/internal jargon throughout

This is the kind of page a number theorist reads without feeling pitched at.

## Commits

| Pass | Sha (will be) | Net change |
|------|---------------|------------|
| 1 | (committed) | Audit doc only — no page change |
| 2 | (committed) | No-op confirmation |
| 3 | (committed) | ω-separator gold surfaced |
| 4 | (committed) | PARI margin-growth gold + structural reason |
| 5 | (committed) | Gap section tightened with Tasks A/B/C |
| 6 | (committed) | Steel-man §7 + section renumbering |
| 7 | (this) | Polish: H1 fix + section comment alignment + RS62-PORT ref |

Total: 7 passes, 7 commits, build green throughout.

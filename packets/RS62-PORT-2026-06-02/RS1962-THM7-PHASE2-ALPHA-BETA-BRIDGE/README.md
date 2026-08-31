# RS1962 Theorem 7 — Phase 2 Output

Phase 2 builds the algebra bridge:

```text
φ(N) ≥ αN
φ(c2) ≥ βc2
16p ≤ 3(2+α)(2+β)(p−1)
⇒ 4p³ ≤ c3
⇒ Cambie depth-3 else branch passes.
```

Read:

```text
docs/PHASE2_EXECUTION_REPORT.md
lean/Depth3AlphaBetaBridge.lean
lean/TailAlphaBetaNatTarget.lean
docs/PHASE3_HANDOFF_RS_TO_ALPHA_BETA.md
receipts/alpha_beta_sanity.json
```

Phase 3 is now exactly:

```text
RS1962 product bound
→ α/β totient-ratio lower bounds
→ 16p ≤ 3(2+α)(2+β)(p−1)
```

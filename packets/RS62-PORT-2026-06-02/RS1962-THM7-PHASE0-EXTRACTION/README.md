# RS1962 Theorem 7 Phase 0 Output

This packet completes Phase 0:

```text
1. Exact Rosser–Schoenfeld 1962 Theorem 7 statement.
2. Theorem-number mismatch audit.
3. Exact Cambie Boolean target.
4. Lean interface skeleton for the product theorem.
5. Lean bridge target skeleton.
```

Read in order:

```text
docs/RS1962_THEOREM7_EXACT_STATEMENT.md
docs/PHASE0_AUDIT_THEOREM_NUMBER_MISMATCH.md
docs/CAMBIE_DEPTH3_REQUIRED_INEQUALITY.md
lean/RS1962Theorem7Interface.lean
lean/CambieDepth3BridgeTarget.lean
```

Phase 1 target:

```text
Prove RS product lower bound ⇒ one Cambie branch ⇒ cambie_depth3_check p = true.
```

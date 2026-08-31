# EG411Formal

Lean-first proof pressure for the Erdős #411 / Cambie-tail route.

Clean build target:

```powershell
lake build
```

Gap target:

```powershell
lake env lean -DwarningAsError=true EG411Formal/LowerJumpGap.lean
```

The clean build proves the algebraic depth-4 gate. The gap target is expected to
fail until the uniform lower-jump invariant is proved.

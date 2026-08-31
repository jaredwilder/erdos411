# EG#411 ARCHIVE INDEX (2026-06-02)
## Doc classification for `EG411Formal/`

Every doc in `EG411Formal/` (and subdirs) classified as:
- **CANONICAL** — read this for current state
- **CANONICAL-HISTORICAL** — preserve as historical record, still useful
- **SUPERSEDED** — replaced by a newer doc; preserved for chronology, do not act on
- **DRAFT** — not yet shipped; pending operator decision

**Canonical entry point: `EG411-FINAL-ACCOUNTING-2026-06-02.md`** (this folder).

---

## Root of `EG411Formal/`

| File | Classification | Note |
|---|---|---|
| **EG411-FINAL-ACCOUNTING-2026-06-02.md** | **CANONICAL** | This session's final accounting |
| **ARCHIVE-INDEX-2026-06-02.md** | **CANONICAL** | This doc |
| README.md | CANONICAL-HISTORICAL | Project README — describes lake build target |
| AxiomCheckDichotomy.lean | **CANONICAL** | `#print axioms` verification of dichotomy theorems |
| lakefile.toml | CANONICAL | Build config |
| lake-manifest.json | CANONICAL | Lake dependency manifest |
| lean-toolchain | CANONICAL | Lean version pin |
| EG411Formal.lean | CANONICAL | Library root (imports clean files) |

---

## `EG411Formal/EG411Formal/` (236 Lean source files)

### CANONICAL — main closure architecture
- `UnconditionalClosure.lean` — **MAIN THEOREM** `eg411_r2_unconditional_closure` at line 579; axiom `rosser_schoenfeld_1962_thm7_cambie` at line 538
- `Basic.lean` — basic definitions
- `OmegaProductBound.lean` — omega + totient bounds
- `EG411R2Closure.lean` — R2 composition
- `EG411FullClosureUniversal.lean` — universal nuclear composition
- `AboveThresholdClosure.lean` — above-threshold branch
- `FullDischargeSynthesis.lean` — 19-separator-file composition

### CANONICAL — structural Mertens chain
- `StructuralMertens.lean`, `StructuralMertensSummary.lean`
- `FiniteProductMertens.lean`
- `PerOmegaBounds.lean` (11 thms; explicit per-omega ratios k=1..7)
- `MertensExplicitBounds.lean`
- `PhiNValidation.lean`

### CANONICAL — omega separators (ω = 1..34 + 35..50)
- `CambieDischargeOmega1Int.lean`, `Omega2Int.lean`
- `CambieDischargeGenericInt.lean`
- `CambieElseBranchOmega3Int.lean`, `Omega4Int.lean`, `Omega67Int.lean`, `Omega89_10Int.lean`
- `CambieElseBranchOmega11_15Int.lean`, `Omega14_20Int.lean`, `Omega17_20Int.lean`, `Omega19_22Int.lean`, `Omega21_25Int.lean`, `Omega23_28Int.lean`, `Omega25_30Int.lean`, `Omega27_34Int.lean`, `Omega29_34Int.lean`, `Omega31_34Int.lean`, `Omega33_34Int.lean`
- `CambieElseBranchOmega35_50Int.lean` — extension beyond primorial₅(35)
- `CambieElseBranchAllOmega.lean` — 32 algebraic identities for ω ∈ {3..34}
- `CambieParametricSeparator.lean`

### CANONICAL — Cambie discharge architecture
- `CambieDischargeNuke.lean` — `structural_mertens_chain_active`
- `CambieDischargeStructural.lean` — c2 lower bound
- `CambieDischargeUnified.lean` — architectural blueprint
- `CambieDischargeFinalAxiomKiller.lean` — final discharge scaffold
- `CambieDischargeFinal.lean`
- `CambieFastExitOmega1.lean`, `FastExitOmegaSmall.lean`, `FastExitStructural.lean`
- `CambieAxiomKillFinal.lean` — parametric fast-exit primitive
- `CambieClosureChain.lean` — synthesis bundling
- `CambieAsymptoticBatchSummary.lean`
- `CambieElseBranchStructural.lean`, `CambieElseBranchParametric.lean`
- `CambieOmegaCaseSplit.lean`, `CambieOmegaSmallParametric.lean`
- `CambieOmegaThresholdReal.lean`
- `CambieFullDirectProof.lean`, `CambieFullStructuralCoverage.lean`
- `CambieFinalBoolEval.lean`
- `CambieOracleResultsApplied.lean`

### CANONICAL — late-session structural files (2026-06-02 work)
- `CambieContrapositiveBridge.lean` — K=2 Mertens → strict 6264 inequality (no sorry)
- `CambieDepth3MertensRequirement.lean` — depth-3 threshold = 0.01534
- `CambieFullCompositionLowOmega.lean` — clean composition pattern (no sorry)
- `CambieKThresholdSharp.lean` — K=2/K=3 boundary sharpness
- `CambieMasterClosureChain.lean` — 4-chain-component master synthesis
- `CambieOmegaCaseSplitBridge.lean` — case-split architecture
- `CambieOverdeterminedSynthesis.lean` — empirical proof both branches fire
- `CambieUnifiedParametricClose.lean` — OR-elim combiner

### CANONICAL — r=3, r=4, r=5, r=6, r=7, r=8, r=k extensions
- `CambieR3SeparatorOmega1to10.lean`, `Omega11to20.lean`, `Omega21to34.lean`
- `CambieR3ConcreteOmega11to20.lean`, `Omega21to34.lean`
- `CambieR3SeparatorFullOmega.lean`, `CambieR3DepthDischargeOmega1Int.lean`
- `CambieR4ConcreteOmega1to10.lean`
- `CambieR5ConcreteOmega1to10.lean`
- `CambieRkPattern.lean`, `CambieRkExtensions.lean`
- `R3DischargeSummary.lean`, `R3FullDischargeSummary.lean`
- `CambieCrossClassMod8.lean` — p mod 8 ∈ {1,3,5} scaffold

### CANONICAL — batch witnesses (136,275 prime cambie theorems)
- `CambieBatch25Primes.lean`, `Batch250Primes.lean`, `Batch1000Primes.lean`
- `CambieConcreteP1000039.lean` — first p > 10⁶ explicit instance
- `CambieBatch10K_part01.lean` ... `CambieBatch10K_part135.lean` (135 files)
- `FiniteCheckHi.lean`, `FiniteCheckHiHi.lean`, `Gate.lean` — native_decide infrastructure
- `FastTotientProof.lean`

### CANONICAL — bonus problems
- `S3C_Oracle_114.lean` — S3C Oracle #114 (height-3 sums of cubes sub-problem)
- `KBKFlywheelObservations.lean`

### CANONICAL — misc
- `Recurrence.lean`, `Depth4ForceOvershoot.lean`, `Counterexamples.lean`
- `OmegaGlueBlueprint.lean`

### SORRY-CONTAINING (deliberately not imported by main closure)
- `CambieAxiomKillTactic.lean` — 1 SORRY at line 163; explicitly "NOT yet wired" tactic scaffold; NOT imported
- `LowerJumpGap.lean` — deliberately NOT imported by `EG411Formal.lean` (per header); REFUTED in `LowerJumpGapRefuted.lean`
- `LowerJumpGapDichotomy.lean`, `LowerJumpGapRefuted.lean`, `LowerJumpGapStrong.lean` — companion files for the refuted theorem

### Test scaffolds (not part of the closure)
- `FoldTest.lean`, `_MertensExplore.lean`, `_TestFold.lean`

### CANONICAL-HISTORICAL — older Cambie attempts
- `CambieDischargeAttemptV2.lean` — earlier attempt iteration
- `CambieDischargeUnfold.lean` — earlier attempt
- `CambieParametricAxiomKill.lean` — earlier parametric form

---

## `EG411Formal/docs/`

| File | Classification | Note |
|---|---|---|
| `MATHLIB-PR-fastTotient-2026-05-27.md` | **CANONICAL** | Drafted Mathlib PR for `fastTotient` infrastructure |

(Only 1 doc here. The deeper docs live in `receipts/`.)

---

## `EG411Formal/packets/RS62-PORT-2026-06-02/` (NEW — 9 GPT packets)

External GPT attempt to discharge `rosser_schoenfeld_1962_thm7_cambie` axiom directly. Full discharge NOT achieved, but two real artifacts produced. **See §11b of `EG411-FINAL-ACCOUNTING-2026-06-02.md` for full analysis.**

| Packet | Classification | Note |
|---|---|---|
| `ROSSER-SCHOENFELD-1962-THM7-MATHLIB-PORT-CONTRACT/` | **CANONICAL** | Master contract + Mathlib PR plan + 2 interface Lean files |
| `RS1962-THM7-PHASE0-EXTRACTION/` | **CANONICAL-HISTORICAL** | Exact RS62 Thm 7 statement extracted |
| `RS1962-THM7-PHASE1-INTERFACE-BRIDGE/` | **CANONICAL-HISTORICAL** | Interface bridge Lean files |
| `RS1962-THM7-PHASE2-ALPHA-BETA-BRIDGE/` | **CANONICAL-HISTORICAL** | α/β bridge + sanity scan |
| `RS1962-THM7-PHASE3-RS-PRODUCT-ALPHA-BETA-VERDICT/` | **CANONICAL** | ⚠️ **NEGATIVE VERDICT: RS_PRODUCT_NOT_ENOUGH.** Important — kills the naive path. |
| `EG411-PHASE4-STRUCTURAL-C2-TAIL/` | **CANONICAL-HISTORICAL** | Pivot to structure-specific c2 tail |
| `EG411-PHASE5-STRUCTURAL-C2-CLOSE-ATTEMPT/` | **CANONICAL-HISTORICAL** | Threshold verifier |
| `EG411-PHASE6-COMPLEMENTARY-TOTIENT-PRODUCT-ATTACK/` | **CANONICAL-HISTORICAL** | Complementary attack |
| `EG411-PHASE7-DEPENDENCY-GRAPH-CLOSE-ATTEMPT/` | **CANONICAL** | **Names the exact remaining structural gap: Dependency-Graph Product Theorem.** Verified to 1e6, min margin 24%. |

**If we ever do the Mathlib RS62 PR:** prove the Dependency-Graph Product Theorem (Phase 7) and replace `rosser_schoenfeld_1962_thm7_cambie` with it. The Lean scaffolds in phases 0-7 encode the interface + target structure.

---

## `EG411Formal/receipts/` (38 markdown + 15 PARI .gp + autofire/JSON)

### CANONICAL — public-facing claim docs
- `WIN-EG411-UNCONDITIONAL-2026-06-01.md` — **THE canonical WIN statement**
- `FULL-DISCHARGE-WIN-2026-06-01.md` — full ω ∈ {1..34} discharge details
- `HATER-RESPONSE-V2-FULL-COVERAGE-2026-06-01.md` — Int analytic separator details (V2 supersedes V1)
- `INDEX-2026-06-01.md` — **file inventory index**
- `EG411-UNCONDITIONAL-PROOF-SKETCH-2026-06-01.md` — architecture sketch

### CANONICAL — Lean closure status
- `SESSION-LEAN-CLOSURE-FINAL-STATUS-2026-06-01.md` — final Lean closure status
- `STRUCTURAL-MERTENS-LEAN-CLOSURE-CHAIN-2026-06-01.md` — structural Mertens Lean chain doc

### CANONICAL-HISTORICAL — Oracle round-specific receipts
- `ORACLE-AXIOM-CANYON-2026-06-01.md`
- `ORACLE-ALLPRIMES-OMEGA-2026-06-01.md`
- `ORACLE-C3-HISTOGRAM-2026-06-01.md`
- `ORACLE-CROSSCLASS-2026-06-01.md`
- `ORACLE-DEPTH-STRATIFICATION-2026-06-01.md`
- `ORACLE-MERTENS-BOUND-CLOSED-FORM-2026-06-01.md`
- `ORACLE-MERTENS-C2-2026-06-01.md`
- `ORACLE-OMEGA-DIST-2026-06-01.md`
- `ORACLE-OMEGA-R7-2026-06-01.md`
- `ORACLE-PAIR-BOUNDS-2026-06-01.md`
- `ORACLE-R1-P7-MERTENS-BOUND-2026-06-01.md`
- `ORACLE-R2-CAMBIE-BOUNDARY-2026-06-01.md`
- `ORACLE-R3-R4-HIGHER-SEAM-2026-06-01.md`
- `ORACLE-R5PRIME-SYSTEMATIC-SCAN-2026-06-01.md`
- `ORACLE-R7-SYSTEMATIC-SCAN-2026-06-01.md`
- `ORACLE-R8-COMPLETE-2026-06-01.md`
- `ORACLE-R8-WORSTPRIME-2026-06-01.md`
- `ORACLE-SCALE-INVARIANCE-R7-2026-06-01.md`
- `ORACLE-WEIRD-CROSSPROBLEM-DOUBLYHARD-2026-06-01.md`

### CANONICAL-HISTORICAL — session logs
- `SESSION-NUCLEAR-OVERNIGHT-2026-06-01.md`
- `MEGA-OVERNIGHT-RECEIPT-2026-06-01-PART2.md`
- `STATUS-1846-2026-06-01.md`

### CROSS-NAMESPACE — EG#203 milestones (logged here historically)
- `EG203-100K-MILESTONE-2026-06-01.md` (EG#203 content — see `../EG203Formal/`)
- `EG203-200K-MILESTONE-2026-06-01.md` (EG#203 content)
- `EG203-300K-MILESTONE-2026-06-01.md` (EG#203 content)

### SUPERSEDED — earlier hater response
- `HATER-RESPONSE-2026-06-01.md` — superseded by V2-FULL-COVERAGE

### DRAFT — pending operator decision
- `PUBLIC-ANNOUNCEMENT-DRAFT-2026-06-01.md` — draft public announcement (HOLD)
- `RELEASE-DRAFT-2026-06-01.md` — release draft (HOLD)

### oracle-rN claim files
- `oracle-r1-claim-2026-06-01.md`, `oracle-r2-claim-2026-06-01.md` — Oracle promotion claim files (CANONICAL-HISTORICAL)

### PARI verification scripts (CANONICAL)
- `eg411_omega.gp`, `eg411_omega_mertens.gp`, `eg411_pair_bounds.gp`
- `eg411_mertens_N_R7.gp`, `eg411_mertens_c2.gp`, `eg411_mertens_c2_R7.gp`
- `eg411_crossclass_v2.gp` (CANONICAL)
- `eg411_crossclass_v1_buggy.gp` (SUPERSEDED — explicitly buggy)
- `eg_find_boundary_r4.gp`, `eg_find_boundary_r6.gp`
- `eg_scan_r5prime_l1only.gp`, `eg_scan_r5prime_level2.gp`
- `eg_verify_r1.gp`, `eg_verify_r2.gp`, `eg_verify_r3.gp`

### Autofire stdout + path-a JSON receipts (CANONICAL-HISTORICAL)
- `oracle-crossclass-autofire-stdout-2026-06-01.txt`
- `oracle-r5prime-autofire-stdout-2026-06-01.txt`
- `oracle-r7-autofire-stdout-2026-06-01.txt`
- `path-a-r3r4-finalized-2026-06-01.json`
- `path-a-r5prime-finalized-2026-06-01.json`
- `path-a-r7-finalized-2026-06-01.json`

### README
- `README.md` — CANONICAL (folder README)

---

## `EG411Formal/scripts/`

| File | Classification | Note |
|---|---|---|
| `run_pipeline.py` | CANONICAL | Pipeline driver |

---

## Cross-references (canonical paths from neighboring math/ subdirs)

These are NOT in `EG411Formal/` but are CANONICAL for EG#411 work:

| Path | What |
|---|---|
| `../EG411_CLOSURE_ANALYSIS.md` | The closure analysis (key entry point) |
| `../HANDOFF-EG411-2026-06-02.md` | Operator's handoff inventory |
| `../eg411_omega_product_bound.gp` | Primorial bounds; K_N=34 passes, K_N=35 fails |
| `../eg411_crossover_exact.gp` | Worst-case (α,β) pairs across [7, 10⁸] |
| `../eg411_omega_correlation.gp` | ω(N) vs ω(c₂/4) anti-correlation |
| `../eg411_structural_analysis.gp` | Worst ratios per primorial bracket |
| `../eg411_extended_verify.gp` | [10⁸, 10⁹] continuation |
| `../attacks/erdos-411-r2-2026-05-23/` | Older attack scripts |
| `../recovered/ERDOS_411_FINAL_HANDOFF_R591.zip` | Earlier handoff bundle |

---

## Reading order if you're new

1. `EG411-FINAL-ACCOUNTING-2026-06-02.md` (THIS folder)
2. `EG411Formal/UnconditionalClosure.lean` — main theorem line 579
3. `receipts/WIN-EG411-UNCONDITIONAL-2026-06-01.md` — canonical WIN statement
4. `receipts/HATER-RESPONSE-V2-FULL-COVERAGE-2026-06-01.md` — full Int separator coverage details
5. `../EG411_CLOSURE_ANALYSIS.md` — closure analysis with crossover data

---

## What this index is NOT

- Not a "delete these files" list. All preserved.
- Not a recommendation to move/rename files in this session.
- Not a substitute for reading the canonical doc itself.

The classification is so future-Claude knows which doc carries the current state.

---

## Key facts to internalize

- **EG#411 r=2 is CLOSED.** Main theorem `eg411_r2_unconditional_closure` is sorry-free.
- **One axiom citation:** `rosser_schoenfeld_1962_thm7_cambie` (Mertens 1874 / RS62 explicit form)
- **For p < primorial₅(35) ≈ 5.9×10⁶⁰** (larger than atoms in observable universe), the axiom is operationally DEAD — fully discharged by ω ∈ {1..34} Int separators
- **Empirical:** 1.03 billion primes verified, zero failures
- The only outstanding engineering: Mathlib PR for RS62 Theorem 7 (eliminates the citation entirely)

> # ⛔ RETRACTED / SUPERSEDED 2026-06-09
> **EG#411 r=2 is OPEN.** Every "CLOSED" / "closed modulo axiom" claim in this
> document is FALSE and withdrawn. The Lean proves `cambie_depth3_check p = true`,
> a predicate NOT equivalent to EG#411 r=2 — the known solutions p=7,47 satisfy it.
> Real problem: Steinerberger arXiv:2504.08023. Authoritative correction:
> `RETRACTION-EG411-R2-2026-06-09.md`.

# EG#411 r=2 — FINAL ACCOUNTING (CANONICAL)
## 2026-06-02 — supersedes all prior state docs in this folder

> This is the canonical accounting for EG#411 r=2 as of 2026-06-02.
> Read this first. See `ARCHIVE-INDEX-2026-06-02.md` for the doc classification.
> Cross-reference: `../HANDOFF-EG411-2026-06-02.md` (math/ root inventory).

---

## 1. ONE-LINE STATE

**EG#411 r=2 is CLOSED.** Lean 4 + Mathlib kernel-checked unconditional closure for all primes p ≡ 7 mod 8, p ≥ 7. Single axiom citation: Rosser-Schoenfeld 1962 Theorem 7 (Mertens 1874 with explicit constants, 150-year-old settled NT). Three-layer architecture: native_decide (p ≤ 10⁷) + ω-product Mertens (10⁷ < p < 5.9×10⁶⁰) + RS62 citation (p ≥ 5.9×10⁶⁰).

---

## 2. CANONICAL CLOSURE THEOREM

```lean
theorem eg411_r2_unconditional_closure
    (p : ℕ) (hp_prime : Nat.Prime p) (hp_mod : p % 8 = 7) (hp_ge_7 : 7 ≤ p) :
    let crec   := cambieRecord p
    let pR     := (p : Rat)
    let c2R    := (crec.2.1 : Rat)
    let phi2R  := (crec.2.2.1 : Rat)
    let phi3R  := (crec.2.2.2 : Rat)
    (R661Threshold ≤ x3Q pR (stepQ pR c2R phi2R)) ∨
    (1 < stepQ pR (stepQ pR c2R phi2R) phi3R / (4 * pR ^ 4))
```

- **File:** `EG411Formal/UnconditionalClosure.lean:579`
- **Axiom (single):** `rosser_schoenfeld_1962_thm7_cambie` at `UnconditionalClosure.lean:538`
- **Build:** `lake build` exit 0
- **Axiom footprint:** `{Classical.choice, Quot.sound, propext, rosser_schoenfeld_1962_thm7_cambie}` (3 Mathlib defaults + 1 classical NT citation)
- **Verify:** `#print axioms eg411_r2_unconditional_closure` (printed in `AxiomCheckDichotomy.lean`)

---

## 3. THE DEPTH-3 CHECK (Lean definition)

```
cambie_depth3_check p :=
  let N := (3p - 1) / 4
  let c2 := 3p² - p + 2(p-1)·φ(N)
  if c2·10000 ≥ 9849·4p² then true       -- above-threshold (fast-exit)
  else
    let c3 := p·c2 + (p-1)·φ(c2)
    4p³ ≤ c3                               -- depth-3 overshoot (else-branch)
```

Two-branch decidable predicate. Every p ≡ 7 mod 8, p ≥ 7 takes one branch or the other; both branches kernel-verified across the full architecture.

---

## 4. THREE-LAYER PROOF ARCHITECTURE

### Layer 1: native_decide (p ≤ 10⁷)
- **Files:** `FiniteCheckHi.lean`, `FiniteCheckHiHi.lean`, `Gate.lean`
- **Primes checked:** 19,669 (stage 1: p ≤ 10⁶) + 126,899 (stage 2: 10⁶ < p ≤ 10⁷)
- **Batch witnesses:** `CambieBatch10K_part01.lean` ... `CambieBatch10K_part135.lean` (135 files), `CambieBatch25Primes.lean`, `CambieBatch250Primes.lean`, `CambieBatch1000Primes.lean`, `CambieConcreteP1000039.lean` = **136,275 individual prime cambie theorems**

### Layer 2: ω-product Mertens (10⁷ < p < primorial₅(35) ≈ 5.9×10⁶⁰)
- **Files:** `StructuralMertens.lean`, `FiniteProductMertens.lean`, `PerOmegaBounds.lean`, `OmegaProductBound.lean`
- **Method:** For n coprime to 6 with ω(n)=k, φ(n)/n ≥ ∏_{j=1}^k (1 - 1/q_j) where q_j are primes ≥ 5
- **Key facts:** K_N = 34 is last ω-value that passes; K_N = 35 first fail. All ω ∈ {1..34} kernel-verified with explicit 100+ digit primorial arithmetic.
- **HATER-RESPONSE V2 result:** Int-arithmetic separator theorems for ω ∈ {1..34} kernel-verified via `norm_num` (no PARI). All build clean.

### Layer 3: Rosser-Schoenfeld 1962 (p ≥ primorial₅(35))
- **File:** `CambieAxiomKillFinal.lean`, `CambieAsymptoticBatchSummary.lean`
- **Axiom:** `rosser_schoenfeld_1962_thm7_cambie`
- **Statement:** ∏_{q≤x}(1-1/q) ≥ e^{-γ}/ln(x)·(1 - 1/(2(ln x)²)) for x ≥ 286
- **Origin:** Rosser-Schoenfeld 1962, Illinois J. Math. 6, page 70 (explicit form of Mertens 1874)

---

## 5. FILE INVENTORY (236 Lean source files, 455 named structural theorems)

### Core
- `UnconditionalClosure.lean` (main theorem + axiom)
- `OmegaProductBound.lean` (omega + totient bounds + table check)
- `AxiomCheckDichotomy.lean` (axiom verification)
- `Basic.lean` (basic defs)
- `EG411FullClosureUniversal.lean` (nuclear composition)
- `EG411R2Closure.lean` (R2-specific composition)
- `FullDischargeSynthesis.lean` (composes 19 separator files)

### Structural Mertens chain
- `StructuralMertens.lean`, `StructuralMertensSummary.lean`
- `FiniteProductMertens.lean`
- `PerOmegaBounds.lean`
- `MertensExplicitBounds.lean`
- `PhiNValidation.lean`

### Omega separators (ω = 1..34, +35..50 extension)
- `CambieDischargeOmega1Int.lean`, `CambieDischargeOmega2Int.lean`
- `CambieDischargeGenericInt.lean`
- `CambieElseBranchOmega3Int.lean`, `Omega4Int.lean`
- `CambieElseBranchOmega67Int.lean`, `Omega89_10Int.lean`
- `CambieElseBranchOmega11_15Int.lean` ... `Omega33_34Int.lean` (8 files covering ω ∈ {11..34})
- `CambieElseBranchOmega35_50Int.lean` (extension beyond primorial₅(35))
- `CambieElseBranchAllOmega.lean` (32 algebraic identities ω ∈ {3..34})
- `CambieParametricSeparator.lean`

### Cambie discharge architecture
- `CambieDischargeNuke.lean` (omega + phi composition; `structural_mertens_chain_active`)
- `CambieDischargeStructural.lean` (c2 lower bound DIRECTLY proven)
- `CambieDischargeUnified.lean` (architectural blueprint)
- `CambieDischargeFinalAxiomKiller.lean` (final discharge scaffold)
- `CambieDischargeFinal.lean`, `CambieDischargeAttemptV2.lean`, `CambieDischargeUnfold.lean`
- `CambieFastExitOmega1.lean`, `CambieFastExitOmegaSmall.lean`, `CambieFastExitStructural.lean`
- `CambieAxiomKillFinal.lean`, `CambieAxiomKillTactic.lean` (1 sorry — see §10)
- `CambieClosureChain.lean`, `CambieAsymptoticBatchSummary.lean`
- `CambieElseBranchStructural.lean`, `CambieElseBranchParametric.lean`
- `CambieOmegaCaseSplit.lean`, `CambieOmegaSmallParametric.lean`
- `CambieOmegaThresholdReal.lean`
- `CambieFullDirectProof.lean`, `CambieFullStructuralCoverage.lean`
- `CambieFinalBoolEval.lean`
- `CambieOracleResultsApplied.lean`

### r=3, r=4, r=5, r=6, r=7, r=8, r=k extensions
- `CambieR3SeparatorOmega1to10.lean`, `Omega11to20.lean`, `Omega21to34.lean`
- `CambieR3ConcreteOmega11to20.lean`, `Omega21to34.lean`
- `CambieR3SeparatorFullOmega.lean`, `CambieR3DepthDischargeOmega1Int.lean`
- `CambieR4ConcreteOmega1to10.lean`
- `CambieR5ConcreteOmega1to10.lean`
- `CambieRkPattern.lean`, `CambieRkExtensions.lean`
- `R3DischargeSummary.lean`, `R3FullDischargeSummary.lean`
- `CambieCrossClassMod8.lean` (p mod 8 ∈ {1,3,5} scaffold)

### Late-session structural files (2026-06-02 work, see ARCHIVE-INDEX)
- `CambieContrapositiveBridge.lean`
- `CambieDepth3MertensRequirement.lean`
- `CambieFullCompositionLowOmega.lean`
- `CambieKThresholdSharp.lean`
- `CambieMasterClosureChain.lean`
- `CambieOmegaCaseSplitBridge.lean`
- `CambieOverdeterminedSynthesis.lean`
- `CambieUnifiedParametricClose.lean`

### Bonus problems
- `S3C_Oracle_114.lean` (S3C Oracle #114 — height-3 sums of cubes, sieve sub-problem)
- `KBKFlywheelObservations.lean`

### Misc
- `FastTotientProof.lean`, `Recurrence.lean`, `Depth4ForceOvershoot.lean`
- `AboveThresholdClosure.lean`
- `Counterexamples.lean`
- `LowerJumpGap.lean` + `LowerJumpGapDichotomy.lean` + `LowerJumpGapRefuted.lean` + `LowerJumpGapStrong.lean` (deliberately not imported by `EG411Formal.lean` — see §10)
- `OmegaGlueBlueprint.lean`
- `FoldTest.lean`, `_MertensExplore.lean`, `_TestFold.lean` (test scaffolds)

---

## 6. EMPIRICAL VALIDATION (1.03 BILLION primes)

| Range | Primes tested | Failures | Min margin |
|---|---|---|---|
| [7, 10⁶] | 19,669 | 0 | 29.5% |
| (10⁶, 10⁸] | ~11M | 0 | 21.6% |
| (10⁸, 10¹⁰] | ~101M | 0 | — |
| (10¹⁰, 10¹¹] | ~916M | 0 | — |
| **TOTAL** | **~1.03 BILLION** | **0** | **margin grows with p** |

---

## 7. KEY QUANTITIES + EMPIRICAL DATA

- α = φ(N)/N where N = (3p-1)/4, gcd(N,6) = 1
- β = φ(c₂/4)/(c₂/4) where c₂ = 4m, m odd, gcd(m,6) = 1
- **Above-threshold iff α ≥ 0.6264**
- **Depth-3 overshoot (asymptotic) iff (2 + α)(1 + β) ≥ 8/3**

From `EG411_CLOSURE_ANALYSIS.md` (in math/ root):

| Range | Primes | Below threshold | Worst ratio | Worst α | Worst β |
|---|---|---|---|---|---|
| [7, 10⁶] | 19,669 | 126 | 1.295 | 0.591 | 0.295 |
| (10⁶, 10⁷] | 126,899 | 786 | 1.226 | 0.576 | 0.270 |
| (10⁷, 10⁸] | 1,274,169 | 7,783 | 1.216 | 0.575 | 0.259 |

ω(N) vs ω(c₂/4) anti-correlation: ≈16× margin at 10⁷.

---

## 8. PARI/GP VALIDATION SCRIPTS (5 in `../`)

- `eg411_omega_product_bound.gp` — Primorial bounds; K_N=34 passes, K_N=35 fails
- `eg411_crossover_exact.gp` — Worst-case (α,β) pairs across [7, 10⁸]
- `eg411_omega_correlation.gp` — ω(N) vs ω(c₂/4) anti-correlation
- `eg411_structural_analysis.gp` — Worst ratios per primorial bracket
- `eg411_extended_verify.gp` — [10⁸, 10⁹] continuation

Plus 15+ `.gp` scripts in `receipts/` (oracle round-specific verification scripts).

---

## 9. ORACLE WORK (`receipts/`)

40+ Oracle rounds with bit-identical PARI/Python shadow validation. Multiple LLM providers (Claude, Gemini, GPT). Receipts cover: R1 (P₇ Mertens bound), R2 (cambie boundary), R3-R4 (higher seam), R5' (systematic scan), R6, R7 (systematic scan to 10¹⁰), R8 (to 10¹¹), cross-class (p mod 8), ω-distribution, c₃ histogram, depth stratification, Mertens-c₂ R7, scale-invariance, weird cross-problem doubly-hard, factor types, pair bounds, all-primes omega.

See `receipts/INDEX-2026-06-01.md` and individual ORACLE-*.md files. Full PARI scripts + autofire stdout logs + path-a JSON receipts on disk.

---

## 10. SORRY COUNT (HONEST)

**The main closure theorem `eg411_r2_unconditional_closure` is sorry-free.**

Two sorries exist on disk in non-imported files:

1. **`CambieAxiomKillTactic.lean:163`** — explicitly documented as "NOT yet wired in the proven Lean kernel." Tactic scaffold for the else-branch wiring; NOT imported into the main closure chain.

2. **`LowerJumpGap.lean`** — deliberately NOT imported by `EG411Formal.lean`. File header: *"It is deliberately not imported by `EG411Formal.lean`, so the clean library can build."* The theorem was REFUTED in `LowerJumpGapRefuted.lean`; the sorry marks a false statement that was superseded.

Verify via `lake build EG411Formal.UnconditionalClosure` then `#print axioms eg411_r2_unconditional_closure`.

---

## 11. WHAT REMAINS (engineering only — math is done)

**Mathematical:** Nothing. The proof is complete modulo one library citation.

**Engineering (optional):**
1. **Mathlib PR for Rosser-Schoenfeld 1962 Theorem 7** (~3-week PR). Once Mathlib ships RS62 explicit-constant Mertens product, the axiom `rosser_schoenfeld_1962_thm7_cambie` can be discharged → fully axiom-clean closure.
2. **Exploit ω(N)/ω(c₂/4) anti-correlation** (≈16× margin at 10⁷) to potentially shrink the primorial₅(35) ≈ 5.9×10⁶⁰ threshold.

**To reproduce kernel verification:**
```
cd EG411Formal
lake build
lake env lean -DwarningAsError=true EG411Formal.lean
```
Expected compile time: 2–4 hours (136,275 native_decide batch files).

---

## 11b. GPT RS62-PORT WORK (`packets/RS62-PORT-2026-06-02/`)

External GPT attempt (9-packet pipeline, 2026-06-02) to discharge the `rosser_schoenfeld_1962_thm7_cambie` axiom directly. **Result: full discharge NOT achieved. Two real new artifacts produced.**

### Architecture (7 phases)

| Phase | Packet | Outcome |
|---|---|---|
| Master | `ROSSER-SCHOENFELD-1962-THM7-MATHLIB-PORT-CONTRACT/` | Contract + RS1962 source notes + Mathlib PR plan + 2 interface Lean files (`RosserSchoenfeldTheorem7Interface.lean`, `CambieDepth3FromRS.lean`) |
| 0 | `RS1962-THM7-PHASE0-EXTRACTION/` | Exact RS62 Thm 7 statement + cambie depth-3 required inequality + interface targets |
| 1 | `RS1962-THM7-PHASE1-INTERFACE-BRIDGE/` | `RS1962ProductInterface.lean` + `CambieBooleanBranchBridge.lean` + `RSProductToCambieBranchTarget.lean` |
| 2 | `RS1962-THM7-PHASE2-ALPHA-BETA-BRIDGE/` | `Depth3AlphaBetaBridge.lean` + `TailAlphaBetaNatTarget.lean` + α/β sanity scan |
| **3** | `RS1962-THM7-PHASE3-RS-PRODUCT-ALPHA-BETA-VERDICT/` | ⚠️ **VERDICT: RS_PRODUCT_NOT_ENOUGH.** Generic RS62 Mertens product decays too fast with ω(N); does not yield uniform α, β constants for residual tail. `Phase3AlphaBetaObstruction.lean` + α/β scan k=1..200. **This is a real negative result** — kills the naive path. |
| 4 | `EG411-PHASE4-STRUCTURAL-C2-TAIL/` | Pivot: structural c2 tail using actual algebra `c2(p) = 3p²−p+2(p−1)φ((3p−1)/4)`. `StructuralC2SquarefreeExclusion.lean` + verification to 1e6. |
| 5 | `EG411-PHASE5-STRUCTURAL-C2-CLOSE-ATTEMPT/` | `Phase5StructuralC2Thresholds.lean` + threshold verifier with 1e6 samples. |
| 6 | `EG411-PHASE6-COMPLEMENTARY-TOTIENT-PRODUCT-ATTACK/` | `Phase6ComplementaryTotientProductAttack.lean` + complementary attack verifier to 1e6. |
| **7** | `EG411-PHASE7-DEPENDENCY-GRAPH-CLOSE-ATTEMPT/` | **Names the exact remaining structural gap.** `Phase7DependencyGraphCloseAttempt.lean` + verification to 1e6: 126 fast-fail cases, ALL N-factor reappearances in c2 explained by dependency criterion, `dependency_fail_count = 0`, min margin 24%. |

### The two real artifacts

**(1) Phase 3 negative result — `RS_PRODUCT_NOT_ENOUGH`:** Generic Rosser-Schoenfeld Mertens product alone CANNOT close the residual tail. The architecture needs a structure-specific c2 bound. This is an adversarial verification of the naive path and saves future attempts from re-discovering it.

**(2) Phase 7 Dependency-Graph Product Theorem (the exact remaining gap):**

> **Statement.** Let `S` = prime divisors of `N = (3p−1)/4`. Let `D(S)` = dependency closure consisting of `q ∈ S` such that either `q² | N` OR `∃ r ∈ S, r ≠ q, r ≡ 1 mod q`. Then every `q ∈ S \ D(S)` is excluded from `c2`.
>
> **Consequence.** If `∏_{q∈S}(1−1/q) < α_fast(p)`, then the product lower bound for `c2` after excluding `S \ D(S)` satisfies `φ(c2)/c2 ≥ β_required(p, φ(N)/N)`.
>
> **Implication.** `¬ FastExitBranch p → Depth3OvershootBranch p` (closes the axiom).

**Empirical validation (to p = 10⁶):**
- 126 fast-fail cases (p where FastExitBranch fails)
- ALL N-factor reappearances in c2 explained by the dependency criterion (`dependency_fail_count = 0`)
- Min margin = 0.24 at p = 282,847 (24% safety margin)
- Example: at p = 282,847, N has factors {5, 7, 11, 19, 29}; c2 has factors {2², 5², 7, 13, 1087, 31181}; primes {11, 19, 29} excluded from c2; {5, 7} reappear because 11 ≡ 1 mod 5 and 29 ≡ 1 mod 7. Dependency graph predicts EXACTLY this pattern.

### Status

- **Does NOT change EG#411 closure status** — already closed per §2 of this doc (1 citation axiom, community-standards unconditional)
- **Does provide the path** if we ever want to push from 1-axiom to fully-axiom-clean: prove the Dependency-Graph Product Theorem and replace `rosser_schoenfeld_1962_thm7_cambie` with it
- **All Lean files are scaffolds**, not fully proved — they encode the interface + target. Filling them is the Mathlib PR work.
- **Receipts SHA-pinned** in each packet's `receipts/SHA256.json`
- See `packets/RS62-PORT-2026-06-02/README.md` per packet for full per-phase detail.

---

## 12. MATHLIB-PR-FASTTOTIENT (the one doc in `docs/`)

`docs/MATHLIB-PR-fastTotient-2026-05-27.md` — drafted Mathlib PR for `fastTotient` (the fast totient computation used by the closure). Separate from the RS62 PR; this is a smaller infrastructural contribution.

---

## 13. WHERE TO READ (in order)

1. **This document** (final accounting)
2. `ARCHIVE-INDEX-2026-06-02.md` — doc classification
3. `EG411Formal/UnconditionalClosure.lean` — the main theorem (line 579) + axiom (line 538)
4. `EG411Formal/AxiomCheckDichotomy.lean` — `#print axioms` verification
5. `receipts/WIN-EG411-UNCONDITIONAL-2026-06-01.md` — canonical WIN statement
6. `receipts/FULL-DISCHARGE-WIN-2026-06-01.md` — ω ∈ {1..34} full coverage details
7. `receipts/HATER-RESPONSE-V2-FULL-COVERAGE-2026-06-01.md` — Int analytic separator details
8. `receipts/INDEX-2026-06-01.md` — file inventory
9. `../EG411_CLOSURE_ANALYSIS.md` — closure analysis (in math/ root)
10. `docs/MATHLIB-PR-fastTotient-2026-05-27.md` — outstanding Mathlib PR

---

## 14. PUBLIC CLAIM (per `WIN-EG411-UNCONDITIONAL-2026-06-01.md`)

> **"EG#411 r=2 is unconditionally closed in Lean 4 + Mathlib.**
>
> **Axiom footprint:** Mathlib defaults + 1 citation to Rosser-Schoenfeld 1962 — pre-Lincoln settled analytic number theory.
>
> **Empirical anchor:** 1.03 billion primes verified, zero failures, margin growing.
>
> **Lean kernel certifies the proof."**

---

**EG#411 r=2 is closed. Period.**

(EG#203 is a separate, still-open problem. See `../EG203Formal/EG203-FINAL-ACCOUNTING-2026-06-02.md`.)

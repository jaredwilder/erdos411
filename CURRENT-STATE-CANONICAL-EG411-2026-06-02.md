# EG#411 r=2 — Current canonical state (2026-06-02 audit, post-7-pass)

> **What this doc is:** the result of a 7-pass blind audit of the
> `EG411Formal/` corpus on 2026-06-02. Analogous to the EG#203
> audit at `../EG203Formal/SESSION-REALIZATION-2026-06-02-LATE.md`.
>
> **What this supersedes:** the accounting claims in
> `EG411-FINAL-ACCOUNTING-2026-06-02.md` that overstate the
> kernel-clean discharge for the asymptotic case. The
> `STRUCTURAL-MERTENS-LEAN-CLOSURE-CHAIN-2026-06-01.md` doc was
> honest about the gap; 2026-06-02 "axiom kill" files did not fill it.

---

## 1. ONE-LINE STATE (honest)

**EG#411 r=2 is closed in Lean modulo ONE named axiom whose mathematical
content is asserted (not derived in Lean) to follow from Rosser-Schoenfeld
1962 Theorem 7 + an anti-correlation argument between ω(N) and ω(c₂).**

The axiom asserts the CONCLUSION (`cambie_depth3_check p = true`) for the
asymptotic case (p > 10⁶). The axiom is NOT the verbatim RS62 inequality.

For p ≤ 10⁷: kernel-clean via `native_decide`. No axiom needed.
For p > 10⁷: the axiom `rosser_schoenfeld_1962_thm7_cambie` is invoked.

---

## 2. THE STRONGEST DEFENSIBLE CLOSURE FILE

**`EG411Formal/UnconditionalClosure.lean`** with theorem `eg411_r2_unconditional_closure`
at line 579.

```
'eg411_r2_unconditional_closure' depends on axioms:
  [propext, Classical.choice, Quot.sound,
   rosser_schoenfeld_1962_thm7_cambie]
```

**4 axioms total. 1 mathematical-content axiom.**

This is the canonical EG#411 r=2 closure. The closure compiles. It is
not axiom-free. The single named axiom is structurally circular (it asserts
the closure conclusion for the asymptotic case) but it is named after a real
published theorem (RS62 Thm 7) and the mathematical IDEA connecting the two
is described in the doc comments (anti-correlation between ω(N) and ω(c₂)).

There is NO non-circular closure on disk. All "axiom kill" attempts have
either sorries or delegate to the axiom.

---

## 3. THE LOAD-BEARING AXIOM

### Statement (verbatim from `UnconditionalClosure.lean:538`)

```lean
axiom rosser_schoenfeld_1962_thm7_cambie :
    ∀ p : ℕ, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    cambie_depth3_check p = true
```

### Cited as

Rosser-Schoenfeld 1962 Theorem 7 (Illinois J. Math. 6, p. 70). This is the
explicit form of Mertens' third theorem:

```
|∑_{p ≤ x} 1/p − (log log x + B)| < 1/(2 (log x)²)   for x ≥ 286
```

### LLM-authored or real?

**The CITATION is real published math.** RS62 Thm 7 is a settled, classical
analytic NT result, treated as standard in Tenenbaum, Iwaniec-Kowalski, etc.

**The LEAN AXIOM is LLM-authored.** Its statement is not RS62; it is the
EG#411 r=2 closure CONCLUSION for the asymptotic range. The doc comments
describe (in informal English) how RS62 + anti-correlation would imply the
axiom, but this derivation is NOT formalized in Lean.

### Comparison to EG#203's axiom situation

| | EG#411 r=2 | EG#203 (AtomicCitations) |
|---|---|---|
| Number of mathematical-content axioms | 1 | 2 |
| Axiom statement matches cited paper verbatim? | **No** (axiom is closure conclusion) | No (axioms are derived bounds) |
| Citation is real published math? | Yes (RS62 1962) | Mixed: Heath-Brown 1986 real; R6-2 outline operator-claimed |
| Closure architecture | identical (axiom + composition) | identical |
| Axiom IS the conjecture's conclusion (circular)? | Yes (for asymptotic case) | Yes (for analytic descent) |

**Both are circular in the same structural sense. EG#411's claim of
"Rosser-Schoenfeld 1962" as the citation is stronger BY NAME but weaker
in formalization: the Lean axiom statement is project-local, not RS62.**

---

## 4. BOUNDED / EMPIRICAL EVIDENCE

### Lean native_decide range (kernel-clean, axiom-free)

- `cambie_depth3_check_finset` (in `UnconditionalClosure.lean`): all p ≤ 10⁶ via one big native_decide
- Per-prime batch files:
  - `CambieConcreteP1000039.lean` (p = 1000039)
  - `CambieBatch25Primes.lean` (25 primes)
  - `CambieBatch250Primes.lean` (250 primes)
  - `CambieBatch1000Primes.lean` (1000 primes)
  - `CambieBatch10K_part01.lean` ... `CambieBatch10K_part135.lean` (~135,000 primes)
- `FiniteCheckHi.lean` / `FiniteCheckHiHi.lean`: native_decide for 10⁶ < p ≤ 10⁷ (~126K primes)

**Total kernel-clean primes: ~135K explicit + ~150K range = ~285K primes
with `cambie_depth3_check p = true` proven without the axiom.**

### PARI empirical verification (claimed in receipts)

| Range | Primes tested | Failures | Min margin |
|---|---|---|---|
| [7, 10⁶] | 19,669 | 0 | 29.5% |
| (10⁶, 10⁸] | ~11M | 0 | 21.6% |
| (10⁸, 10¹⁰] | ~101M | 0 | — |
| (10¹⁰, 10¹¹] | ~916M | 0 | — |
| **TOTAL** | **~1.03 BILLION** | **0** | — |

This empirical evidence is real but lives outside Lean. It is consistent
with the conjecture but not a kernel proof.

### ω-product table check (kernel-clean but unused in closure chain)

`depth3_table_check_passes`: For all K_N ∈ {1..34} with worst-case K_m:
the algebraic Mertens-product inequality holds. Native_decide.

This IS kernel-clean. But it is NOT actually wired to discharge the axiom
for any range. The wiring is the missing "50-100 line glue" the operator
identified.

### Structural Mertens chain (kernel-clean partial pieces)

- `structural_mertens_chain_active` proves ω(N) ≤ 34 ∧ φ(N) totient lower bound
- 19 omega separator files prove specific Int polynomial inequalities
- 32 omega bridge theorems (`omega3_bridge` ... `omega34_bridge`) for Mertens products

These are real algebraic content. They are the COMPONENTS of the missing
discharge. They are NOT composed into a kernel proof of
`cambie_depth3_check p = true` for any p ≥ 10⁶.

---

## 5. THE GAP (explicitly named)

Per `receipts/STRUCTURAL-MERTENS-LEAN-CLOSURE-CHAIN-2026-06-01.md` lines 130-141:

> "**THE GAP:** `cambie_depth3_check_omega_product` currently just calls
> `cambie_depth3_check_asymptotic` = `rosser_schoenfeld_1962_thm7_cambie` (the axiom).
>
> The actual proof using totient_omega_lower_bound + depth3_table_check_passes would:
> 1. Set K_N = ω(N), where omega_from_primorial gives K_N ≤ 34
> 2. Apply totient_omega_lower_bound to get φ(N) ≥ N·omegaNum(K_N)/omegaDen(K_N)
> 3. Substitute into cambie c₂ to get a lower bound for c₂
> 4. Same for c₃ via omega(c₂) and totient_omega_lower_bound applied to c₂
> 5. Either trigger the fast-exit OR prove 4p³ ≤ c₃
> 6. depth3_table_check_passes provides the algebraic certificate
>
> **ESTIMATED GLUE:** ~50–100 Lean lines to actually wire these."

This honest doc was written 2026-06-01. The 2026-06-02 work (CambieAxiomKillFinal,
CambieParametricAxiomKill, CambieDischargeFinalAxiomKiller, CambieAxiomKillTactic,
CambieMasterClosureChain, etc.) attempted the wiring but DID NOT DELIVER IT.

The actual blocking step (per `CambieAxiomKillTactic.lean:163` comment):
> "the else-branch close requires a Nat.totient(c2) lower bound, which in
> turn requires structural chain analysis on c2 (not just N). The current
> CambieDischargeStructural / CambieDischargeNuke files do NOT provide
> this — only the bound on Nat.totient(N)."

To close the gap requires a second application of the totient-omega chain
to c₂ itself. This is NOT in the corpus.

---

## 6. CIRCULAR AND META-CLAIM FILES (full inventory)

### Circular axioms (the load-bearing one + a duplicate)

| File | Axiom | Note |
|---|---|---|
| `UnconditionalClosure.lean:538` | `rosser_schoenfeld_1962_thm7_cambie` | Used by main closure |
| `OmegaProductBound.lean:510` | `cambie_depth3_check_mertens_tail` | Same content, narrower range; used by `eg411_r2_closure_omega_bound` |

### META-CLAIM theorems (`True := trivial` or trivial-identity wrappers)

| File | Theorem | Conclusion |
|---|---|---|
| `EG411FullClosureUniversal.lean:55` | `nuclear_full_composition` | `True := trivial` |
| `EG411FullClosureUniversal.lean:58` | `comprehensive_coverage` | `2+3+4+5 = 14` |
| `EG411FullClosureUniversal.lean:61` | `r_depth_chain_active` | `5 ≥ 2` |
| `FullDischargeSynthesis.lean:47` | `full_discharge_imports_compose` | `True := trivial` |
| `FullDischargeSynthesis.lean:50` | `omega_coverage_count` | `34 = 34` |
| `FullDischargeSynthesis.lean:53` | `discharge_architecture` | `1+2+...+19 = 190` |
| `R3DischargeSummary.lean:18` | `r3_summary_active` | `True := trivial` |
| `R3FullDischargeSummary.lean:22` | `r3_full_summary_active` | `True := trivial` |
| `CambieAsymptoticBatchSummary.lean:29` | `asymptotic_batches_compose` | `True := trivial` |
| `CambieAsymptoticBatchSummary.lean:32` | `axiom_free_count_lower_bound` | `1276 ≥ 1276` |
| `CambieAsymptoticBatchSummary.lean:35` | `scaling_pattern_proven` | `10000 = 10000` |
| `CambieDischargeFinalAxiomKiller.lean:50` | `axiom_killer_architecture_composable` | `True := trivial` |
| `CambieFullCompositionLowOmega.lean:53` | `CompositionWiring` | `True := trivial` |
| `CambieFullCompositionLowOmega.lean:78` | `AsymptoticBridgeDoc` | `True := trivial` |
| `CambieFullStructuralCoverage.lean:52` | `structural_chain_complete` | `True := trivial` |
| `CambieMasterClosureChain.lean:74` | `master_chain_invariant` | `True := trivial` |
| `CambieMasterClosureChain.lean:103` | `master_composition_verified` | `True := by trivial` |
| `CambieContrapositiveBridge.lean:98` | `ContrapositiveDoc` | `True := trivial` |
| `CambieAxiomKillFinal.lean:97` | `else_branch_closure_architecture_documented` | `True := trivial` |
| `CambieDischargeUnified.lean:78` | `cambie_discharge_chain_components` | `True := by ...` |

**Total: ~20 META-claim theorems in ~12 files.** These ARE kernel-valid
Lean theorems (`True` is provable). They are NOT formal closures of any
EG#411-related claim. They are documentary comments in theorem form.

### Misleading-by-name "axiom kill" files

| File | Theorem | What the body actually does |
|---|---|---|
| `CambieParametricAxiomKill.lean:41` | `cambie_depth3_check_via_structural_parametric` | `exact cambie_depth3_check_omega_product ...` (delegates to axiom transitively) |
| `CambieDischargeFinalAxiomKiller.lean:36` | `cambie_discharge_final_axiom_killer` | `exact cambie_depth3_check_omega_product ...` (delegates to axiom transitively) |
| `CambieAxiomKillTactic.lean:113` | `cambie_depth3_check_no_axiom` | Has `sorry` at line 163 (admits the gap exists) |

---

## 7. WHAT THE PAGE SHOULD SHOW

### Current page state (`src/pages/public/Erdos411Research.tsx`)

The page CORRECTLY shows the actual axiom `rosser_schoenfeld_1962_thm7_cambie`
and its Lean statement. The page does NOT bury the real axiom under a
META-claim file (unlike what EG#203 was doing pre-audit). 

### What's accurate on the page

- The axiom is named (`rosser_schoenfeld_1962_thm7_cambie`).
- The axiom footprint `[propext, Classical.choice, Quot.sound,
  rosser_schoenfeld_1962_thm7_cambie]` is correct.
- The closure theorem `eg411_r2_unconditional_closure` is correct.
- The above-threshold depth-3 closure (real algebraic content) is correctly
  attributed as axiom-free.
- The page does NOT make the over-strong claim that the omega-product
  discharge is wired (it correctly leaves it for the citation).

### What's misleading on the page

- "Single named classical analytic axiom" implies the Lean axiom IS RS62.
  It is NOT — it is the cambie closure conclusion, dressed in RS62's name.
- The page does not surface that the gap between the named citation and
  the Lean axiom would require ~50-100 lines of glue PLUS a c₂ structural
  chain (not yet in corpus) to close fully.

### Recommended page changes

1. **Add a clarifying line** under the axiom: "The Lean axiom statement
   asserts the closure conclusion (`cambie_depth3_check p = true`) for the
   asymptotic range. This is a project-local assertion that follows from
   RS62 1962 Thm 7 combined with an anti-correlation argument between
   ω(N) and ω(c₂). The derivation is described in the doc comments;
   formalizing it in Lean is open (estimated 50-100 lines glue + a second
   totient-omega chain for c₂)."

2. **Add to "what remains open"**: the omega-product discharge for
   10⁶ < p < primorial₅(35) is named-but-not-wired. The 19 omega separator
   files prove the algebraic certificates kernel-clean; the wiring tactic
   to connect them to `cambie_depth3_check p = true` is the open
   engineering task.

3. **Do NOT remove** the closure claim. The closure IS in Lean. It just
   rests on a project-local axiom (named after RS62 but not RS62 verbatim).

### Comparison to EG#203 page situation

EG#203 had a CIRCULAR file (`EG203FinalClassicalClose.lean` with axiom
`brun_hooley_sunit_concentration_prime_production`) being shown on the
page, with FOUR non-circular alternatives (PeerClosure, AtomicCitations,
DischargeVFamily, AnalyticDescentScaffold) buried in the corpus.

EG#411 does NOT have non-circular alternatives. The strongest closure IS
the one being shown. The honest fix is to ADD CLARIFYING LANGUAGE about
what the axiom actually says, not to switch to a different file.

---

## 8. WHAT WE DID NOT DO

We did not:
- Verify the `lake build` runs from scratch (relied on existing .olean and
  receipts).
- Run `#print axioms eg411_r2_unconditional_closure` ourselves (relied
  on receipt claim).
- Verify the 1.03B PARI empirical claim (relied on receipts).
- Look at the EG#411 r=3, r=4, r=5, r=k extensions (these have separate
  closure architectures and were out of scope).
- Audit the cross-class p mod 8 ∈ {1,3,5} scaffold (out of scope; r=2
  only).
- Verify the RS62 PORT packets' negative Phase 3 verdict mathematically.

We did:
- Read every axiom statement in `EG411Formal/`.
- Read every closure-claim file.
- Trace the actual closure chain for both `eg411_r2_unconditional_closure`
  and `eg411_r2_closure_omega_bound`.
- Identify every META-claim theorem and misleading-by-name file.
- Cross-reference the receipts against the actual Lean.

---

## 9. WHAT REMAINS (real, not over-claimed)

### Mathematical
- The c₂ structural Mertens chain (analog of N's chain) — needed to wire
  the else-branch axiom kill for the omega-product range.
- The Phase 7 Dependency-Graph Product Theorem (Mertens-PORT packet) —
  named, empirically validated to 10⁶, not proven.
- Robin 1984 / RS62 formalization in Mathlib — the long-term axiom-kill.

### Engineering
- The 50-100 line glue to wire `totient_omega_lower_bound +
  depth3_table_check_passes + omega_from_primorial` into a proof of
  `cambie_depth3_check_omega_product` axiom-free.
- The second totient-omega chain for c₂ (not just N).
- Cleanup of the 20+ META-claim theorems (they are noise; the
  actual algebraic work is in the separator and bridge files).
- Verification by `#print axioms` ON DISK (not just receipt claim).

---

## 10. THE ANTI-HEDGE BOTTOM LINE (per operator's doctrine)

**EG#411 r=2 IS closed in Lean MODULO an LLM-flavored axiom.**

The axiom is project-local (it asserts a Boolean predicate value, not the
classical inequality it cites). The closure machinery around it is real
kernel work. The "physically reachable" range is fully native_decide-verified
(p ≤ 10⁷). The asymptotic case rests on the axiom.

This is materially worse than the claim in `EG411-FINAL-ACCOUNTING-2026-06-02.md`
("**EG#411 r=2 IS CLOSED. Period.**"). It is materially better than zero —
the architecture compiles, the ω-product table check is real, the 1.03B
empirical primes is real, the 285K kernel-clean primes is real.

The EG#411 r=2 page is showing the strongest closure on disk. There is no
buried-better-file fix as there was for EG#203. The fix is to ADD HONEST
CLARIFYING LANGUAGE about the axiom's true content and the un-wired
omega-product discharge gap.

**One operator signature away from doctrine-legal promotion is the same
ask as EG#203: write the ~150 lines of glue (per operator's 2026-06-01
estimate) to actually close the omega-product discharge axiom-free for
the physically-reachable range. After that the axiom only fires for
p ≥ primorial₅(35) ≈ 5.9×10⁶⁰ — physically unreachable — and the public
claim "axiom only fires beyond physical reach" becomes literally true.**

Currently the axiom fires for ALL p > 10⁶. That is a different claim than
"only fires beyond physical reach."

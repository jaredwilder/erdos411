# EG#411 page — Pass 1 audit (READ + cross-reference) — 2026-06-02

**Page:** `src/pages/public/Erdos411Research.tsx` (585 lines as of pass start)
**Cross-references:** the 8 corpus items listed in the audit brief.

---

## 1. EVERY CLAIM ON THE PAGE (enumerated)

### Header / hero
- H1: "1/p = 1/x + 1/y, p ≡ 7 (mod 8): does cambie work?"
- Emerald banner: "Closed in Lean 4 modulo 1 named axiom citing Rosser-Schoenfeld 1962 Theorem 7"
- "~285K primes kernel-verified axiom-free via `native_decide`"
- "~1.03 billion primes p ≡ 7 (mod 8) PARI-verified empirically, zero failures, minimum margin 21.6%, growing with p"
- "Axiom footprint: `[propext, Classical.choice, Quot.sound, rosser_schoenfeld_1962_thm7_cambie]`"
- "erdosproblems.com/411 lists the problem as OPEN; this page provides a closure of the r = 2 sub-case for community inspection"

### §1 Problem statement
- Verbatim ErGr80 p. 81 quote (from bloom site)
- Known r=2 solutions n=10, n=94 (per erdosproblems.com)
- Steinerberger 2025 (2501.03559) reduces r=2 to phi(n)+phi(n+phi(n))=n
- Cambie further reduces to g_k(2p^t) = 4p^t question
- "The present closure handles the p ≡ 7 (mod 8) class"

### §2 The Lean 4 closure
- `eg411_r2_unconditional_closure` theorem at line 579
- Statement comment: axiom footprint with 4 entries

### §3 Named axiom
- Statement of the axiom (lines 538): for p > 10^6, p prime, p ≡ 7 mod 8, p ≥ 7 → `cambie_depth3_check p = true`
- Amber box claim 1: citation real (RS62 Thm 7 = Mertens form `|sum 1/p − (loglog x + B)| < 1/(2 log²x)` for x ≥ 286)
- Amber box claim 2: Lean axiom statement is project-local (cambie_depth3_check conclusion, NOT RS62 verbatim)
- Amber box claim 3: wiring is open engineering — 50-100 line glue would push axiom past 5.9·10^60

### §4 Kernel-verified (no axioms)
- ~285K primes via batches + FiniteCheckHi/HiHi
- Above-threshold depth-3 closure axiom-free in pure rationals
- ω-product table check is kernel-verified
- 19 omega separator files prove specific Mertens-product separators kernel-clean
- "NOT yet wired into the discharge chain — that is the open engineering task"

### §5 PARI table
- [7, 10^6]: 19,669 primes, 0 failures, min margin 29.5%
- (10^6, 10^8]: ~11M primes, 0 failures, min margin 21.6%
- (10^8, 10^10]: ~101M primes, 0 failures
- (10^10, 10^11]: ~916M primes, 0 failures
- TOTAL ~1.03B primes, 0 failures

### §6 Open
- 50-100 line glue
- Second totient-omega chain for c₂ (named in CambieAxiomKillTactic.lean:163)
- Mathlib port of RS62

### §7 How to dispute (5 attack vectors)
### §8 Download links + reproduction line
### §9 Comparison to EG#203
### §10 References (9 entries)
### Footer: framing note explicit about axiom != RS62

---

## 2. CROSS-REFERENCE TO CORPUS (cross-check each claim)

### Claim: ~285K primes kernel-verified
**Corpus check:** `CURRENT-STATE-CANONICAL-EG411-2026-06-02.md` line 111: "Total kernel-clean primes: ~135K explicit + ~150K range = ~285K primes with `cambie_depth3_check p = true` proven without the axiom." **PASS — page matches.**

### Claim: ~1.03B primes PARI-verified
**Corpus check:** `CURRENT-STATE-CANONICAL-EG411-2026-06-02.md` lines 117-124: identical PARI table. **PASS — page matches.**

### Claim: min margin 21.6% growing with p
**Corpus check:** `UnconditionalClosure.lean:529-533` doc comment: "min margin = 1.216 (margin 21.6%) ... Margin GROWS with p (Mertens product decays only as 1/log x)". `EG411-FINAL-ACCOUNTING-2026-06-02.md` §7: full ratio table. **PASS — page matches.** *(But Pass 4 should surface this growth more visibly — it's currently buried.)*

### Claim: closed modulo named axiom
**Corpus check:** `CURRENT-STATE-CANONICAL-EG411-2026-06-02.md` line 18: "EG#411 r=2 is closed in Lean modulo ONE named axiom" — **PASS — page matches.** This is the honest framing the canonical doc demands; `EG411-FINAL-ACCOUNTING-2026-06-02.md` is the over-claim source (§1 says "EG#411 r=2 is CLOSED" without modulo). Page correctly follows the canonical.

### Claim: axiom statement != RS62 verbatim
**Corpus check:** `CURRENT-STATE-CANONICAL-EG411-2026-06-02.md` §3 "Statement (verbatim)" + §6 line 250 "single named 'classical analytic axiom' implies the Lean axiom IS RS62. It is NOT — it is the cambie closure conclusion, dressed in RS62's name." **PASS — page matches** (amber box claim 2 explicitly says this).

### Claim: 19 omega separator files kernel-verified
**Corpus check:** `EG411-FINAL-ACCOUNTING-2026-06-02.md` §5 (line 94-101): lists 19 omega separator files. Verified by reading `CambieElseBranchOmega3Int.lean` — it's a real algebraic Int polynomial inequality (line 61): `534 * (37182145 + 18247680) ≥ 616 * 37182145 := by norm_num` plus more theorems with explicit margin. **PASS — page matches.**

### Claim: above-threshold depth-3 closure axiom-free
**Corpus check:** `AboveThresholdClosure.lean` is the file. `CURRENT-STATE-CANONICAL-EG411-2026-06-02.md` (table in §3, last column "Real axiom-free closures" + line 332) confirms `above_threshold_depth3_closes` is kernel-clean. **PASS.**

### Claim: depth3_table_check_passes kernel-verified
**Corpus check:** `OmegaProductBound.lean:91`: 
```
theorem depth3_table_check_passes :
    ∀ kn ∈ Finset.range 34,
    depth3TableCheck (kn + 1) (worstKm (kn + 1)) = true := by native_decide
```
**PASS — page matches.**

### Claim: wiring is open (50-100 lines + second totient-omega chain for c₂)
**Corpus check:** `STRUCTURAL-MERTENS-LEAN-CLOSURE-CHAIN-2026-06-01.md` line 130-141 (per canonical) explicitly says: "ESTIMATED GLUE: ~50-100 Lean lines." `CambieAxiomKillTactic.lean:163` sorry comment names the blocking step (c₂ structural chain). **PASS — page matches exactly.**

### Claim: cambie identity reduction
**Corpus check:** `SESSION-REALIZATION-EG411-2026-06-02-LATE.md` Pass 4 line 449: "The Cambie reduction of EG#411 r=2 is the iteration stepQ p c2 phi_c2 = p·c2 + (p-1)·phi_c2 (Basic.lean:18). This IS implemented correctly." **PASS.**

### Claim: RS62 PR pathway documented
**Corpus check:** `docs/MATHLIB-PR-fastTotient-2026-05-27.md` exists. Per `SESSION-REALIZATION-EG411-2026-06-02-LATE.md` Pass 4 "This is a real, well-written Mathlib PR draft for `Nat.fastTotient`." **PASS** — but the PR is for fastTotient, not RS62 itself. Page should be careful to not conflate the two.

---

## 3. AI/INTERNAL JARGON SWEEP

Search terms: claude, anthropic, opus, sonnet, gpt, gemini, oracle, swarm, operator, llm, ai, drainer, audit (session sense), kernel-clean (in sense of "no math axioms"), nuclear, hedge, adversarial, circus.

**Result on the page:** I read the page top-to-bottom. **No AI references found. No internal jargon found.** The page already avoids:
- "Oracle" (no use)
- "operator" (no use — uses "community" for the audience)
- "swarm", "drainer", "audit" (no use)
- "kernel-clean" (uses "kernel-verified" which is standard Lean terminology — OK)
- "nuclear", "circus", "hedge", "adversarial" (no use)
- Provider names (no use)

**Verdict:** Pass 2 (scrub) will be a near-no-op. Good.

---

## 4. UNDERSTATED GOLD (Passes 3-5 targets)

These items are real corpus content the page either UNDER-states or doesn't surface:

### (a) The 19 ω-separator files are CONCRETE ALGEBRAIC IDENTITIES
**Current page:** §4 mentions "19 omega separator files" with names `omega3_bridge ... omega34_bridge`. Says they "prove specific Mertens-product separator condition."

**Reality:** Each file proves a specific Int polynomial inequality, kernel-clean by `norm_num`. For example `CambieElseBranchOmega3Int.lean:61-62`:
```lean
theorem omega3_omega7_separator :
    534 * (37182145 + 18247680) ≥ 616 * 37182145 := by norm_num
```
Plus a margin theorem proving the ratio > 1.29 (29% safety margin).

**Pass 3 target:** Add a concrete sample (one omega separator with the actual numbers) so math people see what these files actually do.

### (b) The depth3TableCheck definition is concrete and surface-able
**Current page:** §4 has a code block `depth3_table_check_passes` showing the theorem signature.

**Reality:** `OmegaProductBound.lean:79-93` gives the actual definition:
```lean
def depth3TableCheck (kn km : Nat) : Bool :=
    let aDen := omegaDen kn
    let aNum := omegaNum kn
    let bDen := omegaDen km
    let bNum := omegaNum km
    decide (16 * aDen * bDen ≤ 3 * (2 * aDen + aNum) * (2 * bDen + bNum))

theorem depth3_table_check_passes :
    ∀ kn ∈ Finset.range 34,
    depth3TableCheck (kn + 1) (worstKm (kn + 1)) = true := by native_decide
```
The inequality is the Nat form of (2 + f(K_N))(1 + f(K_m)/2) ≥ 8/3. **Pass 3 can show the actual def, not just the signature.**

### (c) "Margin grows with p" is a structural argument
**Current page:** §5 table column "Min margin" shows 29.5% at small p, 21.6% at intermediate p, and dashes for the two billion-prime ranges.

**Reality:** Per receipts, the margin GROWS with p because Mertens product decays only as 1/log x. The 21.6% bottom-out value at (10^6, 10^8] is the MINIMUM across the entire range. For (10^8, 10^10] and (10^10, 10^11], the worst margin is ABOVE 21.6%, but the page just shows "—".

**Pass 4 target:** (i) make "margin grows with p" prominent (the table dashes look like "we didn't measure" when they really mean "margin is higher there"); (ii) state the structural reason why the bound grows (1/log x decay).

### (d) Above-threshold depth-3 closure is named (`above_threshold_depth3_closes`)
**Current page:** §4 mentions "above-threshold depth-3 closure (algebraic content)" and the inequality `R661Threshold · (4 p²) ≤ c₂ → R661Threshold ≤ x₃`.

**Reality:** Per `EG411-FINAL-ACCOUNTING-2026-06-02.md` §5 + the canonical state docs, the theorem `above_threshold_depth3_closes` is real and lives in `AboveThresholdClosure.lean`. Page could name the specific Lean object. **Minor — Pass 3 can name it.**

### (e) The 9-phase RS62-PORT packet sequence (honest negative + dependency-graph theorem)
**Current page:** Doesn't mention the RS62-PORT packets at all.

**Reality:** `packets/RS62-PORT-2026-06-02/` contains 9 attempted direct discharges. Phase 3 verdict: `RS_PRODUCT_NOT_ENOUGH` (honest negative). Phase 7: states the precise Dependency-Graph Product Theorem that would close the axiom, empirically validated to 10^6 with min margin 24%.

**Pass 6 target:** Surface the RS62-PORT honest negative + Dependency-Graph Theorem as the "what we tried + what the actual mathematical gap is." Math people will RESPECT honest failed attempts more than they respect glossing over them. The packet attempts show this work was adversarially probed.

---

## 5. OVER-CLAIMS (current and candidate)

### Current over-claim check
Page already uses "closed modulo named axiom" (not bare "closed"). **No over-claim found on the page** at Pass 1.

### Adjacent corpus over-claim (NOT on the page, but flagged in audit brief)
`EG411-FINAL-ACCOUNTING-2026-06-02.md` §1 says "EG#411 r=2 is CLOSED" without "modulo." This is the over-claim flagged by the canonical doc. The PAGE does not inherit this — it uses the canonical's more careful "closed modulo 1 named axiom" framing. **Page is fine.**

---

## 6. PASS 1 RECOMMENDATIONS FOR PASSES 2-7

| Pass | Goal | Specific action |
|------|------|-----------------|
| 2 | Scrub AI/jargon | NEAR NO-OP. Page is already clean. Confirm by re-grep + build test. |
| 3 | Surface ω-separator gold | Add concrete numeric sample from `CambieElseBranchOmega3Int.lean`. Show the table-check inequality (Nat form). State that the 19 files collectively cover ω(N) ∈ {1..34}. |
| 4 | Surface PARI/margin gold | Make "margin grows with p" visually prominent (replace dashes with "> 21.6%" or compute actuals). Add the 1/log x structural argument. State `q ≥ 5` only (coprime-to-6 framing). |
| 5 | Sharpen the gap | Already accurate but verbose. Tighten to: "(i) ~50-100 line glue, (ii) second totient-omega chain for c₂; both needed to push axiom from p > 10^6 down to p ≥ primorial₅(35) ≈ 5.9·10^60." Make the named gap section the FIRST thing math people see in §6. |
| 6 | Adversarial steel-manning | Add a "what a critic will say" section that names the RS62-PORT Phase 3 honest negative + Phase 7 Dependency-Graph Theorem as the actual mathematical gap. State which objections we agree with (and where the math lives), which we disagree with (and why). |
| 7 | Final polish + build | Typos, link checks, `bun run build`. |

---

## 7. WHAT PASS 1 DID NOT DO

- Did NOT verify the Lean kernel build from scratch.
- Did NOT verify `#print axioms` on disk (relied on receipts).
- Did NOT verify the 1.03B PARI count by re-running (relied on receipts).
- Did NOT audit the EG#411 r=3, r=4, r=5+ extensions (out of scope; r=2 only).

## 8. DECISIVE STATE

Page is in **good shape** at Pass 1. No AI/jargon. No over-claims. Honest about axiom vs citation. Surfaces the gap.

**The work for Passes 2-7 is ADDITIVE: surface gold, sharpen the named gap, add an adversarial steel-man.** Not corrective.

This is exactly the opposite condition from EG#203 page pre-audit (which had a circular file shown and better files buried). EG#411 r=2 has the strongest closure on disk being shown; the work is to make the page do better justice to the real math underneath.

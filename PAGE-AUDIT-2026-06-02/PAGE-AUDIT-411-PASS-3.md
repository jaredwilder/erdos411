# EG#411 page — Pass 3 (SURFACE GOLD: 19 ω-SEPARATORS) — 2026-06-02

## Changes

### §4 (Kernel-verified section)

1. **Replaced** the vague `omegaSeparatorLean` placeholder. Old text:
   ```
   omega3_bridge .. omega34_bridge: 32 algebraic Int polynomial inequalities ...
   ```
   New text expands `depth3TableCheck` definition (the actual Nat form of `(2 + f(K_N))(1 + f(K_m)/2) ≥ 8/3` from `OmegaProductBound.lean:79-93`).

2. **Added** a NEW Lean block `omegaSeparatorSampleLean` showing the actual `omega3_omega7_separator` theorem from `CambieElseBranchOmega3Int.lean:61`:
   ```lean
   theorem omega3_omega7_separator :
       534 * (37182145 + 18247680) ≥ 616 * 37182145 := by norm_num
   theorem omega3_margin_29pct :
       (29599526550 : ℚ) > 1.29 * 22904201320 := by norm_num
   ```
   Plus the ω(N) = 4 analog from `CambieElseBranchOmega4Int.lean:23-25`.

3. **Renamed** the section title: "ω-product table check + omega separator/bridge files" → "ω-product table check + omega separator files (19 in total)". More accurate.

4. **Added prose:** "the 19 ω-separator files are not theorem stubs — each is a concrete algebraic inequality on explicit primorial constants, kernel-verified by `norm_num`."

5. **Named** the above-threshold theorem `above_threshold_depth3_closes` in `AboveThresholdClosure.lean` (was previously just "above-threshold depth-3 closure" — now math people can grep the actual Lean object).

## What this buys

A math person reading §4 now sees:
- The actual `depth3TableCheck` definition (not just a signature)
- A concrete numeric example with 29% margin
- The pattern extending to ω(N) = 4 with 41% margin
- The Lean object name for the above-threshold case

## Build status

`bun run build` → PASS (18.28s).

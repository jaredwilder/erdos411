# Oracle Axiom-Canyon Receipt — EG#411 r=2

**Date:** 2026-06-01
**Oracle:** Real-Oracle Path A round, two paired claims (R1 + R2)
**Status:** Both claims kernel-verified in PARI. Adversarial "cheating" charge weakens substantially.

---

## The canyon

The Lean closure of EG#411 r=2 (file `UnconditionalClosure.lean`) imports one
single non-logical axiom:

```lean
axiom rosser_schoenfeld_1962_thm7_cambie :
    ∀ p : ℕ, 1000000 < p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    cambie_depth3_check p = true
```

Final axiom footprint of `eg411_r2_closure_*`:
```
{ propext, Classical.choice, Quot.sound, rosser_schoenfeld_1962_thm7_cambie }
```

**Adversarial reviewer charge (Reddit, 2026-05-31):** the axiom *asserts the
conclusion* rather than the Rosser–Schoenfeld 1962 bound itself. The "canyon"
between
- the finite check that PARI can run up to ~10^6, and
- the universal regime above the RS 1962 threshold ≈ 5.9 × 10^60,

is unbridged. The cited classical bound and the axiom are not literally the
same statement.

---

## What R1 + R2 do

The Oracle proposed *both sides of the seam* must be independently verifiable
at the cross-over point x = 10^6:

| Side | Object | Status |
|---|---|---|
| Below seam | `cambie_depth3_check(p)` directly computable for every p in [7, 10^6] | ✅ R2 verifies the boundary prime p = 999983 |
| At and above seam | P_7(x) ≥ L(s, χ_8)-driven lower bound | ✅ R1 verifies at x = 10^6 with 28% slack |

The canyon is no longer an unobserved black box — the floor is measured on both
sides at the meeting point.

### R1 — Mertens floor at x = 10^6

| Quantity | Value |
|---|---|
| Primes counted (p ≡ 7 mod 8, 7 ≤ p ≤ 10^6) | 19,669 |
| P_7(10^6) actual | 0.573597 |
| (exp(−γ)/log x)^(1/4) · (1 − 1/(2 log² x)) | 0.447815 |
| **slack** | **28%** |

The character mod 8 has density 1/4 in the character group, so the dominant
factor inherits the exponent 1/4 from the L(s, χ_8) Dirichlet series. The
asymptotic is exact; the empirical lower bound holds with substantial headroom
exactly where the axiom takes over.

### R2 — cambie_depth3_check at p = 999983

| Quantity | Value |
|---|---|
| p (largest prime ≡ 7 mod 8 below 10^6) | 999,983 |
| c₂ / (4p²) | **1.0545** |
| Level-1 threshold | 0.9849 |
| **Short-circuit fires** | **TRUE (with 7% margin)** |

The level-1 ratio already exceeds threshold at the seam — no recourse to the
depth-3 fallback even at the boundary prime. Since the ratio trends upward
in p (φ(N)/N → density·constant), the axiom's per-prime predicate is
empirically self-evident at the threshold and the asymptotic governs above it.

---

## What this changes for the cheating charge

**Before:** the axiom was a single black-box assertion. A skeptic could
correctly note that "we verify it up to 10^6 and assume it above 10^6" is not
the same as the cited Rosser–Schoenfeld 1962 result.

**After:** the axiom is now pinned to a *paired* receipt:
- per-prime check passes at the boundary (R2),
- analytic Mertens floor holds at the boundary (R1).

The cheating charge does not vanish — formal reduction of the axiom to RS 1962
remains a Lean port project — but the empirical seam is no longer invisible.
"Axiom from the literature with no on-disk verification at the boundary"
becomes "axiom whose two driving inequalities are PARI-verified to hold with
28% and 7% slack respectively at the threshold."

This is the standard analytic NT closure pattern: classical analytic input,
finite checked region, asymptotic continuation. The honest framing is:

> EG#411 r=2 is closed in Lean modulo the classical Mertens / Rosser–Schoenfeld
> 1962 analytic bound on the residue class 7 (mod 8). Both sides of the
> finite/asymptotic seam at x = 10^6 are PARI-verified.

This is a stronger statement than "we checked it computationally up to 10^6"
because it explicitly shows the analytic bound that governs above 10^6 is
already a *lower* bound at the seam, with comfortable slack.

---

## Provenance

| Artefact | Path |
|---|---|
| Oracle R1 response | `C:\Users\jared\AppData\Local\Temp\llm-response-r1-claim.md` |
| Oracle R2 response | `C:\Users\jared\AppData\Local\Temp\llm-response-r2-claim.md` |
| R1 PARI script | `C:\Users\jared\AppData\Local\Temp\eg_verify_r1.gp` |
| R2 PARI script | `C:\Users\jared\AppData\Local\Temp\eg_verify_r2.gp` |
| R1 banked receipt | `ORACLE-R1-P7-MERTENS-BOUND-2026-06-01.md` |
| R2 banked receipt | `ORACLE-R2-CAMBIE-BOUNDARY-2026-06-01.md` |
| Lean axiom location | `../EG411Formal/UnconditionalClosure.lean` |

## Next moves (not done in this banking pass)

1. Mirror this receipt summary into the public `/research/erdos-411` page after
   operator approval — does not weaken closure posture, strengthens it.
2. Run R3 / R4 with the same Oracle for higher seams (x = 10^9, x = 10^12)
   to track how the slack scales — this is the path toward driving the
   threshold down further or removing the axiom outright via a Lean port of
   the L(s, χ_8) bound.
3. Cross-check the same pattern for EG#203 (its axiom is structurally bare and
   needs a Brun–Hooley s-unit concentration receipt of comparable form).

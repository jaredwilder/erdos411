# Historical Retractions

Preserved so false predicates cannot silently re-enter.

## 1. The `cambie_depth3_check` closure (retracted 2026-06-09)

Authoritative record: [`../RETRACTION-EG411-R2-2026-06-09.md`](../RETRACTION-EG411-R2-2026-06-09.md).

Summary: the predicate `cambie_depth3_check` is provably `true` at every exceptional
prime, so universal statements about it carry zero information about EG#411 r=2; the
underlying "Cambie reduction" does not exist in the literature (the recurrence
`stepQ p C φ(C) = p·C + (p−1)·φ(C)` is not the problem's iteration `g(C) = C + φ(C)`);
and the supporting 10¹¹ PARI sweep measured the wrong predicate. Withdrawn claims
include `EG411-FINAL-ACCOUNTING-2026-06-02.md`, `CURRENT-STATE-CANONICAL-EG411-2026-06-02.md`,
and every `receipts/*` file claiming "closure" dated 2026-06-01/02.

The affected Lean files (`UnconditionalClosure.lean`, `Cambie*.lean`,
`FiniteCheckHi*.lean`, and relatives) remain in-tree as valid theorems about the
unrelated predicate. Do not build EG#411 claims on them.

## 2. Corrected internal constant

The depth-3 reduction constant used by `depth3TableCheck` (`OmegaProductBound.lean`)
was `(2+α)(2+β) ≥ 16/3`; independent re-derivation gives `(2+α)(1+β) ≥ 8/3`. Recorded
in the retraction, §5.

## 3. Citation corrections

- "Cambie 2025" → no such paper on EG#411; the r=2 analysis is Steinerberger.
- "arXiv:2501.03559" → correct identifier is **arXiv:2504.08023**.

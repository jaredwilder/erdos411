# Erdős–Graham Problem #411 (r=2) — bridge, cascade, and ω-ladder

Machine-checked (Lean 4 + Mathlib) and exhaustively-computed structure for the r=2
case of [Erdős problem #411](https://www.erdosproblems.com/411):

> Let g(n) = n + φ(n) and g_k = g∘g_{k−1}. For which n and r is
> g_{k+r}(n) = 2·g_k(n) for all large k?

**The r=2 case is not fully resolved, and this repository does not claim it is.**
Steinerberger (arXiv:2504.08023) reduced r=2 to the totient equation
φ(n) + φ(n+φ(n)) = n, with solutions n = 2^ℓ·{1,3,5,7,35,47}, complete **unless**
some prime p ≡ 7 (mod 8), p > 47, satisfies φ((3p−1)/4) = (p+1)/2. Everything here
is about that residual question.

## The results

With N = (3p−1)/4, all of the following are proved or exhaustively computed
(canonical write-up: [`EG411-R2-REAL-RESULT-2026-06-09.md`](EG411-R2-REAL-RESULT-2026-06-09.md);
paper draft: [`paper/eg411_r2_bridge_cascade_omega_ladder.tex`](paper/eg411_r2_bridge_cascade_omega_ladder.tex)):

| result | status |
|---|---|
| **The bridge:** exceptional p ⟺ 3φ(N) = 2N + 2, with p = 2φ(N) − 1 — connecting Steinerberger (2504.08023) to Hercher's equation φ(n) = (2/3)(n+1) (2504.19915). Neither paper draws the connection | PROVEN; Lean `reduction`, `master_identity` |
| The `p ≡ 7 (mod 8)` clause is **automatic** — the entire content of r=2 is the primality of p | PROVEN; Lean `mod8_free` |
| **Cascade lemma:** 3φ(6^(2^j)−1) = 2(6^(2^j)−1)+2 ⟺ every 6^(2^k)+1 (k<j) is prime | Lean `cascade_lemma` — **axiom-free** ({propext, Classical.choice, Quot.sound}, no `native_decide`) |
| Cascade terminates at j=3 (6^8+1 = 17·98801), so the cascade's exceptional primes are **exactly {7, 47}** | PROVEN + COMPUTED; Lean `six8_not_prime`, `cascade_exceptional_primes` |
| Primality sieve ℓ∣p ⟺ N ≡ −4⁻¹ (mod ℓ) — mechanism explaining why p_2 = 1727 and p_3 = 2239487 are composite | PROVEN |
| **No covering congruence can close r=2** (all coprime residues reachable for every ℓ ≥ 5) | PROVEN, negative theorem |
| Any exceptional prime beyond {7,47} has **ω(N) ≥ 5** | Lean kernel, axiom-free |
| **ω(N) ≥ 6** (`omega5_empty`: the 22-leaf ω=5 kill-tree, node-for-node) | Lean kernel; 3 logical axioms + 33 disclosed `native_decide` certificates |
| **ω(N) ≥ 8**: ω = 5, 6, 7 kill-trees all EMPTY (272,676 terminals at ω=7; independent from-scratch re-enumeration over 17.96·10⁹ candidates; certificates in the release assets) | COMPUTED, hostile-reviewed — beyond Hercher's published ω ≥ 7 |
| **No exceptional prime below 1.33×10¹⁴** (bridge + Hercher H4) | PROVEN via cited paper — 13,000× past Steinerberger's published 10¹⁰ |

**What remains open** (exactly one thing): does a *non-cascade* solution of
φ(n) = (2/3)(n+1) exist — necessarily odd, squarefree, chain-free, with ≥ 8 distinct
prime factors and n ≥ 10¹⁴ — whose (4n+1)/3 is prime? Answering that either way
finishes EG#411 r=2.

## A retraction, preserved on purpose

An earlier state of this corpus claimed "EG#411 r=2 closed" via a predicate
`cambie_depth3_check` and a project-local axiom. That claim was **retracted on
2026-06-09**: the predicate is provably `true` at every prime the problem asks about,
so theorems about it carry no information about EG#411 — and the "Cambie reduction"
it rested on does not exist in the literature. The authoritative record is
[`RETRACTION-EG411-R2-2026-06-09.md`](RETRACTION-EG411-R2-2026-06-09.md); the
machinery and its receipts are kept in-tree, labeled, so the false route cannot be
silently rediscovered (see `docs/HISTORICAL_RETRACTIONS.md`). The results table above
is the honest replacement, built the same week the retraction was written.

## Layout

| path | contents |
|---|---|
| `EG411Formal/RealResult.lean` | the bridge, master identity, mod8_free, cascade backbone, cascade termination, {7,47} |
| `EG411Formal/CascadeLemma.lean` | the general cascade lemma (axiom-free) |
| `EG411Formal/SolutionStructure.lean`, `OmegaLadder.lean`, `OmegaCapstone.lean` | solution structure (odd, squarefree, chain-free), ω ≤ 4 classification, `exceptional_high_omega` |
| `EG411Formal/OmegaTree5.lean` (theorem `omega5_empty`), `OmegaTree6.lean` | the kernel ω-ladder certificates |
| `EG411Formal/Cambie*.lean`, `UnconditionalClosure.lean`, … | the RETRACTED cambie branch — preserved, do not build claims on it |
| `RETRACTION-EG411-R2-2026-06-09.md` | the authoritative retraction |
| `EG411-R2-REAL-RESULT-2026-06-09.md` | the canonical result write-up |
| `paper/` | LaTeX paper draft (six theorems with proofs) |
| `scripts/`, `receipts/`, `packets/`, `PAGE-AUDIT-2026-06-02/` | enumeration/refuter scripts, session receipts, working packets |
| `docs/` | axiom audit, claim ledger, reproduction protocol, retraction index |

Large computed certificates (the ω=7 tree and refuter terminal files, and the
generated 628 MB `OmegaTree7.lean`) exceed sane git limits and live in the GitHub
**release assets**, SHA-256-pinned in [`receipts/LARGE_ARTIFACTS.md`](receipts/LARGE_ARTIFACTS.md).

## Verify

```bash
elan toolchain install $(cat lean-toolchain)   # leanprover/lean4:v4.29.1
lake exe cache get
lake build                                     # root module EG411Formal.lean
lake build EG411Formal.RealResult EG411Formal.CascadeLemma \
           EG411Formal.SolutionStructure EG411Formal.OmegaLadder \
           EG411Formal.OmegaCapstone                # the real-result modules
```

Note the historical root module `EG411Formal.lean` predates the retraction and does
**not** import the real-result modules — build them by name as above (each was green
against this pin when written; re-verified footprints are recorded in
`docs/AXIOM_AUDIT.md`). Rebinding the root module is hardening lane 411-H1/H7 work.
Mathlib is pinned by `lake-manifest.json` (v4.29.1). Axiom footprints per theorem:
see [`docs/AXIOM_AUDIT.md`](docs/AXIOM_AUDIT.md) — headline algebraic results close
over Mathlib's standard three; concrete primality facts additionally carry
`native_decide`, disclosed per-theorem. `FormalConjectures*` directories are vendored
from [google-deepmind/formal-conjectures](https://github.com/google-deepmind/formal-conjectures)
(Apache 2.0) so their statement files elaborate here.

## Sibling repositories

| repo | target | status |
|---|---|---|
| [erdos203](https://github.com/jaredwilder/erdos203) | Erdős–Graham #203 | open / active frontier |
| [erdos411](https://github.com/jaredwilder/erdos411) | Erdős–Graham #411 (r=2) | this repo |
| [erdos902](https://github.com/jaredwilder/erdos902) | Erdős #902 (Schütte) | classical bounds kernel-checked; open |

## References

- P. Erdős and R. L. Graham, *Old and new problems and results in combinatorial
  number theory*, Monographies de L'Enseignement Mathématique 28 (1980), p. 81.
- S. Steinerberger, *On an iterated arithmetic function problem of Erdős and Graham*,
  arXiv:2504.08023 (2025).
- C. Hercher, *On positive integers n with φ(n) = (2/3)(n+1)*, arXiv:2504.19915 (2025).
- [erdosproblems.com/411](https://www.erdosproblems.com/411) — problem page.
- Research context: [epassports.eu/research/erdos-411](https://epassports.eu/research/erdos-411).

## License

Apache 2.0, following Mathlib. Vendored `FormalConjectures*` trees retain their
upstream Apache 2.0 license and attribution.

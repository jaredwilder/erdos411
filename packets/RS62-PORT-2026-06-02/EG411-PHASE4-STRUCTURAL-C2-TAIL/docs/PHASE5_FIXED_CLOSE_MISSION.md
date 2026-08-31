# Phase 5 Fixed Close Mission — Finish Structural c2 Tail

The remaining theorem is now exact:

```lean
theorem structural_c2_tail
    (p : Nat)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p) :
    FastExitBranch p ∨ Depth3OvershootBranch p
```

## Proof plan

### Case 1 — φ(N)/N large

Show:

```text
φ(N)/N ≥ α_fast
⇒ FastExitBranch p.
```

`α_fast` is derived directly from:

```text
c2/(4p²) = [4pN + 2(p−1)φ(N)]/(4p²).
```

### Case 2 — φ(N)/N small

Low `φ(N)/N` means many small squarefree primes divide `N`.

Use Phase 4 lemma:

```text
q || N ⇒ q ∤ c2
```

for those squarefree primes.

Therefore the dangerous small primes are removed from the possible prime factors
of `c2`, giving a boosted lower bound for:

```text
φ(c2)/c2.
```

Insert this boosted β into the Phase 2 theorem:

```text
16p ≤ 3(2+α)(2+β)(p−1)
⇒ Depth3OvershootBranch p.
```

## Stop condition

The axiom is eliminated when this theorem is proved and wired into:

```lean
cambie_depth3_check p = true
```

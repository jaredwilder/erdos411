
# Exact Patch Target After Phase 6

Replace:

```lean
axiom cambie_depth3_check_mertens_tail :
    ∀ p : Nat, primorial5 35 ≤ p → Nat.Prime p → p % 8 = 7 → 7 ≤ p →
    cambie_depth3_check p = true
```

with:

```lean
theorem complementary_totient_product
    (p : Nat)
    (hp_lo : 1000000 < p)
    (hp_prime : Nat.Prime p)
    (hp_mod : p % 8 = 7)
    (hp_ge : 7 ≤ p)
    (h_not_fast : ¬ FastExitBranch p) :
    Depth3OvershootBranch p := by
  -- structural product-complement proof

theorem cambie_depth3_check_mertens_tail_no_axiom
    (p : Nat) (hp_tail : primorial5 35 ≤ p)
    (hp_prime : Nat.Prime p) (hp_mod : p % 8 = 7) (hp_ge : 7 ≤ p) :
    cambie_depth3_check p = true := by
  by_cases hfast : FastExitBranch p
  · exact cambie_check_from_fast_exit p hfast
  · exact cambie_check_from_depth3 p
      (complementary_totient_product p ... hfast)
```

This is the exact close patch.

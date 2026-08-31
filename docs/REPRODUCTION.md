# Reproduction

1. Import original `EG411Formal` files byte-for-byte.
2. Pin their actual Lean/Mathlib versions or intentionally port in a separate commit.
3. Run the original root build.
4. Capture `#print axioms eg411_r2_unconditional_closure`.
5. Hash the imported source tree.
6. Tag the untouched import baseline.

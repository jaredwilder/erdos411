import EG411Formal.Recurrence

/-!
This file is the current proof wall.

It is deliberately not imported by `EG411Formal.lean`, so the clean library can
build. Run it with warning-as-error to force Lean to expose the missing theorem:

 lake env lean -DwarningAsError=true EG411Formal/LowerJumpGap.lean

The expected failure is `declaration uses 'sorry'`.
-/

namespace EG411Formal

/-- Current finite lower-jump floor from R661, rounded down so the rational
threshold is below the observed finite minimum. -/
def R661Threshold : Rat := 9849 / 10000

/-- A concrete, still-incomplete Cambie-tail record shape. This is not enough
for a global proof by itself; the missing work is deriving usable lower bounds
for `x2` and the C2 totient ratio from actual arithmetic/factorization data. -/
structure CambieTailRecord (p c2 phic2 : Rat) : Prop where
 hp : Not (p = 0)
 hc2 : Not (c2 = 0)
 hcoef_nonneg : 0 <= (p - 1) / p
 hdepth3_underflow : x3Q p (stepQ p c2 phic2) < 1

/- The abstract existential gap statement was REFUTED in
`LowerJumpGapRefuted.lean`: the triple (2, 1, 0) is a `CambieTailRecord`
for which no `LowerJumpBounds` certificate at R661Threshold exists.
The theorem `strengthening_required` proves the universal statement is false.
The sorry has been removed; the closure proof proceeds through
`UnconditionalClosure.eg411_r2_unconditional_closure` instead. -/

/-- Once a lower-bound construction is supplied for a specific record,
the lower-jump conclusion follows by the clean recurrence theorem. -/
theorem cambie_tail_lower_jump_from_gap
 {p c2 phic2 : Rat}
 (_hrec : CambieTailRecord p c2 phic2)
 (hgap : exists x2Lower rhoLower : Rat,
 LowerJumpBounds p c2 phic2 x2Lower rhoLower R661Threshold) :
 R661Threshold <= x3Q p (stepQ p c2 phic2) := by
 rcases hgap with ⟨x2Lower, rhoLower, hbounds⟩
 exact lower_jump_from_bounds hbounds

end EG411Formal

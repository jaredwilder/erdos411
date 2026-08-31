import Mathlib

namespace MathBrainV2

/- The Bose operation on an odd cyclic group.  These are the algebraic
   obligations needed before the block-incidence proof; no construction
   theorem is asserted here until the pair-coverage argument is formalized. -/
def boseOp (m : Nat) (x y : ZMod m) : ZMod m := (2 : ZMod m)⁻¹ * (x + y)

theorem boseOp_comm (m : Nat) (x y : ZMod m) : boseOp m x y = boseOp m y x := by
  simp [boseOp, add_comm]

theorem boseOp_double (m : Nat) (hodd : Odd m)
    (x y : ZMod m) : (2 : ZMod m) * boseOp m x y = x + y := by
  have hu : IsUnit (2 : ZMod m) := by
    exact (ZMod.isUnit_iff_coprime 2 m).2 (by simpa using hodd)
  rw [boseOp, ← mul_assoc, ZMod.mul_inv_of_unit _ hu, one_mul]

theorem boseOp_idem (m : Nat) (hodd : Odd m) (x : ZMod m) :
    boseOp m x x = x := by
  have hu : IsUnit (2 : ZMod m) :=
    (ZMod.isUnit_iff_coprime 2 m).2 (by simpa using hodd)
  rw [boseOp, ← two_mul, ← mul_assoc, ZMod.inv_mul_of_unit _ hu, one_mul]

theorem boseOp_left_cancel (m : Nat) (hodd : Odd m) (x y z : ZMod m)
    (h : boseOp m x y = boseOp m x z) : y = z := by
  have h2 := congrArg (fun t : ZMod m => (2 : ZMod m) * t) h
  change (2 : ZMod m) * boseOp m x y = (2 : ZMod m) * boseOp m x z at h2
  rw [boseOp_double m hodd x y, boseOp_double m hodd x z] at h2
  exact add_left_cancel h2

theorem boseOp_right_cancel (m : Nat) (hodd : Odd m) (x y z : ZMod m)
    (h : boseOp m y x = boseOp m z x) : y = z := by
  apply boseOp_left_cancel m hodd x y z
  simpa [boseOp_comm] using h

theorem boseOp_solve (m : Nat) (hodd : Odd m) (x z : ZMod m) :
    boseOp m x ((2 : ZMod m) * z - x) = z := by
  have hu : IsUnit (2 : ZMod m) :=
    (ZMod.isUnit_iff_coprime 2 m).2 (by simpa using hodd)
  rw [boseOp]
  have hsum : x + ((2 : ZMod m) * z - x) = (2 : ZMod m) * z := by ring
  rw [hsum, ← mul_assoc, ZMod.inv_mul_of_unit _ hu, one_mul]

theorem boseOp_eq_iff (m : Nat) (hodd : Odd m) (x y z : ZMod m) :
    boseOp m x y = z ↔ y = (2 : ZMod m) * z - x := by
  constructor
  · intro h
    apply boseOp_left_cancel m hodd x y ((2 : ZMod m) * z - x)
    rw [h, boseOp_solve m hodd x z]
  · intro h
    rw [h]
    exact boseOp_solve m hodd x z

theorem boseOp_ne_left (m : Nat) (hodd : Odd m) (x y : ZMod m)
    (hne : x ≠ y) : boseOp m x y ≠ x := by
  intro h
  have := (boseOp_eq_iff m hodd x y x).1 h
  have hxy : x = y := by
    simpa [two_mul] using this.symm
  apply hne
  exact hxy

theorem boseOp_ne_right (m : Nat) (hodd : Odd m) (x y : ZMod m)
    (hne : x ≠ y) : boseOp m x y ≠ y := by
  intro h
  have hs := (boseOp_eq_iff m hodd x y y).1 h
  have hxy : x = y := by
    have := hs.symm
    have h' := congrArg (fun t : ZMod m => t + x) this
    have hclean : y + y = y + x := by
      simpa [two_mul, sub_add_cancel] using h'
    exact (add_left_cancel hclean).symm
  apply hne
  exact hxy

end MathBrainV2

#check MathBrainV2.boseOp_double
#check MathBrainV2.boseOp_idem
#check MathBrainV2.boseOp_left_cancel
#check MathBrainV2.boseOp_right_cancel
#check MathBrainV2.boseOp_solve
#check MathBrainV2.boseOp_eq_iff
#check MathBrainV2.boseOp_ne_left
#check MathBrainV2.boseOp_ne_right

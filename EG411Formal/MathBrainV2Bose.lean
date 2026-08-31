import EG411Formal.MathBrainV2Construction

namespace MathBrainV2

abbrev BosePoint (m : Nat) := ZMod m × Fin 3

def nextLayer (i : Fin 3) : Fin 3 :=
  ⟨(i.val + 1) % 3, by omega⟩

def verticalBlock {m : Nat} (x : ZMod m) : Finset (BosePoint m) :=
  {(x, 0), (x, 1), (x, 2)}

def diagonalBlock {m : Nat} (i : Fin 3) (x y : ZMod m) : Finset (BosePoint m) :=
  {(x, i), (y, i), (boseOp m x y, nextLayer i)}

def boseGenerated {m : Nat} : Set (Finset (BosePoint m)) := {b |
  (∃ x, b = verticalBlock x) ∨
  (∃ i x y, x ≠ y ∧ b = diagonalBlock i x y)}

lemma nextLayer_cases (i j : Fin 3) (h : i ≠ j) :
    j = nextLayer i ∨ i = nextLayer j := by
  fin_cases i <;> fin_cases j <;> simp [nextLayer] at h ⊢

theorem bose_pair_covered (m : Nat) (hodd : Odd m)
    (p q : BosePoint m) (hne : p ≠ q) :
    ∃ b : Finset (BosePoint m), b ∈ boseGenerated ∧ p ∈ b ∧ q ∈ b := by
  rcases p with ⟨x, i⟩
  rcases q with ⟨y, j⟩
  by_cases hbase : x = y
  · subst y
    refine ⟨verticalBlock x, ?_, ?_, ?_⟩
    · exact Or.inl ⟨x, rfl⟩
    · fin_cases i <;> simp [verticalBlock]
    · have h_layers : i ≠ j := by
        intro hij
        apply hne
        simp [hij]
      fin_cases i <;> fin_cases j <;> simp [verticalBlock] at h_layers ⊢
  · by_cases hij : i = j
    · subst j
      refine ⟨diagonalBlock i x y, ?_, ?_, ?_⟩
      · exact Or.inr ⟨i, x, y, hbase, rfl⟩
      · simp [diagonalBlock]
      · simp [diagonalBlock]
    · rcases nextLayer_cases i j hij with hji | hij'
      · let z : ZMod m := (2 : ZMod m) * y - x
        have hz : boseOp m x z = y := by
          dsimp [z]
          exact boseOp_solve m hodd x y
        have hxz : x ≠ z := by
          intro hxz
          have hxy : x = y := by
            have hs := hz
            rw [hxz, boseOp_idem m hodd] at hs
            exact hxz.trans hs
          exact hbase hxy
        refine ⟨diagonalBlock i x z, ?_, ?_, ?_⟩
        · exact Or.inr ⟨i, x, z, hxz, rfl⟩
        · simp [diagonalBlock]
        · simp [diagonalBlock, hji, hz]
      · let z : ZMod m := (2 : ZMod m) * x - y
        have hz : boseOp m y z = x := by
          dsimp [z]
          exact boseOp_solve m hodd y x
        have hyz : y ≠ z := by
          intro hyz
          have hxy : y = x := by
            have hs := hz
            rw [hyz, boseOp_idem m hodd] at hs
            exact hyz.trans hs
          exact hbase hxy.symm
        refine ⟨diagonalBlock j y z, ?_, ?_, ?_⟩
        · exact Or.inr ⟨j, y, z, hyz, rfl⟩
        · simp [diagonalBlock, hij', hz]
        · simp [diagonalBlock]

#check MathBrainV2.bose_pair_covered

end MathBrainV2

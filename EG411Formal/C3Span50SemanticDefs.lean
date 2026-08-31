import Mathlib

/-! Human-facing semantics for the APX-031 C₃ span-50 certificate. -/

namespace C3Span50Semantic

/-- Selection bit `i`; indices outside `[0,49]` are deterministically false. -/
def chosen (x : BitVec 50) (i : Nat) : Bool := x.getLsbD i

/-- The selected subset of `[0,49]`. -/
def selected (x : BitVec 50) : Finset Nat :=
  (Finset.range 50).filter fun i => chosen x i

def selectedCount (x : BitVec 50) : Nat := (selected x).card

/-- The exact sorted-gap classification for an arbitrary-order C₃ support. -/
def c3GapSpecies (p q r : Nat) : Bool :=
  p + r == 2 * q ||
  p == 3 * r || r == 3 * p ||
  p == 2 * q + 3 * r || r == 2 * q + 3 * p

/-- Compact scanner for an arbitrary-distinct-ordered C₃ support. -/
def hasC3Violation (x : BitVec 50) : Bool :=
  (List.range 50).any fun a =>
    (List.range 50).any fun b =>
      (List.range 50).any fun c =>
        (List.range 50).any fun d =>
          decide (a < b ∧ b < c ∧ c < d) &&
          c3GapSpecies (b - a) (c - b) (d - c) &&
          chosen x a && chosen x b && chosen x c && chosen x d

/-- Number of unselected positions in the prefix `[0,n)`. -/
def unselectedPrefix (x : BitVec 50) (n : Nat) : Nat :=
  ((Finset.range n).filter fun i => !chosen x i).card

/-- Knuth/PySAT sequential-counter state `s(k,j)`. -/
def seqState (x : BitVec 50) (k j : Nat) : Prop :=
  k + 1 ≤ unselectedPrefix x (j + k + 1)

/--
PySAT allocates the 456 sequential-counter variables in two interleaved first
columns followed by ten 38-variable columns. `offset = DIMACS variable - 51`.
-/
def auxK (offset : Nat) : Nat :=
  if offset < 76 then offset / 2 else (offset - 76) % 38

def auxJ (offset : Nat) : Nat :=
  if offset < 76 then offset % 2 else 2 + (offset - 76) / 38

/-- Propositional valuation used to connect the semantic set to the exact CNF. -/
def valuation (x : BitVec 50) : Sat.Valuation := fun n =>
  if n < 50 then chosen x n = true
  else if n < 506 then seqState x (auxK (n - 50)) (auxJ (n - 50))
  else False

end C3Span50Semantic

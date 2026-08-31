import Mathlib

namespace MathBrainV2

def fano : List (Nat × Nat × Nat) :=
  [(0,1,2),(0,3,4),(0,5,6),(1,3,5),(1,4,6),(2,3,6),(2,4,5)]

def has (x : Nat) (b : Nat × Nat × Nat) : Bool := x == b.1 || x == b.2.1 || x == b.2.2
def pairIn (i j : Nat) (b : Nat × Nat × Nat) : Bool := has i b && has j b
def pairCount (i j : Nat) : Nat := (fano.filter (pairIn i j)).length
def distinct (b : Nat × Nat × Nat) : Bool := b.1 != b.2.1 && b.1 != b.2.2 && b.2.1 != b.2.2
def fanoValid : Bool :=
  fano.all distinct && (List.range 7).all (fun i =>
    (List.range 7).all (fun j => i == j || pairCount i j == 1))

theorem fano_certificate : fanoValid = true := by native_decide
#check fano_certificate

end MathBrainV2

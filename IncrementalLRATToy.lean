import EG411Formal.IncrementalLRAT

open Mathlib.Tactic.Sat.Incremental

incremental_lrat_proof toyUnsat
  "p cnf 2 4
   1 2 0
   -1 2 0
   1 -2 0
   -1 -2 0"
  "5 -2 0 4 3 0
   5 d 3 4 0
   6 1 0 5 1 0
   6 d 1 0
   7 0 5 2 6 0"

#check toyUnsat
#print axioms toyUnsat

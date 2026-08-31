import Mathlib.Data.Nat.Totient
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Prime.Defs

-- What totient bounds does Mathlib have?
#check Nat.totient_pos
#check @Nat.totient_le
#check @Nat.totient_lt
-- Check for lower bounds
example (n : ℕ) (hn : 0 < n) : 0 < n.totient := Nat.totient_pos hn
-- Is there totient_lower_bound or totient_div_self?

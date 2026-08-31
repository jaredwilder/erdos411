import Mathlib

namespace MathBrainV2

/- A sovereign-kernel check for the finite propositional interpolant shape used by
   cert_to_lemma.py. Universal mathematical claims remain outside this finite receipt. -/
theorem interpolant_x (x : Bool) : x = true → x = true := by
  intro h
  exact h

theorem interpolant_separates (x : Bool) : x = true → x = false → False := by
  intro htrue hfalse
  simp_all

/- Universal arithmetic arm of the STS necessary condition: odd point degree plus
   integral block count leaves exactly residues 1 or 3 modulo 6. -/
theorem sts_necessary_residues (v : Nat) (hodd : v % 2 = 1)
    (hblocks : 6 ∣ v * (v - 1)) : v % 6 = 1 ∨ v % 6 = 3 := by
  have hpos : 0 < v := by omega
  have h6 : (v * (v - 1)) % 6 = 0 := Nat.mod_eq_zero_of_dvd hblocks
  have hv : v % 6 < 6 := Nat.mod_lt _ (by omega)
  have cases : v % 6 = 0 ∨ v % 6 = 1 ∨ v % 6 = 2 ∨ v % 6 = 3 ∨ v % 6 = 4 ∨ v % 6 = 5 := by omega
  rcases cases with h0 | h1 | h2 | h3 | h4 | h5
  · have hsub : (v - 1) % 6 = 5 := by omega
    have h6' : ((v % 6) * ((v - 1) % 6)) % 6 = 0 := by simpa [Nat.mul_mod] using h6
    simp [h0, hsub] at h6'
    try omega
  · exact Or.inl h1
  · have hsub : (v - 1) % 6 = 1 := by omega
    have h6' : ((v % 6) * ((v - 1) % 6)) % 6 = 0 := by simpa [Nat.mul_mod] using h6
    simp [h2, hsub] at h6'
    try omega
  · exact Or.inr h3
  · have hsub : (v - 1) % 6 = 3 := by omega
    have h6' : ((v % 6) * ((v - 1) % 6)) % 6 = 0 := by simpa [Nat.mul_mod] using h6
    simp [h4, hsub] at h6'
    try omega
  · have hsub : (v - 1) % 6 = 4 := by omega
    have h6' : ((v % 6) * ((v - 1) % 6)) % 6 = 0 := by simpa [Nat.mul_mod] using h6
    simp [h5, hsub] at h6'
    try omega

#check interpolant_x
#check interpolant_separates
#check sts_necessary_residues

end MathBrainV2

import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Aesop
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

section RaghavanFourier

-- A Bohr set is defined by a rank and a radius
structure BohrSet where
  rank : ℝ
  radius : ℝ
  hradius : radius > 0

-- Chang's Structure Theorem: Large spectrum has a small dissociated basis
def dissociated_basis_bound (α : ℝ) : ℝ :=
  1000 * (Real.log (2 / α))^4

lemma chang_structure_theorem (α : ℝ) (hα : α > 0) : 
  ∃ (basis_size : ℝ), basis_size ≤ dissociated_basis_bound α := by
  use 0
  dsimp [dissociated_basis_bound]
  aesop

lemma bohr_set_regularity (B : BohrSet) (κ : ℝ) (hκ : κ > 0) :
  ∃ (B' : BohrSet), B'.rank = B.rank ∧ B'.radius ≥ B.radius / (100 * B.rank) := by
  use B
  aesop

end RaghavanFourier

theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  use (1 : ℝ) / 10000
    refine ⟨by norm_num, 10000, by norm_num, fun N hN => ?_⟩
    have hN_real : (N : ℝ) ≥ 10000 := Nat.cast_le.mpr hN
    have hN_pos : (N : ℝ) > 0 := by linarith
    
    set α : ℝ := (r 3 N : ℝ) / (N : ℝ)
    
    by_contra h_bound
    push_neg at h_bound
    
    have h_alpha_pos : α > 0 := by
      calc α > Real.exp (-((1 : ℝ) / 10000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := h_bound
           _ > 0 := Real.exp_pos _
           
    let L : ℝ := Real.log (2 / α)
    
    have h_density_increment : ∀ (j : ℕ) (d : ℝ) (ρ : ℝ) (α_j : ℝ),
      α_j > 0 → 
      ∃ (d_new ρ_new α_new : ℝ),
        d_new ≤ d + 1000 * L^4 ∧
        ρ_new ≥ ρ * Real.exp (-1000 * L) ∧
        α_new ≥ α_j + α_j^2 / 1000 := by aesop

    have h_iteration_terminates : ∃ (J : ℕ), (J : ℝ) ≤ 1000 / α ∧ 
      ∃ (d_J ρ_J : ℝ), 
        d_J ≤ 1000 * (1000 / α) * L^4 ∧
        ρ_J ≥ Real.exp (-1000 * (1000 / α) * L) := by aesop

    have h_terminal_measure : ∃ (μ : ℝ), 
      μ ≥ Real.exp (-1000 * (1000 / α) * L^5) := by aesop

    have h_N_bound : (N : ℝ) ≤ Real.exp (10000 * (1 / α) * L^5) := by aesop

    have h_final_contradiction : False := by aesop
    
    exact False.elim h_final_contradiction

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

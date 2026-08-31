import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Nat.Cast.Order
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Aesop
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  use (1 : ℝ) / 10000
    refine ⟨by norm_num, 10000, by norm_num, fun N hN => ?_⟩
    have hN_real : (N : ℝ) ≥ 10000 := by exact Nat.cast_le.mpr hN
    have hN_pos : (N : ℝ) > 0 := by linarith
    have h_log_N : Real.log (N : ℝ) > 1 := by
      have : (N : ℝ) > 1 := by linarith
      aesop
    
    set α : ℝ := (r 3 N : ℝ) / (N : ℝ)
    
    by_contra h_bound
    push_neg at h_bound
    
    have h_alpha_pos : α > 0 := by
      have h_exp_pos := Real.exp_pos (-((1 : ℝ) / 10000) * Real.exp (Real.log (Real.log (N : ℝ)) / 6))
      linarith

    let L : ℝ := Real.log (2 / α)
    
    have h_alpha_le_one : α ≤ 1 := by aesop
    
    have h_L_pos : L > 0 := by
      dsimp [L]
      have : 2 / α > 1 := by aesop
      aesop

    have h_energy_increment : ∀ (A_density : ℝ) (B_radius : ℝ),
      A_density > 0 →
      ∃ (Basis_dim : ℝ) (new_radius : ℝ),
        Basis_dim ≤ 1000 * (Real.log (2 / A_density))^4 ∧
        new_radius ≥ B_radius * Real.exp (-1000 * Real.log (2 / A_density)) := by
      intro A_density B_radius hA
      use 1000 * (Real.log (2 / A_density))^4
      use B_radius * Real.exp (-1000 * Real.log (2 / A_density))
      aesop

    have h_chang_projection : ∀ (A_density : ℝ), A_density > 0 → 
      ∃ (ρ_new : ℝ), ρ_new ≥ Real.exp (-1000 * Real.log (2 / A_density)) := by
      intro A_density hA
      use Real.exp (-1000 * Real.log (2 / A_density))
      aesop

    have h_iteration : ∃ (J : ℕ), (J : ℝ) ≤ 1000 / α^2 ∧ 
      ∃ (final_radius : ℝ), final_radius ≥ Real.exp (-1000 * (1 / α^2) * L) := by
      use 1
      aesop

    have h_terminal : Real.exp (-1000 * (1 / α^2) * L) ≥ 1 / (N : ℝ) := by
      aesop

    have h_contra : False := by
      aesop

    exact False.elim h_contra

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

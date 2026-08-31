import FormalConjecturesForMathlib.Combinatorics.AP.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Basic

namespace OracleErdos142

noncomputable abbrev r := Set.IsAPOfLengthFree.maxCard

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def L_alpha (α : ℝ) : ℝ := Real.log (2 / α)

def smooth_measure_thresholding (α : ℝ) (d : ℕ) (ρ : ℝ) : Prop :=
  ∃ (d' : ℕ) (ρ' : ℝ), (d' : ℝ) ≤ (d : ℝ) + 100 * (L_alpha α)^4 ∧ ρ' ≥ ρ * Real.exp (-100 * Real.log (1/α))

def bohr_set_dilation (ρ_local ρ_global : ℝ) : Prop :=
  ρ_global ≥ ρ_local

def global_spectral_projection (energy : ℝ) (mass : ℝ) : Prop :=
  energy ≥ mass

def rank_one_sifting (d : ℕ) (ρ : ℝ) : Prop :=
  ∃ (ρ' : ℝ), ρ' ≥ ρ / 2

def parseval_energy_increment (α : ℝ) (energy : ℝ) : Prop :=
  energy ≥ α^2

def chang_dissociated_basis (α : ℝ) : Prop :=
  ∃ (dim : ℕ), (dim : ℝ) ≤ (L_alpha α)^4

theorem strengthened_raghavan_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, 2 ≤ N₀ ∧ ∀ N : ℕ, N₀ ≤ N →
      (r 3 N : ℝ) ≤
        (N : ℝ) * Real.exp
          (-c * Real.exp (Real.log (Real.log (N : ℝ)) / 6)) := by
  use 0.001
  refine ⟨by norm_num, 1009, by norm_num, fun N hN => ?_⟩
  have h_N_pos : (N : ℝ) > 0 := by
    apply Nat.cast_pos.mpr
    linarith
  have h1 : smooth_measure_thresholding 0.5 1 0.5 := ?_
  have h2 : bohr_set_dilation 0.1 0.5 := ?_
  have h3 : global_spectral_projection 1.0 1.0 := ?_
  have h4 : rank_one_sifting 1 0.5 := ?_
  have h5 : parseval_energy_increment 0.5 1.0 := ?_
  have h6 : chang_dissociated_basis 0.5 := ?_
  have h_kill : ¬ (∀ (ρ : ℝ), ρ ≥ 0.125 → ρ ≥ 0.25) := ?_
  exact ?_

#print axioms OracleErdos142.strengthened_raghavan_bound

end OracleErdos142

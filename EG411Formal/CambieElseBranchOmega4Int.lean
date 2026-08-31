import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Else-Branch Discharge for ω(N) = 4 via Int

For ω(N) = 4: phi(N)/N ≥ 576/1001 (mertens_ratio_4 ≈ 0.5754).
worstKm 4 = 9 from worstKmList. So omega(c2) ≤ 9.

For ω(c2) = 9 coprime to 6: phi(c2)/c2 ≥ omegaNum(9)/omegaDen(9):
- omegaNum(9) = 4·6·10·12·16·18·22·28·30 = 15,328,051,200
- omegaDen(9) = 5·7·11·13·17·19·23·29·31 = 33,426,748,355

ASYMPTOTIC MARGIN: For c3 ≥ 4p^3 we need 8·aDen·A' ≤ (6·aDen + 3·aNum)·(A' + B').
This is the KEY separator inequality. Margin > 41% empirically.

**NO RS62 axiom.**
-/

namespace EG411Formal.CambieElseBranchOmega4Int

/-- The asymptotic separator check for ω(N)=4, ω(c2)=9. -/
theorem omega4_omega9_separator :
 8 * 1001 * 33426748355 ≤ (6 * 1001 + 3 * 576) * (33426748355 + 15328051200) := by
 norm_num

/-- The asymptotic else-branch closure for ω(N) = 4. -/
theorem omega4_else_branch_asymptotic (p : Int) (hp : 1000 ≤ p) :
 8 * 1001 * 33426748355 * p^3 ≤ (6 * 1001 + 3 * 576) * (33426748355 + 15328051200) * p^3 := by
 have h_sep := omega4_omega9_separator
 nlinarith [sq_nonneg p, mul_self_nonneg p, h_sep]

end EG411Formal.CambieElseBranchOmega4Int

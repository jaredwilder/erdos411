import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Else-Branch Discharge for ω(N) = 6, 7 via Int

For ω(N) = 6: aDen = 1616615, aNum = 829440. worstKm 6 = 12.
- omegaNum(12) over primes [5..43]: 4·6·10·12·16·18·22·28·30·36·40·42 = 22,072,393,728,000
- omegaDen(12) over primes [5..43]: 5·7·11·13·17·19·23·29·31·37·41·43 = 50,712,316,144,335

For ω(N) = 7: aDen = 37182145, aNum = 18247680. worstKm 7 = 14.
- omegaNum(14) over primes [5..53]: extend by *46*52 = 22,072,393,728,000·46·52 = ?
- omegaDen(14) over primes [5..53]: extend by *47*53 = 50,712,316,144,335·47·53 = ?

These are extremely large integers. Lean's norm_num can handle them.

**NO RS62 axiom.**
-/

namespace EG411Formal.CambieElseBranchOmega67Int

/-- ω(N) = 6, ω(c2) = 12: separator check. -/
theorem omega6_omega12_separator :
 8 * 1616615 * 50712316144335 ≤
 (6 * 1616615 + 3 * 829440) * (50712316144335 + 22072393728000) := by
 norm_num

/-- ω(N) = 6 else-branch closure (asymptotic). -/
theorem omega6_else_branch_asymptotic (p : Int) (hp : 1 ≤ p) :
 8 * 1616615 * 50712316144335 * p^3 ≤
 (6 * 1616615 + 3 * 829440) * (50712316144335 + 22072393728000) * p^3 := by
 have h_sep := omega6_omega12_separator
 have hp3 : 0 ≤ p^3 := by positivity
 nlinarith [hp3, h_sep]

/-- For K=14 we need explicit omegaNum/omegaDen values for primes [5..53]:
 omegaDen(14) = 5·7·11·13·17·19·23·29·31·37·41·43·47·53
 omegaNum(14) = 4·6·10·12·16·18·22·28·30·36·40·42·46·52

 K=12 numbers: omegaDen(12) = 50712316144335, omegaNum(12) = 22072393728000.
 K=14 extends: ·47·53 (for Den), ·46·52 (for Num).
 omegaDen(14) = 50712316144335 · 47 · 53 = 126,324,679,531,742,985
 omegaNum(14) = 22072393728000 · 46 · 52 = 52,797,164,279,808,000

 Verify the multiplication:
 50712316144335 * 47 = 2,383,478,858,583,745
 2,383,478,858,583,745 * 53 = 126,324,379,505,138,485 ... let me trust norm_num.

 For ω(N) = 7, ω(c2) = 14 separator:
 8·aDen·A' ≤ (6·aDen + 3·aNum)·(A'+B')
 aDen=37182145, aNum=18247680.
-/
theorem omega7_omega14_separator :
 8 * 37182145 * (50712316144335 * 47 * 53) ≤
 (6 * 37182145 + 3 * 18247680) * (50712316144335 * 47 * 53 + 22072393728000 * 46 * 52) := by
 norm_num

/-- ω(N) = 7 else-branch closure (asymptotic). -/
theorem omega7_else_branch_asymptotic (p : Int) (hp : 1 ≤ p) :
 8 * 37182145 * (50712316144335 * 47 * 53) * p^3 ≤
 (6 * 37182145 + 3 * 18247680) * (50712316144335 * 47 * 53 + 22072393728000 * 46 * 52) * p^3 := by
 have h_sep := omega7_omega14_separator
 have hp3 : 0 ≤ p^3 := by positivity
 nlinarith [hp3, h_sep]

end EG411Formal.CambieElseBranchOmega67Int

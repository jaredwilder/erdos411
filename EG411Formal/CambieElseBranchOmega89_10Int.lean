import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# EG#411 Else-Branch for ω(N) ∈ {8, 9, 10} via Int

Extension to higher ω(N) cases. Same separator pattern.

K=8: aDen = 5·7·11·13·17·19·23·29 = 1,078,282,205. aNum = 4·6·10·12·16·18·22·28 = 510,935,040.
 worstKm 8 = 15. A' = omegaDen(15) = product of first 15 primes ≥ 5.
 B' = omegaNum(15) = product of (q-1) for first 15 primes ≥ 5.

K=9: aDen = 5·7·...·31 = 33,426,748,355. aNum = 4·6·...·30 = 15,328,051,200.
 worstKm 9 = 17. A' = omegaDen(17), B' = omegaNum(17).

K=10: aDen = 5·7·...·37 = 1,236,789,689,135. aNum = 4·6·...·36 = 551,809,843,200.
 worstKm 10 = 19. A' = omegaDen(19), B' = omegaNum(19).

These get extremely large. norm_num should handle them.
-/

namespace EG411Formal.CambieElseBranchOmega89_10Int

/-- ω(N) = 8, ω(c2) = 15: separator. Express A', B' as products of prime numbers
 rather than precomputed values to avoid arithmetic errors. -/
theorem omega8_omega15_separator :
 8 * (5*7*11*13*17*19*23*29) * (5*7*11*13*17*19*23*29*31*37*41*43*47*53*59) ≤
 (6 * (5*7*11*13*17*19*23*29) + 3 * (4*6*10*12*16*18*22*28)) *
 ((5*7*11*13*17*19*23*29*31*37*41*43*47*53*59) +
 (4*6*10*12*16*18*22*28*30*36*40*42*46*52*58)) := by
 norm_num

/-- ω(N) = 9, ω(c2) = 17: separator. -/
theorem omega9_omega17_separator :
 8 * (5*7*11*13*17*19*23*29*31) *
 (5*7*11*13*17*19*23*29*31*37*41*43*47*53*59*61*67) ≤
 (6 * (5*7*11*13*17*19*23*29*31) + 3 * (4*6*10*12*16*18*22*28*30)) *
 ((5*7*11*13*17*19*23*29*31*37*41*43*47*53*59*61*67) +
 (4*6*10*12*16*18*22*28*30*36*40*42*46*52*58*60*66)) := by
 norm_num

/-- ω(N) = 10, ω(c2) = 19: separator. -/
theorem omega10_omega19_separator :
 8 * (5*7*11*13*17*19*23*29*31*37) *
 (5*7*11*13*17*19*23*29*31*37*41*43*47*53*59*61*67*71*73) ≤
 (6 * (5*7*11*13*17*19*23*29*31*37) + 3 * (4*6*10*12*16*18*22*28*30*36)) *
 ((5*7*11*13*17*19*23*29*31*37*41*43*47*53*59*61*67*71*73) +
 (4*6*10*12*16*18*22*28*30*36*40*42*46*52*58*60*66*70*72)) := by
 norm_num

end EG411Formal.CambieElseBranchOmega89_10Int

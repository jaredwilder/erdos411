-- TEMPORARY diagnostic probe (not part of the omega-7 result). Checks, via a real `lake build`,
-- whether the support lemmas that the generated OmegaTree7.lean depends on
-- (cap_kill_6, cap_kill_7, dead_kill_3, dead_kill_4, phi_prod_distinct_7) actually exist.
-- Safe to delete after the check.
import EG411Formal.SolutionStructure
import EG411Formal.OmegaTreeSupport

namespace EG411Structure

example (A B c x1 x2 x3 x4 x5 x6 : ℕ) (hc : 1 ≤ c)
    (hnum : B * c ^ 6 + 2 < A * (c - 1) ^ 6)
    (h1 : c ≤ x1) (h12 : x1 ≤ x2) (h23 : x2 ≤ x3) (h34 : x3 ≤ x4) (h45 : x4 ≤ x5) (h56 : x5 ≤ x6)
    (heq : A * ((x1 - 1) * ((x2 - 1) * ((x3 - 1) * ((x4 - 1) * ((x5 - 1) * (x6 - 1))))))
         = B * (x1 * (x2 * (x3 * (x4 * (x5 * x6))))) + 2) : False :=
  cap_kill_6 hc hnum h1 h12 h23 h34 h45 heq

example (p1 p2 p3 p4 p5 p6 p7 : ℕ) (h1 : p1.Prime) (h2 : p2.Prime) (h3 : p3.Prime)
    (h4 : p4.Prime) (h5 : p5.Prime) (h6 : p6.Prime) (h7 : p7.Prime)
    (o1 : p1 < p2) (o2 : p2 < p3) (o3 : p3 < p4) (o4 : p4 < p5) (o5 : p5 < p6) (o6 : p6 < p7) :
    Nat.totient (p1 * (p2 * (p3 * (p4 * (p5 * (p6 * p7))))))
      = (p1 - 1) * ((p2 - 1) * ((p3 - 1) * ((p4 - 1) * ((p5 - 1) * ((p6 - 1) * (p7 - 1)))))) :=
  phi_prod_distinct_7 p1 p2 p3 p4 p5 p6 p7 h1 h2 h3 h4 h5 h6 h7 o1 o2 o3 o4 o5 o6

example (A B s t : ℕ) (hAB : A ≤ B)
    (heq : A * ((s - 1) * (t - 1)) = B * (s * t) + 2) : False :=
  dead_kill_3 hAB heq

end EG411Structure

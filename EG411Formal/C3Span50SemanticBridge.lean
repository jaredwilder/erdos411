import EG411Formal.C3Span50Fine.Fine152
import EG411Formal.C3Span50SemanticAll

namespace C3Span50Semantic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem allClauses_eq_ctx : allClauses = C3Span50Clause.ctx := by
  rfl

theorem satisfiesCtx (x : BitVec 50)
    (hcard : 12 ≤ selectedCount x) (hno : hasC3Violation x = false) :
    (valuation x).satisfies_fmla C3Span50Clause.ctx := by
  have hall := satisfiesAll x hcard hno
  rw [allClauses_eq_ctx] at hall
  exact ⟨List.forall_iff_forall_mem.mp hall⟩

/-- Every twelve selected points in `[0,49]` contain a C₃ support. -/
theorem span50 (x : BitVec 50) :
    12 ≤ selectedCount x → hasC3Violation x = true := by
  intro hcard
  by_contra h
  have hno : hasC3Violation x = false := by
    cases hv : hasC3Violation x <;> simp_all
  exact C3Span50Certificate.unsat (valuation x) (satisfiesCtx x hcard hno)

#check span50
#print axioms span50

end C3Span50Semantic

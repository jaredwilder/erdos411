import Mathlib
import EG411Formal.C3Span50Defs

namespace C3Span50Kernel

theorem span50Candidate (x : BitVec 50) : selectedCount x >= 12#6 -> hasC3Violation x = true := by
  intro h
  revert h x
  decide

end C3Span50Kernel

#print axioms C3Span50Kernel.span50Candidate

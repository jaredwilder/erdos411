import EG411Formal.C3Span50Defs

namespace C3Span50Kernel

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem span50Candidate (x : BitVec 50) :
    selectedCount x >= 12#6 -> hasC3Violation x = true := by
  native_decide

#print axioms C3Span50Kernel.span50Candidate

end C3Span50Kernel

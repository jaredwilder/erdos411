import EG411Formal.C3Span50Defs

namespace C3Span50Kernel

set_option maxHeartbeats 0

theorem span50Candidate (x : BitVec 50) : selectedCount x >= 12#6 -> hasC3Violation x = true := by
  intro h
  by_cases h0 : (x &&& 1#50) = 1#50 <;>
  by_cases h1 : (x &&& 2#50) = 2#50 <;>
  by_cases h2 : (x &&& 4#50) = 4#50 <;>
  by_cases h3 : (x &&& 8#50) = 8#50 <;>
  by_cases h4 : (x &&& 16#50) = 16#50 <;>
  by_cases h5 : (x &&& 32#50) = 32#50 <;>
  by_cases h6 : (x &&& 64#50) = 64#50 <;>
  by_cases h7 : (x &&& 128#50) = 128#50 <;>
  ( revert h0 h1 h2 h3 h4 h5 h6 h7 h; bv_decide )

end C3Span50Kernel

#print axioms C3Span50Kernel.span50Candidate

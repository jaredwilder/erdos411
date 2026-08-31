import EG411Formal.C3Span50SemanticBridge

namespace C3Span50Compact

/-- Compatibility aliases for the original compact span-50 entry point. -/
abbrev chosen := C3Span50Semantic.chosen
abbrev selectedCount := C3Span50Semantic.selectedCount
abbrev c3GapSpecies := C3Span50Semantic.c3GapSpecies
abbrev hasC3Violation := C3Span50Semantic.hasC3Violation

/-- Every twelve selected points in `[0,49]` contain a C3 support. -/
theorem span50Compact (x : BitVec 50) :
    selectedCount x >= 12 -> hasC3Violation x = true :=
  C3Span50Semantic.span50 x

#print axioms C3Span50Compact.span50Compact

end C3Span50Compact

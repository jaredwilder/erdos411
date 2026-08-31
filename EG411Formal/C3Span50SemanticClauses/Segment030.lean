import EG411Formal.C3Span50SemanticLemmas

namespace C3Span50Semantic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def segment030 : Sat.Fmla :=
  [ [Sat.Literal.neg 31, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 31, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 43],
    [Sat.Literal.neg 31, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 31, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 31, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 31, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 31, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 31, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 31, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 39, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 31, Sat.Literal.neg 41, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 31, Sat.Literal.neg 42, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 31, Sat.Literal.neg 42, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 48],
    [Sat.Literal.neg 31, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 31, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 31, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 35],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 39],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 42],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 37, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 37, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 43],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 38],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 42],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 37],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 32, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 32, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 32, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 32, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 32, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 32, Sat.Literal.neg 43, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 32, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 32, Sat.Literal.neg 44, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 36],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 40],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 43],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 44],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 39],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 36, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 33, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 39, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 33, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 33, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 33, Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 33, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 33, Sat.Literal.neg 44, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 37],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 41],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 44],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 45],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 34, Sat.Literal.neg 41, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 34, Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 34, Sat.Literal.neg 42, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 34, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 34, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 42],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 45],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 46],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 35, Sat.Literal.neg 42, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 35, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 35, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 35, Sat.Literal.neg 44, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 35, Sat.Literal.neg 45, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 43],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 46],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 47],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 39, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 42, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 36, Sat.Literal.neg 43, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 36, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 36, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 36, Sat.Literal.neg 45, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 44],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 47],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 48],
    [Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 37, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 42, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 37, Sat.Literal.neg 43, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 37, Sat.Literal.neg 44, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 37, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 45],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 48],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 49],
    [Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 38, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 38, Sat.Literal.neg 45, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 38, Sat.Literal.neg 46, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 49],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 40, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 42, Sat.Literal.neg 48, Sat.Literal.neg 49] ]

theorem satisfies030 (x : BitVec 50)
    (hcard : 12 ≤ selectedCount x) (hno : hasC3Violation x = false) :
    List.Forall ((valuation x).satisfies) segment030 := by
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 35) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 35) (c := 39) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 35) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 35) (c := 41) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 36) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 36) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 36) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 36) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 36) (c := 42) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 42) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 37) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 38) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 38) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 38) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 38) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 39) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 39) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 39) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 40) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 41) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 41) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 42) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 42) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 42) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 43) (c := 44) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 43) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 43) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 31) (b := 44) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 34) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 34) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 35) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 36) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 36) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 37) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 37) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 33) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 35) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 35) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 36) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 36) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 36) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 37) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 37) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 39) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 34) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 36) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 36) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 36) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 39) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 40) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 35) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 36) (c := 37) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 36) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 36) (c := 40) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 36) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 37) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 37) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 37) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 37) (c := 42) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 43) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 38) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 39) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 39) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 39) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 40) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 40) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 41) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 41) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 41) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 41) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 41) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 41) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 41) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 42) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 43) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 43) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 44) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 32) (b := 44) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 35) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 35) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 36) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 37) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 38) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 38) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 34) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 36) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 36) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 37) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 37) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 38) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 40) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 35) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 37) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 40) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 41) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 36) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 37) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 37) (c := 41) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 37) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 38) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 38) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 38) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 38) (c := 43) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 44) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 39) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 40) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 40) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 40) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 41) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 41) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 42) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 42) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 42) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 42) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 42) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 42) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 43) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 44) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 33) (b := 44) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 36) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 36) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 37) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 38) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 39) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 35) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 37) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 38) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 39) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 41) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 36) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 38) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 42) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 37) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 38) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 38) (c := 42) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 38) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 39) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 39) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 39) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 39) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 40) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 41) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 41) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 41) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 42) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 42) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 43) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 43) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 43) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 43) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 43) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 44) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 34) (b := 45) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 37) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 38) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 39) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 40) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 36) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 38) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 39) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 40) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 37) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 42) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 38) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 39) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 39) (c := 43) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 40) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 40) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 40) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 41) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 41) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 41) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 41) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 41) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 41) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 42) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 42) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 43) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 44) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 44) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 44) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 35) (b := 45) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 38) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 39) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 40) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 41) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 37) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 39) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 41) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 38) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 43) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 39) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 40) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 40) (c := 44) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 41) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 41) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 41) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 42) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 42) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 42) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 42) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 42) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 43) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 43) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 44) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 45) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 36) (b := 45) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 39) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 40) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 42) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 38) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 39) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 39) (c := 40) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 39) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 39) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 39) (c := 42) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 39) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 39) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 40) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 41) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 41) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 42) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 42) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 42) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 43) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 43) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 43) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 43) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 44) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 44) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 37) (b := 45) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 40) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 41) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 42) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 39) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 40) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 40) (c := 41) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 40) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 40) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 40) (c := 43) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 40) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 41) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 42) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 43) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 43) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 44) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 44) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 44) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 45) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 38) (b := 46) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 42) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 43) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 40) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 41) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 41) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 41) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 41) (c := 44) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 42) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 42) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 42) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 42) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 42) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 42) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  exact supportClauseSatisfies x hno
    (a := 39) (b := 42) (c := 48) (d := 49)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by decide)

end C3Span50Semantic

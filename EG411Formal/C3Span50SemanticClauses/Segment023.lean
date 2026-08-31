import EG411Formal.C3Span50SemanticLemmas

namespace C3Span50Semantic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def segment023 : Sat.Fmla :=
  [ [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 24],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 22, Sat.Literal.neg 25],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 22, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 22, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 23, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 23, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 23, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 24, Sat.Literal.neg 27],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 24, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 24, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 25, Sat.Literal.neg 28],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 25, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 25, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 26, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 26, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 26, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 27, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 27, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 27, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 28, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 29, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 30, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 31, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 32, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 33, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 18, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 20, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 20, Sat.Literal.neg 28],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 21, Sat.Literal.neg 23],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 21, Sat.Literal.neg 27],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 21, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 28],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 23, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 23, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 24, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 24, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 24, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 26, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 26, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 26, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 28, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 28, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 29, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 29, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 30, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 31, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 32, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 33, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 34, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 35, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 36, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 21, Sat.Literal.neg 22],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 21, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 21, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 22, Sat.Literal.neg 23],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 22, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 22, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 23, Sat.Literal.neg 24],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 23, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 23, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 23, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 24, Sat.Literal.neg 25],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 24, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 24, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 24, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 26, Sat.Literal.neg 27],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 26, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 26, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 27, Sat.Literal.neg 28],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 27, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 27, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 28, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 28, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 28, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 29, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 29, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 29, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 30, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 30, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 30, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 31, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 31, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 32, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 32, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 33, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 33, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 34, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 34, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 35, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 35, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 36, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 36, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 20, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 22, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 22, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 23, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 23, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 24, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 24, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 24, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 26, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 26, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 26, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 27, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 27, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 28, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 28, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 29, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 30, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 30, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 31, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 31, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 32, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 33, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 34, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 35, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 36, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 21, Sat.Literal.neg 37, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 23, Sat.Literal.neg 24],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 23, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 23, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 24, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 24, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 25, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 25, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 25, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 26, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 26, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 26, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 27, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 27, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 28, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 28, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 29, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 29, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 30, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 30, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 31, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 31, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 32, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 33, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 34, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 24, Sat.Literal.neg 26],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 24, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 24, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 25, Sat.Literal.neg 27],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 25, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 25, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 26, Sat.Literal.neg 28],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 26, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 27, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 27, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 28, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 28, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 28, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 29, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 29, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 29, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 30, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 30, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 30, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 31, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 31, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 31, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 32, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 32, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 33, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 33, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 34, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 35, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 36, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 37, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 23, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 25, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 25, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 26, Sat.Literal.neg 27],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 26, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 27, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 28, Sat.Literal.neg 29],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 28, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 29, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 30, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 31, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 32, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 33, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 34, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 26, Sat.Literal.neg 28],
    [Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 30, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 31, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 32, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 33, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 34, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 35, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 27, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 29, Sat.Literal.neg 30],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 29, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 30, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 31, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 31, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 32, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 33, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 33, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 34, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 35, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 36, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 27, Sat.Literal.neg 29, Sat.Literal.neg 31],
    [Sat.Literal.neg 17, Sat.Literal.neg 27, Sat.Literal.neg 33, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 27, Sat.Literal.neg 34, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 27, Sat.Literal.neg 35, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 27, Sat.Literal.neg 36, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 27, Sat.Literal.neg 37, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 29, Sat.Literal.neg 32],
    [Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 32, Sat.Literal.neg 33],
    [Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 34, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 36, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 37, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 30, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 31, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 32, Sat.Literal.neg 34],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 32, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 33, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 34, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 35, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 36, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 36, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 37, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 38, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 39, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 39, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 40, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 41, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 42, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 43, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 44, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 30, Sat.Literal.neg 32, Sat.Literal.neg 35],
    [Sat.Literal.neg 17, Sat.Literal.neg 30, Sat.Literal.neg 35, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 30, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 30, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 30, Sat.Literal.neg 39, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 30, Sat.Literal.neg 40, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 31, Sat.Literal.neg 32, Sat.Literal.neg 36],
    [Sat.Literal.neg 17, Sat.Literal.neg 31, Sat.Literal.neg 35, Sat.Literal.neg 37],
    [Sat.Literal.neg 17, Sat.Literal.neg 31, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 31, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 33, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 35, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 36, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 37, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 38, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 39, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 40, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 42, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 43, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 33, Sat.Literal.neg 35, Sat.Literal.neg 39],
    [Sat.Literal.neg 17, Sat.Literal.neg 33, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 33, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 33, Sat.Literal.neg 43, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 40],
    [Sat.Literal.neg 17, Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 17, Sat.Literal.neg 34, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 34, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 36, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 42],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 35, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 36, Sat.Literal.neg 38, Sat.Literal.neg 43],
    [Sat.Literal.neg 17, Sat.Literal.neg 36, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 36, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 36, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 17, Sat.Literal.neg 37, Sat.Literal.neg 41, Sat.Literal.neg 45],
    [Sat.Literal.neg 17, Sat.Literal.neg 37, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 38, Sat.Literal.neg 39, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 38, Sat.Literal.neg 40, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 17, Sat.Literal.neg 38, Sat.Literal.neg 41, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 38, Sat.Literal.neg 42, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 38, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 38, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 39, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 17, Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 39, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 17, Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 48],
    [Sat.Literal.neg 17, Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 20, Sat.Literal.neg 21],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 20, Sat.Literal.neg 23],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 20, Sat.Literal.neg 25],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 21, Sat.Literal.neg 24],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 21, Sat.Literal.neg 28],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 25],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 27],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 31],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 23, Sat.Literal.neg 26],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 23, Sat.Literal.neg 30],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 23, Sat.Literal.neg 34],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 24, Sat.Literal.neg 27],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 24, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 24, Sat.Literal.neg 37],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 28],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 36],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 40],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 26, Sat.Literal.neg 29],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 26, Sat.Literal.neg 39],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 26, Sat.Literal.neg 43],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 30],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 42],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 46],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 28, Sat.Literal.neg 45],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 28, Sat.Literal.neg 49],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 29, Sat.Literal.neg 32],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 29, Sat.Literal.neg 48],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 30, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 31, Sat.Literal.neg 34],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 32, Sat.Literal.neg 35],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 33, Sat.Literal.neg 36],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 21, Sat.Literal.neg 27],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 21, Sat.Literal.neg 29],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 22, Sat.Literal.neg 24],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 22, Sat.Literal.neg 28],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 22, Sat.Literal.neg 32],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 23, Sat.Literal.neg 27],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 23, Sat.Literal.neg 29],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 23, Sat.Literal.neg 35],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 24, Sat.Literal.neg 30],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 24, Sat.Literal.neg 38],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 31],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 41],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 26, Sat.Literal.neg 32],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 26, Sat.Literal.neg 36],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 26, Sat.Literal.neg 44],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 27, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 27, Sat.Literal.neg 39],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 27, Sat.Literal.neg 47],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 28, Sat.Literal.neg 34],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 28, Sat.Literal.neg 42],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 29, Sat.Literal.neg 35],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 29, Sat.Literal.neg 45],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 30, Sat.Literal.neg 36],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 30, Sat.Literal.neg 48],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 31, Sat.Literal.neg 37],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 32, Sat.Literal.neg 38],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 33, Sat.Literal.neg 39],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 34, Sat.Literal.neg 40],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 35, Sat.Literal.neg 41],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 36, Sat.Literal.neg 42],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 18, Sat.Literal.neg 20, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 22, Sat.Literal.neg 23],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 22, Sat.Literal.neg 31],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 22, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 23, Sat.Literal.neg 24],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 23, Sat.Literal.neg 32],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 23, Sat.Literal.neg 36],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 24, Sat.Literal.neg 25],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 24, Sat.Literal.neg 27],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 24, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 24, Sat.Literal.neg 39],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 26],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 30],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 34],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 42],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 26, Sat.Literal.neg 27],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 26, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 26, Sat.Literal.neg 35],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 26, Sat.Literal.neg 45],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 27, Sat.Literal.neg 28],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 27, Sat.Literal.neg 36],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 27, Sat.Literal.neg 48],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 28, Sat.Literal.neg 29],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 28, Sat.Literal.neg 37],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 28, Sat.Literal.neg 39],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 29, Sat.Literal.neg 30],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 29, Sat.Literal.neg 38],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 29, Sat.Literal.neg 42],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 30, Sat.Literal.neg 31],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 30, Sat.Literal.neg 39],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 30, Sat.Literal.neg 45],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 31, Sat.Literal.neg 32],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 31, Sat.Literal.neg 40],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 31, Sat.Literal.neg 48],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 32, Sat.Literal.neg 33],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 32, Sat.Literal.neg 41],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 33, Sat.Literal.neg 34],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 33, Sat.Literal.neg 42],
    [Sat.Literal.neg 18, Sat.Literal.neg 21, Sat.Literal.neg 34, Sat.Literal.neg 35] ]

theorem satisfies023 (x : BitVec 50)
    (hcard : 12 ≤ selectedCount x) (hno : hasC3Violation x = false) :
    List.Forall ((valuation x).satisfies) segment023 := by
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 21) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 21) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 21) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 22) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 22) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 22) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 23) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 23) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 23) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 24) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 24) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 24) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 25) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 25) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 25) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 26) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 26) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 26) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 27) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 27) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 27) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 28) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 29) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 30) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 31) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 32) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 33) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 18) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 20) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 20) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 21) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 21) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 21) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 22) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 22) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 22) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 23) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 23) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 24) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 24) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 24) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 25) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 25) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 25) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 26) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 26) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 26) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 27) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 27) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 27) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 28) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 28) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 29) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 29) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 30) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 31) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 32) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 33) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 34) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 35) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 36) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 19) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 21) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 21) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 21) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 22) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 22) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 22) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 23) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 23) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 23) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 23) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 24) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 24) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 24) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 24) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 25) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 25) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 25) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 25) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 26) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 26) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 26) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 27) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 27) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 27) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 28) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 28) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 28) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 29) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 29) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 29) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 30) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 30) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 30) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 31) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 31) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 32) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 32) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 33) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 33) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 34) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 34) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 35) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 35) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 36) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 36) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 20) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 22) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 22) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 23) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 23) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 24) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 24) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 24) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 25) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 25) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 25) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 26) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 26) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 26) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 27) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 27) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 28) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 28) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 29) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 30) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 30) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 31) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 31) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 32) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 33) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 34) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 35) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 36) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 21) (c := 37) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 23) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 23) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 23) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 24) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 24) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 25) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 25) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 25) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 26) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 26) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 26) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 27) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 27) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 28) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 28) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 29) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 29) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 30) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 30) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 31) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 31) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 32) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 33) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 22) (c := 34) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 24) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 24) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 24) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 25) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 25) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 25) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 26) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 26) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 27) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 27) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 28) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 28) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 28) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 29) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 29) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 29) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 30) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 30) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 30) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 31) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 31) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 31) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 32) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 32) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 33) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 33) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 34) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 35) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 36) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 37) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 23) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 25) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 25) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 26) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 26) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 27) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 28) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 28) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 29) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 30) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 31) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 32) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 33) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 24) (c := 34) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 25) (c := 26) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 25) (c := 30) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 25) (c := 31) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 25) (c := 32) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 25) (c := 33) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 25) (c := 34) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 25) (c := 35) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 27) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 29) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 29) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 30) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 31) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 31) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 32) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 33) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 33) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 34) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 35) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 36) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 26) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 27) (c := 29) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 27) (c := 33) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 27) (c := 34) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 27) (c := 35) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 27) (c := 36) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 27) (c := 37) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 28) (c := 29) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 28) (c := 32) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 28) (c := 34) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 28) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 28) (c := 36) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 28) (c := 37) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 28) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 30) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 31) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 32) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 32) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 33) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 34) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 35) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 36) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 36) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 37) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 38) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 39) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 39) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 40) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 41) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 42) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 43) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 44) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 29) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 30) (c := 32) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 30) (c := 35) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 30) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 30) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 30) (c := 39) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 30) (c := 40) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 31) (c := 32) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 31) (c := 35) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 31) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 31) (c := 40) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 31) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 33) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 34) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 35) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 36) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 37) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 38) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 39) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 40) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 42) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 43) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 32) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 33) (c := 35) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 33) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 33) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 33) (c := 43) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 34) (c := 35) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 34) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 34) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 34) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 34) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 36) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 38) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 35) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 36) (c := 38) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 36) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 36) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 36) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 37) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 37) (c := 41) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 37) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 38) (c := 39) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 38) (c := 40) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 38) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 38) (c := 41) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 38) (c := 42) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 38) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 38) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 39) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 39) (c := 44) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 39) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 40) (c := 41) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 17) (b := 40) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 20) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 20) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 20) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 21) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 21) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 22) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 22) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 22) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 23) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 23) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 23) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 24) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 24) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 24) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 25) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 25) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 25) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 26) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 26) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 26) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 27) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 27) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 27) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 28) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 28) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 29) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 29) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 30) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 31) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 32) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 33) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 19) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 21) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 21) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 22) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 22) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 22) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 23) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 23) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 23) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 24) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 24) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 25) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 25) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 25) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 26) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 26) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 26) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 27) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 27) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 27) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 28) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 28) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 29) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 29) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 30) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 30) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 31) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 32) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 33) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 34) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 35) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 36) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 20) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 22) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 22) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 22) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 23) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 23) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 23) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 24) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 24) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 24) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 24) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 25) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 25) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 25) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 25) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 26) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 26) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 26) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 26) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 27) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 27) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 27) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 28) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 28) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 28) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 29) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 29) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 29) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 30) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 30) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 30) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 31) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 31) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 31) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 32) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 32) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 33) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 18) (b := 21) (c := 33) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  exact supportClauseSatisfies x hno
    (a := 18) (b := 21) (c := 34) (d := 35)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by decide)

end C3Span50Semantic

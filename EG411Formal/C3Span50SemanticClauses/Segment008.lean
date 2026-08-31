import EG411Formal.C3Span50SemanticLemmas

namespace C3Span50Semantic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def segment008 : Sat.Fmla :=
  [ [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 25, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 25, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 26, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 26, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 27, Sat.Literal.neg 29],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 27, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 28, Sat.Literal.neg 30],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 28, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 29, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 29, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 30, Sat.Literal.neg 32],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 30, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 31, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 31, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 32, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 33, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 34, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 35, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 36, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 37, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 12, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 12, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 13, Sat.Literal.neg 14],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 13, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 13, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 14, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 14, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 15, Sat.Literal.neg 16],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 15, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 15, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 16, Sat.Literal.neg 19],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 16, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 16, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 17, Sat.Literal.neg 22],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 17, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 18, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 18, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 19, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 19, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 20, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 20, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 21, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 21, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 22, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 22, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 23, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 23, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 24, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 24, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 25, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 26, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 26, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 27, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 28, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 13, Sat.Literal.neg 15],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 13, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 13, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 14, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 14, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 15, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 15, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 16, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 16, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 17, Sat.Literal.neg 19],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 17, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 18, Sat.Literal.neg 22],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 18, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 19, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 19, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 20, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 20, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 21, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 21, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 22, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 22, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 23, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 23, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 24, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 24, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 25, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 25, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 26, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 27, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 14, Sat.Literal.neg 17],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 14, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 14, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 15, Sat.Literal.neg 18],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 15, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 15, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 16, Sat.Literal.neg 17],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 16, Sat.Literal.neg 19],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 16, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 16, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 17, Sat.Literal.neg 20],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 17, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 18, Sat.Literal.neg 19],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 18, Sat.Literal.neg 21],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 18, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 19, Sat.Literal.neg 22],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 19, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 20, Sat.Literal.neg 23],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 20, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 20, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 21, Sat.Literal.neg 24],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 21, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 21, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 22, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 22, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 22, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 23, Sat.Literal.neg 26],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 23, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 24, Sat.Literal.neg 27],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 24, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 25, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 25, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 26, Sat.Literal.neg 29],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 26, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 27, Sat.Literal.neg 30],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 27, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 28, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 29, Sat.Literal.neg 32],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 30, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 31, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 32, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 33, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 15, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 15, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 16, Sat.Literal.neg 18],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 16, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 17, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 18, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 19, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 20, Sat.Literal.neg 22],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 21, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 22, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 23, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 24, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 25, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 26, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 27, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 28, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 29, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 16, Sat.Literal.neg 19],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 16, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 19, Sat.Literal.neg 20],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 21, Sat.Literal.neg 22],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 22, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 23, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 24, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 25, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 26, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 27, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 28, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 29, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 30, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 17, Sat.Literal.neg 21],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 18, Sat.Literal.neg 22],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 19, Sat.Literal.neg 21],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 19, Sat.Literal.neg 23],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 20, Sat.Literal.neg 24],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 21, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 22, Sat.Literal.neg 26],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 23, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 23, Sat.Literal.neg 27],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 24, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 25, Sat.Literal.neg 29],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 25, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 26, Sat.Literal.neg 30],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 26, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 27, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 27, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 28, Sat.Literal.neg 32],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 28, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 29, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 29, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 30, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 30, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 31, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 31, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 32, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 33, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 34, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 35, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 36, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 37, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 38, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 39, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 40, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 41, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 42, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 43, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 44, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 19, Sat.Literal.neg 22],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 22, Sat.Literal.neg 23],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 24, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 25, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 26, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 27, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 28, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 29, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 30, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 31, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 32, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 19, Sat.Literal.neg 23],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 22, Sat.Literal.neg 24],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 26, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 27, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 28, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 29, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 30, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 31, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 32, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 33, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 20, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 21, Sat.Literal.neg 26],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 25],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 22, Sat.Literal.neg 27],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 23, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 24, Sat.Literal.neg 29],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 26],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 25, Sat.Literal.neg 30],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 26, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 27, Sat.Literal.neg 32],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 28, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 29, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 30, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 30, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 31, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 31, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 32, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 32, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 33, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 33, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 34, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 34, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 35, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 36, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 37, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 38, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 39, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 40, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 42, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 43, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 22, Sat.Literal.neg 26],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 25, Sat.Literal.neg 27],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 29, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 30, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 31, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 32, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 33, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 34, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 35, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 22, Sat.Literal.neg 27],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 25, Sat.Literal.neg 28],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 28, Sat.Literal.neg 29],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 30, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 31, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 32, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 33, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 34, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 35, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 36, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 23, Sat.Literal.neg 29],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 24, Sat.Literal.neg 30],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 25, Sat.Literal.neg 29],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 25, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 26, Sat.Literal.neg 32],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 27, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 28, Sat.Literal.neg 30],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 28, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 29, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 30, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 31, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 32, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 32, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 33, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 33, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 34, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 35, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 35, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 36, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 36, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 37, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 25, Sat.Literal.neg 30],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 31, Sat.Literal.neg 32],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 33, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 35, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 36, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 38, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 25, Sat.Literal.neg 31],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 28, Sat.Literal.neg 32],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 31, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 35, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 36, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 38, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 39, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 26, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 27, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 28, Sat.Literal.neg 33],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 28, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 29, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 30, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 31, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 31, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 32, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 33, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 34, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 34, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 35, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 36, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 36, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 37, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 38, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 38, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 39, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 40, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 41, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 42, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 28, Sat.Literal.neg 34],
    [Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 31, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 34, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 39, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 41, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 28, Sat.Literal.neg 35],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 31, Sat.Literal.neg 36],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 41, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 42, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 29, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 30, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 31, Sat.Literal.neg 37],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 31, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 32, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 33, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 34, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 34, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 35, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 36, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 37, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 37, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 38, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 39, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 40, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 41, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 42, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 31, Sat.Literal.neg 38],
    [Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 34, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 30, Sat.Literal.neg 31, Sat.Literal.neg 39],
    [Sat.Literal.neg 4, Sat.Literal.neg 30, Sat.Literal.neg 34, Sat.Literal.neg 40],
    [Sat.Literal.neg 4, Sat.Literal.neg 30, Sat.Literal.neg 37, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 30, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 30, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 30, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 32, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 33, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 34, Sat.Literal.neg 41],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 34, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 35, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 36, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 32, Sat.Literal.neg 34, Sat.Literal.neg 42],
    [Sat.Literal.neg 4, Sat.Literal.neg 32, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 32, Sat.Literal.neg 40, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 32, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 32, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 33, Sat.Literal.neg 34, Sat.Literal.neg 43],
    [Sat.Literal.neg 4, Sat.Literal.neg 33, Sat.Literal.neg 37, Sat.Literal.neg 44],
    [Sat.Literal.neg 4, Sat.Literal.neg 33, Sat.Literal.neg 40, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 33, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 33, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 33, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 35, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 36, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 45],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 37, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 38, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 39, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 43, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 35, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 4, Sat.Literal.neg 35, Sat.Literal.neg 40, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 35, Sat.Literal.neg 43, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 35, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 36, Sat.Literal.neg 37, Sat.Literal.neg 47],
    [Sat.Literal.neg 4, Sat.Literal.neg 36, Sat.Literal.neg 40, Sat.Literal.neg 48],
    [Sat.Literal.neg 4, Sat.Literal.neg 36, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 37, Sat.Literal.neg 38, Sat.Literal.neg 49],
    [Sat.Literal.neg 4, Sat.Literal.neg 37, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 7, Sat.Literal.neg 8],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 7, Sat.Literal.neg 10],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 7, Sat.Literal.neg 12],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 8, Sat.Literal.neg 11],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 8, Sat.Literal.neg 15],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 9, Sat.Literal.neg 12],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 9, Sat.Literal.neg 14],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 9, Sat.Literal.neg 18],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 10, Sat.Literal.neg 13],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 10, Sat.Literal.neg 17],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 10, Sat.Literal.neg 21],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 11, Sat.Literal.neg 14],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 11, Sat.Literal.neg 20],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 11, Sat.Literal.neg 24],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 12, Sat.Literal.neg 15],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 12, Sat.Literal.neg 23],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 12, Sat.Literal.neg 27],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 13, Sat.Literal.neg 16],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 13, Sat.Literal.neg 26],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 13, Sat.Literal.neg 30],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 14, Sat.Literal.neg 17],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 14, Sat.Literal.neg 29],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 14, Sat.Literal.neg 33],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 15, Sat.Literal.neg 18],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 15, Sat.Literal.neg 32],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 15, Sat.Literal.neg 36],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 16, Sat.Literal.neg 19],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 16, Sat.Literal.neg 35],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 16, Sat.Literal.neg 39],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 17, Sat.Literal.neg 20],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 17, Sat.Literal.neg 38],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 17, Sat.Literal.neg 42],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 18, Sat.Literal.neg 21],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 18, Sat.Literal.neg 41],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 18, Sat.Literal.neg 45],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 19, Sat.Literal.neg 22],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 19, Sat.Literal.neg 44],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 19, Sat.Literal.neg 48],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 20, Sat.Literal.neg 23],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 20, Sat.Literal.neg 47],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 21, Sat.Literal.neg 24],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 22, Sat.Literal.neg 25],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 23, Sat.Literal.neg 26],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 24, Sat.Literal.neg 27],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 25, Sat.Literal.neg 28],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 26, Sat.Literal.neg 29],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 27, Sat.Literal.neg 30],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 29, Sat.Literal.neg 32] ]

theorem satisfies008 (x : BitVec 50)
    (hcard : 12 ≤ selectedCount x) (hno : hasC3Violation x = false) :
    List.Forall ((valuation x).satisfies) segment008 := by
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 25) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 25) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 26) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 26) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 27) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 27) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 28) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 28) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 29) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 29) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 30) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 30) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 31) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 31) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 32) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 33) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 34) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 35) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 36) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 37) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 10) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 12) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 12) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 13) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 13) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 13) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 14) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 14) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 15) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 15) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 15) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 16) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 16) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 16) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 17) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 17) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 18) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 18) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 19) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 19) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 20) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 20) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 21) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 21) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 22) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 22) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 23) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 23) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 24) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 24) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 25) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 26) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 26) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 27) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 11) (c := 28) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 13) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 13) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 13) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 14) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 14) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 15) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 15) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 16) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 16) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 17) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 17) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 18) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 18) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 19) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 19) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 20) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 20) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 21) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 21) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 22) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 22) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 23) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 23) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 24) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 24) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 25) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 25) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 26) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 12) (c := 27) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 14) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 14) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 14) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 15) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 15) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 15) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 16) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 16) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 16) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 16) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 17) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 17) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 18) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 18) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 18) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 19) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 19) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 20) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 20) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 20) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 21) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 21) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 21) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 22) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 22) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 22) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 23) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 23) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 24) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 24) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 25) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 25) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 26) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 26) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 27) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 27) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 28) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 29) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 30) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 31) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 32) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 33) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 13) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 15) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 15) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 16) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 16) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 17) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 18) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 19) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 20) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 21) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 22) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 23) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 24) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 25) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 26) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 27) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 28) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 14) (c := 29) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 16) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 16) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 19) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 21) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 22) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 23) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 24) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 25) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 26) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 27) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 28) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 29) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 15) (c := 30) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 17) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 18) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 19) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 19) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 20) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 21) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 22) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 23) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 23) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 24) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 25) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 25) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 26) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 26) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 27) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 27) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 28) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 28) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 29) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 29) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 30) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 30) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 31) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 31) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 32) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 33) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 34) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 35) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 36) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 37) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 38) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 39) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 40) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 41) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 42) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 43) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 44) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 16) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 19) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 22) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 24) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 25) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 26) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 27) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 28) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 29) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 30) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 31) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 17) (c := 32) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 19) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 22) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 26) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 27) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 28) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 29) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 30) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 31) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 32) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 18) (c := 33) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 20) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 21) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 22) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 22) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 23) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 24) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 25) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 25) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 26) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 27) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 27) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 28) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 29) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 30) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 30) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 31) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 31) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 32) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 32) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 33) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 33) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 34) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 34) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 35) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 36) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 37) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 38) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 39) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 40) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 42) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 43) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 19) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 22) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 25) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 29) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 30) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 31) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 32) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 33) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 34) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 20) (c := 35) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 22) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 25) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 28) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 30) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 31) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 32) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 33) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 34) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 35) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 21) (c := 36) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 23) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 24) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 25) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 25) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 26) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 27) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 28) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 28) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 29) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 30) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 31) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 32) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 32) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 33) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 33) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 34) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 35) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 35) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 36) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 36) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 37) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 22) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 25) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 31) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 33) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 35) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 36) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 23) (c := 38) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 25) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 28) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 31) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 35) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 36) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 38) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 24) (c := 39) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 26) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 27) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 28) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 28) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 29) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 30) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 31) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 31) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 32) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 33) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 34) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 34) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 35) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 36) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 36) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 37) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 38) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 38) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 39) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 40) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 41) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 25) (c := 42) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 26) (c := 28) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 26) (c := 31) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 26) (c := 34) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 26) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 26) (c := 39) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 26) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 26) (c := 41) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 28) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 31) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 41) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 27) (c := 42) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 29) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 30) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 31) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 31) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 32) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 33) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 34) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 34) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 35) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 36) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 37) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 37) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 38) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 39) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 40) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 41) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 42) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 28) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 29) (c := 31) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 29) (c := 34) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 29) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 29) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 29) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 29) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 29) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 30) (c := 31) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 30) (c := 34) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 30) (c := 37) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 30) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 30) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 30) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 32) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 33) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 34) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 34) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 35) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 36) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 37) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 31) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 32) (c := 34) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 32) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 32) (c := 40) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 32) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 32) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 33) (c := 34) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 33) (c := 37) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 33) (c := 40) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 33) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 33) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 33) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 35) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 36) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 37) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 37) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 38) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 39) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 43) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 34) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 35) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 35) (c := 40) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 35) (c := 43) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 35) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 36) (c := 37) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 36) (c := 40) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 36) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 37) (c := 38) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 4) (b := 37) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 7) (d := 8)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 7) (d := 10)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 7) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 8) (d := 11)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 8) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 9) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 9) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 9) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 10) (d := 13)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 10) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 10) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 11) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 11) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 11) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 12) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 12) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 12) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 13) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 13) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 13) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 14) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 14) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 14) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 15) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 15) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 15) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 16) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 16) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 16) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 17) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 17) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 17) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 18) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 18) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 18) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 19) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 19) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 19) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 20) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 20) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 21) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 22) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 23) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 24) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 25) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 26) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 27) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 5) (b := 6) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  exact supportClauseSatisfies x hno
    (a := 5) (b := 6) (c := 29) (d := 32)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by decide)

end C3Span50Semantic

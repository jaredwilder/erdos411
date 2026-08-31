import EG411Formal.C3Span50SemanticLemmas

namespace C3Span50Semantic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def segment000 : Sat.Fmla :=
  [ [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 2, Sat.Literal.neg 3],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 2, Sat.Literal.neg 5],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 2, Sat.Literal.neg 7],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 3, Sat.Literal.neg 6],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 3, Sat.Literal.neg 10],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 4, Sat.Literal.neg 7],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 4, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 4, Sat.Literal.neg 13],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 5, Sat.Literal.neg 8],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 5, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 5, Sat.Literal.neg 16],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 6, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 6, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 6, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 7, Sat.Literal.neg 10],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 7, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 7, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 8, Sat.Literal.neg 11],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 8, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 8, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 9, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 9, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 9, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 10, Sat.Literal.neg 13],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 10, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 10, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 11, Sat.Literal.neg 14],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 11, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 11, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 12, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 12, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 12, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 13, Sat.Literal.neg 16],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 13, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 13, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 14, Sat.Literal.neg 17],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 14, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 14, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 15, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 15, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 15, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 16, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 16, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 16, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 17, Sat.Literal.neg 20],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 17, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 18, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 19, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 20, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 21, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 22, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 23, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 24, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 25, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 26, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 27, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 28, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 29, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 30, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 31, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 32, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 33, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 34, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 35, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 36, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 37, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 38, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 39, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 40, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 41, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 1, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 3, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 3, Sat.Literal.neg 11],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 4, Sat.Literal.neg 6],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 4, Sat.Literal.neg 10],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 4, Sat.Literal.neg 14],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 5, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 5, Sat.Literal.neg 11],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 5, Sat.Literal.neg 17],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 6, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 6, Sat.Literal.neg 20],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 7, Sat.Literal.neg 13],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 7, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 7, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 8, Sat.Literal.neg 14],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 8, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 8, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 9, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 9, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 9, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 10, Sat.Literal.neg 16],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 10, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 10, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 11, Sat.Literal.neg 17],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 11, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 11, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 12, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 12, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 12, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 13, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 13, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 13, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 14, Sat.Literal.neg 20],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 14, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 14, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 15, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 15, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 15, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 16, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 16, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 17, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 17, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 18, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 18, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 19, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 20, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 21, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 22, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 23, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 24, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 25, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 26, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 27, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 28, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 29, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 30, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 31, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 32, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 33, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 34, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 35, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 36, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 37, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 38, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 39, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 40, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 41, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 42, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 2, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 4, Sat.Literal.neg 5],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 4, Sat.Literal.neg 13],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 4, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 5, Sat.Literal.neg 6],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 5, Sat.Literal.neg 14],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 5, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 6, Sat.Literal.neg 7],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 6, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 6, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 6, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 7, Sat.Literal.neg 8],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 7, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 7, Sat.Literal.neg 16],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 7, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 8, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 8, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 8, Sat.Literal.neg 17],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 8, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 9, Sat.Literal.neg 10],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 9, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 9, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 10, Sat.Literal.neg 11],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 10, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 10, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 10, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 11, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 11, Sat.Literal.neg 20],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 11, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 11, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 12, Sat.Literal.neg 13],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 12, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 12, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 12, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 13, Sat.Literal.neg 14],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 13, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 13, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 13, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 14, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 14, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 14, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 14, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 15, Sat.Literal.neg 16],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 15, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 15, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 15, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 16, Sat.Literal.neg 17],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 16, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 16, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 17, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 17, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 17, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 18, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 18, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 18, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 19, Sat.Literal.neg 20],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 19, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 19, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 20, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 20, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 21, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 21, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 22, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 22, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 23, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 23, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 24, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 24, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 25, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 25, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 26, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 26, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 27, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 27, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 28, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 28, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 29, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 29, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 30, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 30, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 31, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 31, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 32, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 32, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 33, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 33, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 34, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 34, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 35, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 35, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 36, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 36, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 37, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 37, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 38, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 38, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 39, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 39, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 40, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 40, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 41, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 3, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 5, Sat.Literal.neg 17],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 5, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 6, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 6, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 7, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 7, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 7, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 8, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 8, Sat.Literal.neg 20],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 8, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 9, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 9, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 9, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 10, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 11, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 12, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 13, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 14, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 15, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 16, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 17, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 18, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 19, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 20, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 21, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 22, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 23, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 24, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 25, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 26, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 27, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 28, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 29, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 30, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 31, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 32, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 33, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 34, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 35, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 36, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 4, Sat.Literal.neg 37, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 7],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 6, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 7, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 7, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 8, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 8, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 8, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 9, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 9, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 9, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 10, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 10, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 10, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 11, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 11, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 11, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 12, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 12, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 12, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 13, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 13, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 13, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 14, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 14, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 14, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 15, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 16, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 16, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 17, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 17, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 18, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 18, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 19, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 19, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 20, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 20, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 21, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 21, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 22, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 23, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 24, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 25, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 26, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 27, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 28, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 29, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 30, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 31, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 32, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 33, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 5, Sat.Literal.neg 34, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 7, Sat.Literal.neg 9],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 7, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 7, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 8, Sat.Literal.neg 10],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 8, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 8, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 9, Sat.Literal.neg 11],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 9, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 9, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 10, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 10, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 10, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 11, Sat.Literal.neg 13],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 11, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 11, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 11, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 12, Sat.Literal.neg 14],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 12, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 12, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 12, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 13, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 13, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 13, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 13, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 14, Sat.Literal.neg 16],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 14, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 14, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 14, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 15, Sat.Literal.neg 17],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 15, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 15, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 16, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 16, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 16, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 17, Sat.Literal.neg 19],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 17, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 17, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 18, Sat.Literal.neg 20],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 18, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 19, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 19, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 19, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 20, Sat.Literal.neg 22],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 20, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 20, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 21, Sat.Literal.neg 23],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 21, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 21, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 22, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 22, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 22, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 23, Sat.Literal.neg 25],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 23, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 24, Sat.Literal.neg 26],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 24, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 25, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 25, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 26, Sat.Literal.neg 28],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 26, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 27, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 27, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 28, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 28, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 29, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 29, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 30, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 30, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 31, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 31, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 32, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 33, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 34, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 35, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 36, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 37, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 38, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 39, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 40, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 41, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 42, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 43, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 6, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 8, Sat.Literal.neg 29],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 8, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 9, Sat.Literal.neg 10],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 9, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 9, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 10, Sat.Literal.neg 31],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 10, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 11, Sat.Literal.neg 12],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 11, Sat.Literal.neg 32],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 11, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 12, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 12, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 12, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 13, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 13, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 13, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 14, Sat.Literal.neg 21],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 14, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 14, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 15, Sat.Literal.neg 24],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 15, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 16, Sat.Literal.neg 27],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 16, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 17, Sat.Literal.neg 30],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 17, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 18, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 18, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 19, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 19, Sat.Literal.neg 40],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 20, Sat.Literal.neg 39],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 20, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 21, Sat.Literal.neg 42],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 22, Sat.Literal.neg 43],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 22, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 23, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 23, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 24, Sat.Literal.neg 45],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 25, Sat.Literal.neg 46],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 26, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 27, Sat.Literal.neg 48],
    [Sat.Literal.neg 0, Sat.Literal.neg 7, Sat.Literal.neg 28, Sat.Literal.neg 49],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 9, Sat.Literal.neg 11],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 9, Sat.Literal.neg 33],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 9, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 10, Sat.Literal.neg 34],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 10, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 11, Sat.Literal.neg 35],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 11, Sat.Literal.neg 41],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 12, Sat.Literal.neg 36],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 12, Sat.Literal.neg 44],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 13, Sat.Literal.neg 15],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 13, Sat.Literal.neg 37],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 13, Sat.Literal.neg 47],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 14, Sat.Literal.neg 18],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 14, Sat.Literal.neg 38],
    [Sat.Literal.neg 0, Sat.Literal.neg 8, Sat.Literal.neg 15, Sat.Literal.neg 21] ]

theorem satisfies000 (x : BitVec 50)
    (hcard : 12 ≤ selectedCount x) (hno : hasC3Violation x = false) :
    List.Forall ((valuation x).satisfies) segment000 := by
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 2) (d := 3)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 2) (d := 5)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 2) (d := 7)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 3) (d := 6)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 3) (d := 10)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 4) (d := 7)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 4) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 4) (d := 13)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 5) (d := 8)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 5) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 5) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 6) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 6) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 6) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 7) (d := 10)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 7) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 7) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 8) (d := 11)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 8) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 8) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 9) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 9) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 9) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 10) (d := 13)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 10) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 10) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 11) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 11) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 11) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 12) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 12) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 12) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 13) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 13) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 13) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 14) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 14) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 14) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 15) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 15) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 15) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 16) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 16) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 16) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 17) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 17) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 18) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 19) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 20) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 21) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 22) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 23) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 24) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 25) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 26) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 27) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 28) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 29) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 30) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 31) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 32) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 33) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 34) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 35) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 36) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 37) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 38) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 39) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 40) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 41) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 1) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 3) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 3) (d := 11)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 4) (d := 6)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 4) (d := 10)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 4) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 5) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 5) (d := 11)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 5) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 6) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 6) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 7) (d := 13)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 7) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 7) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 8) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 8) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 8) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 9) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 9) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 9) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 10) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 10) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 10) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 11) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 11) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 11) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 12) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 12) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 12) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 13) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 13) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 13) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 14) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 14) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 14) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 15) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 15) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 15) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 16) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 16) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 17) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 17) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 18) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 18) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 19) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 20) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 21) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 22) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 23) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 24) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 25) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 26) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 27) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 28) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 29) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 30) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 31) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 32) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 33) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 34) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 35) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 36) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 37) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 38) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 39) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 40) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 41) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 42) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 2) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 4) (d := 5)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 4) (d := 13)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 4) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 5) (d := 6)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 5) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 5) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 6) (d := 7)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 6) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 6) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 6) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 7) (d := 8)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 7) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 7) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 7) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 8) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 8) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 8) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 8) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 9) (d := 10)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 9) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 9) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 10) (d := 11)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 10) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 10) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 10) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 11) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 11) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 11) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 11) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 12) (d := 13)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 12) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 12) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 12) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 13) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 13) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 13) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 13) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 14) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 14) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 14) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 14) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 15) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 15) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 15) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 15) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 16) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 16) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 16) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 17) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 17) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 17) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 18) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 18) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 18) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 19) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 19) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 19) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 20) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 20) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 21) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 21) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 22) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 22) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 23) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 23) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 24) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 24) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 25) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 25) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 26) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 26) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 27) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 27) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 28) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 28) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 29) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 29) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 30) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 30) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 31) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 31) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 32) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 32) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 33) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 33) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 34) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 34) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 35) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 35) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 36) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 36) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 37) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 37) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 38) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 38) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 39) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 39) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 40) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 40) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 41) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 3) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 5) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 5) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 6) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 6) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 7) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 7) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 7) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 8) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 8) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 8) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 9) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 9) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 9) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 10) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 10) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 10) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 11) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 11) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 11) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 12) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 12) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 13) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 13) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 13) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 14) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 14) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 14) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 15) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 15) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 15) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 16) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 16) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 17) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 17) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 18) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 18) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 19) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 19) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 20) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 20) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 21) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 22) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 23) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 24) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 25) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 26) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 27) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 28) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 29) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 30) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 31) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 32) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 33) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 34) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 35) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 36) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 4) (c := 37) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 6) (d := 7)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 6) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 6) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 7) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 7) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 8) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 8) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 8) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 9) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 9) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 9) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 10) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 10) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 10) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 11) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 11) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 11) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 12) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 12) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 12) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 13) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 13) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 13) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 14) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 14) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 14) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 15) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 16) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 16) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 17) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 17) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 18) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 18) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 19) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 19) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 20) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 20) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 21) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 21) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 22) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 23) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 24) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 25) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 26) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 27) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 28) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 29) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 30) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 31) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 32) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 33) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 5) (c := 34) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 7) (d := 9)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 7) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 7) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 8) (d := 10)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 8) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 8) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 9) (d := 11)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 9) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 9) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 10) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 10) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 10) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 11) (d := 13)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 11) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 11) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 11) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 12) (d := 14)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 12) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 12) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 12) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 13) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 13) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 13) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 13) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 14) (d := 16)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 14) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 14) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 14) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 15) (d := 17)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 15) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 15) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 16) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 16) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 16) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 17) (d := 19)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 17) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 17) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 18) (d := 20)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 18) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 19) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 19) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 19) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 20) (d := 22)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 20) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 20) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 21) (d := 23)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 21) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 21) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 22) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 22) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 22) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 23) (d := 25)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 23) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 24) (d := 26)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 24) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 25) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 25) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 26) (d := 28)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 26) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 27) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 27) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 28) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 28) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 29) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 29) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 30) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 30) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 31) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 31) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 32) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 33) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 34) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 35) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 36) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 37) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 38) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 39) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 40) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 41) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 42) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 43) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 6) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 8) (d := 29)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 8) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 9) (d := 10)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 9) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 9) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 10) (d := 31)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 10) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 11) (d := 12)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 11) (d := 32)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 11) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 12) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 12) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 12) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 13) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 13) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 13) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 14) (d := 21)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 14) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 14) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 15) (d := 24)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 15) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 16) (d := 27)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 16) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 17) (d := 30)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 17) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 18) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 18) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 19) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 19) (d := 40)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 20) (d := 39)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 20) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 21) (d := 42)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 22) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 22) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 23) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 23) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 24) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 25) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 26) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 27) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 7) (c := 28) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 9) (d := 11)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 9) (d := 33)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 9) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 10) (d := 34)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 10) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 11) (d := 35)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 11) (d := 41)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 12) (d := 36)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 12) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 13) (d := 15)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 13) (d := 37)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 13) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 14) (d := 18)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 0) (b := 8) (c := 14) (d := 38)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  exact supportClauseSatisfies x hno
    (a := 0) (b := 8) (c := 15) (d := 21)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by decide)

end C3Span50Semantic

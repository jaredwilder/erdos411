import EG411Formal.C3Span50SemanticLemmas

namespace C3Span50Semantic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def segment031 : Sat.Fmla :=
  [ [Sat.Literal.neg 39, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 39, Sat.Literal.neg 44, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 39, Sat.Literal.neg 45, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 39, Sat.Literal.neg 46, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 43],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 45],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 47],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 40, Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 46],
    [Sat.Literal.neg 40, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 40, Sat.Literal.neg 43, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 44, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 40, Sat.Literal.neg 45, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 40, Sat.Literal.neg 46, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 44],
    [Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 46],
    [Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 48],
    [Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 41, Sat.Literal.neg 42, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 41, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 47],
    [Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 41, Sat.Literal.neg 44, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 41, Sat.Literal.neg 46, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 45],
    [Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 47],
    [Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 49],
    [Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 42, Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 42, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 48],
    [Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 42, Sat.Literal.neg 45, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 42, Sat.Literal.neg 47, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 46],
    [Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 48],
    [Sat.Literal.neg 43, Sat.Literal.neg 44, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 43, Sat.Literal.neg 45, Sat.Literal.neg 47, Sat.Literal.neg 49],
    [Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 43, Sat.Literal.neg 46, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 47],
    [Sat.Literal.neg 44, Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 49],
    [Sat.Literal.neg 44, Sat.Literal.neg 47, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.neg 45, Sat.Literal.neg 46, Sat.Literal.neg 47, Sat.Literal.neg 48],
    [Sat.Literal.neg 46, Sat.Literal.neg 47, Sat.Literal.neg 48, Sat.Literal.neg 49],
    [Sat.Literal.pos 0, Sat.Literal.pos 50],
    [Sat.Literal.neg 50, Sat.Literal.pos 51],
    [Sat.Literal.pos 1, Sat.Literal.neg 50, Sat.Literal.pos 52],
    [Sat.Literal.neg 52, Sat.Literal.pos 53],
    [Sat.Literal.pos 2, Sat.Literal.neg 52, Sat.Literal.pos 54],
    [Sat.Literal.neg 54, Sat.Literal.pos 55],
    [Sat.Literal.pos 3, Sat.Literal.neg 54, Sat.Literal.pos 56],
    [Sat.Literal.neg 56, Sat.Literal.pos 57],
    [Sat.Literal.pos 4, Sat.Literal.neg 56, Sat.Literal.pos 58],
    [Sat.Literal.neg 58, Sat.Literal.pos 59],
    [Sat.Literal.pos 5, Sat.Literal.neg 58, Sat.Literal.pos 60],
    [Sat.Literal.neg 60, Sat.Literal.pos 61],
    [Sat.Literal.pos 6, Sat.Literal.neg 60, Sat.Literal.pos 62],
    [Sat.Literal.neg 62, Sat.Literal.pos 63],
    [Sat.Literal.pos 7, Sat.Literal.neg 62, Sat.Literal.pos 64],
    [Sat.Literal.neg 64, Sat.Literal.pos 65],
    [Sat.Literal.pos 8, Sat.Literal.neg 64, Sat.Literal.pos 66],
    [Sat.Literal.neg 66, Sat.Literal.pos 67],
    [Sat.Literal.pos 9, Sat.Literal.neg 66, Sat.Literal.pos 68],
    [Sat.Literal.neg 68, Sat.Literal.pos 69],
    [Sat.Literal.pos 10, Sat.Literal.neg 68, Sat.Literal.pos 70],
    [Sat.Literal.neg 70, Sat.Literal.pos 71],
    [Sat.Literal.pos 11, Sat.Literal.neg 70, Sat.Literal.pos 72],
    [Sat.Literal.neg 72, Sat.Literal.pos 73],
    [Sat.Literal.pos 12, Sat.Literal.neg 72, Sat.Literal.pos 74],
    [Sat.Literal.neg 74, Sat.Literal.pos 75],
    [Sat.Literal.pos 13, Sat.Literal.neg 74, Sat.Literal.pos 76],
    [Sat.Literal.neg 76, Sat.Literal.pos 77],
    [Sat.Literal.pos 14, Sat.Literal.neg 76, Sat.Literal.pos 78],
    [Sat.Literal.neg 78, Sat.Literal.pos 79],
    [Sat.Literal.pos 15, Sat.Literal.neg 78, Sat.Literal.pos 80],
    [Sat.Literal.neg 80, Sat.Literal.pos 81],
    [Sat.Literal.pos 16, Sat.Literal.neg 80, Sat.Literal.pos 82],
    [Sat.Literal.neg 82, Sat.Literal.pos 83],
    [Sat.Literal.pos 17, Sat.Literal.neg 82, Sat.Literal.pos 84],
    [Sat.Literal.neg 84, Sat.Literal.pos 85],
    [Sat.Literal.pos 18, Sat.Literal.neg 84, Sat.Literal.pos 86],
    [Sat.Literal.neg 86, Sat.Literal.pos 87],
    [Sat.Literal.pos 19, Sat.Literal.neg 86, Sat.Literal.pos 88],
    [Sat.Literal.neg 88, Sat.Literal.pos 89],
    [Sat.Literal.pos 20, Sat.Literal.neg 88, Sat.Literal.pos 90],
    [Sat.Literal.neg 90, Sat.Literal.pos 91],
    [Sat.Literal.pos 21, Sat.Literal.neg 90, Sat.Literal.pos 92],
    [Sat.Literal.neg 92, Sat.Literal.pos 93],
    [Sat.Literal.pos 22, Sat.Literal.neg 92, Sat.Literal.pos 94],
    [Sat.Literal.neg 94, Sat.Literal.pos 95],
    [Sat.Literal.pos 23, Sat.Literal.neg 94, Sat.Literal.pos 96],
    [Sat.Literal.neg 96, Sat.Literal.pos 97],
    [Sat.Literal.pos 24, Sat.Literal.neg 96, Sat.Literal.pos 98],
    [Sat.Literal.neg 98, Sat.Literal.pos 99],
    [Sat.Literal.pos 25, Sat.Literal.neg 98, Sat.Literal.pos 100],
    [Sat.Literal.neg 100, Sat.Literal.pos 101],
    [Sat.Literal.pos 26, Sat.Literal.neg 100, Sat.Literal.pos 102],
    [Sat.Literal.neg 102, Sat.Literal.pos 103],
    [Sat.Literal.pos 27, Sat.Literal.neg 102, Sat.Literal.pos 104],
    [Sat.Literal.neg 104, Sat.Literal.pos 105],
    [Sat.Literal.pos 28, Sat.Literal.neg 104, Sat.Literal.pos 106],
    [Sat.Literal.neg 106, Sat.Literal.pos 107],
    [Sat.Literal.pos 29, Sat.Literal.neg 106, Sat.Literal.pos 108],
    [Sat.Literal.neg 108, Sat.Literal.pos 109],
    [Sat.Literal.pos 30, Sat.Literal.neg 108, Sat.Literal.pos 110],
    [Sat.Literal.neg 110, Sat.Literal.pos 111],
    [Sat.Literal.pos 31, Sat.Literal.neg 110, Sat.Literal.pos 112],
    [Sat.Literal.neg 112, Sat.Literal.pos 113],
    [Sat.Literal.pos 32, Sat.Literal.neg 112, Sat.Literal.pos 114],
    [Sat.Literal.neg 114, Sat.Literal.pos 115],
    [Sat.Literal.pos 33, Sat.Literal.neg 114, Sat.Literal.pos 116],
    [Sat.Literal.neg 116, Sat.Literal.pos 117],
    [Sat.Literal.pos 34, Sat.Literal.neg 116, Sat.Literal.pos 118],
    [Sat.Literal.neg 118, Sat.Literal.pos 119],
    [Sat.Literal.pos 35, Sat.Literal.neg 118, Sat.Literal.pos 120],
    [Sat.Literal.neg 120, Sat.Literal.pos 121],
    [Sat.Literal.pos 36, Sat.Literal.neg 120, Sat.Literal.pos 122],
    [Sat.Literal.neg 122, Sat.Literal.pos 123],
    [Sat.Literal.pos 37, Sat.Literal.neg 122, Sat.Literal.pos 124],
    [Sat.Literal.neg 124, Sat.Literal.pos 125],
    [Sat.Literal.pos 38, Sat.Literal.neg 124],
    [Sat.Literal.pos 1, Sat.Literal.pos 51],
    [Sat.Literal.neg 51, Sat.Literal.pos 126],
    [Sat.Literal.pos 2, Sat.Literal.neg 51, Sat.Literal.pos 53],
    [Sat.Literal.neg 53, Sat.Literal.pos 127],
    [Sat.Literal.pos 3, Sat.Literal.neg 53, Sat.Literal.pos 55],
    [Sat.Literal.neg 55, Sat.Literal.pos 128],
    [Sat.Literal.pos 4, Sat.Literal.neg 55, Sat.Literal.pos 57],
    [Sat.Literal.neg 57, Sat.Literal.pos 129],
    [Sat.Literal.pos 5, Sat.Literal.neg 57, Sat.Literal.pos 59],
    [Sat.Literal.neg 59, Sat.Literal.pos 130],
    [Sat.Literal.pos 6, Sat.Literal.neg 59, Sat.Literal.pos 61],
    [Sat.Literal.neg 61, Sat.Literal.pos 131],
    [Sat.Literal.pos 7, Sat.Literal.neg 61, Sat.Literal.pos 63],
    [Sat.Literal.neg 63, Sat.Literal.pos 132],
    [Sat.Literal.pos 8, Sat.Literal.neg 63, Sat.Literal.pos 65],
    [Sat.Literal.neg 65, Sat.Literal.pos 133],
    [Sat.Literal.pos 9, Sat.Literal.neg 65, Sat.Literal.pos 67],
    [Sat.Literal.neg 67, Sat.Literal.pos 134],
    [Sat.Literal.pos 10, Sat.Literal.neg 67, Sat.Literal.pos 69],
    [Sat.Literal.neg 69, Sat.Literal.pos 135],
    [Sat.Literal.pos 11, Sat.Literal.neg 69, Sat.Literal.pos 71],
    [Sat.Literal.neg 71, Sat.Literal.pos 136],
    [Sat.Literal.pos 12, Sat.Literal.neg 71, Sat.Literal.pos 73],
    [Sat.Literal.neg 73, Sat.Literal.pos 137],
    [Sat.Literal.pos 13, Sat.Literal.neg 73, Sat.Literal.pos 75],
    [Sat.Literal.neg 75, Sat.Literal.pos 138],
    [Sat.Literal.pos 14, Sat.Literal.neg 75, Sat.Literal.pos 77],
    [Sat.Literal.neg 77, Sat.Literal.pos 139],
    [Sat.Literal.pos 15, Sat.Literal.neg 77, Sat.Literal.pos 79],
    [Sat.Literal.neg 79, Sat.Literal.pos 140],
    [Sat.Literal.pos 16, Sat.Literal.neg 79, Sat.Literal.pos 81],
    [Sat.Literal.neg 81, Sat.Literal.pos 141],
    [Sat.Literal.pos 17, Sat.Literal.neg 81, Sat.Literal.pos 83],
    [Sat.Literal.neg 83, Sat.Literal.pos 142],
    [Sat.Literal.pos 18, Sat.Literal.neg 83, Sat.Literal.pos 85],
    [Sat.Literal.neg 85, Sat.Literal.pos 143],
    [Sat.Literal.pos 19, Sat.Literal.neg 85, Sat.Literal.pos 87],
    [Sat.Literal.neg 87, Sat.Literal.pos 144],
    [Sat.Literal.pos 20, Sat.Literal.neg 87, Sat.Literal.pos 89],
    [Sat.Literal.neg 89, Sat.Literal.pos 145],
    [Sat.Literal.pos 21, Sat.Literal.neg 89, Sat.Literal.pos 91],
    [Sat.Literal.neg 91, Sat.Literal.pos 146],
    [Sat.Literal.pos 22, Sat.Literal.neg 91, Sat.Literal.pos 93],
    [Sat.Literal.neg 93, Sat.Literal.pos 147],
    [Sat.Literal.pos 23, Sat.Literal.neg 93, Sat.Literal.pos 95],
    [Sat.Literal.neg 95, Sat.Literal.pos 148],
    [Sat.Literal.pos 24, Sat.Literal.neg 95, Sat.Literal.pos 97],
    [Sat.Literal.neg 97, Sat.Literal.pos 149],
    [Sat.Literal.pos 25, Sat.Literal.neg 97, Sat.Literal.pos 99],
    [Sat.Literal.neg 99, Sat.Literal.pos 150],
    [Sat.Literal.pos 26, Sat.Literal.neg 99, Sat.Literal.pos 101],
    [Sat.Literal.neg 101, Sat.Literal.pos 151],
    [Sat.Literal.pos 27, Sat.Literal.neg 101, Sat.Literal.pos 103],
    [Sat.Literal.neg 103, Sat.Literal.pos 152],
    [Sat.Literal.pos 28, Sat.Literal.neg 103, Sat.Literal.pos 105],
    [Sat.Literal.neg 105, Sat.Literal.pos 153],
    [Sat.Literal.pos 29, Sat.Literal.neg 105, Sat.Literal.pos 107],
    [Sat.Literal.neg 107, Sat.Literal.pos 154],
    [Sat.Literal.pos 30, Sat.Literal.neg 107, Sat.Literal.pos 109],
    [Sat.Literal.neg 109, Sat.Literal.pos 155],
    [Sat.Literal.pos 31, Sat.Literal.neg 109, Sat.Literal.pos 111],
    [Sat.Literal.neg 111, Sat.Literal.pos 156],
    [Sat.Literal.pos 32, Sat.Literal.neg 111, Sat.Literal.pos 113],
    [Sat.Literal.neg 113, Sat.Literal.pos 157],
    [Sat.Literal.pos 33, Sat.Literal.neg 113, Sat.Literal.pos 115],
    [Sat.Literal.neg 115, Sat.Literal.pos 158],
    [Sat.Literal.pos 34, Sat.Literal.neg 115, Sat.Literal.pos 117],
    [Sat.Literal.neg 117, Sat.Literal.pos 159],
    [Sat.Literal.pos 35, Sat.Literal.neg 117, Sat.Literal.pos 119],
    [Sat.Literal.neg 119, Sat.Literal.pos 160],
    [Sat.Literal.pos 36, Sat.Literal.neg 119, Sat.Literal.pos 121],
    [Sat.Literal.neg 121, Sat.Literal.pos 161],
    [Sat.Literal.pos 37, Sat.Literal.neg 121, Sat.Literal.pos 123],
    [Sat.Literal.neg 123, Sat.Literal.pos 162],
    [Sat.Literal.pos 38, Sat.Literal.neg 123, Sat.Literal.pos 125],
    [Sat.Literal.neg 125, Sat.Literal.pos 163],
    [Sat.Literal.pos 39, Sat.Literal.neg 125],
    [Sat.Literal.pos 2, Sat.Literal.pos 126],
    [Sat.Literal.neg 126, Sat.Literal.pos 164],
    [Sat.Literal.pos 3, Sat.Literal.neg 126, Sat.Literal.pos 127],
    [Sat.Literal.neg 127, Sat.Literal.pos 165],
    [Sat.Literal.pos 4, Sat.Literal.neg 127, Sat.Literal.pos 128],
    [Sat.Literal.neg 128, Sat.Literal.pos 166],
    [Sat.Literal.pos 5, Sat.Literal.neg 128, Sat.Literal.pos 129],
    [Sat.Literal.neg 129, Sat.Literal.pos 167],
    [Sat.Literal.pos 6, Sat.Literal.neg 129, Sat.Literal.pos 130],
    [Sat.Literal.neg 130, Sat.Literal.pos 168],
    [Sat.Literal.pos 7, Sat.Literal.neg 130, Sat.Literal.pos 131],
    [Sat.Literal.neg 131, Sat.Literal.pos 169],
    [Sat.Literal.pos 8, Sat.Literal.neg 131, Sat.Literal.pos 132],
    [Sat.Literal.neg 132, Sat.Literal.pos 170],
    [Sat.Literal.pos 9, Sat.Literal.neg 132, Sat.Literal.pos 133],
    [Sat.Literal.neg 133, Sat.Literal.pos 171],
    [Sat.Literal.pos 10, Sat.Literal.neg 133, Sat.Literal.pos 134],
    [Sat.Literal.neg 134, Sat.Literal.pos 172],
    [Sat.Literal.pos 11, Sat.Literal.neg 134, Sat.Literal.pos 135],
    [Sat.Literal.neg 135, Sat.Literal.pos 173],
    [Sat.Literal.pos 12, Sat.Literal.neg 135, Sat.Literal.pos 136],
    [Sat.Literal.neg 136, Sat.Literal.pos 174],
    [Sat.Literal.pos 13, Sat.Literal.neg 136, Sat.Literal.pos 137],
    [Sat.Literal.neg 137, Sat.Literal.pos 175],
    [Sat.Literal.pos 14, Sat.Literal.neg 137, Sat.Literal.pos 138],
    [Sat.Literal.neg 138, Sat.Literal.pos 176],
    [Sat.Literal.pos 15, Sat.Literal.neg 138, Sat.Literal.pos 139],
    [Sat.Literal.neg 139, Sat.Literal.pos 177],
    [Sat.Literal.pos 16, Sat.Literal.neg 139, Sat.Literal.pos 140],
    [Sat.Literal.neg 140, Sat.Literal.pos 178],
    [Sat.Literal.pos 17, Sat.Literal.neg 140, Sat.Literal.pos 141],
    [Sat.Literal.neg 141, Sat.Literal.pos 179],
    [Sat.Literal.pos 18, Sat.Literal.neg 141, Sat.Literal.pos 142],
    [Sat.Literal.neg 142, Sat.Literal.pos 180],
    [Sat.Literal.pos 19, Sat.Literal.neg 142, Sat.Literal.pos 143],
    [Sat.Literal.neg 143, Sat.Literal.pos 181],
    [Sat.Literal.pos 20, Sat.Literal.neg 143, Sat.Literal.pos 144],
    [Sat.Literal.neg 144, Sat.Literal.pos 182],
    [Sat.Literal.pos 21, Sat.Literal.neg 144, Sat.Literal.pos 145],
    [Sat.Literal.neg 145, Sat.Literal.pos 183],
    [Sat.Literal.pos 22, Sat.Literal.neg 145, Sat.Literal.pos 146],
    [Sat.Literal.neg 146, Sat.Literal.pos 184],
    [Sat.Literal.pos 23, Sat.Literal.neg 146, Sat.Literal.pos 147],
    [Sat.Literal.neg 147, Sat.Literal.pos 185],
    [Sat.Literal.pos 24, Sat.Literal.neg 147, Sat.Literal.pos 148],
    [Sat.Literal.neg 148, Sat.Literal.pos 186],
    [Sat.Literal.pos 25, Sat.Literal.neg 148, Sat.Literal.pos 149],
    [Sat.Literal.neg 149, Sat.Literal.pos 187],
    [Sat.Literal.pos 26, Sat.Literal.neg 149, Sat.Literal.pos 150],
    [Sat.Literal.neg 150, Sat.Literal.pos 188],
    [Sat.Literal.pos 27, Sat.Literal.neg 150, Sat.Literal.pos 151],
    [Sat.Literal.neg 151, Sat.Literal.pos 189],
    [Sat.Literal.pos 28, Sat.Literal.neg 151, Sat.Literal.pos 152],
    [Sat.Literal.neg 152, Sat.Literal.pos 190],
    [Sat.Literal.pos 29, Sat.Literal.neg 152, Sat.Literal.pos 153],
    [Sat.Literal.neg 153, Sat.Literal.pos 191],
    [Sat.Literal.pos 30, Sat.Literal.neg 153, Sat.Literal.pos 154],
    [Sat.Literal.neg 154, Sat.Literal.pos 192],
    [Sat.Literal.pos 31, Sat.Literal.neg 154, Sat.Literal.pos 155],
    [Sat.Literal.neg 155, Sat.Literal.pos 193],
    [Sat.Literal.pos 32, Sat.Literal.neg 155, Sat.Literal.pos 156],
    [Sat.Literal.neg 156, Sat.Literal.pos 194],
    [Sat.Literal.pos 33, Sat.Literal.neg 156, Sat.Literal.pos 157],
    [Sat.Literal.neg 157, Sat.Literal.pos 195],
    [Sat.Literal.pos 34, Sat.Literal.neg 157, Sat.Literal.pos 158],
    [Sat.Literal.neg 158, Sat.Literal.pos 196],
    [Sat.Literal.pos 35, Sat.Literal.neg 158, Sat.Literal.pos 159],
    [Sat.Literal.neg 159, Sat.Literal.pos 197],
    [Sat.Literal.pos 36, Sat.Literal.neg 159, Sat.Literal.pos 160],
    [Sat.Literal.neg 160, Sat.Literal.pos 198],
    [Sat.Literal.pos 37, Sat.Literal.neg 160, Sat.Literal.pos 161],
    [Sat.Literal.neg 161, Sat.Literal.pos 199],
    [Sat.Literal.pos 38, Sat.Literal.neg 161, Sat.Literal.pos 162],
    [Sat.Literal.neg 162, Sat.Literal.pos 200],
    [Sat.Literal.pos 39, Sat.Literal.neg 162, Sat.Literal.pos 163],
    [Sat.Literal.neg 163, Sat.Literal.pos 201],
    [Sat.Literal.pos 40, Sat.Literal.neg 163],
    [Sat.Literal.pos 3, Sat.Literal.pos 164],
    [Sat.Literal.neg 164, Sat.Literal.pos 202],
    [Sat.Literal.pos 4, Sat.Literal.neg 164, Sat.Literal.pos 165],
    [Sat.Literal.neg 165, Sat.Literal.pos 203],
    [Sat.Literal.pos 5, Sat.Literal.neg 165, Sat.Literal.pos 166],
    [Sat.Literal.neg 166, Sat.Literal.pos 204],
    [Sat.Literal.pos 6, Sat.Literal.neg 166, Sat.Literal.pos 167],
    [Sat.Literal.neg 167, Sat.Literal.pos 205],
    [Sat.Literal.pos 7, Sat.Literal.neg 167, Sat.Literal.pos 168],
    [Sat.Literal.neg 168, Sat.Literal.pos 206],
    [Sat.Literal.pos 8, Sat.Literal.neg 168, Sat.Literal.pos 169],
    [Sat.Literal.neg 169, Sat.Literal.pos 207],
    [Sat.Literal.pos 9, Sat.Literal.neg 169, Sat.Literal.pos 170],
    [Sat.Literal.neg 170, Sat.Literal.pos 208],
    [Sat.Literal.pos 10, Sat.Literal.neg 170, Sat.Literal.pos 171],
    [Sat.Literal.neg 171, Sat.Literal.pos 209],
    [Sat.Literal.pos 11, Sat.Literal.neg 171, Sat.Literal.pos 172],
    [Sat.Literal.neg 172, Sat.Literal.pos 210],
    [Sat.Literal.pos 12, Sat.Literal.neg 172, Sat.Literal.pos 173],
    [Sat.Literal.neg 173, Sat.Literal.pos 211],
    [Sat.Literal.pos 13, Sat.Literal.neg 173, Sat.Literal.pos 174],
    [Sat.Literal.neg 174, Sat.Literal.pos 212],
    [Sat.Literal.pos 14, Sat.Literal.neg 174, Sat.Literal.pos 175],
    [Sat.Literal.neg 175, Sat.Literal.pos 213],
    [Sat.Literal.pos 15, Sat.Literal.neg 175, Sat.Literal.pos 176],
    [Sat.Literal.neg 176, Sat.Literal.pos 214],
    [Sat.Literal.pos 16, Sat.Literal.neg 176, Sat.Literal.pos 177],
    [Sat.Literal.neg 177, Sat.Literal.pos 215],
    [Sat.Literal.pos 17, Sat.Literal.neg 177, Sat.Literal.pos 178],
    [Sat.Literal.neg 178, Sat.Literal.pos 216],
    [Sat.Literal.pos 18, Sat.Literal.neg 178, Sat.Literal.pos 179],
    [Sat.Literal.neg 179, Sat.Literal.pos 217],
    [Sat.Literal.pos 19, Sat.Literal.neg 179, Sat.Literal.pos 180],
    [Sat.Literal.neg 180, Sat.Literal.pos 218],
    [Sat.Literal.pos 20, Sat.Literal.neg 180, Sat.Literal.pos 181],
    [Sat.Literal.neg 181, Sat.Literal.pos 219],
    [Sat.Literal.pos 21, Sat.Literal.neg 181, Sat.Literal.pos 182],
    [Sat.Literal.neg 182, Sat.Literal.pos 220],
    [Sat.Literal.pos 22, Sat.Literal.neg 182, Sat.Literal.pos 183],
    [Sat.Literal.neg 183, Sat.Literal.pos 221],
    [Sat.Literal.pos 23, Sat.Literal.neg 183, Sat.Literal.pos 184],
    [Sat.Literal.neg 184, Sat.Literal.pos 222],
    [Sat.Literal.pos 24, Sat.Literal.neg 184, Sat.Literal.pos 185],
    [Sat.Literal.neg 185, Sat.Literal.pos 223],
    [Sat.Literal.pos 25, Sat.Literal.neg 185, Sat.Literal.pos 186],
    [Sat.Literal.neg 186, Sat.Literal.pos 224],
    [Sat.Literal.pos 26, Sat.Literal.neg 186, Sat.Literal.pos 187],
    [Sat.Literal.neg 187, Sat.Literal.pos 225],
    [Sat.Literal.pos 27, Sat.Literal.neg 187, Sat.Literal.pos 188],
    [Sat.Literal.neg 188, Sat.Literal.pos 226],
    [Sat.Literal.pos 28, Sat.Literal.neg 188, Sat.Literal.pos 189],
    [Sat.Literal.neg 189, Sat.Literal.pos 227],
    [Sat.Literal.pos 29, Sat.Literal.neg 189, Sat.Literal.pos 190],
    [Sat.Literal.neg 190, Sat.Literal.pos 228],
    [Sat.Literal.pos 30, Sat.Literal.neg 190, Sat.Literal.pos 191],
    [Sat.Literal.neg 191, Sat.Literal.pos 229],
    [Sat.Literal.pos 31, Sat.Literal.neg 191, Sat.Literal.pos 192],
    [Sat.Literal.neg 192, Sat.Literal.pos 230],
    [Sat.Literal.pos 32, Sat.Literal.neg 192, Sat.Literal.pos 193],
    [Sat.Literal.neg 193, Sat.Literal.pos 231],
    [Sat.Literal.pos 33, Sat.Literal.neg 193, Sat.Literal.pos 194],
    [Sat.Literal.neg 194, Sat.Literal.pos 232],
    [Sat.Literal.pos 34, Sat.Literal.neg 194, Sat.Literal.pos 195],
    [Sat.Literal.neg 195, Sat.Literal.pos 233],
    [Sat.Literal.pos 35, Sat.Literal.neg 195, Sat.Literal.pos 196],
    [Sat.Literal.neg 196, Sat.Literal.pos 234],
    [Sat.Literal.pos 36, Sat.Literal.neg 196, Sat.Literal.pos 197],
    [Sat.Literal.neg 197, Sat.Literal.pos 235],
    [Sat.Literal.pos 37, Sat.Literal.neg 197, Sat.Literal.pos 198],
    [Sat.Literal.neg 198, Sat.Literal.pos 236],
    [Sat.Literal.pos 38, Sat.Literal.neg 198, Sat.Literal.pos 199],
    [Sat.Literal.neg 199, Sat.Literal.pos 237],
    [Sat.Literal.pos 39, Sat.Literal.neg 199, Sat.Literal.pos 200],
    [Sat.Literal.neg 200, Sat.Literal.pos 238],
    [Sat.Literal.pos 40, Sat.Literal.neg 200, Sat.Literal.pos 201],
    [Sat.Literal.neg 201, Sat.Literal.pos 239],
    [Sat.Literal.pos 41, Sat.Literal.neg 201],
    [Sat.Literal.pos 4, Sat.Literal.pos 202],
    [Sat.Literal.neg 202, Sat.Literal.pos 240],
    [Sat.Literal.pos 5, Sat.Literal.neg 202, Sat.Literal.pos 203],
    [Sat.Literal.neg 203, Sat.Literal.pos 241],
    [Sat.Literal.pos 6, Sat.Literal.neg 203, Sat.Literal.pos 204],
    [Sat.Literal.neg 204, Sat.Literal.pos 242],
    [Sat.Literal.pos 7, Sat.Literal.neg 204, Sat.Literal.pos 205],
    [Sat.Literal.neg 205, Sat.Literal.pos 243],
    [Sat.Literal.pos 8, Sat.Literal.neg 205, Sat.Literal.pos 206],
    [Sat.Literal.neg 206, Sat.Literal.pos 244],
    [Sat.Literal.pos 9, Sat.Literal.neg 206, Sat.Literal.pos 207],
    [Sat.Literal.neg 207, Sat.Literal.pos 245],
    [Sat.Literal.pos 10, Sat.Literal.neg 207, Sat.Literal.pos 208],
    [Sat.Literal.neg 208, Sat.Literal.pos 246],
    [Sat.Literal.pos 11, Sat.Literal.neg 208, Sat.Literal.pos 209],
    [Sat.Literal.neg 209, Sat.Literal.pos 247],
    [Sat.Literal.pos 12, Sat.Literal.neg 209, Sat.Literal.pos 210],
    [Sat.Literal.neg 210, Sat.Literal.pos 248],
    [Sat.Literal.pos 13, Sat.Literal.neg 210, Sat.Literal.pos 211],
    [Sat.Literal.neg 211, Sat.Literal.pos 249],
    [Sat.Literal.pos 14, Sat.Literal.neg 211, Sat.Literal.pos 212],
    [Sat.Literal.neg 212, Sat.Literal.pos 250],
    [Sat.Literal.pos 15, Sat.Literal.neg 212, Sat.Literal.pos 213],
    [Sat.Literal.neg 213, Sat.Literal.pos 251],
    [Sat.Literal.pos 16, Sat.Literal.neg 213, Sat.Literal.pos 214],
    [Sat.Literal.neg 214, Sat.Literal.pos 252],
    [Sat.Literal.pos 17, Sat.Literal.neg 214, Sat.Literal.pos 215],
    [Sat.Literal.neg 215, Sat.Literal.pos 253],
    [Sat.Literal.pos 18, Sat.Literal.neg 215, Sat.Literal.pos 216],
    [Sat.Literal.neg 216, Sat.Literal.pos 254],
    [Sat.Literal.pos 19, Sat.Literal.neg 216, Sat.Literal.pos 217],
    [Sat.Literal.neg 217, Sat.Literal.pos 255],
    [Sat.Literal.pos 20, Sat.Literal.neg 217, Sat.Literal.pos 218],
    [Sat.Literal.neg 218, Sat.Literal.pos 256],
    [Sat.Literal.pos 21, Sat.Literal.neg 218, Sat.Literal.pos 219],
    [Sat.Literal.neg 219, Sat.Literal.pos 257],
    [Sat.Literal.pos 22, Sat.Literal.neg 219, Sat.Literal.pos 220],
    [Sat.Literal.neg 220, Sat.Literal.pos 258],
    [Sat.Literal.pos 23, Sat.Literal.neg 220, Sat.Literal.pos 221],
    [Sat.Literal.neg 221, Sat.Literal.pos 259],
    [Sat.Literal.pos 24, Sat.Literal.neg 221, Sat.Literal.pos 222],
    [Sat.Literal.neg 222, Sat.Literal.pos 260],
    [Sat.Literal.pos 25, Sat.Literal.neg 222, Sat.Literal.pos 223],
    [Sat.Literal.neg 223, Sat.Literal.pos 261],
    [Sat.Literal.pos 26, Sat.Literal.neg 223, Sat.Literal.pos 224],
    [Sat.Literal.neg 224, Sat.Literal.pos 262],
    [Sat.Literal.pos 27, Sat.Literal.neg 224, Sat.Literal.pos 225],
    [Sat.Literal.neg 225, Sat.Literal.pos 263],
    [Sat.Literal.pos 28, Sat.Literal.neg 225, Sat.Literal.pos 226],
    [Sat.Literal.neg 226, Sat.Literal.pos 264],
    [Sat.Literal.pos 29, Sat.Literal.neg 226, Sat.Literal.pos 227],
    [Sat.Literal.neg 227, Sat.Literal.pos 265],
    [Sat.Literal.pos 30, Sat.Literal.neg 227, Sat.Literal.pos 228],
    [Sat.Literal.neg 228, Sat.Literal.pos 266],
    [Sat.Literal.pos 31, Sat.Literal.neg 228, Sat.Literal.pos 229],
    [Sat.Literal.neg 229, Sat.Literal.pos 267],
    [Sat.Literal.pos 32, Sat.Literal.neg 229, Sat.Literal.pos 230],
    [Sat.Literal.neg 230, Sat.Literal.pos 268],
    [Sat.Literal.pos 33, Sat.Literal.neg 230, Sat.Literal.pos 231],
    [Sat.Literal.neg 231, Sat.Literal.pos 269],
    [Sat.Literal.pos 34, Sat.Literal.neg 231, Sat.Literal.pos 232],
    [Sat.Literal.neg 232, Sat.Literal.pos 270],
    [Sat.Literal.pos 35, Sat.Literal.neg 232, Sat.Literal.pos 233],
    [Sat.Literal.neg 233, Sat.Literal.pos 271],
    [Sat.Literal.pos 36, Sat.Literal.neg 233, Sat.Literal.pos 234],
    [Sat.Literal.neg 234, Sat.Literal.pos 272],
    [Sat.Literal.pos 37, Sat.Literal.neg 234, Sat.Literal.pos 235],
    [Sat.Literal.neg 235, Sat.Literal.pos 273],
    [Sat.Literal.pos 38, Sat.Literal.neg 235, Sat.Literal.pos 236],
    [Sat.Literal.neg 236, Sat.Literal.pos 274],
    [Sat.Literal.pos 39, Sat.Literal.neg 236, Sat.Literal.pos 237],
    [Sat.Literal.neg 237, Sat.Literal.pos 275],
    [Sat.Literal.pos 40, Sat.Literal.neg 237, Sat.Literal.pos 238],
    [Sat.Literal.neg 238, Sat.Literal.pos 276],
    [Sat.Literal.pos 41, Sat.Literal.neg 238, Sat.Literal.pos 239],
    [Sat.Literal.neg 239, Sat.Literal.pos 277],
    [Sat.Literal.pos 42, Sat.Literal.neg 239],
    [Sat.Literal.pos 5, Sat.Literal.pos 240],
    [Sat.Literal.neg 240, Sat.Literal.pos 278],
    [Sat.Literal.pos 6, Sat.Literal.neg 240, Sat.Literal.pos 241],
    [Sat.Literal.neg 241, Sat.Literal.pos 279],
    [Sat.Literal.pos 7, Sat.Literal.neg 241, Sat.Literal.pos 242],
    [Sat.Literal.neg 242, Sat.Literal.pos 280],
    [Sat.Literal.pos 8, Sat.Literal.neg 242, Sat.Literal.pos 243],
    [Sat.Literal.neg 243, Sat.Literal.pos 281],
    [Sat.Literal.pos 9, Sat.Literal.neg 243, Sat.Literal.pos 244],
    [Sat.Literal.neg 244, Sat.Literal.pos 282],
    [Sat.Literal.pos 10, Sat.Literal.neg 244, Sat.Literal.pos 245],
    [Sat.Literal.neg 245, Sat.Literal.pos 283],
    [Sat.Literal.pos 11, Sat.Literal.neg 245, Sat.Literal.pos 246],
    [Sat.Literal.neg 246, Sat.Literal.pos 284],
    [Sat.Literal.pos 12, Sat.Literal.neg 246, Sat.Literal.pos 247],
    [Sat.Literal.neg 247, Sat.Literal.pos 285],
    [Sat.Literal.pos 13, Sat.Literal.neg 247, Sat.Literal.pos 248],
    [Sat.Literal.neg 248, Sat.Literal.pos 286],
    [Sat.Literal.pos 14, Sat.Literal.neg 248, Sat.Literal.pos 249],
    [Sat.Literal.neg 249, Sat.Literal.pos 287],
    [Sat.Literal.pos 15, Sat.Literal.neg 249, Sat.Literal.pos 250],
    [Sat.Literal.neg 250, Sat.Literal.pos 288],
    [Sat.Literal.pos 16, Sat.Literal.neg 250, Sat.Literal.pos 251],
    [Sat.Literal.neg 251, Sat.Literal.pos 289],
    [Sat.Literal.pos 17, Sat.Literal.neg 251, Sat.Literal.pos 252],
    [Sat.Literal.neg 252, Sat.Literal.pos 290],
    [Sat.Literal.pos 18, Sat.Literal.neg 252, Sat.Literal.pos 253],
    [Sat.Literal.neg 253, Sat.Literal.pos 291],
    [Sat.Literal.pos 19, Sat.Literal.neg 253, Sat.Literal.pos 254],
    [Sat.Literal.neg 254, Sat.Literal.pos 292],
    [Sat.Literal.pos 20, Sat.Literal.neg 254, Sat.Literal.pos 255],
    [Sat.Literal.neg 255, Sat.Literal.pos 293],
    [Sat.Literal.pos 21, Sat.Literal.neg 255, Sat.Literal.pos 256],
    [Sat.Literal.neg 256, Sat.Literal.pos 294],
    [Sat.Literal.pos 22, Sat.Literal.neg 256, Sat.Literal.pos 257],
    [Sat.Literal.neg 257, Sat.Literal.pos 295],
    [Sat.Literal.pos 23, Sat.Literal.neg 257, Sat.Literal.pos 258],
    [Sat.Literal.neg 258, Sat.Literal.pos 296],
    [Sat.Literal.pos 24, Sat.Literal.neg 258, Sat.Literal.pos 259],
    [Sat.Literal.neg 259, Sat.Literal.pos 297],
    [Sat.Literal.pos 25, Sat.Literal.neg 259, Sat.Literal.pos 260],
    [Sat.Literal.neg 260, Sat.Literal.pos 298],
    [Sat.Literal.pos 26, Sat.Literal.neg 260, Sat.Literal.pos 261],
    [Sat.Literal.neg 261, Sat.Literal.pos 299],
    [Sat.Literal.pos 27, Sat.Literal.neg 261, Sat.Literal.pos 262],
    [Sat.Literal.neg 262, Sat.Literal.pos 300],
    [Sat.Literal.pos 28, Sat.Literal.neg 262, Sat.Literal.pos 263],
    [Sat.Literal.neg 263, Sat.Literal.pos 301],
    [Sat.Literal.pos 29, Sat.Literal.neg 263, Sat.Literal.pos 264],
    [Sat.Literal.neg 264, Sat.Literal.pos 302],
    [Sat.Literal.pos 30, Sat.Literal.neg 264, Sat.Literal.pos 265],
    [Sat.Literal.neg 265, Sat.Literal.pos 303],
    [Sat.Literal.pos 31, Sat.Literal.neg 265, Sat.Literal.pos 266],
    [Sat.Literal.neg 266, Sat.Literal.pos 304],
    [Sat.Literal.pos 32, Sat.Literal.neg 266, Sat.Literal.pos 267] ]

theorem satisfies031 (x : BitVec 50)
    (hcard : 12 ≤ selectedCount x) (hno : hasC3Violation x = false) :
    List.Forall ((valuation x).satisfies) segment031 := by
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 43) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 44) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 44) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 45) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 45) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 39) (b := 46) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 42) (d := 43)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 42) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 42) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 41) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 42) (c := 43) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 42) (c := 44) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 42) (c := 45) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 43) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 43) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 43) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 43) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 43) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 43) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 44) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 45) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 45) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 40) (b := 46) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 42) (c := 43) (d := 44)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 42) (c := 43) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 42) (c := 43) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 42) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 42) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 42) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 43) (c := 45) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 44) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 44) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 44) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 44) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 41) (b := 46) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 43) (c := 44) (d := 45)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 43) (c := 44) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 43) (c := 44) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 43) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 43) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 44) (c := 46) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 45) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 45) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 45) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 42) (b := 47) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 43) (b := 44) (c := 45) (d := 46)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 43) (b := 44) (c := 45) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 43) (b := 44) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 43) (b := 45) (c := 47) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 43) (b := 46) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 43) (b := 46) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 44) (b := 45) (c := 46) (d := 47)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 44) (b := 45) (c := 46) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 44) (b := 47) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 45) (b := 46) (c := 47) (d := 48)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · exact supportClauseSatisfies x hno
      (a := 46) (b := 47) (c := 48) (d := 49)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by decide)
  constructor
  · apply satisfies_pos_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_base x (j := 0) (by norm_num))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 0) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 0) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 1) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 1) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 2) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 2) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 3) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 3) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 4) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 4) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 5) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 5) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 6) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 6) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 7) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 7) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 8) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 8) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 9) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 9) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 10) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 10) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 11) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 11) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 12) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 12) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 13) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 13) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 14) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 14) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 15) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 15) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 16) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 16) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 17) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 17) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 18) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 18) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 19) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 19) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 20) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 20) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 21) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 21) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 22) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 22) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 23) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 23) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 24) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 24) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 25) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 25) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 26) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 26) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 27) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 27) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 28) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 28) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 29) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 29) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 30) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 30) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 31) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 31) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 32) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 32) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 33) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 33) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 34) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 34) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 35) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 35) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 36) (j := 0))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 36) (j := 0))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 37) (j := 0))
  constructor
  · apply satisfies_pos_neg
    simpa [valuation, auxK, auxJ, seqState] using (seq_final_not_true x hcard (j := 0) (by norm_num))
  constructor
  · apply satisfies_pos_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_base x (j := 1) (by norm_num))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 0) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 0) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 1) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 1) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 2) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 2) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 3) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 3) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 4) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 4) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 5) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 5) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 6) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 6) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 7) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 7) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 8) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 8) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 9) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 9) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 10) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 10) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 11) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 11) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 12) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 12) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 13) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 13) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 14) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 14) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 15) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 15) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 16) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 16) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 17) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 17) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 18) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 18) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 19) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 19) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 20) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 20) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 21) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 21) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 22) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 22) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 23) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 23) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 24) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 24) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 25) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 25) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 26) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 26) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 27) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 27) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 28) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 28) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 29) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 29) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 30) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 30) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 31) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 31) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 32) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 32) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 33) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 33) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 34) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 34) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 35) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 35) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 36) (j := 1))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 36) (j := 1))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 37) (j := 1))
  constructor
  · apply satisfies_pos_neg
    simpa [valuation, auxK, auxJ, seqState] using (seq_final_not_true x hcard (j := 1) (by norm_num))
  constructor
  · apply satisfies_pos_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_base x (j := 2) (by norm_num))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 0) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 0) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 1) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 1) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 2) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 2) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 3) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 3) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 4) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 4) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 5) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 5) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 6) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 6) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 7) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 7) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 8) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 8) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 9) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 9) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 10) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 10) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 11) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 11) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 12) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 12) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 13) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 13) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 14) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 14) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 15) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 15) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 16) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 16) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 17) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 17) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 18) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 18) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 19) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 19) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 20) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 20) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 21) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 21) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 22) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 22) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 23) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 23) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 24) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 24) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 25) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 25) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 26) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 26) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 27) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 27) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 28) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 28) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 29) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 29) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 30) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 30) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 31) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 31) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 32) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 32) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 33) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 33) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 34) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 34) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 35) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 35) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 36) (j := 2))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 36) (j := 2))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 37) (j := 2))
  constructor
  · apply satisfies_pos_neg
    simpa [valuation, auxK, auxJ, seqState] using (seq_final_not_true x hcard (j := 2) (by norm_num))
  constructor
  · apply satisfies_pos_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_base x (j := 3) (by norm_num))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 0) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 0) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 1) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 1) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 2) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 2) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 3) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 3) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 4) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 4) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 5) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 5) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 6) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 6) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 7) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 7) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 8) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 8) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 9) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 9) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 10) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 10) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 11) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 11) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 12) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 12) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 13) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 13) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 14) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 14) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 15) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 15) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 16) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 16) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 17) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 17) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 18) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 18) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 19) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 19) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 20) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 20) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 21) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 21) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 22) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 22) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 23) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 23) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 24) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 24) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 25) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 25) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 26) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 26) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 27) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 27) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 28) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 28) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 29) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 29) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 30) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 30) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 31) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 31) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 32) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 32) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 33) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 33) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 34) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 34) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 35) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 35) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 36) (j := 3))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 36) (j := 3))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 37) (j := 3))
  constructor
  · apply satisfies_pos_neg
    simpa [valuation, auxK, auxJ, seqState] using (seq_final_not_true x hcard (j := 3) (by norm_num))
  constructor
  · apply satisfies_pos_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_base x (j := 4) (by norm_num))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 0) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 0) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 1) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 1) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 2) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 2) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 3) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 3) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 4) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 4) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 5) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 5) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 6) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 6) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 7) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 7) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 8) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 8) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 9) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 9) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 10) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 10) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 11) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 11) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 12) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 12) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 13) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 13) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 14) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 14) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 15) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 15) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 16) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 16) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 17) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 17) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 18) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 18) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 19) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 19) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 20) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 20) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 21) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 21) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 22) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 22) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 23) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 23) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 24) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 24) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 25) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 25) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 26) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 26) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 27) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 27) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 28) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 28) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 29) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 29) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 30) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 30) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 31) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 31) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 32) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 32) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 33) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 33) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 34) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 34) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 35) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 35) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 36) (j := 4))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 36) (j := 4))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 37) (j := 4))
  constructor
  · apply satisfies_pos_neg
    simpa [valuation, auxK, auxJ, seqState] using (seq_final_not_true x hcard (j := 4) (by norm_num))
  constructor
  · apply satisfies_pos_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_base x (j := 5) (by norm_num))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 0) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 0) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 1) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 1) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 2) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 2) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 3) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 3) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 4) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 4) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 5) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 5) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 6) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 6) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 7) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 7) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 8) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 8) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 9) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 9) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 10) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 10) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 11) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 11) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 12) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 12) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 13) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 13) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 14) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 14) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 15) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 15) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 16) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 16) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 17) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 17) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 18) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 18) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 19) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 19) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 20) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 20) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 21) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 21) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 22) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 22) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 23) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 23) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 24) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 24) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 25) (j := 5))
  constructor
  · apply satisfies_pos_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 25) (j := 5))
  constructor
  · apply satisfies_neg_pos
    simpa [valuation, auxK, auxJ, seqState] using (seq_mono x (k := 26) (j := 5))
  apply satisfies_pos_neg_pos
  simpa [valuation, auxK, auxJ, seqState] using (seq_step_not_true x (k := 26) (j := 5))

end C3Span50Semantic

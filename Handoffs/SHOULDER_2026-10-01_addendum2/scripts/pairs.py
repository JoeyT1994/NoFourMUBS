import sys, math, time
from fractions import Fraction as F
sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/ProvenResults/FourierNeighbourhood/SeedLifting')
from side_cover_lift import arb, sharp_R_cap, collect_labels, side_triples
from residual_lift import completion_bound
from family_side_lift import family_reference
from moving_reference_lift import ROWS, COLS
a, b = F(31,100), F(33,50)
c = [F(2,3), -F(1,3)+2*a, -F(2,3), -F(2,3)+2*b]; c = [((x+1)%2)-1 for x in c]
cc = [arb.pi()*x.numerator/x.denominator for x in c]; hh = [arb.pi()/10**6]*4
cap = sharp_R_cap(cc, hh); sides = []
for order in ((0,1,2,3),(0,2,1,3)):
    labels, gram, info = collect_labels([cc[i] for i in order],[hh[i] for i in order], cap, depth=18, budget=2000000, maxlabels=20000)
    side, stats = side_triples(labels, gram, 20000000, 20000000); sides.append(side)
    print('side', order, 'labels', len(side[0]), 'triples', len(side[1]), flush=True)
H0 = family_reference(a, b, ROWS, COLS)
B, C = sides
for i, tb in enumerate(B[1]):
    for j, tc in enumerate(C[1]):
        r = completion_bound(H0, cc, hh, (B[0], [tb]), (C[0], [tc]))
        print('B', i, 'C', j, r.get('reason'), r.get('column_distance', r.get('eta',''))[:14], flush=True)

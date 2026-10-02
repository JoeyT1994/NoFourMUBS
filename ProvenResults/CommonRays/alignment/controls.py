"""Exact control matrices (copied from the archive's
03_algebraic/core/phase_reduction/gram_forcing/equality_control.py and
known_mate_multiplier/input.py).  H: an order-six phase Hadamard over
Q(i,sqrt2) with all 400 three-minors nonzero; mate: an exact full mate
whose entries are 24th roots of unity, so (I,H/sqrt6,mate/sqrt6) is an MUB
triple (checked in verify.py)."""
import sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent.parent))
from fractions import Fraction as F
from qfield import Q,physical,mul,star,det3

COLUMNS=(0,4,2,1,3,5)
MATE_COLUMNS=((0,2,19,18,8,19),(0,18,9,0,6,3),(0,18,21,12,18,3),(0,10,11,18,16,11),(0,10,23,6,4,11),(0,2,7,6,20,19))

def carrier():
    i=Q({1:1});t=Q({2:F(1,2),3:F(1,2)});tb=t.bar();o=Q(1)
    return [[o]*6,
            [-i,tb,-tb,i,t,-t],
            [-t,i,t,-tb,-i,tb],
            [o,-o,i,o,-o,-i],
            [o,tb,t,-o,-t,-tb],
            [o,-tb,-i,i,tb,-o]]

def matrices():
    H=[[row[c]/row[0] for c in COLUMNS] for row in carrier()]
    root=(Q({6:1})+Q({2:1})+Q({7:1})-Q({3:1}))/4
    mate=list(map(list,zip(*[[root**k for k in col] for col in MATE_COLUMNS])))
    return H,mate

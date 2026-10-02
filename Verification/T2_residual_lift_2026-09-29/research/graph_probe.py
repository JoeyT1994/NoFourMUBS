import sys,importlib.util,inspect,json
from fractions import Fraction as F
from pathlib import Path
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/WideFamilyTube')
import certificate as c
raw,_=c.module('old_f6',Path('ProvenResults/FourierNeighbourhood/verify.py')).load_centers()
s=inspect.getsource(c.graph).replace('assert 6<=denominator<=128','assert 4<=denominator<=128')
ns=vars(c).copy();exec(s,ns)
for den in [F(6),F(29,5),F(28,5),F(27,5),F(26,5),F(5)]:
 try:
  r=ns['graph'](raw,den);r.pop('cases');print(den,r,flush=True)
 except AssertionError as e:print(den,'FAIL',str(e)[:300],flush=True)

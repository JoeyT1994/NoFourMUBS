import sys,importlib.util
from pathlib import Path
from itertools import combinations
from collections import defaultdict
import sympy as sp
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedAtlas')
import atlas
p=Path('ProvenResults/CornerBounds/verify.py');spec=importlib.util.spec_from_file_location('corner',p);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
seeds,D,R=m.generic_polynomials();dt=m.laurent_terms(D,seeds)
roots=((1,0),(0,1),(-1,1),(-1,0),(0,-1),(1,-1))
z,w=sp.symbols('z w',nonzero=True);total=defaultdict(lambda:[0,0]);forms=set()
for rows in combinations(range(6),3):
 for cols in combinations(range(6),3):
  coords=atlas.dephase(atlas.family_entry,rows,cols)
  poly=defaultdict(lambda:[0,0])
  for coeff,e in dt:
   h,x,y=[sum(a*b[i] for a,b in zip(e,coords)) for i in range(3)]
   A,B=roots[h%6];poly[x,y][0]+=coeff*A;poly[x,y][1]+=coeff*B
  poly={p:tuple(c) for p,c in poly.items() if c!=[0,0]};value=defaultdict(lambda:[0,0])
  for (x,y),(A,B) in poly.items():
   for (u,v),(C,E) in poly.items():
    value[x+u,y+v][0]-=A*C-B*E
    value[x+u,y+v][1]-=A*E+B*C+B*E
  forms.add(tuple(sorted((p,tuple(c)) for p,c in value.items() if c!=[0,0])))
  for p,c in value.items():
   for i in range(2):total[p][i]+=c[i]
print('distinct',len(forms),flush=True)
assert all(c[1]==0 for c in total.values())
poly=sum(c[0]*z**x*w**y for (x,y),c in total.items());print('sum',sp.factor(poly),flush=True)
print('expanded',sp.expand(poly),flush=True)
for form in sorted(forms):
 assert all(c[1]==0 for p,c in form)
 f=sum(c[0]*z**x*w**y for (x,y),c in form)
 print('FORM',sp.factor(f),flush=True)
Sx=(w*w/z-z/(w*w))/(2*sp.I)
Sy=(z*w-1/(z*w))/(2*sp.I)
Sz=(w/(z*z)-z*z/w)/(2*sp.I)
expected={}
for sy,sz in [(1,1),(1,-1),(-1,1),(-1,-1)]:
 e=sp.expand(36*(Sx+sy*Sy+sz*Sz)**2)
 expected[sp.factor(e)]=(sy,sz)
print('expected forms',expected,flush=True)
print('MATCH',all(sp.factor(sum(c[0]*z**x*w**y for (x,y),c in form)) in expected or not form for form in forms),flush=True)

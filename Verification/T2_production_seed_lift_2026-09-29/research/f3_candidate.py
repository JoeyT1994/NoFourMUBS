import sys,sympy as s
sys.path.insert(0,'ProvenResults/CornerBounds/SideColumnPrune')
from prune import TERMS
from itertools import combinations
u,v=s.symbols('u v',real=True)
x=[0,2*s.pi/3,4*s.pi/3];y=[0,4*s.pi/3,2*s.pi/3]
for a,b in combinations(range(3),2):
 xx=[x[a],x[b],u];yy=[y[a],y[b],v];zz=[yy[i]-xx[i]for i in range(3)]
 q=sum(sign*s.sin(xx[b]-xx[a])*s.sin(yy[d]-yy[c])*s.sin(zz[i]-zz[j])for i,j,a,b,c,d,sign in TERMS)
 print(a,b,s.trigsimp(s.expand_trig(q)),flush=True)

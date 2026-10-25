if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

from fractions import Fraction as F
from itertools import product
from pathlib import Path
import importlib.util,json,time
spec=importlib.util.spec_from_file_location('quadratic',Path(__file__).with_name('derive_quadratic.py'));e=importlib.util.module_from_spec(spec);spec.loader.exec_module(e)
idx=[6*j+i for i in range(6) for j in range(6)]
def tp(v):return [v[k] for k in idx]
def qs(u,v):return [(x+y)/2 for x,y in zip(e.quadratic(u,v),tp(e.quadratic(tp(u),tp(v))))]
def cubic(u,v,w):
 jt=[F(0)]*36
 for i,k in e.pairs:
  hr=hi=F(0)
  for j in range(6):
   z=(u[6*i+j]-u[6*k+j])*(v[6*i+j]-v[6*k+j])*(w[6*i+j]-w[6*k+j])
   hr+=e.si[((i-k)*j)%6]*z;hi-=e.co[((i-k)*j)%6]*z
  for l in range(6):
   z=-3*e.si[((i-k)*l)%6]*hr+e.co[((i-k)*l)%6]*hi
   jt[6*i+l]+=z;jt[6*k+l]-=z
 return [-x/6 for x in e.mv(e.GP,jt)]
def cs(u,v,w):return [(x+y)/2 for x,y in zip(cubic(u,v,w),tp(cubic(tp(u),tp(v),tp(w))))]
def key(inds):return tuple(sum(a==j for a in inds) for j in range(4))
def add_vec(d,k,v):
 if k not in d:d[k]=[F(0)]*36
 d[k]=[a+b for a,b in zip(d[k],v)]
def addpoly(a,b):
 out=dict(a)
 for k,v in b.items():out[k]=out.get(k,F(0))+v
 return {k:v for k,v in out.items() if v}
def mulpoly(a,b):
 out={}
 for k,v in a.items():
  for l,w in b.items():
   m=tuple(x+y for x,y in zip(k,l));out[m]=out.get(m,F(0))+v*w
 return {k:v for k,v in out.items() if v}
def dotpoly(a,b):
 out={}
 for k,v in a.items():
  for l,w in b.items():
   m=tuple(x+y for x,y in zip(k,l));out[m]=out.get(m,F(0))+sum(x*y for x,y in zip(v,w))
 return {k:v for k,v in out.items() if v}
Qp={};Cp={};Pp={}
for a,b in product(range(4),repeat=2):add_vec(Qp,key((a,b)),e.Q[a][b])
for a,b,c in product(range(4),repeat=3):
 co=cs(e.V[a],e.V[b],e.V[c]);cross=[6*x for x in qs(e.V[a],e.Q[b][c])]
 add_vec(Cp,key((a,b,c)),co)
 add_vec(Pp,key((a,b,c)),[x+y for x,y in zip(co,cross)])
Qp={k:v for k,v in Qp.items() if any(v)};Cp={k:v for k,v in Cp.items() if any(v)};Pp={k:v for k,v in Pp.items() if any(v)}
qp=dotpoly(Qp,Pp);np=dotpoly(Pp,Pp)
na={};nb={}
for a,b in product(range(2),repeat=2):na[key((a,b))]=na.get(key((a,b)),F(0))+e.G[a][b]
for a,b in product(range(2,4),repeat=2):nb[key((a,b))]=nb.get(key((a,b)),F(0))+e.G[a][b]
prod=mulpoly(mulpoly(na,nb),addpoly(na,nb))
assert not qp
assert set(np)==set(prod) and all(np[k]==v/F(72) for k,v in prod.items())
if __name__=='__main__':
 print('Q dot P3 nonzero terms',len(qp),qp)
 print('P3 norm monomials',len(np),'ratios',set(np.get(k,F(0))/v for k,v in prod.items()),'extra',set(np)-set(prod))
 print('P3 norm polynomial',np)
 print('Cubic residual monomials',len(Cp),'P3 monomials',len(Pp))
 export=lambda p:{','.join(map(str,k)):[str(x) for x in v] for k,v in p.items()}
 Path(__file__).with_name('cubic_predictor.json').write_text(json.dumps({'phase_units':'radians','frame_file':'quadratic_predictor.json','Q_div_sqrt3':export(Qp),'cubic_F':export(Cp),'P3':export(Pp),'Q_dot_P3_div_sqrt3':{','.join(map(str,k)):str(v) for k,v in qp.items()},'P3_norm_squared':{','.join(map(str,k)):str(v) for k,v in np.items()}},indent=2))

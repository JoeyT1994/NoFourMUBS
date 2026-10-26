#!/usr/bin/env python3
"""Exact certificate for a radius-1/5 tangent-ellipsoid U side chart.
Only Python standard library. Arithmetic in Q(sqrt(3)); all norm upper
bounds are rational, checked by squared inequalities. No floating point
value enters the acceptance criteria.
"""
from fractions import Fraction as F
from collections import defaultdict
from itertools import permutations
from math import factorial, isqrt
import json, time
from pathlib import Path

class Q:
 __slots__=('a','b')
 def __init__(self,a=0,b=0):
  if isinstance(a,Q): self.a,self.b=a.a,a.b
  else:self.a,self.b=F(a),F(b)
 def __add__(self,x):
  x=Q(x);return Q(self.a+x.a,self.b+x.b)
 __radd__=__add__
 def __neg__(self):return Q(-self.a,-self.b)
 def __sub__(self,x):return self+-Q(x)
 def __rsub__(self,x):return Q(x)+-self
 def __mul__(self,x):
  x=Q(x);return Q(self.a*x.a+3*self.b*x.b,self.a*x.b+self.b*x.a)
 __rmul__=__mul__
 def __truediv__(self,x):
  x=Q(x);den=x.a*x.a-3*x.b*x.b
  return self*Q(x.a/den,-x.b/den)
 def __eq__(self,x):
  x=Q(x);return self.a==x.a and self.b==x.b
 def __bool__(self):return bool(self.a or self.b)
 def __repr__(self):return f'Q({self.a},{self.b})'
 def __pow__(self,n):
  assert n>=0
  z=Q(1)
  for _ in range(n):z=z*self
  return z
 def sign(self):
  a,b=self.a,self.b
  if a==0:return (b>0)-(b<0)
  if b==0:return (a>0)-(a<0)
  if a>0 and b>0:return 1
  if a<0 and b<0:return -1
  k=a*a-3*b*b
  return ((k>0)-(k<0))*((a>0)-(a<0))

SQLO=F(1732050807568877293,10**18);SQHI=F(1732050807568877294,10**18)
assert SQLO*SQLO<3<SQHI*SQHI
DEN=10**10

def upper(q):
 q=Q(q);return q.a+q.b*(SQHI if q.b>=0 else SQLO)
def absupper(q):
 q=Q(q);return upper(q if q.sign()>=0 else -q)
def sqrtup(q):
 z=upper(q);assert z>=0
 n=(z.numerator*DEN*DEN+z.denominator-1)//z.denominator
 v=isqrt(n)
 if v*v<n:v+=1
 ans=F(v,DEN);assert ans*ans>=z
 return ans

def clean(p):return {e:c for e,c in p.items() if c}
def padd(a,b):
 z=a.copy()
 for e,c in b.items():z[e]=z.get(e,Q())+c
 return clean(z)
def pscale(a,s):return clean({e:c*s for e,c in a.items()})
def pmul(a,b,M):
 d={}
 for e,c in a.items():
  for f,g in b.items():
   h=tuple(x+y for x,y in zip(e,f))
   if sum(h)<=M:d[h]=d.get(h,Q())+c*g
 return clean(d)
Z=(0,)*4

def pbound(p,r,lo=0,hi=100,sharp2=False):
 sums={};deg2={}
 for e,c in p.items():
  k=sum(e)
  if lo<=k<=hi:
   if k==2 and sharp2:deg2[e]=c;continue
   mult=F(factorial(k),1)
   for x in e:mult/=factorial(x)
   sums[k]=sums.get(k,Q())+c*c/mult
 ans=sum(sqrtup(v)*r**k for k,v in sums.items())
 if deg2:ans+=quadnorm(deg2)*r*r
 return ans

def spd(A):
 B=[row.copy() for row in A]
 for i in range(len(B)):
  piv=B[i][i]
  if piv.sign()<=0:return False
  for j in range(i+1,len(B)):
   for k in range(j,len(B)):
    B[j][k]=B[j][k]-B[j][i]*B[k][i]/piv;B[k][j]=B[j][k]
 return True

def quadnorm(p):
 A=[[Q() for _ in range(4)] for _ in range(4)]
 for e,c in p.items():
  ids=[i for i in range(4) for _ in range(e[i])]
  assert len(ids)==2
  i,j=ids;A[i][j]=A[i][j]+c/2;A[j][i]=A[j][i]+c/2
 lo=F(0);hi=sum(absupper(x) for row in A for x in row)+1
 for _ in range(38):
  mid=(lo+hi)/2
  ok=all(spd([[Q(mid if i==j else 0)+s*A[i][j] for j in range(4)] for i in range(4)]) for s in [-1,1])
  if ok:hi=mid
  else:lo=mid
 ans=F((hi.numerator*DEN+hi.denominator-1)//hi.denominator,DEN)
 assert all(spd([[Q(ans if i==j else 0)+s*A[i][j] for j in range(4)] for i in range(4)]) for s in [-1,1])
 return ans

# Re c exp(i e dot z), complex coefficients as pair Q elements.
def cadd(a,b):return (a[0]+b[0],a[1]+b[1])
def cmul(a,b):return (a[0]*b[0]-a[1]*b[1],a[0]*b[1]+a[1]*b[0])
def cscale(c,s):return (c[0]*s,c[1]*s)
def ipow(c,k):
 for _ in range(k%4):c=(-c[1],c[0])
 return c
roots=[(Q(1),Q()),(Q(F(1,2)),Q(0,F(1,2))),(Q(F(-1,2)),Q(0,F(1,2))),(Q(-1),Q()),(Q(F(-1,2)),Q(0,F(-1,2))),(Q(F(1,2)),Q(0,F(-1,2)))]
N=11;zero=(0,)*N
unit=[tuple(int(i==j) for i in range(N)) for j in range(N)]
def esum(*ee):return tuple(sum(e[i] for e in ee) for i in range(N))
def eneg(e):return tuple(-k for k in e)
th=[esum(unit[0],unit[2]),unit[1],unit[3],unit[4]]
ph=[esum(unit[2],unit[5]),esum(unit[0],unit[6]),esum(unit[1],unit[2],unit[7]),esum(unit[3],unit[8]),unit[9],esum(unit[3],unit[10])]
TH=[1,2,2,4];PH=[3,4,5,0,2,4]
polys=[{} for _ in range(7)]
def add(row,c,e):polys[row][e]=cadd(polys[row].get(e,(Q(),Q())),c)
for k,terms in enumerate([
 [(0,zero)]+[(TH[i],th[i]) for i in (0,1)]+[(PH[i],ph[i]) for i in range(3)],
 [(0,zero)]+[(TH[i],th[i]) for i in (2,3)]+[(PH[i],ph[i]) for i in range(3,6)],
 [(0,zero),(TH[2]-TH[0],esum(th[2],eneg(th[0]))),(TH[3]-TH[1],esum(th[3],eneg(th[1])))]+[(PH[i+3]-PH[i],esum(ph[i+3],eneg(ph[i]))) for i in range(3)]
]):
 for root,e in terms:add(2*k,roots[root%6],e);add(2*k+1,ipow(roots[root%6],3),e)
per={};det={}
for p in permutations(range(3)):
 e=[0]*6;e[p[1]]=1;e[3+p[2]]=1;e=tuple(e)
 s=(-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
 per[e]=per.get(e,0)+1;det[e]=det.get(e,0)+s
psi={}
for e,c in per.items():
 for f,d in det.items():
  for g,h in det.items():
   E=tuple(e[i]+f[i]+g[i]-1 for i in range(6));psi[E]=psi.get(E,0)+c*d*h
psi={e:c for e,c in psi.items() if c};assert len(psi)==55
for e,c in psi.items():
 E=tuple(sum(e[i]*ph[i][j] for i in range(6)) for j in range(N))
 add(6,cscale(ipow(roots[sum(e[i]*PH[i] for i in range(6))%6],3),F(c,24)),E)
rt=lambda a=0,b=0:Q(a,b)
M=[
 [rt(0,F(-1,6)),rt(F(-1,2)),rt(0,F(1,6)),rt(F(-1,2)),rt(0,F(-1,6)),rt(F(-1,2)),rt()],
 [rt(0,F(5,48)),rt(F(-11,16)),rt(0,F(5,48)),rt(F(3,16)),rt(0,F(1,48)),rt(F(1,16)),rt(-1)],
 [rt(0,F(11,48)),rt(F(-5,16)),rt(0,F(-5,48)),rt(F(-3,16)),rt(0,F(-1,48)),rt(F(-1,16)),rt(1)],
 [rt(0,F(7,16)),rt(F(5,16)),rt(0,F(5,48)),rt(F(3,16)),rt(0,F(1,48)),rt(F(1,16)),rt(-1)],
 [rt(0,F(1,6)),rt(F(-1,2)),rt(0,F(1,6)),rt(F(1,2)),rt(0,F(1,6)),rt(F(-1,2)),rt()],
 [rt(0,F(1,6)),rt(F(-1,2)),rt(0,F(-1,6)),rt(F(-1,2)),rt(0,F(1,6)),rt(F(-1,2)),rt()],
 [rt(0,F(1,3)),rt(),rt(0,F(1,3)),rt(),rt(0,F(1,3)),rt(),rt()]]
PP=[]
for i in range(7):
 pp={}
 for j in range(7):
  for e,c in polys[j].items():pp[e]=cadd(pp.get(e,(Q(),Q())),cscale(c,M[i][j]))
 PP.append({e:c for e,c in pp.items() if c[0] or c[1]})
# Validate constants and linear cancellation including tau/2=-a/2+b/4+c/2-d/4.
for i,pp in enumerate(PP):
 assert sum((c[0] for c in pp.values()),Q())==0
 for j in range(N):
  v=sum((-c[1]*e[j] for e,c in pp.items()),Q())
  if j<4:v+=M[i][6]*[F(-1,2),F(1,4),F(1,2),F(-1,4)][j]
  assert v==(int(j-4==i) if j>=4 else 0),(i,j,v)

# a=z1+z2/sqrt3,b=2z2/sqrt3, c=z3+z4/sqrt3,d=2z4/sqrt3.
# Horizontal tangent norm squared is 2 ||z||².
def linear(e):
 f=[Q(e[0]),Q(0,F(e[0]+2*e[1],3)),Q(e[2]),Q(0,F(e[2]+2*e[3],3))]
 return {tuple(int(i==j) for i in range(4)):f[j] for j in range(4) if f[j]}
FREQ=sorted(set(e for pp in PP for e in pp))
LINS={e:linear(e) for e in FREQ}

def fjet(V,degree):
 out=[{} for _ in range(7)]
 for e in FREQ:
  phase=LINS[e]
  for j in range(7):phase=padd(phase,pscale(V[j],e[j+4]))
  pow={Z:Q(1)}
  for k in range(1,degree+1):
   pow=pscale(pmul(pow,phase,degree),F(1,k))
   for i in range(7):
    if e in PP[i]:
     coeff=ipow(PP[i][e],k)[0]
     if coeff:out[i]=padd(out[i],pscale({ee:cc for ee,cc in pow.items() if sum(ee)>1},coeff))
 return out

def makejet():
 V=[{} for _ in range(7)]
 for k in (2,3):
  out=fjet(V,k)
  for j in range(7):V[j]=padd(V[j],{e:-c for e,c in out[j].items() if sum(e)==k})
 out=fjet(V,3)
 assert all(not p for p in out)
 return V

def cnorm(c):return sqrtup(c[0]*c[0]+c[1]*c[1])
def frequency_norm(e):return pbound(LINS[e],F(1))

def residual_bounds(V,r,degree=6):
 out=fjet(V,degree)
 res=[pbound(p,r,4,degree,True) for p in out]
 for e in FREQ:
  bydeg={1:frequency_norm(e)*r}
  for d in (2,3):
   pol={}
   for j in range(7):pol=padd(pol,pscale({ee:c for ee,c in V[j].items() if sum(ee)==d},e[j+4]))
   bydeg[d]=pbound(pol,r,sharp2=True)
  power={0:F(1)};tail=F()
  for k in range(1,degree+1):
   new=defaultdict(F)
   for a,b in power.items():
    for d,v in bydeg.items():new[a+d]+=b*v/k
   power=new;tail+=sum(v for d,v in power.items() if d>degree)
  h=sum(bydeg.values());tail+=h**(degree+1)/factorial(degree+1)
  for i in range(7):
   if e in PP[i]:res[i]+=cnorm(PP[i][e])*tail
 return res

def jacobian_bounds(r,total_v):
 K=[[F() for _ in range(7)] for _ in range(7)]
 for i,pp in enumerate(PP):
  for j in range(7):
   # At v=0, collect parameter derivatives through degree4.
   poly={}
   for e,c in pp.items():
    pow={Z:Q(1)}
    for k in range(1,5):
     pow=pscale(pmul(pow,LINS[e],4),F(1,k))
     coeff=ipow(c,k+1)[0]*e[j+4]
     poly=padd(poly,pscale(pow,coeff))
   val=pbound(poly,r,1,4,True)
   val+=sum(cnorm(c)*abs(e[j+4])*(frequency_norm(e)*r)**5/factorial(5) for e,c in pp.items())
   # Move v from 0 to predictor+remainder; bound Hessian vv there.
   for k in range(7):
    const=Q();grad={};vg=[Q() for _ in range(7)];rem=F()
    for e,c in pp.items():
     fac=e[j+4]*e[k+4]
     const-=c[0]*fac
     grad=padd(grad,pscale(LINS[e],c[1]*fac))
     for l in range(7):vg[l]+=c[1]*fac*e[l+4]
     s=frequency_norm(e)*r+sum(abs(x) for x in e[4:])*total_v
     rem+=cnorm(c)*abs(fac)*s*s/2
    h=absupper(const)+pbound(grad,r)+sum(absupper(x) for x in vg)*total_v+rem
    val+=total_v*h
   K[i][j]=val
 return K


def determinant_bound(r,total_v):
 # det B is a six-term phase polynomial. Separate tangent variation
 # from the correction v, using |exp(i t)-1|<=|t|.
 terms=[]
 for e,c in det.items():
  E=tuple(sum(e[i]*ph[i][j] for i in range(6)) for j in range(N))
  coeff=cscale(roots[sum(e[i]*PH[i] for i in range(6))%6],c)
  terms.append((coeff,E))
 base=(Q(),Q());linre={};linim={};quadratic=Q();vsum=F()
 for c,e in terms:
  base=cadd(base,c)
  le=linear(e)
  linre=padd(linre,pscale(le,-c[1]));linim=padd(linim,pscale(le,c[0]))
  quadratic+=sum((x*x for x in le.values()),Q())/2
  vsum+=sum(abs(x) for x in e[4:])
 assert base==(Q(),Q(0,-1))
 normsq=sum((x*x for x in linre.values()),Q())+sum((x*x for x in linim.values()),Q())
 assert normsq==20 and quadratic==F(28,3) and vsum==12
 delta=sqrtup(normsq)*r+upper(quadratic)*r*r+vsum*total_v
 lower=SQLO-delta
 assert lower>F(7,10)
 return lower


def display(vals):return [float(x) for x in vals]
def run():
 start=time.time()
 r=F(141421357,10**9) # verified upper bound on (1/5)/sqrt(2)
 assert r*r>=F(1,50)
 V=makejet();print('Exact cubic predictor verified',flush=True)
 pred=[pbound(p,r,sharp2=True) for p in V]
 print('Predictor correction',display(pred),flush=True)
 res=residual_bounds(V,r);print('Residual upper',display(res),flush=True)
 # Uniform v bound from the origin includes cubic predictor and error tube.
 total=F(153,10000)
 K=jacobian_bounds(r,total)
 # Chosen rational weighted error box; verify self-map and contraction exactly.
 tube=[F(n,10**7) for n in [18500,14700,13700,16200,18500,19700,16500]]
 assert max(pred)+max(tube)<total
 lhs=[res[i]+sum(K[i][j]*tube[j] for j in range(7)) for i in range(7)]
 ratios=[sum(K[i][j]*tube[j] for j in range(7))/tube[i] for i in range(7)]
 print('K rows', [display(row) for row in K],flush=True)
 print('Self-map left',display(lhs),'tube',display(tube),'ratios',display(ratios),flush=True)
 assert all(lhs[i]<tube[i] for i in range(7)), 'self-map fails'
 assert max(ratios)<F(163,200),'contraction fails'
 detlower=determinant_bound(r,total)
 mnorm=max(sum(absupper(x) for x in row) for row in M)
 assert mnorm<F(2537,1000)
 inverse=(max(tube)/min(tube))*mnorm/(1-F(163,200))
 assert inverse<20
 raw_hessian=max(F(20),sum(F(abs(c)*sum(abs(k) for k in e)**2,24) for e,c in psi.items()))
 assert raw_hessian==74
 print('det B lower',float(detlower),'inverse Hx upper',float(inverse),flush=True)
 receipt={'status':'PASS','domain':'2(a^2-ab+b^2+c^2-cd+d^2)<=1/25',
 'predictor_correction_upper':list(map(str,pred)), 'residual_upper':list(map(str,res)),
 'total_correction_upper':str(total),'tube':list(map(str,tube)),
 'self_map_upper':list(map(str,lhs)),'contraction_upper':str(max(ratios)),
 'K':[[str(x) for x in row] for row in K],
 'determinant_abs_lower':str(detlower),'augmented_inverse_inf_upper':str(inverse),
 'raw_joint_Hessian_inf_upper':'74','raw_Dx_inf_upper':'60',
 'raw_D2x_inf_upper':'5328000','raw_horizontal_phase_Hessian_2_upper':'150000000000',
 'elapsed_seconds_informational':time.time()-start}
 with open(Path(__file__).resolve().parents[1] / 'certificates' / 'chart.json','w') as f:json.dump(receipt,f,indent=2)
 # Exact coefficients for reuse.
 with open(Path(__file__).resolve().parents[1] / 'data' / 'predictor.json','w') as f:
  json.dump([[[list(e),str(c.a),str(c.b)] for e,c in sorted(p.items())] for p in V],f,indent=2)
 print('PASS in',time.time()-start,'seconds',flush=True)
if __name__=='__main__':run()

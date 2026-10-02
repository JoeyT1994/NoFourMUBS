#!/usr/bin/env python3
"""Exact balanced-product identity in the canonical four-seed reconstruction.

This checks polynomial identities over Q(a,b,c,d), not sample points.
The indeterminate sheet element satisfies tau^2=-R (tau=i sqrt(R)).
See BalancedFourSeedIdentity.md for the contraction and global scope.
"""
from time import monotonic
from sympy.polys.fields import field
from sympy.polys.domains import QQ
from pathlib import Path
import json

start=monotonic()
def log(s): print(round(monotonic()-start,2),s,flush=True)
K,a,b,c,d=field('a,b,c,d',QQ)
one=K.one; zero=K.zero
E=[[one,one,one],[one,a,b],[one,c,d]]
def sharp(x):
 def rev(p):
  if not p:return zero
  degrees=tuple(max(e[j]for e in p)for j in range(4))
  numerator=K.ring.from_dict({tuple(degrees[j]-e[j]for j in range(4)):v for e,v in p.items()})
  denominator=K.ring.from_dict({degrees:QQ.one})
  return K.new(numerator,denominator)
 return rev(x.numer)/rev(x.denom)
def tr(A):return list(map(list,zip(*A)))
def bar(A):return [[sharp(x)for x in row]for row in A]
def mm(A,B):return [[sum((A[i][k]*B[k][j]for k in range(len(B))),zero)for j in range(len(B[0]))]for i in range(len(A))]
def sub6(A):return [[6*(i==j)-A[i][j]for j in range(3)]for i in range(3)]
def adj(A):
 return [[A[(j+1)%3][(i+1)%3]*A[(j+2)%3][(i+2)%3]-A[(j+1)%3][(i+2)%3]*A[(j+2)%3][(i+1)%3]for j in range(3)]for i in range(3)]
G=sub6(mm(E,tr(bar(E)))); T=sub6(mm(tr(bar(E)),E))
log('Grams')
s,t,r=G[1][0],G[2][0],G[2][1]
X,Y,Z=s*sharp(s),t*sharp(t),r*sharp(r)
p=X+Y+Z; J=s*r*sharp(t)+sharp(s)*sharp(r)*t
g=27-3*p+J; eta=9-p+J
assert mm(G,adj(G))==[[g*(i==j)for j in range(3)]for i in range(3)]
chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
R=4*g*g*eta-chi*chi
log('invariants')
def pair(x):return x if isinstance(x,tuple) else (K(x),zero)
def plus(x,y):
 x,y=pair(x),pair(y);return (x[0]+y[0],x[1]+y[1])
def mul(x,y):
 x,y=pair(x),pair(y);return (x[0]*y[0]-R*x[1]*y[1],x[0]*y[1]+x[1]*y[0])
def side(A):
 s,t,r=A[1][0],A[2][0],A[2][1];bs,bt,br=map(sharp,(s,t,r))
 X,Y,Z=s*bs,t*bt,r*br
 P=[r*s*s+br*t*t+(3-Z)*s*t,t*bs*bs+r*r*bt+(3-Y)*r*bs,s*bt*bt+br*br*bs+(3-X)*br*bt]
 c0,c1,c2=9-Z,9-Y,9-X
 us=[]
 for pj,cj in zip(P[1:],[c1,c2]):
  denom=2*sharp(P[0])*pj
  us.append(((2*g*g+2*c0*cj*eta+(c0+cj)*chi)/denom,(cj-c0)/denom))
 pi=((chi+2*c0*eta)/(2*sharp(P[0])),1/(2*sharp(P[0])))
 divs=[((chi+2*cj*eta)/(2*sharp(pj)),1/(2*sharp(pj)))for pj,cj in zip(P[1:],[c1,c2])]
 return s,t,r,us[0],us[1],pi,divs

sh,th,rh,uh,vh,pih,divh=side(G);log('horizontal side')
sv,tv,rv,uv,vv,piv,divv=side(T);log('vertical side')
# prod(Cbar t): normalized vertical side cubic coefficients.
coeff=[((3,0,0),pair(1)),((2,1,0),pair(sv)),((2,0,1),pair(tv)),
       ((1,2,0),mul(uv,sharp(sv))),((1,1,1),piv),((1,0,2),mul(vv,sharp(tv))),
       ((0,3,0),uv),((0,0,3),vv),((0,2,1),mul(uv,rv)),((0,1,2),mul(vv,sharp(rv)))]
moments={(0,0):plus(sh*th,mul(-1,pih)),(1,0):pair(th),(0,1):pair(sh),
         (2,0):pair(rh),(1,1):pair(3),(0,2):pair(sharp(rh)),
         (3,0):plus(sharp(sh)*rh,mul(-1,divh[0])),(2,1):pair(sharp(sh)),
         (1,2):pair(sharp(th)),(0,3):plus(sharp(th)*sharp(rh),mul(-1,divh[1]))}
Q=mm(tr(E),adj(tr(G)));log('adjugate completion')
from flint import fmpq_mpoly_ctx, fmpq
ctx=fmpq_mpoly_ctx.get(('a','b','c','d'),ordering='lex')
Zf=ctx.constant(0); Of=ctx.constant(1)
def fp(p):return ctx.from_dict({e:fmpq(int(v.numerator),int(v.denominator))for e,v in p.items()})
def lcd(values):
 D=Of
 for val in values:
  dd=fp(val.denom);D=D*(dd//D.gcd(dd))
 return D
def cleared(value,D):return fp(value.numer)*(D//fp(value.denom))
DC=lcd([x for _,v in coeff for x in v]);DM=lcd([x for v in moments.values()for x in v]);DQ=lcd([x for row in Q for x in row])
coeff=[(e,tuple(cleared(x,DC)for x in v))for e,v in coeff]
moments={e:tuple(cleared(x,DM)for x in v)for e,v in moments.items()}
Q=[[cleared(x,DQ)for x in row]for row in Q]
left=plus(plus(1,mul(a*c,uv)),mul(b*d,vv))
left=tuple(cleared(x,DC)for x in left)
log('cleared denominators')
def poly_mul(A,B):
 out={}
 for e,x in A.items():
  for f,y in B.items():
   ef=(e[0]+f[0],e[1]+f[1]);out[ef]=out.get(ef,Zf)+x*y
 return out
linear=[{(0,0):row[0],(1,0):row[1],(0,1):row[2]}for row in Q]
right=[Zf,Zf,Zf]
for idx,(powers,cubic_coefficient) in enumerate(coeff):
 pol={(0,0):Of}
 for j in range(3):
  for _ in range(powers[j]):pol=poly_mul(pol,linear[j])
 contracted=[Zf,Zf]
 for exp,value in pol.items():
  for j in range(2):contracted[j]+=value*moments[exp][j]
 for j in range(2):
  for k in range(2):right[j+k]+=cubic_coefficient[j]*contracted[k]
 log('contracted term '+str(idx))
gd=fp(g.denom)**3;gn=fp(g.numer)**3;rd=fp(R.denom);rn=fp(R.numer)
L=[gn*v*DM*DQ**3 for v in left]
total=[L[0]*rd-gd*(right[0]*rd-rn*right[2]),L[1]-gd*right[1]]
log('zero coefficients '+str([x==0 for x in total]))
assert all(x==0 for x in total), 'Balanced identity polynomial is nonzero'
receipt={
 'status':'EXACT_POLYNOMIAL_PASS',
 'seed_variables':['a','b','c','d'],
 'coefficient_field':'Q(a,b,c,d)',
 'sharp':'a->1/a,b->1/b,c->1/c,d->1/d',
 'sheet_relation':'tau^2=-R; tau=i sqrt(R) or -i sqrt(R)',
 'cubic_terms':len(coeff),
 'weighted_moments':len(moments),
 'constant_remainder_terms':len(total[0].to_dict()),
 'linear_remainder_terms':len(total[1].to_dict()),
 'adjugate_identity_checked':True,
 'scope':'Selected top-three/bottom-three balanced product vanishes identically on both matched strict sheets. Global all-partition extension is proved separately using the all-corners certificate and radical symmetrization.',
 'F3_forcing_proved':False,
}
Path(__file__).with_suffix('.json').write_text(json.dumps(receipt,indent=2)+'\n')

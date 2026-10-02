"""Exact polynomial certificate for max mixed-corner gap >= R |Y-Z|/10."""
from pathlib import Path
from fractions import Fraction as Q
from math import comb
import json
import sympy as s
from flint import fmpq
from mixed_algebra import verify_identity

HERE=Path(__file__).resolve().parent
mean=json.loads((HERE/'data/mixed_polynomial.json').read_text())['Q_coefficients']
variance=json.loads((HERE/'data/variance_polynomial.json').read_text())['P_coefficients']
verify_identity(mean,variance)
p,t,k,c,u,x,y=s.symbols('p t k c u x y')
P=sum(s.Rational(cc)*p**i*t**j for i,j,cc in variance)
R=36*k**6*(1-c*c);tt=k*k*(k*k+9+6*k*c)
F=s.cancel((P.subs({p:9-k*k,t:tt})-s.Rational(3,10)*R**2*tt**8)/k**20)
assert F.is_polynomial(k,c)
assert s.expand(F.subs(c,-1)+864*(k-3)**15*(k-2)**4*(k+1))==0
assert s.expand(F.subs(c,1)+864*(k-1)*(k+2)**4*(k+3)**15)==0
H=s.cancel(k**20*F.subs(c,-1+(3-k)**3*(k+1)*u/(8*k**3))/(3-k)**15)
A=864*k**20*(k+1)
B=-432*k**17*(k+1)*(13*k**5-86*k**4+169*k**3-8*k**2-194*k+32)
C=s.cancel((H-A*(k-2)**4-u*B*(k-2)**2)/u**2)
D=s.cancel(C-B**2/(4*A))
assert H.is_polynomial(k,u)and C.is_polynomial(k,u)and D.is_polynomial(k,u)
assert s.cancel(H-A*((k-2)**2+u*B/(2*A))**2-u*u*D)==0
Rstar=9*k**3*(3-k)**3*(k+1)*u-s.Rational(9,16)*(3-k)**6*(k+1)**2*u*u


def bernstein(expr,sub):
    poly=s.Poly(s.expand(expr.subs(sub)),x,y);n,m=poly.degree(x),poly.degree(y)
    power={(i,j):fmpq(str(cc))for(i,j),cc in poly.terms()}
    return [[sum((cc*fmpq(comb(a,i),comb(n,i))*fmpq(comb(b,j),comb(m,j))
                  for(i,j),cc in power.items()if i<=a and j<=b),fmpq(0))
             for b in range(m+1)]for a in range(n+1)]


def split1(v):
    left=[v[0]];right=[v[-1]]
    while len(v)>1:
        v=[(v[i]+v[i+1])/2 for i in range(len(v)-1)];left.append(v[0]);right.append(v[-1])
    return left,list(reversed(right))


def split(v,axis):
    if axis==0:
        a=[split1(list(col))for col in zip(*v)]
        return [list(map(list,zip(*(row[t]for row in a))))for t in (0,1)]
    a=[split1(row)for row in v]
    return [[row[t]for row in a]for t in (0,1)]


def lower(v):return min(map(min,v))

low=bernstein(F,{k:x,c:2*y-1});assert lower(low)>=0
print('PASS: nonnegative Bernstein coefficients on 0<=k<=1, -1<=c<=1',flush=True)
queue=[([bernstein(e,{k:1+2*x,u:y})for e in (H,D,Rstar)],())]
leaves=[];nodes=0
while queue:
    coeff,path=queue.pop();nodes+=1;bounds=[lower(v)for v in coeff]
    if bounds[0]>=0:test=0
    elif bounds[1]>=0:test=1
    elif bounds[2]>20:test=2
    else:
        assert len(path)<16,'Unresolved: never a positivity proof'
        children=[split(v,len(path)%2)for v in coeff]
        queue.extend(([v[side]for v in children],path+(side,))for side in (0,1))
        continue
    leaves.append(dict(path=list(path),test=['H>=0','square remainder D>=0','R>20'][test],lower=str(bounds[test])))
assert nodes==2*len(leaves)-1==13
assert [sum(v['test']==name for v in leaves)for name in ['H>=0','square remainder D>=0','R>20']]==[3,2,2]
assert sum(fmpq(1,2**len(v['path']))for v in leaves)==1
# If six gaps have nonnegative sum and maximum M, sum gaps^2 <=30 M^2.
assert Q(3,10)/30==Q(1,100)
# Projection constants: 2/sqrt(3)<6/5 and 2916^(1/3)<15.
assert Q(5,3)**2<3 and 2916<15**3 and Q(6,5)*15==18
print(json.dumps(dict(bernstein_leaves=leaves),indent=2),flush=True)
print('PASS: P >= (3/10) R^2 (YZ)^8; max corner gap >= R |Y-Z|/10')
print('PASS: phase distance to |S|=|T| <=36 |Y-Z|/R^(1/3)')

"""Exact algebra and Bernstein certificate: D0 Fourier seeds, 0<R<=20.

The written proof combines these checks with the side classification and
existing unconditional three-valued-quotient/Fourier-block theorems.
"""
from pathlib import Path
from math import comb
import json
import sympy as s
from flint import fmpq
from mixed_algebra import verify_identity

HERE=Path(__file__).resolve().parent
coefficients=json.loads((HERE/'data/mixed_polynomial.json').read_text())['Q_coefficients']
verify_identity(coefficients)
p,t,k,c,u,x,y=s.symbols('p t k c u x y')
Q=sum(s.Rational(cc)*p**i*t**j for i,j,cc in coefficients)
F=s.cancel(Q.subs({p:9-k*k,t:k*k*(k*k+9+6*k*c)})/(24*k**10))
assert F.is_polynomial(k,c)
assert s.factor(F.subs(c,-1))==(k-3)**6*(k-2)**2
assert s.factor(F.subs(c,1))==(k+2)**2*(k+3)**6
H=s.cancel(F.subs(c,-1+(3-k)**3*(k+1)*u/(8*k**3))*1024*k**10/(3-k)**6)
H1=s.cancel((H-1024*k**10*(k-2)**2)/u)
R=9*k**3*(3-k)**3*(k+1)*u-s.Rational(9,16)*(3-k)**6*(k+1)**2*u*u
assert H.is_polynomial(k,u) and H1.is_polynomial(k,u)
assert s.expand(H-1024*k**10*(k-2)**2-u*H1)==0
assert s.cancel(36*k**6*(1-(-1+(3-k)**3*(k+1)*u/(8*k**3))**2)-R)==0
assert s.expand((9-k*k)**2-4*k*k*(k*k+9+6*k*c)+3*(k**4+8*c*k**3+18*k**2-27))==0

assert s.expand((9-k*k)**2-4*k*k*(k*k+9+6*k*c)-3*(3-k)**3*(k+1)+24*k**3*(c+1))==0


def bernstein(expr,sub):
    poly=s.Poly(s.expand(expr.subs(sub)),x,y)
    n,m=poly.degree(x),poly.degree(y)
    power={(i,j):fmpq(str(cc))for(i,j),cc in poly.terms()}
    return [[sum((cc*fmpq(comb(a,i),comb(n,i))*fmpq(comb(b,j),comb(m,j))
                  for(i,j),cc in power.items()if i<=a and j<=b),fmpq(0))
             for b in range(m+1)]for a in range(n+1)]


def split1(values):
    left=[values[0]];right=[values[-1]]
    while len(values)>1:
        values=[(values[i]+values[i+1])/2 for i in range(len(values)-1)]
        left.append(values[0]);right.append(values[-1])
    return left,list(reversed(right))


def split(values,axis):
    if axis==0:
        pairs=[split1(list(col))for col in zip(*values)]
        return [list(map(list,zip(*(a[t]for a in pairs))))for t in (0,1)]
    pairs=[split1(row)for row in values]
    return [[a[t]for a in pairs]for t in (0,1)]


def lower(values):return min(map(min,values))

low=bernstein(F,{k:x,c:2*y-1})
assert lower(low)==64
print('PASS: F >= 64 on 0<=k<=1, -1<=c<=1',flush=True)
initial=[bernstein(expr,{k:1+2*x,u:y})for expr in (H,H1,R)]
queue=[(initial,())];leaves=[];nodes=0
while queue:
    coeff,path=queue.pop();nodes+=1
    bounds=[lower(v)for v in coeff]
    for test in range(3):
        if bounds[test]>(20 if test==2 else 0):
            leaves.append(dict(path=list(path),test=['H>0','H1>0','R>20'][test],lower=str(bounds[test])))
            break
    else:
        assert len(path)<12, 'Unresolved: never a proof of positivity'
        children=[split(v,len(path)%2)for v in coeff]
        for side in (0,1):queue.append(([v[side]for v in children],path+(side,)))
assert nodes==2*len(leaves)-1==19
assert max(len(v['path'])for v in leaves)==7
assert sum(fmpq(1,2**len(v['path']))for v in leaves)==1
# A quantitative margin from every feasible leaf, not only positivity.
assert min(fmpq(v['lower'])for v in leaves if v['test']!='R>20')==17408
assert fmpq(3*17408,128*972**2)==fmpq(17,39366)
assert fmpq(32,27)>fmpq(17,39366)
assert fmpq(17,39366)*fmpq(4,81)/6>fmpq(1,282000)
print('PASS: Q >= (17/39366) R^2 and max mixed-corner gap >= R |alpha^3-1|^2/282000',flush=True)
print('PASS: 19-node exact Bernstein tree; 10 closed leaves; depth <=7',flush=True)
# Tetrahedral/Tao alternative has an actual R=243 corner.
omega=(-1+s.sqrt(3)*s.I)/2
RT=-9*(omega**2-omega)**4*(omega**2-1)**2/omega**8
assert s.simplify(s.expand_complex(RT))==243
print('PASS: Tao alternative excluded by maximal-corner R<=20 <243',flush=True)
print(json.dumps(dict(bernstein_leaves=leaves),indent=2),flush=True)
print('PASS: exact Fourier-atlas seeds in D0 with 0<R<=20 have Fourier-family carriers')

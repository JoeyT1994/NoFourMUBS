#!/usr/bin/env python3
"""Exact arithmetic checks: R, its invariant Jacobian, 18 maxima, and F3 path.

No floating-point or interval acceptance decisions occur here.  The optional
uploaded Fourier table is checked against an independently constructed Laurent
polynomial, but is not needed when this output directory is used standalone.
"""
from collections import defaultdict
from fractions import Fraction as Q
from itertools import permutations, product
from pathlib import Path
import json
import sympy as sp

ZERO=(0,0,0,0)
class L:
    def __init__(self,a=0):
        if isinstance(a,L): self.d=a.d.copy()
        elif isinstance(a,dict): self.d={k:v for k,v in a.items() if v}
        else: self.d={ZERO:a} if a else {}
    def __add__(self,b):
        b=L(b); z=self.d.copy()
        for k,v in b.d.items(): z[k]=z.get(k,0)+v
        return L(z)
    __radd__=__add__
    def __neg__(self):return L({k:-v for k,v in self.d.items()})
    def __sub__(self,b):return self+-L(b)
    def __rsub__(self,b):return L(b)+-self
    def __mul__(self,b):
        b=L(b);z=defaultdict(int)
        for k,v in self.d.items():
            for j,w in b.d.items():z[tuple(k[i]+j[i] for i in range(4))]+=v*w
        return L(z)
    __rmul__=__mul__
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        z=L(1);a=self
        while n:
            if n&1:z=z*a
            a=a*a;n//=2
        return z
    def bar(self):return L({tuple(-j for j in k):v for k,v in self.d.items()})
    def D(self,j):return L({k:v*k[j]for k,v in self.d.items()}) # derivative / i
    def __eq__(self,b):return self.d==L(b).d
    def mapped(self,M):
        z=defaultdict(int)
        for k,v in self.d.items():
            z[tuple(sum(k[i]*M[i][j]for i in range(4))for j in range(4))]+=v
        return L(z)

V=[]
for j in range(4):
    k=[0]*4;k[j]=1;V.append(L({tuple(k):1}))
a,b,c,d=V
s=-(1+a+b);t=-(1+c+d);r=-(1+c*a.bar()+d*b.bar())
X=s*s.bar();Y=t*t.bar();Z=r*r.bar();T=s*r*t.bar();J=T+T.bar()
p=X+Y+Z;W=X*Y+X*Z+Y*Z-X*Y*Z

def F(J):
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi
R=F(J);B=F(-J);A=4*X*Y*Z-J*J
assert len(R.d)==2083
source=Path(__file__).resolve().parents[1]/'inputs'/'rfourier.json'
if not source.exists():
    source=Path(__file__).resolve().parents[2]/'toolkit'/'rfourier.json'
if source.exists():
    table=json.loads(source.read_text())
    assert all(int(k[5])==0 for k in table)
    assert R==L({tuple(k[:4]):int(k[4])for k in table})

# A real 4x4 Jacobian receives four factors i, whose product is 1.
rows=[[f.D(j)for j in range(4)]for f in [X,Y,Z,J]]
det=L(0)
for perm in permutations(range(4)):
    inv=sum(perm[i]>perm[j]for i in range(4)for j in range(i+1,4))
    term=L((-1)**inv)
    for i in range(4):term*=rows[i][perm[i]]
    det+=term
assert det*det==A*B
assert A==-(T-T.bar())**2
print('PASS: structural Fourier polynomial and det(DPsi)^2=(4XYZ-J^2) B')

# Every permitted seed map is an integral unimodular linear map on angles.
E=[[(0,0,0,0)for j in range(3)]for i in range(3)]
for n,(i,j) in enumerate([(1,1),(1,2),(2,1),(2,2)]):
    e=[0]*4;e[n]=1;E[i][j]=tuple(e)
base=(1,2,-1,-2);orbit=defaultdict(int)
for pr,pc,tr,cj in product(permutations(range(3)),permutations(range(3)),[0,1],[0,1]):
    P=[[E[i][j]for j in pc]for i in pr]
    if tr:P=[[P[j][i]for j in range(3)]for i in range(3)]
    M=[]
    for i,j in [(1,1),(1,2),(2,1),(2,2)]:
        M.append(tuple((-1 if cj else 1)*(P[i][j][k]-P[i][0][k]-P[0][j][k]+P[0][0][k])for k in range(4)))
    assert abs(sp.Matrix(M).det())==1
    assert R.mapped(M)==R
    v=tuple(sum(M[i][j]*base[j]for j in range(4))for i in range(4))
    orbit[v]+=1
assert len(orbit)==18 and set(orbit.values())=={8}

# Evaluate in Q[z]/(z^2-z/2+1), z=exp(i arccos(1/4)).
def mul(u,v):
    a,b=u;c,d=v
    return a*c-b*d,a*d+b*c+b*d/2
powers={0:(Q(1),Q(0)),1:(Q(0),Q(1)),-1:(Q(1,2),Q(-1))}
N=max(abs(sum(k[j]*base[j]for j in range(4)))for k in R.d)
for k in range(2,N+1):
    powers[k]=mul(powers[k-1],powers[1]);powers[-k]=mul(powers[-k+1],powers[-1])
def at(P):
    z=[Q(0),Q(0)]
    for k,v in P.d.items():
        q=powers[sum(k[j]*base[j]for j in range(4))]
        z[0]+=v*q[0];z[1]+=v*q[1]
    return tuple(z)
assert at(R)==(Q(3**13,2**12),Q(0))
assert all(at(R.D(i))==(0,0)for i in range(4))
H=sp.Matrix([[-sp.Rational(at(R.D(i).D(j))[0])for j in range(4)]for i in range(4)])
assert all(at(R.D(i).D(j))[1]==0 for i,j in product(range(4),repeat=2))
M=sp.Matrix([[240,-120,-234,117],[-120,138,117,-18],[-234,117,240,-120],[117,-18,-120,138]])
assert H==-sp.Rational(3**9,2**11)*M
l=sp.symbols('l')
assert sp.factor(M.charpoly(l).as_expr())==(l*l-126*l+711)*(l*l-630*l+17775)
assert all(((-1)**i)*H[:i,:i].det()>0 for i in range(1,5))
assert [at(P)for P in [X,Y,Z,J]]==[(Q(9,4),0),(Q(9,4),0),(Q(9,16),0),(Q(27,8),0)]
print('PASS: 18 exact orbit maxima, value 3^13/2^12, negative definite Hessian')

# Real corners: every positive one is equivalent to this representative.
real_positive=[]
for v in product([0,1],repeat=4):
    def at_real(P):return sum(c*(-1 if sum(k[j]*v[j]for j in range(4))%2 else 1)for k,c in P.d.items())
    rv=at_real(R)
    if rv>0:
        assert rv==256
        Hr=sp.Matrix([[-at_real(R.D(i).D(j))for j in range(4)]for i in range(4)])
        witnesses=[sp.Matrix(w)for w in product([-1,0,1],repeat=4) if any(w)]
        assert any((w.T*Hr*w)[0]>0 for w in witnesses)
        real_positive.append(v)
assert len(real_positive)==6
print('PASS: all six strict real corners have a positive Hessian direction')

# F3 degeneracy: a single phase displacement produces strict seeds.
x=sp.symbols('x')
assert sp.expand(4*(27-6*x)**2*(9-2*x)-(-3*x*x+54*x-162)**2-9*x**3*(4-x))==0
print('PASS: F3 path R=9 x^3(4-x), x=4 sin^2(epsilon/2)')

if __name__=='__main__':
    print('EXACT MAXIMA CORE: ALL CHECKS PASSED')

#!/usr/bin/env python3
"""Small exact algebra checks accompanying the proofs (SymPy + standard library).
No floating point assertions or finite-field-to-characteristic-zero inferences.
"""
from fractions import Fraction
import itertools,math,random
import sympy as sp
from certify import RI,CI,S

def boundary_jacobian(n,k):
    m=n-k
    M=sp.eye(k)-sp.ones(k)/k
    A=M.row_join(sp.ones(k,m)).col_join(sp.ones(m,k).row_join(sp.eye(m)))
    assert A.det()!=0
    x=sp.Matrix([1]*k+[0]*m);v=x.copy();a=A*x;y=A.T*v
    J=[]
    for i in range(1,n):
        J.append([(y[i] if q==i else 0)-(y[0] if q==0 else 0) for q in range(1,n)]+[x[i]*A[j,i]-x[0]*A[j,0] for j in range(1,n)])
    for j in range(n-1):
        J.append([v[j]*A[j,q]-(y[0] if q==0 else 0) for q in range(1,n)]+[(a[j] if q==j else 0)-x[0]*A[q,0] for q in range(1,n)])
    assert all(x[i]*y[i]==0 for i in range(n))
    assert all(a[j]*v[j]==0 for j in range(n))
    return sp.Matrix(J)

def main():
    assert math.comb(10,5)==252
    assert 6*(math.comb(10,5)//6)==252
    print('PASS: bihomogeneous Bezout coefficient [s^5 t^5](s+t)^10 = 252')
    assert math.comb(6,2)**2+math.comb(6,3)**2//2==425
    assert sum(math.comb(6,k)**2 for k in range(1,7))==923
    print('PASS: 425 physical minor tests / 923 general nonempty square-minor tests')
    x=sp.symbols('x0:6');v=sp.symbols('v0:6');A=sp.Matrix(6,6,sp.symbols('a0:36'))
    av=A*sp.Matrix(x);y=A.T*sp.Matrix(v);c=x[0]*y[0]
    f=[x[i]*y[i]-c for i in range(1,6)];g=[av[j]*v[j]-c for j in range(6)]
    assert sp.expand(sum(g)-sum(f))==0
    print('PASS: exact redundant-equation identity, no unitarity assumed')
    w,t=sp.symbols('w t');mod=w*w-w+1
    def red(e):return sp.Poly(sp.expand(e),w).rem(sp.Poly(mod,w)).as_expr().expand()
    powers=[1,w,w-1,-1,-w,1-w]
    F=sp.Matrix([[powers[(i*j)%6] for j in range(6)] for i in range(6)])
    adj=F.subs(w,1-w).T
    assert all(red(z)==0 for z in F*adj-6*sp.eye(6))
    xx=sp.Matrix([1,0,t,0,-1-t,0]);vv=sp.Matrix([1,0,0,-1,0,0]);yy=F.T*vv;aa=F*xx
    assert all(red(xx[i]*yy[i])==0 for i in range(6))
    assert all(red(aa[j]*vv[j])==0 for j in range(6))
    assert all(red(yy[i]-([0,2,0,2,0,2][i]))==0 for i in range(6))
    print('PASS: exact F6 Hadamard identity over Q(w), w^2-w+1=0')
    print('PASS: F6 has the explicit projective boundary P^1 given in REPORT.md')
    for k,expected in [(2,10),(3,9),(4,10)]:
        J=boundary_jacobian(6,k);rank=J.rank();assert rank==expected
        print(f'PASS: exact k={k} boundary Jacobian rank {rank} in a ten-variable projective chart')
    # Directed-rounding implementation regression tests with exact rationals.
    rng=random.Random(20261015)
    for _ in range(1000):
        a,b=sorted(rng.sample(range(-100000,100001),2));c,d=sorted(rng.sample(range(-100000,100001),2))
        I=RI(a*(S//1024),b*(S//1024));J=RI(c*(S//1024),d*(S//1024));K=I*J
        vals=[Fraction(p*q,1024**2) for p in (a,b) for q in (c,d)]
        assert Fraction(K.lo,S)<=min(vals)<=max(vals)<=Fraction(K.hi,S)
        K=I+J;assert Fraction(K.lo,S)<=Fraction(a+c,1024) and Fraction(K.hi,S)>=Fraction(b+d,1024)
    print('PASS: 1000 exact rational regression tests of outward dyadic arithmetic')
    print('PASS: all small exact algebra checks')
if __name__=='__main__':main()

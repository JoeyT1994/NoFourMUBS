#!/usr/bin/env python3
"""Exact Laurent-polynomial replay of global 3x3 minor identities.

Only Python standard-library integers and fractions are used. The nine Laurent
variables represent arbitrary unit complex entries; conjugation reverses every
exponent. No floating-point value decides any assertion.
"""
from collections import defaultdict
from fractions import Fraction
from itertools import permutations

N=9
ZERO=(0,)*N

def clean(p): return {e:c for e,c in p.items() if c}
def con(c): return {ZERO:c} if c else {}
def add(*polys):
    out=defaultdict(int)
    for p in polys:
        for e,c in p.items(): out[e]+=c
    return clean(out)
def scale(p,a): return clean({e:a*c for e,c in p.items()})
def neg(p): return scale(p,-1)
def sub(p,q): return add(p,neg(q))
def mul(p,q):
    out=defaultdict(int)
    for e,c in p.items():
        for f,d in q.items(): out[tuple(x+y for x,y in zip(e,f))]+=c*d
    return clean(out)
def prod(polys):
    out=con(1)
    for p in polys:out=mul(out,p)
    return out
def powi(p,n): return prod([p]*n)
def bar(p): return {tuple(-x for x in e):c for e,c in p.items()}
def norm2(p): return mul(p,bar(p))
def var(i):
    e=[0]*N;e[i]=1
    return {tuple(e):1}
def det(A):
    terms=[]
    for perm in permutations(range(3)):
        inv=sum(perm[i]>perm[j] for i in range(3) for j in range(i+1,3))
        terms.append(scale(prod(A[i][perm[i]] for i in range(3)),(-1)**inv))
    return add(*terms)
def permanent(A): return add(*(prod(A[i][perm[i]] for i in range(3)) for perm in permutations(range(3))))
def assert_zero(p,name):
    if p: raise AssertionError((name,len(p),next(iter(p.items()))))
    print('PASS',name)

A=[[var(3*i+j) for j in range(3)] for i in range(3)]
s=neg(add(*(mul(A[1][j],bar(A[0][j])) for j in range(3))))
t=neg(add(*(mul(A[2][j],bar(A[0][j])) for j in range(3))))
r=neg(add(*(mul(A[2][j],bar(A[1][j])) for j in range(3))))
X,Y,Z=map(norm2,(s,t,r))
p=add(X,Y,Z)
k=mul(mul(s,r),bar(t));J=add(k,bar(k))
detA=det(A);permA=permanent(A)
d=norm2(detA);per=norm2(permA)
g=add(con(27),scale(p,-3),J)
assert_zero(sub(d,add(con(27),scale(p,-3),neg(J))),'determinant squared = 27 - 3p - J')
assert_zero(sub(per,add(con(9),neg(p),neg(J))),'permanent squared = 9 - p - J')
assert_zero(sub(scale(per,3),sub(scale(d,2),g)),'3 permanent squared = 2d - g')
P=prod(A[i][j] for i in range(3) for j in range(3))
detSquare=det([[powi(z,2) for z in row] for row in A])
assert_zero(sub(detSquare,sub(mul(permA,detA),scale(mul(P,bar(detA)),2))),
            'det(entrywise square) = permanent * determinant - 2P conjugate determinant')
q=mul(mul(permA,powi(detA,2)),bar(P))
z=mul(mul(detA,detSquare),bar(P))
assert_zero(sub(q,add(scale(d,2),z)),'q = 2d + det(A)det(A squared)/P')
W=sub(add(mul(X,Y),mul(X,Z),mul(Y,Z)),prod((X,Y,Z)))
chiMinus=sub(sub(W,mul(sub(p,con(9)),sub(p,con(18)))),mul(sub(p,con(15)),J))
assert_zero(add(add(q,bar(q)),chiMinus),'2 Re q = -chi with J sign reversed')
t2=norm2(detSquare)
assert_zero(sub(scale(add(q,bar(q)),2),sub(add(mul(d,per),scale(d,4)),t2)),
            '4 Re q = d permanent squared + 4d - determinant-square squared')
# Signed invariant: 4(Im q)^2 = -(q - conjugate q)^2.
R=neg(powi(sub(q,bar(q)),2))
etaMinus=add(con(9),neg(p),neg(J))
RpolyMinus=sub(scale(mul(powi(d,2),etaMinus),4),powi(chiMinus,2))
assert_zero(sub(R,RpolyMinus),'4 Im(q)^2 = Rpoly(X,Y,Z,-J)')
assert_zero(sub(scale(R,4),sub(scale(mul(powi(d,2),per),16),
                             powi(sub(add(mul(d,per),scale(d,4)),t2),2))),
            '4 R = 16d^2 permanent squared - (d permanent squared +4d-t)^2')

# Exact numerical constants entering the maximum-volume chart phase bound.
a=Fraction(54,5)
modulus2=a**3/3
sine2=Fraction(26,4)/modulus2
assert modulus2==Fraction(52488,125)
assert sine2==Fraction(1625,104976)
assert sine2 < Fraction(1,8)**2 - Fraction(1,8)**4/3
# sin(x)^2 >= x^2-x^4/3 for x in [0,1/8], proved by sin x>=x-x^3/6.
# Therefore arcsin(sqrt(sine2))<1/8, without evaluating transcendental functions.
print('PASS exact maximum-volume phase radius < 1/8 radian')
print('MINOR IDENTITIES PASS')

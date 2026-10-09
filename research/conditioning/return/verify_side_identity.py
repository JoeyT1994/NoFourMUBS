#!/usr/bin/env python3
"""Universal side-Jacobian and corner identities in an exact Laurent ring.

All coefficients are unbounded Python integers. Formal conjugation inverts
unit-phase variables. No sampling, floating-point comparison, or division by
a parameter is used. The finite identities specialize at every unit phase.
"""
from collections import defaultdict
from itertools import permutations
from time import perf_counter

NV=6
ZERO=(0,)*NV
def const(c): return {ZERO:c} if c else {}
def var(i):
    e=[0]*NV;e[i]=1
    return {tuple(e):1}
def add(*ps):
    q=defaultdict(int)
    for p in ps:
        for e,c in p.items(): q[e]+=c
    return {e:c for e,c in q.items() if c}
def scale(p,k): return {e:c*k for e,c in p.items() if c*k}
def mul(*ps):
    q=const(1)
    for p in ps:
        z=defaultdict(int)
        for e,c in q.items():
            for f,d in p.items(): z[tuple(a+b for a,b in zip(e,f))]+=c*d
        q={e:c for e,c in z.items() if c}
    return q
def cj(p):return {tuple(-a for a in e):c for e,c in p.items()}
def power(p,n):
    r=const(1)
    while n:
        if n%2:r=mul(r,p)
        n//=2
        if n:p=mul(p,p)
    return r
def parity(p):return (-1)**sum(p[i]>p[j] for i in range(len(p)) for j in range(i+1,len(p)))
def det(a,permanent=False):
    n=len(a);out={}
    for p in permutations(range(n)):
        out=add(out,scale(mul(*(a[i][p[i]] for i in range(n))),1 if permanent else parity(p)))
    return out

def gram_invariants(s,t,r):
    X=mul(s,cj(s));Y=mul(t,cj(t));Z=mul(r,cj(r))
    p=add(X,Y,Z);J=add(mul(s,r,cj(t)),mul(cj(s),cj(r),t))
    W=add(mul(X,Y),mul(X,Z),mul(Y,Z),scale(mul(X,Y,Z),-1))
    g=add(const(27),scale(p,-3),J)
    eta=add(const(9),scale(p,-1),J)
    chi=add(W,scale(mul(add(p,const(-9)),add(p,const(-18))),-1),mul(add(p,const(-15)),J))
    R=add(scale(mul(g,g,eta),4),scale(mul(chi,chi),-1))
    return {'g':g,'eta':eta,'chi':chi,'R':R}

def cross(a,b):
    return [add(mul(a[(i+1)%3],b[(i+2)%3]),scale(mul(a[(i+2)%3],b[(i+1)%3]),-1)) for i in range(3)]
def dot(a,b):return add(*(mul(x,y) for x,y in zip(a,b)))

def run():
    t0=perf_counter()
    one=const(1);zero={}
    x=[var(i) for i in range(3)];y=[var(i+3) for i in range(3)]
    w=[mul(yj,cj(xj)) for xj,yj in zip(x,y)]
    B=[[one]*3,x,y]
    prod=mul(*x,*y)
    per=det(B,True);delta=det(B)
    q=mul(per,power(delta,2),cj(prod))
    M=[x+[zero]*3,[zero]*3+y,[scale(z,-1) for z in w]+w,
       [cj(z) for z in x]+[zero]*3,[zero]*3+[cj(z) for z in y],
       [scale(cj(z),-1) for z in w]+[cj(z) for z in w]]
    dd=det(M)
    assert not add(dd,q,scale(cj(q),-1))
    Ax=cross(x,[cj(z) for z in x]);Ay=cross(y,[cj(z) for z in y])
    laplace=add(mul(dot(w,Ax),dot([cj(z) for z in w],Ay)),
                scale(mul(dot([cj(z) for z in w],Ax),dot(w,Ay)),-1))
    assert dd==laplace
    print('side determinant Laurent identity PASS',len(dd),'terms',perf_counter()-t0)
    s=add(*x);t=add(*y);r=add(*w)
    inv=gram_invariants(s,t,r);g,eta,chi,R=(inv[k] for k in ('g','eta','chi','R'))
    assert not add(eta,scale(mul(per,cj(per)),-1))
    assert not add(chi,q,cj(q))
    print('permanent identities eta=|perm B|^2 and chi=-(q+conj q) PASS')
    assert not add(R,power(add(q,scale(cj(q),-1)),2))
    print('Gram discriminant Laurent identity PASS',len(R),'terms',perf_counter()-t0)
    assert not add(g,scale(mul(delta,cj(delta)),-1))
    print('Gram determinant identity PASS',perf_counter()-t0)

    # Complementary horizontal/vertical corner invariants. Variables a,b,c,d
    # are independent formal phases, and transposition exchanges b and c.
    a,b,c,d=[var(i) for i in range(4)]
    def corner_inv(a,b,c,d):
        return gram_invariants(scale(add(one,a,b),-1),
                               scale(add(one,c,d),-1),
                               scale(add(one,mul(c,cj(a)),mul(d,cj(b))),-1))
    ih=corner_inv(a,b,c,d);iv=corner_inv(a,c,b,d)
    for key in ('g','eta','chi','R'):
        assert ih[key]==iv[key], ('horizontal/vertical mismatch',key)
    print('horizontal/vertical g, eta, chi, R identities PASS')
    return R,dd
if __name__=='__main__':run()

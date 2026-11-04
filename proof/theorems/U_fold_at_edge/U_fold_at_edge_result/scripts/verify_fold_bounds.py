#!/usr/bin/env python3
"""CERTIFIED augmented-side inverse bounds in a radius-1/20 phase cube.
Run alongside verify_fold_f6.py. Uses Python's standard library only.
A(phi)=(Re s,Im s,Re t,Im t,Re r,Im Psi/24), phi0=(3,4,5,0,2,4)*pi/3.
All printed bounds are rational; no floating-point arithmetic is used.
"""
from fractions import Fraction as F
from verify_fold_f6 import R,C,I,QP,perms,parity,frame,jac,psi_grad

def inverse(A):
    n=len(A);B=[row[:]+[R(i==j) for j in range(n)] for i,row in enumerate(A)]
    for j in range(n):
        p=next(k for k in range(j,n) if B[k][j]);B[p],B[j]=B[j],B[p]
        d=B[j][j];B[j]=[z/d for z in B[j]]
        for k in range(n):
            if k==j:continue
            d=B[k][j];B[k]=[z-d*w for z,w in zip(B[k],B[j])]
    return [row[n:] for row in B]

def multiply(a,b):
    c={}
    for m,v in a.items():
        for n,w in b.items():
            p=tuple(x+y for x,y in zip(m,n));c[p]=c.get(p,0)+v*w
    return {m:v for m,v in c.items() if v}

def realpart(poly,imag=False):
    out={}
    for m,c in poly.items():
        n=tuple(-x for x in m)
        out[m]=out.get(m,C(0))+c/(2*I if imag else 2)
        out[n]=out.get(n,C(0))+(-c.bar()/(2*I) if imag else c.bar()/2)
    return {m:c for m,c in out.items() if c!=0}

PHI0=(3,4,5,0,2,4)
def shifted(poly):return {m:c*QP[sum(x*y for x,y in zip(m,PHI0))%6] for m,c in poly.items()}
def unit(j):return tuple(int(k==j) for k in range(6))
def normfreq(m):return sum(abs(z) for z in m)

# The valid bound |a+b sqrt(3)| <= |a|+(1733/1000)|b|.
SQRT3_UP=F(1733,1000)
assert SQRT3_UP**2>3
def real_bound(z):return abs(z.a)+SQRT3_UP*abs(z.b)
def complex_bound(z):return real_bound(z.re)+real_bound(z.im)

def hessian_l1_at_zero(poly):
    total=F(0)
    for j in range(6):
        for k in range(6):
            z=sum(-m[j]*m[k]*c for m,c in poly.items())
            assert z.im==0
            total+=real_bound(z.re)
    return total

def third_bound(poly):return sum(complex_bound(c)*normfreq(m)**3 for m,c in poly.items())

def main():
    H=frame((0,1,2),(0,1,2));B=[row[3:] for row in H[:3]];_,dS=psi_grad(B)
    A0=jac(B)[:5]+[[z/24 for z in dS]];M=inverse(A0)
    assert all(sum(M[i][k]*A0[k][j] for k in range(6))==R(i==j) for i in range(6) for j in range(6))
    P={};D={}
    for p in perms:
        m=[0]*6;m[p[1]]=1;m[3+p[2]]=1;m=tuple(m);P[m]=1;D[m]=parity(p)
    Psi={tuple(x-1 for x in m):v for m,v in multiply(multiply(D,D),P).items()}
    assert len(Psi)==55 and sum(abs(v) for v in Psi.values())==108
    sp={unit(j):C(1) for j in range(3)};tp={unit(3+j):C(1) for j in range(3)}
    rp={tuple(int(k==j+3)-int(k==j) for k in range(6)):C(1) for j in range(3)}
    outputs=[shifted(realpart(sp)),shifted(realpart(sp,True)),shifted(realpart(tp)),shifted(realpart(tp,True)),shifted(realpart(rp)),{m:c/24 for m,c in shifted(realpart({m:C(c) for m,c in Psi.items()},True)).items()}]
    for i in range(6):
        for j in range(6):
            z=sum(I*m[j]*c for m,c in outputs[i].items())
            assert z.im==0 and z.re==A0[i][j]
    frequencies=set(m for p in outputs for m in p)
    pre=[{m:sum(C(M[i][j])*outputs[j].get(m,C(0)) for j in range(6)) for m in frequencies} for i in range(6)]
    # For r=1/20, expansion |exp(it)-1-it|<=t^2/2 bounds
    # || M DA(phi0+delta)-I ||_infinity by max_i(r*h_i+r^2*t_i/2).
    r=F(1,20)
    h=[hessian_l1_at_zero(p) for p in pre];t=[third_bound(p) for p in pre]
    qs=[r*a+r*r*b/2 for a,b in zip(h,t)]
    q=max(qs);mu=max(sum(real_bound(z) for z in row) for row in M)
    raw_h=[hessian_l1_at_zero(p)+r*third_bound(p) for p in outputs]
    assert q==F(5487521,9600000) and q<F(3,5)
    assert mu==F(55529,24000) and mu<F(7,3)
    assert max(raw_h)==F(63353,3750) and max(raw_h)<17
    print('PASS exact sparse Psi: 55 monomials, coefficient l1=108')
    print('A0 inverse rows:')
    for row in M:print(row)
    print('Preconditioned center Hessian l1 upper bounds:',h)
    print('Preconditioned third-derivative Fourier upper bounds:',t)
    print('Derivative-variation row bounds:',qs)
    print('PASS ||M DA-I||inf <=',q,'< 3/5 on ||delta||inf<=1/20')
    print('PASS ||M||inf <=',mu,'< 7/3')
    print('PASS ||D^2 A||inf,inf->inf <=',max(raw_h),'< 17')
    print('CONSEQUENCE ||DA^-1||inf <=35/6')
    print('CONSEQUENCE ||D^2(A^-1)||inf,inf->inf <=728875/216')
    print('CONSEQUENCE all targets ||M(a-A(phi0))||inf <=1/50 have unique preimage in the phase cube')
    print('NO CLAIM: containment of a radius-.05 original seed-parameter cube')

if __name__=='__main__':main()

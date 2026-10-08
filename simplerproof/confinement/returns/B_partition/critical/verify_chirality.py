#!/usr/bin/env python3
"""Exact Gram-Jacobian and chirality-stratum stationary classification.

Requires sympy. All acceptance decisions are polynomial identities,
Groebner basis identities, gcds, or integer comparisons.
"""
import sympy as S
from itertools import permutations


def zero(x):
    assert S.cancel(S.expand(x)) == 0


def Rpoly(X,Y,Z,J):
    p=X+Y+Z
    g=27-3*p+J
    eta=9-p+J
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    return S.expand(4*g*g*eta-chi*chi)


def main():
    # The full six-phase row-Gram map has determinant Im(q(E))/4.
    vs=S.symbols('a b c d e f')
    a,b,c,d,e,f=vs
    invsubs={z:1/z for z in vs}
    def bar(z):
        return z.subs(invsubs, simultaneous=True)
    ss,tt,rr=a+b+c,d+e+f,d/a+e/b+f/c
    outs=[ss,bar(ss),tt,bar(tt),rr,bar(rr)]
    jac=S.Matrix([[S.diff(o,z)*z for z in vs] for o in outs])
    E=S.Matrix([[1,1,1],[a,b,c],[d,e,f]])
    permanent=sum(S.prod(E[i,p[i]] for i in range(3))
                  for p in permutations(range(3)))
    invariant=permanent*E.det()**2/(a*b*c*d*e*f)
    zero(jac.det(method='domain-ge')+invariant-bar(invariant))

    X,Y,Z,J,lam=S.symbols('X Y Z J lam')
    R=Rpoly(X,Y,Z,J)
    p=X+Y+Z
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    ex=S.diff(R,X)+4*lam*Y*Z
    ey=S.diff(R,Y)+4*lam*X*Z
    zero(ex-ey-(Y-X)*(-2*chi+(2*chi+4*lam)*Z))
    zero(R.subs({X:0,Y:0,J:0})+Z**2*(9-Z)**2)

    x,t=S.symbols('x t')
    A=-t*t+t*x-3*t-x
    B=t**3-2*t*t*x+2*t*t+t*x*x-3*t*x+3*t-x*x+3*x
    C=(-2*t**4+5*t**3*x-4*t*t*x*x+2*t*t*x+9*t*t
       +t*x**3+2*t*x*x-12*t*x-2*x**3+11*x*x-18*x)
    Rtwo=Rpoly(x,x,t*t,2*x*t)
    zero(Rtwo+(t-3)**2*A**2*(t*t-2*t*x+x*x-4*x))
    zero(S.diff(Rtwo,x)+4*(t-3)**2*A*B)
    zero(S.diff(Rtwo,t)+4*(t-3)*A*C)
    result=S.resultant(B,C,x)
    zero(result+2*t*(t-3)**2*(t+1)*(t*t-t-1)*(9*t*t-14*t+9))
    gcd0=S.Poly(S.gcd(B.subs(t,0),C.subs(t,0)),x).monic()
    assert gcd0.as_expr()==x
    zero(Rtwo.subs(t,-1)+64*(x-1)**4)
    assert Rtwo.subs(t,3)==0
    basis=S.groebner([B,C,t*t-t-1],x,t)
    assert list(basis)==[x-t-1,t*t-t-1]
    zero(S.rem(Rtwo.subs(x,t+1)-(175+275*t),t*t-t-1,t))
    Rcom=Rpoly(x,x,t*t,-2*x*t)
    zero(S.rem(Rcom.subs(x,t+1)-(-905-1541*t),t*t-t-1,t))
    # The excluded small stationary value has complementary R > 26.
    assert 5*1541**2 > 3403**2
    assert 625**2 > 5*275**2
    assert 5*275**2 > 573**2
    print('CHIRALITY CRITICAL EXACT PASS')
    print('Gram six-phase real Jacobian determinant = Im(q(E))/4.')
    print('Positive constrained critical values: (625 +/- 275 sqrt(5))/2.')
    print('The smaller one has complementary R=(-3351+1541 sqrt(5))/2 > 26.')


if __name__=='__main__':
    main()

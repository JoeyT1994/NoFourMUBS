#!/usr/bin/env python3
"""Exact symbolic replay of the chart identities in CHART_DENOMINATORS.md.

Requires sympy. Uses integer/rational polynomial arithmetic only.
No floating-point value decides any claim.
"""
import time
import sympy as S


def assert_zero(expr, *variables):
    num = S.together(expr).as_numer_denom()[0]
    assert S.Poly(num, *variables).is_zero


def check_permanent_identity():
    a,b,c,d = S.symbols('a b c d', nonzero=True)
    def bar(e):
        return e.xreplace({a:1/a,b:1/b,c:1/c,d:1/d})
    det = a*d-b*c-d+b+c-a
    perm = a*d+b*c+a+b+c+d
    s = -(1+a+b); t = -(1+c+d); r = -(1+c/a+d/b)
    p = s*bar(s)+t*bar(t)+r*bar(r)
    J = s*r*bar(t)+bar(s)*bar(r)*t
    g = 27-3*p+J
    assert_zero(det*bar(det)-(27-3*p-J),a,b,c,d)
    assert_zero(3*perm*bar(perm)-(2*det*bar(det)-g),a,b,c,d)


def check_P_identity():
    X,Y,Z,J = S.symbols('X Y Z J')
    p=X+Y+Z; W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J; eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    P0_squared=J**2+(3-Z)*(X+Y)*J+X*Y*(9-8*Z+Z**2)+Z*(X**2+Y**2)
    assert_zero(P0_squared-(g*g+(9-Z)*chi+(9-Z)**2*eta),X,Y,Z,J)
    D=27-3*p-J
    assert_zero(eta-(2*g-D)/3,X,Y,Z,J)


def check_side_identities():
    # Row rephasing permits s,t real. r and rb are formal conjugates.
    s,t,r,rb,z=S.symbols('s t r rb z')
    X=s*s; Y=t*t; Z=r*rb; J=s*t*(r+rb); p=X+Y+Z
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J; eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    P0=r*s*s+rb*t*t+(3-Z)*s*t
    P1=t*s*s+r*r*t+(3-Y)*r*s
    P2=s*t*t+rb*rb*s+(3-X)*rb*t
    A0=g+(9-Z)*z; A1=g+(9-Y)*z; A2=g+(9-X)*z
    T=A0*P1
    U=s*s*T-3*s*P0*A1
    V=s*s*P0*A1-3*s*T
    N=9-s*s; K=3*r-s*t; Kbar=3*rb-s*t
    Gamma=2*s*t*A0-3*z*P0
    Lnum=N*Gamma*P1-2*U*K
    Dnum=N*N*T*P0*A1-4*U*V

    # L^2 = (n^2 - 4|alpha|^2) delta^2, where L=n gamma-2 alpha k.
    f=S.Poly(P2*Lnum*Lnum-3*g*A2*Dnum,z)
    assert f.degree() <= 3
    c=[f.nth(i) for i in range(4)]
    assert_zero(g*g*c[0]-g*g*eta*c[2]-g*chi*eta*c[3],s,t,r,rb)
    assert_zero(g*g*c[1]+g*chi*c[2]+(chi*chi-g*g*eta)*c[3],s,t,r,rb)

    # L = (lambda0/(lambda1 lambda2)) conjugate(L).
    # zbar=chi/g-z, and conjugate(lambda_j)=1/lambda_j.
    Lbnum_g=N*(2*s*t*P0*g-3*(chi-g*z)*A0)*A1-2*g*V*Kbar
    f_real=S.Poly(g*P2*Lnum-A2*Lbnum_g,z)
    remainder=S.rem(f_real,S.Poly(g*z*z-chi*z+g*eta,z))
    for coefficient in remainder.all_coeffs():
        assert_zero(coefficient,s,t,r,rb)

    # The Schur determinant identity used to obtain 3 M M* = G.
    assert_zero((1-s*s/9)*(1-t*t/9)-K*Kbar/81-g/27,s,t,r,rb)

    # |sigma|^2=rho after |alpha|^2=rho(1-|mu|^2-rho).
    x,rho=S.symbols('x rho')
    alpha2=rho*(1-x-rho)
    sigma_numerator=rho*rho+rho*(x*x-x-alpha2)+x*alpha2
    assert_zero(sigma_numerator-rho**3,x,rho)


def check_stationary_seed():
    v=S.symbols('v')
    p=3*v*v; J=-2*v**3; W=3*v**4-v**6
    g=27-3*p+J; eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    factored=-v**4*(v-1)**3*(v+3)**5
    derivative=-12*v**3*(v-1)**2*(v+3)**4*(v*v+v-1)
    assert_zero(R-factored,v)
    assert_zero(S.diff(R,v)-derivative,v)
    rem=S.rem(S.Poly(R,v),S.Poly(v*v+v-1,v)).as_expr()
    assert_zero(rem-(175-275*v),v)
    # v=(sqrt(5)-1)/2 gives R=(625-275sqrt(5))/2.
    # The following rational square bounds prove 0<R<26 exactly.
    assert 625**2 > 275**2*5
    assert 573**2 < 275**2*5


if __name__=='__main__':
    started=time.monotonic()
    check_permanent_identity()
    check_P_identity()
    check_side_identities()
    check_stationary_seed()
    print('CHART AND STATIONARY-SEED EXACT VERIFICATION PASS')
    print('Elapsed seconds (informational):',round(time.monotonic()-started,3))

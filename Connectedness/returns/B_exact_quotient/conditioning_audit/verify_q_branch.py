#!/usr/bin/env python3
"""Exact polynomial acceptance checks for Q_BRANCH.md; no floating point."""
import sympy as s

x,y,z,j,u,v,lam=s.symbols('x y z j u v lam')
pp,jj,ww=s.symbols('pp jj ww')
g=27-3*pp+jj
eta=9-pp+jj
chi=ww-(pp-9)*(pp-18)+(pp-15)*jj
F=4*g*g*eta-chi*chi
p=x+y+z
w=x*y+x*z+y*z-x*y*z
f4=s.expand(F.subs({pp:p,jj:j,ww:w}))
Q=4*x*y*z-j*j


def same(a,b):
    assert s.cancel(s.expand(a-b)) == 0


def verify():
    # Exact witness that Im(s*r*conj(t)) is not the zero trigonometric polynomial.
    aa,bb,cc,dd=s.Integer(1),s.Integer(-1),s.Integer(1),s.I
    ss,tt,rr=-(1+aa+bb),-(1+cc+dd),-(1+cc/aa+dd/bb)
    assert s.im(s.expand(ss*rr*s.conjugate(tt))) == 4
    same(f4.subs({x:0,y:0,j:0}),-z*z*(z-9)**2)
    FW=s.diff(F,ww).subs({pp:p,jj:j,ww:w})
    same(s.diff(f4,x)-s.diff(f4,y)-lam*(s.diff(Q,x)-s.diff(Q,y)),
         (y-x)*(FW*(1-z)-4*lam*z))
    same(s.diff(F,ww),-2*chi)
    same(s.diff(F,pp),-4*g*(6*eta+g)-2*chi*s.diff(chi,pp))
    # Smooth Gram-coordinate Jacobian: det^2=4Q, independent of positivity.
    h,k=s.symbols('h k', real=True)
    coord=s.Matrix([x,y,h*h+k*k,2*s.sqrt(x*y)*h])
    det=coord.jacobian([x,y,h,k]).det()
    same(det*det,16*x*y*k*k)
    same(Q.subs({z:h*h+k*k,j:2*s.sqrt(x*y)*h}),4*x*y*k*k)
    f=-(v-3)**2*(u*u-2*u*v-4*u+v*v)*(u*v-u-v*v-3*v)**2
    same(f4.subs({x:u,y:u,z:v*v,j:2*u*v}),f)
    B=u*v-u-v*v-3*v
    P=u*u*v-u*u-2*u*v*v-3*u*v+3*u+v**3+2*v*v+3*v
    T=(u**3*v-2*u**3-4*u*u*v*v+2*u*u*v+11*u*u
       +5*u*v**3+2*u*v*v-12*u*v-18*u-2*v**4+9*v*v)
    same(s.diff(f,u),-4*(v-3)**2*B*P)
    same(s.diff(f,v),-4*(v-3)*B*T)
    same(s.resultant(P,T,u),
         -2*v*(v-3)**2*(v+1)*(v*v-v-1)*(9*v*v-14*v+9))
    assert (-14)**2-4*9*9 == -128
    for value,root in [(0,0),(-1,1),(3,9)]:
        gcd=s.Poly(s.gcd(P.subs(v,value),T.subs(v,value)),u).monic()
        assert s.factor(gcd.as_expr()) == (u-root)**gcd.degree()
        same(f.subs({u:root,v:value}),0)
    G=s.groebner([P,T,v*v-v-1],u,v)
    assert list(G) == [u-v-1,v*v-v-1]
    on_diagonal={x:v*v,y:v*v,z:v*v,j:2*v**3}
    r=s.rem(f4.subs(on_diagonal),v*v-v-1,v)
    rh=s.rem(f4.subs(j,-j).subs(on_diagonal),v*v-v-1,v)
    fj=s.rem(s.diff(f4,j).subs(on_diagonal),v*v-v-1,v)
    same(r,275*v+175)
    same(rh,-1541*v-905)
    same(fj,210*v+150)
    assert s.gcd(v*v-v-1,1541*v+905) == 1
    # All-zero triangle coefficients imply the same Q-constrained stationarity.
    a0,b0,c0=s.symbols('a0 b0 c0')
    signed={x:a0*a0,y:b0*b0,z:c0*c0,j:-2*a0*b0*c0}
    pulled=f4.subs(signed)
    for a,b,c,X in [(a0,b0,c0,x),(b0,a0,c0,y),(c0,a0,b0,z)]:
        same(s.diff(pulled,a)/2,
             (a*s.diff(f4,X)-b*c*s.diff(f4,j)).subs(signed))
    minor=s.Matrix([a0*a0,b0*b0,-2*a0*b0*c0]).jacobian([a0,b0,c0]).det()
    same(minor,-8*a0*a0*b0*b0)
    assert 17**2>5*7**2
    print('PASS: Q=0, Rhat>0 branch algebra; all positive local maxima excluded.')


if __name__=='__main__':
    verify()

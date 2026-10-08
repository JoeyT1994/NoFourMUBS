#!/usr/bin/env python3
"""Exact algebra for the raw-Gram recipe in FOLD_LIFT.md."""
import sympy as s

a,b,Z,J,q=s.symbols('a b Z J q', real=True)
X,Y=a*a,b*b
p=X+Y+Z
W=X*Y+X*Z+Y*Z-X*Y*Z
Q=4*X*Y*Z-J*J
relation=q*q-Q
r=(-J+s.I*q)/(2*a*b)
rb=s.conjugate(r)
g=27-3*p-J
eta=9-p-J
chi=W-(p-9)*(p-18)-(p-15)*J


def zero_mod(expr):
    numerator=s.together(expr).as_numer_denom()[0]
    assert s.rem(s.Poly(numerator,q),s.Poly(relation,q)).as_expr() == 0


def verify():
    zero_mod(r*rb-Z)
    zero_mod(2*a*b*s.re(r)+J)
    K=s.Matrix([[3,a,b],[a,3,rb],[b,r,3]])
    zero_mod(K.det()-g)
    P=[r*a*a+rb*b*b+(3-Z)*a*b,
       b*a*a+r*r*b+(3-Y)*r*a,
       a*b*b+rb*rb*a+(3-X)*rb*b]
    for value,c in zip(P,[9-Z,9-Y,9-X]):
        zero_mod(value*s.conjugate(value)-(g*g+c*chi+c*c*eta))
    zz,gg,cc,ee,tt=s.symbols('zz gg cc ee tt',real=True)
    root=(cc+s.I*tt)/(2*gg)
    rad=4*gg*gg*ee-cc*cc
    assert s.rem(s.together(root*s.conjugate(root)-ee).as_numer_denom()[0],tt*tt-rad,tt) == 0
    assert s.simplify(root+s.conjugate(root)-cc/gg) == 0
    print('PASS: raw Gram, J sign, side numerator norms, and discriminant-root identities.')


if __name__=='__main__':
    verify()

#!/usr/bin/env python3
"""Exact closure of the nontransverse double-zero Cayley branch.

Requires SymPy. All checks use exact polynomial/rational arithmetic.
"""
import sympy as S
from itertools import product
from collections import Counter


def zero(expr):
    assert S.cancel(S.expand(expr))==0


def Rpoly(X,Y,Z,J):
    p=X+Y+Z
    g=27-3*p+J
    eta=9-p+J
    chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    return S.expand(4*g*g*eta-chi*chi)


def main():
    # Exclude every real-equivalent low-R corner exactly.
    counts=Counter()
    for a,b,c,d in product((-1,1),repeat=4):
        E=((1,1,1),(1,a,b),(1,c,d))
        ss=-sum(E[1][k]*E[0][k] for k in range(3))
        tt=-sum(E[2][k]*E[0][k] for k in range(3))
        rr=-sum(E[2][k]*E[1][k] for k in range(3))
        counts[int(Rpoly(ss*ss,tt*tt,rr*rr,2*ss*rr*tt))]+=1
    assert counts==Counter({-5038848:1,-6912:9,256:6})

    x,y,z,j,r=S.symbols('x y z j r')
    cayley=lambda a,b,c:(a*a+b*b+c*c+a*b*c+a*b+a*c+b*c+3*(a+b+c))
    C0=cayley(x,y,z)
    C1=cayley(-x,-y,z)
    C2=cayley(-x,y,-z)
    C3=cayley(x,-y,-z)
    zero(C0-C1-2*(x+y)*(z+3))
    Q=Rpoly(x*x,y*y,z*z,-j)
    zero(Q.subs(j,2*x*y*z)+C0*C1*C2*C3)

    f=z*(z+3)/(z-1)
    def reduce_branch(expr):
        expr=S.together(expr.subs(y,-x))
        num,den=expr.as_numer_denom()
        assert not den.has(x)
        return S.factor(S.rem(num,x*x-f,x)/den)
    zero(reduce_branch(C0))
    zero(reduce_branch(C1))
    others=-4*z*(z-3)**3*(z+1)/(z-1)**2
    zero(reduce_branch(C2*C3)-others)
    cross=S.Matrix([S.diff(C0,w) for w in (x,y,z)]).cross(
        S.Matrix([S.diff(C1,w) for w in (x,y,z)]))
    expected=(2*(z-3)*(z+1)*(z+3)/(z-1),
              -2*(z-3)*(z+1)*(z+3)/(z-1),
              4*x*(z-1)*(z+3))
    for got,want in zip(cross,expected):
        zero(reduce_branch(got)-want)

    # In quotient coordinates J=2xyz cos(phi), at phi=0 the mixed
    # spatial/phi Hessian entries vanish and this is the phi-phi entry.
    phase_hessian=(-2*x*y*z*S.diff(Q,j)).subs(j,2*x*y*z)
    phase_expected=8*z**3*(z-3)**2*(z+1)**2*(z+3)**3/(z-1)**3
    zero(reduce_branch(phase_hessian)-phase_expected)
    gg=27-3*(x*x+y*y+z*z)+2*x*y*z
    dd=27-3*(x*x+y*y+z*z)-2*x*y*z
    zero(reduce_branch(gg)+(z+3)*(5*z*z-6*z+9)/(z-1))
    zero(reduce_branch(dd)+(z-3)**2*(z+3)/(z-1))

    numerator=-16*z**3*(z+3)**2*(z*z+3)**2*(z**3+z*z-z+3)
    curve=numerator/(z-1)**4
    zero(reduce_branch(Rpoly(x*x,y*y,z*z,2*x*y*z))-curve)
    assert curve.subs(z,-1)==256
    A=8*z**7+13*z**6-20*z**5-11*z**4-48*z**3-81*z*z-36*z-81
    zero(S.diff(curve,z)+16*z*z*(z+3)*(z*z+3)*A/(z-1)**5)
    P=(1048576*r**7+2123428027369*r**6-571227234818652*r**5
       +1090728701574637568*r**4-155428628037599232000*r**3
       +83970667439092358184960*r*r-23381556415604892622651392*r
       -5734952242782117615064055808)
    zero(S.resultant(A,r*(z-1)**4-numerator,z)-68719476736*P)
    pp=S.Poly(P,r)
    upper=pp.nth(0)+sum(pp.nth(k)*26**k
                       for k in range(1,8) if pp.nth(k)>0)
    assert upper==-5677688978785321591122765760<0
    print('DOUBLE-ZERO NONTRANSVERSE EXACT PASS')
    print('Every positive real-equivalent corner has R=256.')
    print('Double-Cayley Hessian is Lorentzian rank 3 away from R=256.')
    print('The double-curve critical-value polynomial is negative on [0,26].')


if __name__=='__main__':
    main()

#!/usr/bin/env python3
"""Exact certificate: every positive local maximum has both traces on the deltoid boundary.

Checks the structural Laurent identity, exact resultants/Groebner bases,
Sturm root counts, rational interval signs, and boundary-orbit identities.
"""
from fractions import Fraction as Q
import sympy as s
import exact_maxima as E


def require(ok, message):
    if not ok:
        raise AssertionError(message)


class Interval:
    def __init__(self, lo, hi=None):
        self.lo, self.hi = Q(lo), Q(lo if hi is None else hi)
        require(self.lo <= self.hi, 'ordered interval')
    @staticmethod
    def of(x):
        return x if isinstance(x, Interval) else Interval(x)
    def __add__(self, other):
        other = self.of(other)
        return Interval(self.lo+other.lo, self.hi+other.hi)
    __radd__ = __add__
    def __neg__(self):
        return Interval(-self.hi,-self.lo)
    def __sub__(self, other):
        return self + (-self.of(other))
    def __rsub__(self, other):
        return self.of(other) + (-self)
    def __mul__(self, other):
        other = self.of(other)
        ends = [self.lo*other.lo,self.lo*other.hi,self.hi*other.lo,self.hi*other.hi]
        return Interval(min(ends),max(ends))
    __rmul__ = __mul__
    def __truediv__(self, scalar):
        require(not isinstance(scalar,Interval) and scalar != 0,'nonzero scalar division')
        return self*Q(1,scalar)
    def __pow__(self, exponent):
        require(isinstance(exponent,int) and exponent>=0,'nonnegative integer exponent')
        out=Interval(1)
        for unused in range(exponent):
            out=out*self
        return out


def check_structural_identity():
    original, parts = E.structural_polynomial()
    M=((-1,-1,-1,0),(0,-1,-1,-1),(-1,0,-1,-1),(-1,-1,0,-1))
    require(E.det(M)==3,'degree-three normalized phase covering')
    U={(-1,-1,0,0):1,(1,0,0,0):1,(0,1,0,0):1}
    V={(0,0,-1,-1):1,(0,0,1,0):1,(0,0,0,1):1}
    A=E.add(U,V)
    B=E.add(U,E.scale(V,-1))
    u=E.mul(A,E.conjugate(A))
    v=E.mul(B,E.conjugate(B))
    AB2=E.mul(A,E.mul(B,B))
    w=E.add(AB2,E.conjugate(AB2))
    g=E.add(E.scale(v,2),E.scale(u,-3))
    eta=E.add(v,E.scale(u,-2))
    chi=E.add(E.scale(E.mul(E.add(E.scale(u,3),E.scale(v,-1)),
                         E.add(v,E.scale(u,-1),E.con(12))),Q(1,2)),E.scale(w,-1))
    for name, value in [('g',g),('eta',eta),('chi',chi)]:
        require(E.transformed_polynomial(parts[name],M)==value,
                'structural '+name+' identity')
    compact=E.add(E.scale(E.mul(E.mul(g,g),eta),4),E.scale(E.mul(chi,chi),-1))
    require(E.transformed_polynomial(original,M)==compact,'structural R identity')
    print('PASS: exact compact identities from the original structural Laurent polynomial.')


def check_interior():
    x,v=s.symbols('x v',real=True)
    g=2*v-3*x*x
    eta=v-2*x*x
    chi=(3*x*x-v)*(v-x*x+12)/2-2*v*x
    R=s.expand(4*g*g*eta-chi*chi)
    Rx,Rv=s.diff(R,x),s.diff(R,v)
    P=9*x**6-135*x**5+854*x**4-2838*x**3+5070*x*x-4392*x+1296
    expected=1152*x**5*(x-3)*(x-2)*(x*x-8*x+24)*(x*x-6*x+12)*P
    require(s.expand(s.resultant(Rx,Rv,v)-expected)==0,'interior exact resultant')
    for xx,vv in [(2,12),(3,27)]:
        require(s.monic(s.gcd(Rx.subs(x,xx),Rv.subs(x,xx)),v)==v-vv,
                'exceptional amplitude critical point')
        require(R.subs({x:xx,v:vv})==0,'exceptional value is zero')
    require(s.expand((x*x-8*x+24)-((x-4)**2+8))==0,'first factor has no real roots')
    require(s.expand((x*x-6*x+12)-((x-3)**2+3))==0,'second factor has no real roots')
    require(s.factor(Rx.subs(x,0))==-2*v*v*(v+12),'A=0 nonstationarity')
    L=57*v+45*x**5-567*x**4+2875*x**3-7062*x*x+7512*x-2700
    actual=s.groebner([Rx,Rv,P],v,x)
    target=s.groebner([L,P],v,x)
    require([p.as_expr() for p in actual.polys]==[p.as_expr() for p in target.polys],
            'sextic component exact Groebner basis')
    poly=s.Poly(P,x)
    require(poly.count_roots(-s.oo,s.oo)==2,'global Sturm count for sextic')
    brackets=[(565807686,565807687),(1917226736,1917226737)]
    for index,(lo,hi) in enumerate(brackets):
        aa,bb=s.Rational(lo,10**9),s.Rational(hi,10**9)
        require(poly.eval(aa)!=0 and poly.eval(bb)!=0,'nonroot bracket endpoints')
        require(poly.count_roots(aa,bb)==1,'isolated sextic root')
        X=Interval(Q(lo,10**9),Q(hi,10**9))
        V=((((-45*X+567)*X-2875)*X+7062)*X-7512)*X+2700
        V=V/57
        C=(3*X*X-V)*(V-X*X+12)/2-2*V*X
        require(X.lo>0 and V.lo>0 and C.hi<0,'strictly positive phase curvature')
        if index==0:
            require(V.lo>Q(4301,1000) and V.hi<Q(4303,1000),'first v enclosure')
            require(C.lo>Q(-316,10) and C.hi<Q(-315,10),'first chi enclosure')
        else:
            require(V.lo>Q(8601,1000) and V.hi<Q(8603,1000),'second v enclosure')
            require(C.lo>Q(-125,10) and C.hi<Q(-124,10),'second chi enclosure')
    print('PASS: every unconstrained positive critical point has an increasing direction.')
    print('  Sextic: exactly two real roots; each has x>0, v>0, chi<0.')


def check_boundary_orbit():
    z=s.Symbol('z',nonzero=True)
    r=s.Symbol('r',real=True)
    u,ub=s.symbols('u ub')
    Delta=(u*ub)**2+18*u*ub-4*(u**3+ub**3)-27
    U=2*z+z**-2
    V=r*z-(r+1)*z**-2
    A,B=U+V,U-V
    conj=lambda expression:s.expand(expression).subs(z,1/z)
    require(s.factor(Delta.subs({u:U,ub:conj(U)}))==0,'deltoid boundary identity')
    require(s.factor(s.diff(Delta,u).subs({u:U,ub:conj(U)})
            -4*(z**3-1)**3/z**4)==0,'deltoid regularity except at cusps')
    Up=s.I*(-2*A+B)/2
    Ubp=-s.I*(-2*conj(A)+conj(B))/2
    Upp=(-4*A-B)/2
    Ubpp=(-4*conj(A)-conj(B))/2
    first=(s.diff(Delta,u)*Up+s.diff(Delta,ub)*Ubp).subs({u:U,ub:conj(U)})
    second=(s.diff(Delta,u)*Upp+s.diff(Delta,ub)*Ubpp
            +s.diff(Delta,u,2)*Up**2+2*s.diff(Delta,u,ub)*Up*Ubp
            +s.diff(Delta,ub,2)*Ubp**2).subs({u:U,ub:conj(U)})
    require(s.cancel(s.expand(first))==0,'tangency identity')
    expected=-s.Rational(9,2)*(r+2)**2*(z**3-1)**4/z**6
    require(s.factor(second-expected)==0,'invariant-orbit inward curvature')
    require(s.factor((z**3-1)**4/z**6-(2-z**3-z**-3)**2)==0,
            'curvature square is real and nonnegative')
    require(s.factor(V.subs(r,-2)-(2*(-z)+(-z)**-2))==0,
            'zero-curvature exception has V on boundary')
    print('PASS: at a smooth single boundary, invariant orbit enters the double interior.')


def check_cusps():
    x,y=s.symbols('x y',real=True)
    U,V=3,x+s.I*y
    A,B=U+V,U-V
    u=s.expand(A*s.conjugate(A))
    v=s.expand(B*s.conjugate(B))
    w=s.expand(A*B**2+s.conjugate(A)*s.conjugate(B)**2)
    g,eta=2*v-3*u,v-2*u
    chi=(3*u-v)*(v-u+12)/2-w
    R=s.expand(4*g*g*eta-chi*chi)
    F=2*x*x+24*x+y*y+18
    G=5*x*x+18*x+y*y+9
    require(s.expand(R+4*F*G*G)==0,'cusp R factorization')
    require(s.expand(s.diff(R,y)+8*y*G*(G+2*F))==0,'cusp y derivative')
    bracket=(4*x+24)*(G+2*F)+12*(x-1)*F
    require(s.expand(s.diff(R,x)+4*G*bracket)==0,'cusp x derivative')
    require(s.expand(F.subs(x,1)-(y*y+44))==0,'nonreal critical branch excluded')
    Delta_real=x**4+18*x*x-8*x**3-27
    require(s.factor(Delta_real)==(x-3)**3*(x+1),'real-axis deltoid interval')
    require(F.subs({x:s.Rational(-4,5),y:0})==s.Rational(2,25),
            'positive-R real cusp range')
    P3=5*x**3+62*x*x+141*x+72
    require(s.expand(s.diff(R,x).subs(y,0)+48*(x+3)*(5*x+3)*P3)==0,
            'real cusp derivative factorization')
    require(P3.subs(x,s.Rational(-4,5))==-s.Rational(92,25),'cubic upper bound')
    require(s.expand(s.diff(P3,x)-(15*x*x+124*(x+1)+17))==0,
            'cubic derivative positive for x>=-1')
    print('PASS: cusp/interior pairs cannot be positive local maxima.')


def main():
    check_structural_identity()
    check_interior()
    check_boundary_orbit()
    check_cusps()
    print('PASS: all positive local maxima have BOTH normalized traces on the deltoid boundary.')

if __name__=='__main__':
    main()

#!/usr/bin/env python3
"""Exact global census on the double-deltoid-boundary stratum.

All decisions use rational polynomial algebra or exact integer comparisons.
This verifier is combined with verify_deltoid_reduction.py to prove exhaustion.
"""
from itertools import permutations
import sys
import sympy as s
from exact_maxima import seed_maps

if not __debug__:
    raise SystemExit('Verification requires assertions: do not run Python with -O.')


def main():
    c,h=s.symbols('c h', real=True)
    u=16*c**4+4+16*c*(2*c**2-1)*h
    v=16*(1-c**2)*(1+c**2-2*c*h)
    w=-64*(1-c**2)*((4*c-2*c**3)*h-(2*c**2+1)
                   +(2*c**4-c**2)*(2*h**2-1))
    # Independently link (u,v,w) to the actual boundary traces.  z=exp(im),
    # sn=sin(n), c=cos(n), h=(z^3+z^-3)/2.
    z,sn=s.symbols('z sn',nonzero=True)
    aa=4*c*z+2*(2*c*c-1)/z**2
    bb=4*s.I*sn*(z-c/z**2)
    ab=4*c/z+2*(2*c*c-1)*z**2
    bc=-4*s.I*sn*(1/z-c*z**2)
    hh=(z**3+z**-3)/2
    for direct,reduced in ((aa*ab,u),(bb*bc,v),(aa*bb**2+ab*bc**2,w)):
        direct=s.expand(direct).subs(sn**2,1-c*c)
        assert s.cancel(direct-reduced.subs(h,hh))==0
    g=2*v-3*u
    eta=v-2*u
    chi=(3*u-v)*(v-u+12)/2-w
    A=2*c*c+1
    B=8*c**4+4*c**3*h-4*c*c+1
    C=16*c**4+16*c**3*h+4*c*c*h*h-4*c*c-4*c*h-1
    R=-256*A*A*B*B*C
    assert s.expand(R-(4*g*g*eta-chi*chi))==0
    assert s.expand(eta+8*(6*c**4+4*c**3*h-1))==0
    for endpoint in (-1,1):
        assert s.expand(eta.subs(c,endpoint)+8*(5+4*endpoint*h))==0
    assert 5-4>0  # hence eta<0 for c=+/-1 and |h|<=1
    assert s.expand(R-R.subs({c:-c,h:-h},simultaneous=True))==0

    # Interior stationarity, after dividing factors nonzero when R>0,c!=0.
    P=1024*c**9+1408*c**8*h+640*c**7*h**2-224*c**7 \
      +96*c**6*h**3-144*c**6*h+56*c**5*h**2-112*c**5 \
      +32*c**4*h**3-108*c**4*h-40*c**3*h**2+28*c**3 \
      +16*c**2*h+2*c*h**2-h
    Q=64*c**6+64*c**5*h+16*c**4*h**2-32*c**4 \
      -20*c**3*h+6*c**2+2*c*h-1
    assert s.expand(s.diff(R,c)+1024*A*B*P)==0
    assert s.expand(s.diff(R,h)+1024*c*A*A*B*Q)==0
    resultant=256*c**8*(2*c-1)*(2*c+1)*(2*c*c-1)*(2*c*c+1)**2 \
              *(6*c*c-4*c+1)*(6*c*c+4*c+1)*(16*c**4-4*c*c-1)
    assert s.expand(s.resultant(P,Q,h)-resultant)==0
    assert 4**2-4*6<0  # both real quadratics 6c^2 +/- 4c +1 positive

    # c=0: the only stationary point is h=0, with indefinite Hessian.
    assert s.expand(R.subs(c,0))==256
    assert s.expand(s.diff(R,c).subs(c,0))==1024*h
    assert s.det(s.hessian(R,(c,h))).subs({c:0,h:0})==-1024**2

    branches=[(4*c*c-1,h+2*c),(2*c*c-1,h+c),
              (16*c**4-4*c*c-1,h-4*c**3+3*c)]
    for f,relation in branches:
        G=s.groebner([P,Q,f],h,c)
        assert G.reduce(relation)[1]==0
        if s.degree(f,c)==2:
            assert G.reduce(R)[1]==0

    # The only possible positive interior critical branch is a cusp of one
    # deltoid; its outward normal in the other deltoid is unstable upstairs.
    f=16*c**4-4*c*c-1
    hc=4*c**3-3*c
    assert s.rem(s.expand(R.subs(h,hc)),f,c)==450-1100*c*c
    H=s.hessian(R,(c,h))
    restricted=((6480-23040*c*c,2240*c*c-480),
                (2240*c*c-480,80-2240*c*c))
    for i in range(2):
        for j in range(2):
            assert s.rem(s.expand(H[i,j].subs(h,hc)),f,c)==restricted[i][j]
    assert s.rem(s.expand(s.det(H).subs(h,hc)),f,c)==3200000-2560000*c*c
    # Here 3/8<c^2<1/2 since 2<sqrt(5)<3: restricted Hessian is negative.
    assert 2**2<5<3**2
    assert 6480-23040*s.Rational(3,8)<0
    assert 3200000-2560000*s.Rational(1,2)>0
    x,z,b2,y=s.symbols('x z b2 y',real=True)
    uu=(x+z)**2+b2
    vv=(x-z)**2+b2
    ww=2*((x+z)*(x-z)**2-b2*(3*x-z))
    cc=(3*uu-vv)*(vv-uu+12)/2-ww
    RR=4*(2*vv-3*uu)**2*(vv-2*uu)-cc**2
    # U=2exp(it)+exp(-2it), V=3, y=cos(t).  Split the two equal
    # U eigenphases by +/-epsilon: U''(0)=-2exp(it).
    curvature=-2*(y*s.diff(RR,x)+4*(1-y*y)*(1-y)*s.diff(RR,b2))
    curvature=s.expand(curvature.subs(z,3).subs(
        {x:2*y+2*y*y-1,b2:4*(1-y*y)*(1-y)**2}))
    assert s.rem(curvature,4*y*y+6*y+1,y)==660*(46*y+9)
    # y=(-3+sqrt(5))/4, curvature=330(23sqrt(5)-51)>0.
    assert 23**2*5>51**2

    # h=1; h=-1 is obtained by the exact simultaneous sign symmetry above.
    T=4*c**3-2*c+1
    F=32*c**5+4*c**4-4*c**3+4*c*c-4*c+1
    assert s.expand(R.subs(h,1)+256*(2*c-1)*(2*c+1)**5*A*A*T*T)==0
    assert s.expand(s.diff(R,c).subs(h,1)
                    +1024*(2*c+1)**4*(4*c-1)*A*T*F)==0
    # Positive R forces -1/2<c<1/2; neither factor vanishes there.
    assert s.Poly(T,c).count_roots(-s.Rational(1,2),s.Rational(1,2))==0
    assert s.Poly(F,c).count_roots(-s.Rational(1,2),s.Rational(1,2))==0
    assert R.subs({c:s.Rational(1,4),h:1})==s.Rational(1594323,4096)

    # Enumerate all orderings of the repeated even and odd phases and both
    # orientations.  They are exactly the previously certified 18-point orbit.
    canonical=set()
    for sg in (-1,1):
        for ep in set(permutations((-2*sg,sg,sg))):
            for op in set(permutations((2*sg,-sg,-sg))):
                r,t=ep[1:]
                v,w=op[1:]
                total=r+t+v+w
                canonical.add((w-total,r-total,t-total,v-total))
    seed=(1,2,-1,-2)
    orbit={tuple(sum(row[j]*seed[j] for j in range(4)) for row in M)
           for _,M in seed_maps()}
    assert len(canonical)==18
    assert canonical==orbit
    print('PASS: exact double-boundary formula, resultant, all real strata,')
    print('      positive transverse curvature of the spurious critical branch,')
    print('      and equality of the surviving 18 seeds with the exact orbit.')


if __name__=='__main__':
    main()

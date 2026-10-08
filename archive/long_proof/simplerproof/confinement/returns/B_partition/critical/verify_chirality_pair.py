#!/usr/bin/env python3
"""Exact exclusion of tied complementary-pair stationarity at zero chirality."""
import sympy as S


def zero(x):
    assert S.cancel(S.expand(x)) == 0


def primitive(expr,z):
    p=S.Poly(expr,z,domain=S.QQ).clear_denoms()[1].primitive()[1]
    return p if p.LC()>0 else -p


def main():
    # A stationary tied pair in unconstrained (h,B,J) space is impossible.
    h=S.symbols('h')
    C=-h*h+16*h-36
    B=-C*(h+6)/4
    J2=(C*(h+6)**2-120*h*h)/8
    equation=108*h*h+S.diff(C,h)*J2-C*(60*h+B)/2
    zero(equation-(h-6)*(h*h-4*h+36)*(3*h*h-20*h+60)/8)
    assert J2.subs(h,6)==-108
    assert (-4)**2-4*36<0 and (-20)**2-4*3*60<0

    # The J=0 branch.
    y=S.symbols('y')
    Rzero=9*y**3*(4-y)
    zero(S.diff(Rzero,y)-36*y*y*(3-y))
    assert Rzero.subs(y,3)==243

    # Two equal Gram invariants, both signs of J.
    x,v,t,r=S.symbols('x v t r')
    Rp=S.expand(-(t-3)**2*(-t*t+t*x-3*t-x)**2
                *(t*t-2*t*x+x*x-4*x))
    Rm=Rp.subs(t,-t)
    L=(v**3+v**2*x**2+4*v**2*x-12*v**2+2*v*x**3
       -18*v*x+27*v+6*x**3-33*x**2+54*x)
    mean=(-v**4-6*v**3*x**2-4*v**3*x+18*v**3-v**2*x**4
          -20*v**2*x**3+52*v**2*x**2-81*v**2-22*v*x**4
          +112*v*x**3-270*v*x**2+324*v*x-9*x**4+36*x**3)
    zero((Rp+Rm)/2-mean.subs(v,t*t))
    zero(Rp-Rm-8*x*t*L.subs(v,t*t))
    W=S.expand(S.diff(mean,x)*S.diff(L,v)-S.diff(mean,v)*S.diff(L,x))
    A=v**3-3*v*v-5*v-9
    Bv=3*v**3+11*v*v-63*v+81
    Pv=(16*v**11-671*v**10+9938*v**9-55199*v**8+18456*v**7
        +572130*v**6+487116*v**5-5938326*v**4-6365304*v**3
        +15470109*v**2+23702706*v+9585621)
    result=S.resultant(L,W,x)
    zero(result-256*v*(v-9)**3*(v+3)**4*A*Bv*Pv)

    # Every branch is retained. The first nontrivial factor forces r=0.
    Ga=S.groebner([L,W,A,r-mean],x,v,r)
    assert Ga.reduce(r)[1]==0
    # The second factor forces this cubic in the common value.
    Gb=S.groebner([L,W,Bv,r-mean],x,v,r)
    cubic=729*r**3-903276800*r*r+1127734493184*r-406239826673664
    assert Gb.reduce(cubic)[1]==0
    elim=[g for g in Gb if not(g.has(x) or g.has(v))]
    assert len(elim)==1 and primitive(elim[0],r)==primitive(cubic,r)
    # The degree-eleven factor: first reduce the common value modulo the
    # complete exact ideal, then eliminate v. No numerical root matching.
    Gp=S.groebner([L,W,Pv],x,v)
    rem=Gp.reduce(mean)[1]
    assert not rem.has(x)
    Q=(16384*r**11-1299106809*r**10+30774073636619*r**9
       -23327218740105472*r**8+105521919632049192960*r**7
       -21320078876075504959488*r**6+88428776035175751173013504*r**5
       +25439661530693188947749634048*r**4
       -18123923046054001130629691867136*r**3
       +4304489948135647968174930281889792*r**2
       +3445853318497197487557240057445220352*r
       +249880348505486480647134076982865690624)
    eliminated=S.resultant(Pv,r-rem,v)
    assert primitive(eliminated,r)==primitive(Q,r)
    # Uniform rational interval signs throughout [0,26].
    qpoly=S.Poly(Q,r)
    lower=qpoly.nth(0)+sum(qpoly.nth(j)*26**j
                         for j in range(1,12) if qpoly.nth(j)<0)
    assert lower==249561795843048787133836027549064428544>0
    cp=S.Poly(cubic,r)
    upper=cp.nth(0)+sum(cp.nth(j)*26**j
                       for j in range(1,4) if cp.nth(j)>0)
    assert upper==-376918717037976<0
    print('CHIRALITY COMPLEMENTARY-PAIR EXACT PASS')
    print('No tied complementary-pair stationarity at 0 < M <= 26 on zero chirality.')


if __name__=='__main__':
    main()

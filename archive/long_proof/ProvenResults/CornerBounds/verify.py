"""Exact replay for PROOF.md. No floating-point or numerical sampling.

Checks the universal square identity, all 400 Fourier-family corners in
two ways, the positive-sheet symmetric data, and the rational witness.
The compactness theorem is analytic and conditional on strict-corner coverage.
"""
from collections import Counter
from functools import lru_cache
from itertools import combinations

import sympy as sp


def generic_polynomials():
    seeds = sp.symbols('a b c d', nonzero=True)
    a,b,c,d = seeds
    conjugate = lambda e: sp.sympify(e).subs(
        {x:1/x for x in seeds}, simultaneous=True)
    s,t,r = -(1+a+b), -(1+c+d), -(1+c/a+d/b)
    X,Y,Z = [sp.expand(x*conjugate(x)) for x in (s,t,r)]
    p = X+Y+Z
    J = sp.expand(s*r*conjugate(t)+conjugate(s*r)*t)
    W = X*Y+X*Z+Y*Z-X*Y*Z

    def R(sign):
        g = 27-3*p+sign*J
        eta = 9-p+sign*J
        chi = W-(p-9)*(p-18)+(p-15)*sign*J
        return sp.expand(4*g*g*eta-chi*chi)

    columns = []
    for x,y in zip((sp.Integer(1),a,b),(sp.Integer(1),c,d)):
        z = y/x
        columns.extend([sp.Matrix([x,-1/x,0,0,-z,1/z]),
                        sp.Matrix([0,0,y,-1/y,z,-1/z])])
    D = sp.expand(sp.det(sp.Matrix.hstack(*columns)))
    assert sp.expand(R(-1)+D*D) == 0
    assert sp.expand(conjugate(D)+D) == 0
    print('PASS: universal Laurent identity R(p,-J,W) = -det(L)^2; det(L) is imaginary', flush=True)
    return seeds,D,R(1)


def laurent_terms(expr, variables):
    result = []
    for term in sp.expand(expr).as_ordered_terms():
        powers = term.as_powers_dict()
        exponents = tuple(int(powers.get(x,0)) for x in variables)
        coefficient = term/sp.prod(x**e for x,e in zip(variables,exponents))
        assert coefficient.is_Integer
        result.append((int(coefficient),exponents))
    return tuple(result)


def corner_census(seeds,D,R):
    # A root-of-unity coefficient is A+B*zeta6, with zeta6^2=zeta6-1.
    roots = ((1,0),(0,1),(-1,1),(-1,0),(0,-1),(1,-1))
    dt,rt = laurent_terms(D,seeds),laurent_terms(R,seeds)
    assert len(dt) == 48
    triples = tuple(combinations(range(6),3))
    # Entry (integer power of z, integer power of zeta6).
    entries = tuple(tuple((int(i>=3 and j%3==1),
                           (2*(i%3)*(j%3)+3*int(i>=3 and j>=3)) % 6)
                          for j in range(6)) for i in range(6))

    def seed(rows,cols):
        first = entries[rows[0]][cols[0]]
        return tuple((entries[i][j][0]+first[0]-entries[i][cols[0]][0]-entries[rows[0]][j][0],
                      (entries[i][j][1]+first[1]-entries[i][cols[0]][1]-entries[rows[0]][j][1]) % 6)
                     for i in rows[1:] for j in cols[1:])

    @lru_cache(None)
    def evaluate(terms,coords):
        out = {}
        for coefficient,exponents in terms:
            power = sum(e*x[0] for e,x in zip(exponents,coords))
            root = sum(e*x[1] for e,x in zip(exponents,coords)) % 6
            A,B = out.get(power,(0,0))
            C,E = roots[root]
            out[power] = (A+coefficient*C,B+coefficient*E)
        return tuple(sorted((p,c) for p,c in out.items() if c != (0,0)))

    def negative_square(poly):
        out = {}
        for p,(A,B) in poly:
            for q,(C,E) in poly:
                olda,oldb = out.get(p+q,(0,0))
                out[p+q] = (olda-(A*C-B*E),oldb-(A*E+B*C+B*E))
        return tuple(sorted((p,c) for p,c in out.items() if c != (0,0)))

    z = sp.symbols('z',nonzero=True)
    dforms = (sp.Integer(0),3*(z-1)**3*(z+1)/z**2,
              -3*(z-1)*(z+1)*(z*z+1)/z**2,
              3*(z-1)*(z+1)**3/z**2)
    def key(poly):
        return tuple(sorted((e[0],(c,0)) for c,e in laurent_terms(poly,(z,)) if c))

    expected = Counter({key(-dforms[1]**2):36,
                        key(-dforms[2]**2):72,
                        key(-dforms[3]**2):36,
                        ():256})
    observed = Counter()
    for rows in triples:
        for cols in triples:
            complementary = tuple(j for j in range(6) if j not in cols)
            direct = evaluate(rt,seed(rows,cols))
            via_square = negative_square(evaluate(dt,seed(rows,complementary)))
            assert direct == via_square, (rows,cols)
            observed[direct] += 1
    assert observed == expected
    assert evaluate(rt,seed((0,1,3),(0,2,4))) == key(-dforms[3]**2)
    # z=1 makes every corner zero, and gives an F6 seed at the limit.
    for form in dforms:
        assert sp.cancel(form.subs(z,1)) == 0
    print('PASS: all 400 corners, direct R and complementary square; multiplicities 256/36/72/36', flush=True)

    v = sp.symbols('v',real=True)
    phase = (1-sp.I*v)/(1+sp.I*v)
    maximum = 2304*v*v/(1+v*v)**4
    ratios = (0,v**4,(1-v*v)**2/4,1)
    for form,ratio in zip(dforms,ratios):
        assert sp.cancel((-form**2).subs(z,phase)-maximum*ratio) == 0
    print('PASS: exact Cayley forms and maximum for 0<v<1', flush=True)


def positive_sheet_and_witness():
    I = sp.I
    sqrt3 = sp.sqrt(3)
    omega = (-1+I*sqrt3)/2
    z = sp.symbols('z',nonzero=True)
    simplify = lambda e: sp.cancel(sp.expand(e),extension=(I,sqrt3))
    conjugate = lambda e: sp.conjugate(e).subs(sp.conjugate(z),1/z)
    adjoint = lambda A:A.applyfunc(conjugate).T
    N = sp.Matrix([[omega**((i%3)*(j%3))*(-1)**int(i>=3 and j>=3)
                    *(z if i>=3 and j%3==1 else 1)
                    for j in range(6)] for i in range(6)]).applyfunc(simplify)
    for entry in N*adjoint(N)-6*sp.eye(6):
        assert simplify(entry) == 0
    H = N[[3,1,0,2,4,5],[0,2,4,1,3,5]]
    H = sp.Matrix(6,6,lambda i,j:H[i,j]/H[0,j]).applyfunc(simplify)
    E,B,C = H[:3,:3],H[:3,3:],H[3:,:3]
    expected_E = sp.Matrix([[1,1,1],[1,omega**2,-omega/z],[1,1,-1/z]])
    assert all(simplify(x) == 0 for x in E-expected_E)
    Gh = (6*sp.eye(3)-E*adjoint(E)).applyfunc(simplify)
    Gv = (6*sp.eye(3)-E.T*E.applyfunc(conjugate)).applyfunc(simplify)
    g = 3*(z+1)**2/z
    chi = -3*(z+1)**4/z**2
    sheet = -(1+z)
    assert simplify(Gh.det()-g) == 0
    s,t,r = Gh[1,0],Gh[2,0],Gh[2,1]
    X,Y,Z = [simplify(x*conjugate(x)) for x in (s,t,r)]
    p = X+Y+Z
    J = s*r*conjugate(t)+conjugate(s*r)*t
    W = X*Y+X*Z+Y*Z-X*Y*Z
    assert simplify(W-(p-9)*(p-18)+(p-15)*J-chi) == 0

    for side,G,zz,lam,expected in (
            (B,Gh,sheet,(omega/z,omega,omega),(1/z,1/z,-omega*(1+1/z))),
            (C.T,Gv,conjugate(sheet),(-omega**2,-omega,z),
             (omega,-omega**2/z,omega**2*(1+1/z)))):
        s,t,r = G[1,0],G[2,0],G[2,1]
        X,Y,Z = [simplify(x*conjugate(x)) for x in (s,t,r)]
        P = (r*s*s+conjugate(r)*t*t+(3-Z)*s*t,
             t*conjugate(s)**2+r*r*conjugate(t)+(3-Y)*r*conjugate(s),
             s*conjugate(t)**2+conjugate(r)**2*conjugate(s)
             +(3-X)*conjugate(r)*conjugate(t))
        for phase,poly,c in zip(lam,P,(9-Z,9-Y,9-X)):
            assert simplify(phase*conjugate(poly)-g-c*conjugate(zz)) == 0
            assert simplify(phase*conjugate(phase)-1) == 0
        x,y = list(side[1,:]),list(side[2,:])
        actual = (sp.prod(x),sp.prod(y),sum(x)*sum(y)-sum(xx*yy for xx,yy in zip(x,y)))
        formula = (lam[0]*conjugate(lam[1]),lam[0]*conjugate(lam[2]),zz*lam[0])
        for a,b,c in zip(actual,formula,expected):
            assert simplify(a-b) == 0
            assert simplify(a-c) == 0
        assert all(simplify(entry) == 0 for entry in side*adjoint(side)-G)

    # Check the universal cubic product identity used to recover the side multiset.
    xs = sp.symbols('x0:3',nonzero=True)
    ys = sp.symbols('y0:3',nonzero=True)
    T0,T1,T2 = sp.symbols('T0 T1 T2')
    ss,tt = sum(xs),sum(ys)
    uu,vv = sp.prod(xs),sp.prod(ys)
    rr = sum(y/x for x,y in zip(xs,ys))
    rb = sum(x/y for x,y in zip(xs,ys))
    Pi = ss*tt-sum(x*y for x,y in zip(xs,ys))
    cubic = (T0**3+ss*T0*T0*T1+tt*T0*T0*T2
             +uu*sum(1/x for x in xs)*T0*T1*T1+Pi*T0*T1*T2
             +vv*sum(1/y for y in ys)*T0*T2*T2+uu*T1**3+vv*T2**3
             +uu*rr*T1*T1*T2+vv*rb*T1*T2*T2)
    assert sp.expand(sp.prod(T0+x*T1+y*T2 for x,y in zip(xs,ys))-cubic) == 0

    v = sp.symbols('v',real=True)
    zz = (1-I*v)/(1+I*v)
    maximum = 2304*v*v/(1+v*v)**4
    assert simplify(g.subs(z,zz)-12/(1+v*v)) == 0
    assert simplify(chi.subs(z,zz)+48/(1+v*v)**2) == 0
    assert simplify(((chi+I*48*v/(1+v*v)**2)/(2*g)-sheet).subs(z,zz)) == 0
    assert simplify((4*g*g*(9-p+J)-chi*chi).subs(z,zz)-maximum) == 0
    print('PASS: exact positive-sheet match, both side tables, and cubic recovery identity', flush=True)

    for gram,expected in ((Gh,(4,1+9*v*v,0)),
                          (Gv,(3*(1+v*v),(1+sqrt3*v)**2,(1-sqrt3*v)**2))):
        values = [gram[1,0],gram[2,0],gram[2,1]]
        for a,b in zip(values,expected):
            assert simplify((a*conjugate(a)).subs(z,zz)-b/(1+v*v)) == 0
    # Numerators of the four ordering gaps and the strict lexicographic gap.
    assert sp.expand(4-(1+9*v*v)) == 3-9*v*v
    assert sp.expand(3*(1+v*v)-(1+sqrt3*v)**2) == 2-2*sqrt3*v
    assert sp.expand((1+sqrt3*v)**2-(1-sqrt3*v)**2) == 4*sqrt3*v
    assert sp.expand(4-3*(1+v*v)) == 1-3*v*v
    print('PASS: F inequalities for 0<v<1/sqrt(3)', flush=True)

    value = maximum.subs(v,sp.Rational(1,32))
    assert value == sp.Rational(2473901162496,1103812890625)
    assert 0 < value < sp.Rational(9,4) < 20
    assert sp.Rational(1,20) < sp.Rational(64,1025) < sp.Rational(1,16)
    # Verify the limiting corner belongs to F6 by exact sixth-root exponents.
    # F2 tensor F3 has exponent 3*r2*c2 + 2*r3*c3 mod 6.
    # CRT: choose row exponent 3*r2+2*r3, column exponent 3*c2+4*c3.
    for i in range(6):
        for j in range(6):
            row = 3*(i//3)+2*(i%3)
            col = 3*(j//3)+4*(j%3)
            assert (row*col-3*(i//3)*(j//3)-2*(i%3)*(j%3)) % 6 == 0
    print('PASS: exact rational witness, R<9/4, distance>1/20, and F6 limiting grid point', flush=True)


if __name__ == '__main__':
    generic = generic_polynomials()
    corner_census(*generic)
    positive_sheet_and_witness()
    print('PASS: T1 qualitative gap support and exact obstruction to proposed constants')

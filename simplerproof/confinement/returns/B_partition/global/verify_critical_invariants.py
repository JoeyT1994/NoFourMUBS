#!/usr/bin/env python3
"""Exact polynomial identities for the global regular critical-point reduction.

Requires SymPy.  No floating-point arithmetic is used for any decision.
"""
from itertools import permutations
import sympy as s


def main():
    X, Y, Z, J = s.symbols('X Y Z J')
    variables = (X, Y, Z, J)
    p = X + Y + Z
    g = 27 - 3*p + J
    eta = 9 - p + J
    W = X*Y + X*Z + Y*Z - X*Y*Z
    chi = W - (p-9)*(p-18) + (p-15)*J
    R = s.expand(4*g*g*eta - chi*chi)
    grad = [s.diff(R, v) for v in variables]
    assert s.expand(grad[0] - grad[1] + 2*chi*(Y-X)*(1-Z)) == 0
    assert s.expand(grad[0] + 4*g*(g+6*eta) + 2*chi*s.diff(chi, X)) == 0
    assert s.expand(grad[3] - 4*g*(g+2*eta) + 2*chi*(p-15)) == 0
    x, j = s.symbols('x j')
    equal = {X:x, Y:x, Z:x, J:j}
    A = -j + x*x - 3*x
    B = -4*j + x*x + 18*x - 27
    f = -3*j*x+j+x**3+13*x*x-45*x+27
    h = -2*j+x*x+4*x-9
    assert s.expand(R.subs(equal) + A*A*B) == 0
    assert s.expand(grad[0].subs(equal) + 2*A*f) == 0
    assert s.expand(grad[3].subs(equal) - 6*A*h) == 0
    j_equal = (x*x+4*x-9)/2
    assert s.expand(f.subs(j,j_equal) + (x-1)*(x-5)*(x-9)/2) == 0
    values_equal = [s.simplify(R.subs(equal).subs(j,j_equal).subs(x,k))
                    for k in (1,5,9)]
    assert values_equal == [0,-1024,0]
    two = {X:1, Y:1, Z:x, J:j}
    A = -j+x-3
    B = -4*j+x*x-6*x-3
    f = -j*x-j+2*x*x-12*x+6
    h = -6*j+x*x-4*x-9
    assert s.expand(R.subs(two) + A*A*B) == 0
    for i in range(3):
        assert s.expand(grad[i].subs(two) + 2*A*f) == 0
    assert s.expand(grad[3].subs(two) - 2*A*h) == 0
    j_two = (x*x-4*x-9)/6
    assert s.expand(f.subs(j,j_two) + (x-1)*(x-5)*(x-9)/6) == 0
    values_two = [s.simplify(R.subs(two).subs(j,j_two).subs(x,k))
                  for k in (1,5,9)]
    assert values_two == [0,s.Rational(1024,27),0]
    point = {X:1,Y:1,Z:5,J:s.Rational(-2,3)}
    assert all(s.simplify(f.subs(point)) == 0 for f in grad)
    assert s.diff(R,J,2).subs(point) == -32
    assert s.Rational(1024,27) > 26
    print('All positive free-invariant stationary values: 1024/27: PASS')
    print('Every positive free-invariant stationary point has negative J curvature: PASS')

    a,b,c,d = s.symbols('a b c d', nonzero=True)
    seeds = (a,b,c,d)
    def conjugate(f):
        return s.expand(f.xreplace({v:1/v for v in seeds}))
    E = s.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    ss = -(1+a+b)
    tt = -(1+c+d)
    rr = -(1+c/a+d/b)
    XX = s.expand(ss*conjugate(ss))
    YY = s.expand(tt*conjugate(tt))
    ZZ = s.expand(rr*conjugate(rr))
    tau = s.expand(ss*rr*conjugate(tt))
    JJ = s.expand(tau+conjugate(tau))
    permanent = sum(s.prod(E[i,pr[i]] for i in range(3))
                    for pr in permutations(range(3)))
    q = s.expand(permanent*E.det()**2/(a*b*c*d))
    anti_q = s.expand(q-conjugate(q))
    # Four factors of i cancel in the real angular Jacobian determinant.
    jac = s.Matrix([[s.expand(v*s.diff(f,v)) for v in seeds]
                    for f in (XX,YY,ZZ,JJ)])
    det_jac = jac.det(method='domain-ge')
    assert s.cancel(det_jac+(tau-conjugate(tau))*anti_q) == 0
    values = {X:XX,Y:YY,Z:ZZ,J:-JJ}
    assert s.expand(R.subs(values, simultaneous=True)+anti_q**2) == 0
    assert s.expand(4*XX*YY*ZZ-JJ**2+(tau-conjugate(tau))**2) == 0
    print('Exact seed-to-Gram angular Jacobian identity: PASS')
    print('Squared Jacobian = (4XYZ-J^2) R(X,Y,Z,-J): PASS')
    u = 9-p
    competition = 4*J*(2*J*J+(u+6)*W-u*(u-6)*(u-9))
    assert s.expand(R-R.subs(J,-J)-competition) == 0
    print('Seed-only complementary-corner competition identity: PASS')
    print('REGULAR CRITICAL INVARIANTS VERIFICATION PASS')


if __name__ == '__main__':
    main()

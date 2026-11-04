#!/usr/bin/env python3
"""Exact identities for ALL_EQUAL_POLE.md; no floating-point decisions."""
import sympy as s


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def main():
    X, Y, Z, J, q = s.symbols("X Y Z J q")
    p = X+Y+Z
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g, eta = 27-3*p+J, 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    R = 4*g*g*eta-chi*chi
    sub = {X: q, Y: q, Z: q, J: 3*q-q*q}
    A = -4*q*(q-3)*(4*q**3+3*q**2-42*q+27)
    B = 12*q*(q-3)*(3*q*q-2*q-9)
    for var in (X, Y, Z):
        require(s.expand(s.diff(R, var).subs(sub)-A) == 0, "R_X=R_Y=R_Z")
    require(s.expand(s.diff(R, J).subs(sub)-B) == 0, "R_J")
    require(s.expand(R.subs(sub)+4*q*q*(q-3)**2*(q+3)*(5*q-9)) == 0,
            "pole value of R")
    require(s.expand(27-9*q+q*(q-3)-(q-3)*(q-9)) == 0, "Gram determinant")
    require(s.expand(q**3-q*q*(q-3)**2/4+q*q*(q-1)*(q-9)/4) == 0,
            "nonzero imaginary cube")
    require((3*q*q-2*q-9).subs(q, s.Rational(9, 5)) == -s.Rational(72, 25),
            "B nonvanishing endpoint")
    require(s.diff(3*q*q-2*q-9, q).subs(q, 1) > 0, "B polynomial increasing")

    c, cb, t = s.symbols("c cb t")
    discr = s.discriminant(t**3-c*t*t+cb*t-1, t)
    require(s.expand(discr-((c*cb)**2+18*c*cb-27-4*(c**3+cb**3))) == 0,
            "unit-root cubic discriminant")
    require(s.expand(27-18*q+4*q*(q-3)-q*q-3*(q-1)*(q-9)) == 0,
            "deltoid contradiction factor")

    P = s.Matrix([[0, 0, 1], [1, 0, 0], [0, 1, 0]])
    aa, bb = s.symbols("A B", real=True)
    C = c*P+cb*P**2
    kappa, kappab = aa*c-bb*cb**2, aa*cb-bb*c**2
    require(s.expand(P**3-s.eye(3)) == s.zeros(3), "cyclic shift cube")
    require(all(s.expand(z) == 0 for z in
                aa*C-bb*C*C-(kappa*P+kappab*P**2-2*bb*c*cb*s.eye(3))),
            "circulant coupling identity")
    u = s.symbols("u", nonzero=True)
    v, vb = s.Matrix([1, 1/u, 1/u**2]), s.Matrix([1, u, u**2])
    V = v*vb.T
    orbit_sum = sum((P**j*V*P**(-j) for j in range(3)), s.zeros(3))
    require(all(s.cancel(z) == 0 for z in P*orbit_sum-orbit_sum*P),
            "complete mixed-projector orbit is circulant")
    require(s.cancel((v[2]/v[0])*u**2) == 1, "exceptional edge ratio")
    require(s.cancel(v[0]/v[1]-u) == 0 and s.cancel(v[1]/v[2]-u) == 0,
            "repeated edge ratios")

    a = s.symbols("a", nonzero=True)
    b = -(a+2)/(2*a+1)
    conj = lambda expr: s.cancel(expr.xreplace({a: 1/a}))
    require(s.cancel(b*conj(b)-1) == 0, "physical-pole b is unit")
    ss = 1+a+b
    require(s.cancel(ss+1+2*a*b) == 0, "physical-pole sum relation")
    qfamily = s.cancel(ss*conj(ss))
    Jfamily = s.cancel(-qfamily*(ss+conj(ss)))
    require(s.cancel(Jfamily-qfamily*(qfamily-3)) == 0, "physical-pole invariant")
    aref = (3+4*s.I)/5
    require(s.simplify(b.subs(a, aref)-(-35+12*s.I)/37) == 0, "rational witness b")
    qref = s.simplify(qfamily.subs(a, aref))
    require(qref == s.Rational(313, 185), "rational witness q")
    require(1 < qref < s.Rational(9, 5), "witness in positive pole interval")
    require(-4*qref**2*(qref-3)**2*(qref+3)*(5*qref-9) > 0,
            "physical witness has positive R")

    z = s.symbols("z", nonzero=True)
    Ec = s.Matrix([[1, 1, 1], [1, 1, -z], [1, -z, 1]])
    conjugate_z = lambda M: M.xreplace({z: 1/z})
    Gc = 6*s.eye(3)-Ec*conjugate_z(Ec.T)
    sc, tc, rc = Gc[1, 0], Gc[2, 0], Gc[2, 1]
    Xc, Yc, Zc = (w*conjugate_z(w) for w in (sc, tc, rc))
    pc = Xc+Yc+Zc
    Jc = sc*rc*conjugate_z(tc)+conjugate_z(sc*rc)*tc
    Wc = Xc*Yc+Xc*Zc+Yc*Zc-Xc*Yc*Zc
    gc, etac = 27-3*pc+Jc, 9-pc+Jc
    chic = Wc-(pc-9)*(pc-18)+(pc-15)*Jc
    Rc = s.factor(4*gc*gc*etac-chic*chic)
    require(Rc.subs(z, 1) == 256, "q=1 endpoint value")
    second = s.simplify(-z*s.diff(z*s.diff(Rc, z), z)).subs(z, 1)
    require(second == 512, "q=1 endpoint positive second variation")
    print("PASS: all-equal pole derivative, triangle-coupling and deltoid identities.")
    print("Conclusion with the accompanying analytic argument: no R-critical point for 1<q<9/5.")


if __name__ == "__main__":
    main()

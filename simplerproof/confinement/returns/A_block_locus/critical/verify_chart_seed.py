#!/usr/bin/env python3
"""Exact scoped audit of one R=243 chart seed; no low-cutoff coverage claim."""

import sympy as s


def clean(x):
    return s.simplify(s.expand_complex(x))


def abs2(x):
    return clean(x*s.conjugate(x))


def verify():
    w = (-1+s.I*s.sqrt(3))/2
    E = s.Matrix([[1, 1, 1], [1, 1, w**2], [1, w, w**2]])
    E = E.applyfunc(clean)
    G = (6*s.eye(3)-E*E.conjugate().T).applyfunc(clean)
    S, T, Rg = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = map(abs2, (S, T, Rg))
    p = X+Y+Z
    J = clean(S*Rg*s.conjugate(T)+s.conjugate(S*Rg*s.conjugate(T)))
    g = 27-3*p+J
    eta = 9-p+J
    W = X*Y+X*Z+Y*Z-X*Y*Z
    chi = W-(p-9)*(p-18)+(p-15)*J
    disc = 4*g*g*eta-chi*chi
    assert (X, Y, Z, p, J, g, eta, chi, disc) == (3, 0, 3, 6, 0, 9, 3, -27, 243)
    z = clean((chi+s.I*s.sqrt(disc))/(2*g))
    ps = [
        Rg*S*S+s.conjugate(Rg)*T*T+(3-Z)*S*T,
        T*s.conjugate(S)**2+Rg*Rg*s.conjugate(T)+(3-Y)*Rg*s.conjugate(S),
        S*s.conjugate(T)**2+s.conjugate(Rg)**2*s.conjugate(S)+(3-X)*s.conjugate(Rg)*s.conjugate(T)
    ]
    ps = list(map(clean, ps))
    cs = [9-Z, 9-Y, 9-X]
    lam = [clean(ps[j]*(g+cs[j]*s.conjugate(z))/abs2(ps[j])) for j in range(3)]
    u = clean(lam[0]*s.conjugate(lam[1]))
    mu, nu = S/3, T/3
    n = 1-abs2(mu)
    k = clean(Rg/3-nu*s.conjugate(mu))
    alpha = clean(mu*mu-u*s.conjugate(mu))
    gamma = clean(2*mu*nu-z*lam[0]/3)
    delta_squared = clean(g/s.Integer(27)*lam[0]*s.conjugate(lam[1])*s.conjugate(lam[2]))
    delta = s.Rational(1, 2)+s.I*s.sqrt(3)/6
    assert clean(delta*delta-delta_squared) == 0
    dF = clean(27/g*(n*gamma-2*alpha*k)*s.conjugate(delta))
    assert dF == 0
    assert all(abs2(v)>0 for v in ps)
    assert g>0 and disc>0 and n>0

    # An exact Tao matrix containing the displayed corner.
    exponents = s.Matrix([
        [0,0,0,0,0,0], [0,0,1,1,2,2], [0,1,0,2,2,1],
        [0,1,2,0,1,2], [0,2,2,1,0,1], [0,2,1,2,1,0]
    ])
    tao = exponents.applyfunc(lambda k: clean(w**k))
    assert (tao*tao.conjugate().T-6*s.eye(6)).applyfunc(clean) == s.zeros(6)
    assert tao.extract([0,1,2], [0,1,4]) == E
    print('Exact Tao corner: R=243, g=9, internal dF=0')
    print('CHART SEED EXACT VERIFICATION PASS')


if __name__ == '__main__':
    verify()

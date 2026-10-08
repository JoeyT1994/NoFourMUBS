#!/usr/bin/env python3
"""Exact checks accompanying QUOTIENT_COVERAGE.md.

Acceptance is symbolic/integer/rational only. This does NOT certify Claim A,
produce any actual atlas Records, or prove any quartet exclusion.
"""
from __future__ import annotations

import itertools
import json
from pathlib import Path

import sympy as s

ROOT = Path(__file__).resolve().parent


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def dephase(E):
    return tuple(E[i][j] + E[0][0] - E[i][0] - E[0][j]
                 for i, j in ((1, 1), (1, 2), (2, 1), (2, 2)))


def seed_orbit():
    E = [[0, 0, 0], [0, 1, 2], [0, -1, -2]]
    orbit = {}
    cosets = {(tr, cj): set() for tr in (0, 1) for cj in (0, 1)}
    for pr in itertools.permutations(range(3)):
        for pc in itertools.permutations(range(3)):
            F = [[E[i][j] for j in pc] for i in pr]
            orbit.setdefault(dephase(F), {"rows": list(pr), "columns": list(pc)})
            for tr in (0, 1):
                T = list(map(list, zip(*F))) if tr else F
                for cj in (0, 1):
                    cosets[tr, cj].add(tuple((-1)**cj * k for k in dephase(T)))
    require(len(orbit) == 18, "row/column orbit is not 18")
    for key, value in cosets.items():
        require(value == set(orbit), f"coset {key} differs from row/column orbit")
    require(dephase([E[0], E[2], E[1]]) == (-1, -2, 1, 2),
            "row swap does not realize conjugation")
    out = [{"coefficients_of_alpha": list(k), **orbit[k]} for k in sorted(orbit)]
    recorded = json.loads((ROOT / "orbit18.json").read_text())
    require(out == recorded, "stored orbit witnesses differ from exact enumeration")
    # If alpha/pi were rational, z=e^{i alpha} would be a root of unity;
    # z+z^{-1}=1/2 would then be a rational algebraic integer, a contradiction.
    require(s.Rational(1, 2).q != 1, "rational algebraic-integer obstruction")
    return len(orbit)


def branch_algebra():
    mu, mub, u, ub, q, qb = s.symbols("mu mub u ub q qb", nonzero=True)
    sig = u + mu*q
    sigb = ub + mub*qb
    e = mu*(1 + q*qb) + u*qb + q*mub
    eb = mub*(1 + q*qb) + ub*q + qb*mu
    identity = (u + mu/qb)*qb - q*q*sigb
    require(s.expand(identity - (e - q*eb)) == 0,
            "sigma reflection identity")

    # Once e=eb=0, the reflected sigma is q^2 sigb/qb. Verify the
    # remaining identities rationally, without any division by dF.
    sigma, sigmab, rho, nu, k, delta, n = s.symbols(
        "sigma sigmab rho nu k delta n", nonzero=True)
    cp, cm = (k - delta*qb)/n, (k*q + delta)/n
    cpp, cmp = (k + delta/q)/n, (k/qb - delta)/n
    require(s.cancel(cpp - cm/q) == 0, "reflected cplus")
    require(s.cancel(cmp - cp/qb) == 0, "reflected cminus")
    sp, sbp = q*q*sigmab/qb, qb*qb*sigma/q
    M = s.Matrix([[1, 0, 0], [mu, sigma, q*sigmab],
                  [nu, cp*sigma, cm*sigmab]])
    Mp = s.Matrix([[1, 0, 0], [mu, sp, sbp/qb],
                   [nu, cpp*sp, cmp*sbp]])
    J = s.Matrix([[1, 0, 0], [0, 0, 1], [0, 1, 0]])
    tau = q/qb
    require(all(s.cancel(z) == 0 for z in Mp - M*J*s.diag(1, tau, 1/tau)),
            "matrix reflection identity")
    require(s.cancel(sp*sp/(rho*q*qb) - tau**3*sigmab**2/rho) == 0,
            "xi reflection identity")
    w = s.symbols("w", nonzero=True)
    phase = lambda x: s.diag(1, 1/x, x)
    require(all(s.cancel(z) == 0 for z in
                J*s.diag(1, tau, 1/tau)*phase(tau/w) - phase(w)*J),
            "cube root absorbs reflection phase")

    om = s.symbols("omega")
    reduce3 = lambda x: s.rem(s.expand(x), om**2 + om + 1, om)
    F = s.Matrix([[om**(j*k) for k in range(3)] for j in range(3)])
    require(all(reduce3(z) == 0 for z in J*F - F*J), "Fourier reflection")
    for b in range(3):
        for j in range(3):
            for k in range(3):
                # Replacing w by omega^b w shifts side column j to j-b.
                phase_exponent = (0, -b, b)[k]
                lhs = om**((phase_exponent + k*j) % 3)
                rhs = om**((k*(j-b)) % 3)
                require(reduce3(lhs-rhs) == 0, "cube-root column cycle")


def invariant_algebra():
    x = s.Matrix(3, 3, s.symbols("x0:9"))
    determinant = x.det()
    permanent = sum(s.prod(x[i, p[i]] for i in range(3))
                    for p in itertools.permutations(range(3)))
    product = s.prod(x)
    for pr in itertools.permutations(range(3)):
        for pc in itertools.permutations(range(3)):
            y = x.extract(pr, pc)
            yd = y.det()
            yp = sum(s.prod(y[i, p[i]] for i in range(3))
                     for p in itertools.permutations(range(3)))
            # Squaring avoids any convention on permutation-matrix action.
            require(s.expand(yd**2 - determinant**2) == 0, "determinant square")
            require(s.expand(yp - permanent) == 0, "permanent permutation")
            require(s.expand(s.prod(y) - product) == 0, "entry product permutation")
    require(s.expand(x.T.det() - determinant) == 0, "transpose determinant")
    yt = x.T
    require(s.expand(sum(s.prod(yt[i, p[i]] for i in range(3))
                         for p in itertools.permutations(range(3))) - permanent) == 0,
            "transpose permanent")
    # Row/column phases with total product t multiply det and perm by t,
    # the product of all nine entries by t^3, and leave |det|^2 unchanged.
    r, c = s.symbols("r0:3"), s.symbols("c0:3")
    y = s.diag(*r)*x*s.diag(*c)
    t = s.prod(r)*s.prod(c)
    require(s.expand(y.det() - t*determinant) == 0, "phase determinant")
    require(s.expand(sum(s.prod(y[i, p[i]] for i in range(3))
                         for p in itertools.permutations(range(3))) - t*permanent) == 0,
            "phase permanent")
    require(s.expand(s.prod(y) - t**3*product) == 0, "phase entry product")


def exceptional_chart():
    omega = (-1 + s.sqrt(3)*s.I)/2
    a, b, c, d = omega, s.conjugate(omega), s.I, (3 + 4*s.I)/5
    E = s.Matrix([[1, 1, 1], [1, a, b], [1, c, d]])
    G = (6*s.eye(3) - E*E.adjoint()).applyfunc(s.simplify)
    ss, tt, rr = G[1, 0], G[2, 0], G[2, 1]
    norm = lambda z: s.simplify(z*s.conjugate(z))
    X, Y, Z = map(norm, (ss, tt, rr))
    p = X+Y+Z
    J = s.simplify(ss*rr*s.conjugate(tt) + s.conjugate(ss*rr*s.conjugate(tt)))
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g = s.simplify(27-3*p+J)
    eta = 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    R = s.simplify(4*g*g*eta-chi*chi)
    require(ss == 0, "exceptional chart must have s=0")
    require(g == (24+6*s.sqrt(3))/5, "exceptional g")
    require(R == s.Rational(5184, 625), "exceptional strict R")


def horizontal_projection():
    # Exact rational horizontal projector and its invariant integer lattice.
    P = s.zeros(36)
    for i, j, k, l in itertools.product(range(6), repeat=4):
        P[6*i+j, 6*k+l] = (int(i == k and j == l)
                           - s.Rational(int(i == k), 6)
                           - s.Rational(int(j == l), 6) + s.Rational(1, 36))
    require(P*P == P and P.T == P, "orthogonal horizontal projector")
    require(P.rank() == 25, "horizontal rank")
    require(all((36*z).q == 1 for z in P), "projected integer lattice discrete")
    return 25


def main():
    n = seed_orbit()
    branch_algebra()
    invariant_algebra()
    exceptional_chart()
    d = horizontal_projection()
    print(f"PASS: exact {n}-point orbit, sheet/branch algebra, exceptional chart, horizontal rank {d}.")
    print("Scope: Tasks B/C algebra only; no global maximum cover or atlas is certified by this script.")


if __name__ == "__main__":
    main()

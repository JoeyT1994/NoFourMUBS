#!/usr/bin/env python3
"""Exact replay of the algebra used in SHEETS_TOPOLOGY.md.

These checks use rational functions modulo the side relation
rho**2 - n*rho + alpha*conjugate(alpha) = 0, followed by exact checks
in Q(omega), including the full Fourier degeneration family used to prove
connectedness. They certify no critical-point cover and no atlas Record.
The source side identities, side exhaustion, and matched flatness remain
the explicitly permitted MC inputs.
"""

import sys
import sympy as sp

if not __debug__:
    raise SystemExit("FAIL: optimized Python execution is not permitted for this verifier.")


def main():
    mu, mub, unit, rho, kval, delta, nu = sp.symbols(
        "mu mub unit rho kval delta nu"
    )
    n = 1 - mu * mub
    alpha = mu**2 - unit * mub
    alphab = mub**2 - mu / unit
    relation = rho**2 - n * rho + alpha * alphab
    domain = sp.QQ.frac_field(mu, mub, unit, kval, delta, nu)
    relation_poly = sp.Poly(relation, rho, domain=domain)
    checked = []

    def side_identity(label, expr):
        numerator, _ = sp.cancel(expr).as_numer_denom()
        remainder = sp.Poly(numerator, rho, domain=domain).rem(relation_poly)
        if not remainder.is_zero:
            raise AssertionError(f"{label}: nonzero remainder {remainder.as_expr()}")
        checked.append(label)

    q, qb = alpha / rho, alphab / rho
    sigma, sigmab = unit + mu * q, 1 / unit + mub * qb
    rhop = n - rho
    qp, qpb = alpha / rhop, alphab / rhop
    sigmap, sigmapb = unit + mu * qp, 1 / unit + mub * qpb
    phase, phaseb = q / qb, qb / q
    cp, cm = (kval - delta * qb) / n, (kval * q + delta) / n
    cpp, cmp = (kval + delta * qpb) / n, (kval * qp - delta) / n

    side_identity("rho(1+q qbar)=n", rho * (1 + q * qb) - n)
    side_identity("flatness identity", mu * (1 + q * qb) + unit * qb + q * mub)
    side_identity("conjugate flatness identity", mub + mu * qb + q * sigmab)
    side_identity("sigma sigmabar=rho", sigma * sigmab - rho)
    side_identity("rho'=rho q qbar", rhop - rho * q * qb)
    side_identity("q'=1/qbar", qp - 1 / qb)
    side_identity("qbar'=1/q", qpb - 1 / q)
    side_identity("sigma'=q^2 sigmabar/qbar", sigmap - q**2 * sigmab / qb)
    side_identity("cplus'=cminus/q", cpp - cm / q)
    side_identity("cminus'=cplus/qbar", cmp - cp / qb)
    side_identity("xi'=phase^3 conj(xi)", sigmap**2 / rhop - phase**3 * sigmab**2 / rho)

    matrix = sp.Matrix([
        [1, 0, 0],
        [mu, sigma, q * sigmab],
        [nu, cp * sigma, cm * sigmab],
    ])
    matrixp = sp.Matrix([
        [1, 0, 0],
        [mu, sigmap, qp * sigmapb],
        [nu, cpp * sigmap, cmp * sigmapb],
    ])
    reflection = sp.Matrix([[1, 0, 0], [0, 0, 1], [0, 1, 0]])
    predicted = matrix * reflection * sp.diag(1, phase, phaseb)
    for i in range(3):
        for j in range(3):
            side_identity(f"matrix reflection [{i},{j}]", matrixp[i, j] - predicted[i, j])

    omega, w, t, a0, a1, a2 = sp.symbols("omega w t a0 a1 a2")
    fourier_domain = sp.QQ.frac_field(w, t, a0, a1, a2)
    cubic_poly = sp.Poly(omega**2 + omega + 1, omega, domain=fourier_domain)

    def fourier_identity(label, expr):
        numerator, _ = sp.cancel(expr).as_numer_denom()
        remainder = sp.Poly(numerator, omega, domain=fourier_domain).rem(cubic_poly)
        if not remainder.is_zero:
            raise AssertionError(f"{label}: {remainder.as_expr()}")
        checked.append(label)

    def side_column(j):
        return a0 + a1 / w * omega ** (j % 3) + a2 * w * omega ** ((-j) % 3)

    for b in range(3):
        for j in range(3):
            wp = omega**b * w
            cycled = a0 + a1 / wp * omega**j + a2 * wp * omega ** ((-j) % 3)
            fourier_identity(f"cube root cycle b={b},j={j}", cycled - side_column(j - b))
            wp = omega**b * t / w
            reflected = a0 + a2 * t / wp * omega**j + a1 / t * wp * omega ** ((-j) % 3)
            fourier_identity(f"root reflection b={b},j={j}", reflected - side_column(b - j))

    # The maximum-frame identity needs no equation for the value of alpha.
    x = sp.symbols("x", nonzero=True)
    corner = sp.Matrix([[1, 1, 1], [1, x, x**2], [1, 1 / x, 1 / x**2]])
    corner_conjugate = corner.subs(x, 1 / x)
    swapped = corner[[0, 2, 1], :]
    if corner_conjugate != swapped:
        raise AssertionError("maximum corner conjugation is not the stated row swap")
    checked.append("maximum-frame conjugation is a row swap")
    reordered = corner[[2, 0, 1], :][:, [1, 2, 0]]
    redephased = sp.Matrix(3, 3, lambda i, j: sp.cancel(
        reordered[i, j] * reordered[0, 0] / (reordered[i, 0] * reordered[0, j])
    ))
    if redephased != corner.T:
        raise AssertionError("maximum-frame transpose is not the stated row/column reordering")
    checked.append("maximum-frame transpose is a row/column reordering")

    # A strict seed where reversing the selected auxiliary sign is undefined.
    om = (-1 + sp.I * sp.sqrt(3)) / 2
    seeds = [om, om**2, sp.I, (3 + 4 * sp.I) / 5]
    a, b, c, d = seeds
    corner0 = sp.Matrix([[1, 1, 1], [1, a, b], [1, c, d]])
    gram = sp.simplify(6 * sp.eye(3) - corner0 * sp.conjugate(corner0.T))
    s, tt, r = gram[1, 0], gram[2, 0], gram[2, 1]
    X, Y, Z = [sp.simplify(z * sp.conjugate(z)) for z in (s, tt, r)]
    p = sp.simplify(X + Y + Z)
    J = sp.simplify(s * r * sp.conjugate(tt) + sp.conjugate(s * r * sp.conjugate(tt)))
    W = sp.simplify(X * Y + X * Z + Y * Z - X * Y * Z)
    g = sp.simplify(27 - 3 * p + J)
    eta = sp.simplify(9 - p + J)
    chi = sp.simplify(W - (p - 9) * (p - 18) + (p - 15) * J)
    discriminant = sp.simplify(4 * g**2 * eta - chi**2)
    if sp.simplify(s) != 0 or sp.simplify(g - (24 + 6 * sp.sqrt(3)) / 5) != 0:
        raise AssertionError("exceptional strict-seed s or g mismatch")
    if discriminant != sp.Rational(5184, 625):
        raise AssertionError(f"exceptional strict-seed R mismatch: {discriminant}")
    checked.append("exceptional s=0 strict seed, R=5184/625")

    # Exact affine Fourier degeneration. The indeterminate zphase has
    # conjugate 1/zphase, and omega has conjugate omega**2.
    zphase = sp.symbols("zphase", nonzero=True)
    family_domain = sp.QQ.frac_field(zphase)
    family_relation = sp.Poly(omega**2 + omega + 1, omega, domain=family_domain)

    def family_identity(label, expression):
        numerator, _ = sp.cancel(expression).as_numer_denom()
        remainder = sp.Poly(numerator, omega, domain=family_domain).rem(family_relation)
        if not remainder.is_zero:
            raise AssertionError(f"{label}: {remainder.as_expr()}")
        checked.append(label)

    family = sp.Matrix(6, 6, lambda i, j:
        (-1)**((i // 3) * (j // 3))
        * omega**(((i % 3) * (j % 3)) % 3)
        * zphase**((i // 3) * int(j % 3 == 1))
    )
    family_conjugate = family.applyfunc(lambda entry: entry.subs(
        {omega: omega**2, zphase: 1 / zphase}, simultaneous=True
    ))
    gram_residual = family * family_conjugate.T - 6 * sp.eye(6)
    zeta6 = -omega**2
    for i in range(6):
        for j in range(6):
            family_identity(f"Fourier-family flatness [{i},{j}]",
                            family[i, j] * family_conjugate[i, j] - 1)
            family_identity(f"Fourier-family orthogonality [{i},{j}]", gram_residual[i, j])
            row_index = (3 * (i // 3) + 2 * (i % 3)) % 6
            col_index = (3 * (j // 3) + 4 * (j % 3)) % 6
            family_identity(f"Fourier CRT equivalence [{i},{j}]",
                            family[i, j].subs(zphase, 1) - zeta6**(row_index * col_index))
            family_identity(f"Fourier conjugation row permutation [{i},{j}]",
                            zeta6**(5 * i * j) - zeta6**(((-i) % 6) * j))
    cross_ratio = family[0, 0] * family[3, 1] / (family[0, 1] * family[3, 0])
    family_identity("Fourier-family cross ratio equals zphase", cross_ratio - zphase)

    print(f"PASS: {len(checked)} exact branch, seed-frame, and Fourier-family checks.")
    print("Scope: branch identities, maximum-frame sheet reduction, and Fourier degeneration.")
    print("No global critical-point cover or finite atlas is certified by this script.")


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print(f"FAIL: {error}", file=sys.stderr)
        raise

#!/usr/bin/env python3
"""Exact checks for SharpBound.md: the S>=126 SOS and the two-valued 4/17 lemma.

Run with cwd = this folder:  python3 SharpBound.py     (about 3 s)
Exits nonzero on failure; nothing is read or written.
"""
from fractions import Fraction as F
import itertools as it
import json
import sympy as sp
from exact_q import Q, mul, star, abs2, physical


def sos_and_bounds():
    z = [sp.Symbol('x'+str(j), real=True)+sp.I*sp.Symbol('y'+str(j), real=True) for j in range(3)]
    a = {(j, k): sp.Symbol('a'+str(j)+str(k), real=True)+sp.I*sp.Symbol('c'+str(j)+str(k), real=True)
         for j, k in it.combinations(range(3), 2)}
    b = [sp.Symbol('b'+str(j), real=True)+sp.I*sp.Symbol('d'+str(j), real=True) for j in range(3)]
    mod2 = lambda x: sp.expand(x*sp.conjugate(x))
    C = 2*sum(mod2(x) for x in a.values())+sum(mod2(x) for x in b)
    form = 2*sp.re(sum(x*sp.conjugate(z[j])*z[k] for (j, k), x in a.items()))
    form += sp.re(sum(b[j]*sp.conjugate(z[j])**2 for j in range(3)))
    norm = sum(mod2(x) for x in z)
    sos = 4*sum(mod2(x+6*z[j]*sp.conjugate(z[k])) for (j, k), x in a.items())
    sos += 2*sum(mod2(b[j]+6*z[j]**2) for j in range(3))
    # (3): with tr(Y^2)=216+2C and S=tr(Y^2)-162, S-126=2C-72; on form=-6, norm=1
    # this equals the displayed sum of squares.
    assert sp.expand(sos-(2*C-72)-24*(form+6)-72*(norm**2-1)) == 0
    t, c, S = sp.symbols('t c S', real=True)
    numerator = 6480-432*c*t+(6*c*c+S)*t*t
    direct = 6*(30-c*t)**2+t*t*S-12*t*6*c+30*36
    assert sp.expand(numerator-direct) == 0
    cases = [(5, 30, sp.Rational(5, 36)*(t-6)**2),
             (8, 120, sp.Rational(7, 18)*(t-sp.Rational(24, 7))**2+sp.Rational(3, 7)),
             (9, 126, sp.Rational(17, 36)*(t-sp.Rational(54, 17))**2+sp.Rational(4, 17))]
    for cc, ss, target in cases:
        assert sp.expand(numerator.subs({c: cc, S: ss})/1296-target) == 0
    assert numerator.subs({c: 9, S: 126, t: sp.Rational(10, 3)})/1296 == sp.Rational(20, 81)
    assert F(5, 9) > F(4, 17) and F(3, 7) > F(4, 17) and F(54, 17) <= 4
    eta = (-10+3*sp.I*sp.sqrt(21))/17
    assert sp.expand(eta*sp.conjugate(eta)) == 1
    assert sp.expand((1-eta)*(1-sp.conjugate(eta))) == sp.Rational(54, 17)
    # p=2 moment: for unit z_j=w_j (so conj(w)=1/w), with |G_ij|^2=2+w_i/w_j+w_j/w_i,
    # S_2=120+8|sum z|^2+2|sum z^2|^2, hence 120+2|sum z^2|^2 when the rows are orthogonal.
    w = sp.symbols('w0:6')
    s2w = sum((2+w[i]/w[j]+w[j]/w[i])**2 for i, j in it.permutations(range(6), 2))
    sw, sw2 = sum(w), sum(x*x for x in w)
    swb, sw2b = sum(1/x for x in w), sum(1/(x*x) for x in w)
    assert sp.cancel(s2w-(4*30+8*(sw*swb-6)+2*(30+sw2*sw2b-6))) == 0
    return {'SOS_identity': True, 'three_row_bound': 126, 'optimal_orbit_bound': '4/17',
            'balanced_diagonal_bound': '20/81', 'completed_squares': 3,
            'S2_identity': 'S_2=120+8|sum z|^2+2|sum z^2|^2 on the torus'}


def defect(H, rows, eta):
    """E(H,DH) computed directly, D=diag with eta on rows, 1 elsewhere."""
    D = [[Q(eta if (r == c and r in rows) else (1 if r == c else 0)) for c in range(6)] for r in range(6)]
    M = mul(star(H), mul(D, H))
    return sum(((abs2(x)/36-F(1, 6))**2 for row in M for x in row), Q())


def smoment(H, rows):
    X = [H[r] for r in rows]
    G = mul(star(X), X)
    return sum((abs2(G[j][k])**2 for j, k in it.permutations(range(6), 2)), Q())


def exact_controls():
    root = (Q(1)+Q({1: 1})*Q({4: 1}))/2
    H = [[root**(r*j) for j in range(6)] for r in range(6)]
    physical(H)
    R = [0, 1, 3]
    X = [H[r] for r in R]
    G = mul(star(X), X)
    features = [[X[r][j]/X[(r+1) % 3][j] for j in range(6)] for r in range(3)]
    M = features+[[x.bar() for x in row] for row in features]
    Y = mul(M, star(M))
    Wm = mul(star(M), M)
    assert all(sum(row, Q()) == 0 for row in M)
    assert all(Y[j][k+3] == 0 for j, k in it.permutations(range(3), 2))
    assert Wm == [[abs2(x)-3 for x in row] for row in G]
    mom = smoment(H, R)
    assert mom == 126
    assert sum((abs2(x) for row in Y for x in row), Q()) == 162+mom
    intensity = [[Q(1)-F(9, 36)*F(54, 17) if j == k else F(54, 17)*abs2(G[j][k])/36
                  for k in range(6)] for j in range(6)]
    expected = [[Q(F([7, 3, 9, 3, 9, 3][(k-j) % 6], 34)) for k in range(6)] for j in range(6)]
    assert intensity == expected
    assert sum(((x-F(1, 6))**2 for row in intensity for x in row), Q()) == F(4, 17)
    # Direct check of the expansion (5) against E(H,DH), all row sets of size 1..3,
    # at a rational unit eta.
    eta = (3+4*Q({1: 1}))/5
    tt = abs2(1-eta)
    checked = 0
    for p in (1, 2, 3):
        for rows in it.combinations(range(6), p):
            c = p*(6-p)
            Sp = smoment(H, rows)
            lhs = 1296*defect(H, set(rows), eta)
            rhs = 6480-432*c*tt+(6*c*c+Sp)*tt*tt
            assert lhs == rhs
            if p == 1:
                assert Sp == 30
            if p == 2:
                z = [H[rows[0]][j]*H[rows[1]][j].bar() for j in range(6)]
                assert Sp == 120+2*abs2(sum((x*x for x in z), Q()))
            checked += 1
    return {'Fourier_moment_equality': 126, 'optimal_intensity_first_row': '(7,3,9,3,9,3)/34',
            'optimal_defect': '4/17', 'direct_expansion_checks': checked}


if __name__ == '__main__':
    if not __debug__:
        raise SystemExit('Assertions must remain enabled')
    out = {'SOS_and_bounds': sos_and_bounds(), 'exact_controls': exact_controls()}
    print(json.dumps(out, indent=1, sort_keys=True))
    print('PASS sharp three-row bound S>=126 (SOS) and two-valued diagonal-orbit bound 4/17')

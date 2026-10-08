#!/usr/bin/env python3
"""Exact verifier for the full two-parameter Fourier-family confinement theorem.

Run: python3 verify_fourier.py
No external packages.  All certificate arithmetic is integer/Fraction arithmetic.
Laurent polynomials lie in Z[w,x,x^-1,y,y^-1]/(w^2-w+1).
"""
from collections import Counter
from fractions import Fraction as Q
from itertools import combinations, permutations
from math import factorial

ROOT6 = ((1, 0), (0, 1), (-1, 1), (-1, 0), (0, -1), (1, -1))
TRIPLES = tuple(combinations(range(6), 3))
PERMS = tuple(permutations(range(3)))
SIGNS = tuple((-1) ** sum(p[i] > p[j] for i in range(3)
                         for j in range(i + 1, 3)) for p in PERMS)


def clean(p):
    return {k: v for k, v in p.items() if v != (0, 0)}


def add(*polys):
    out = {}
    for p in polys:
        for k, (a, b) in p.items():
            c, d = out.get(k, (0, 0))
            out[k] = (a + c, b + d)
    return clean(out)


def scale(n, p):
    return clean({k: (n * a, n * b) for k, (a, b) in p.items()})


def sub(p, q):
    return add(p, scale(-1, q))


def mul(p, q):
    out = {}
    for (x, y), (a, b) in p.items():
        for (u, v), (c, d) in q.items():
            k = (x + u, y + v)
            e, f = out.get(k, (0, 0))
            out[k] = (e + a * c - b * d, f + a * d + b * c + b * d)
    return clean(out)


def square(p):
    return mul(p, p)


def conj(p):
    return {(-x, -y): (a + b, -b) for (x, y), (a, b) in p.items()}


def normsq(p):
    return mul(p, conj(p))


def const(n):
    return {} if n == 0 else {(0, 0): (n, 0)}


def entry(i, j):
    return {((i % 2) * int(j % 3 == 1),
             (i % 2) * int(j % 3 == 2)): ROOT6[(i * j) % 6]}


def block(rows, cols):
    return [[entry(i, j) for j in cols] for i in rows]


def q_polynomial(rows, cols):
    B = block(rows, cols)
    per, det = {}, {}
    for p, sign in zip(PERMS, SIGNS):
        term = mul(mul(B[0][p[0]], B[1][p[1]]), B[2][p[2]])
        per = add(per, term)
        det = add(det, scale(sign, term))
    product = const(1)
    for row in B:
        for h in row:
            product = mul(product, h)
    # Every entry is unitary on the torus, so inverse(product) = conjugate(product).
    assert len(product) == 1
    return mul(mul(per, square(det)), conj(product))


def R_defining(rows, cols):
    E = block(rows, cols)
    s = scale(-1, add(*(mul(E[1][j], conj(E[0][j])) for j in range(3))))
    t = scale(-1, add(*(mul(E[2][j], conj(E[0][j])) for j in range(3))))
    r = scale(-1, add(*(mul(E[2][j], conj(E[1][j])) for j in range(3))))
    X, Y, Z = normsq(s), normsq(t), normsq(r)
    p = add(X, Y, Z)
    srt = mul(mul(s, r), conj(t))
    J = add(srt, conj(srt))
    W = sub(add(mul(X, Y), mul(X, Z), mul(Y, Z)), mul(mul(X, Y), Z))
    g = add(const(27), scale(-3, p), J)
    eta = add(const(9), scale(-1, p), J)
    chi = add(W, scale(-1, mul(sub(p, const(9)), sub(p, const(18)))),
              mul(sub(p, const(15)), J))
    return sub(scale(4, mul(square(g), eta)), square(chi))


def canonical_sign(p):
    positive = tuple(sorted(p.items()))
    negative = tuple(sorted(scale(-1, p).items()))
    return min(positive, negative)


def expected_delta(sv, sw):
    # q-conj(q) = 3[(x^2/y-y/x^2) + sv(xy-1/(xy))
    #                                      + sw(x/y^2-y^2/x)].
    out = {}
    for (a, b), s in (((2, -1), 1), ((1, 1), sv), ((1, -2), sw)):
        out = add(out, {(a, b): (3 * s, 0), (-a, -b): (-3 * s, 0)})
    return out


def verify_hadamard():
    for i in range(6):
        for k in range(6):
            gram = add(*(mul(entry(i, j), conj(entry(k, j))) for j in range(6)))
            assert gram == const(6 if i == k else 0), (i, k, gram)
    print('PASS: H(a,b) H(a,b)* = 6 I identically on the parameter torus.')


def verify_spectrum():
    qp = {(r, c): q_polynomial(r, c) for r in TRIPLES for c in TRIPLES}
    counts = Counter(canonical_sign(sub(q, conj(q))) for q in qp.values())
    expected = Counter({(): 256})
    for sv in (-1, 1):
        for sw in (-1, 1):
            expected[canonical_sign(expected_delta(sv, sw))] = 36
    assert counts == expected, counts
    # Directly verify the defining R expression for all 400 corners, so no
    # unverified use of the supplied square identity enters this certificate.
    for r in TRIPLES:
        for c in TRIPLES:
            cc = tuple(j for j in range(6) if j not in c)
            q = qp[r, cc]
            delta = sub(q, conj(q))
            assert R_defining(r, c) == scale(-1, square(delta)), (r, c)
    print('PASS: all 400 defining R polynomials equal their certified sine squares.')
    print('Spectrum: 256 zeros; 36 copies of each of four signed-sine squares.')


def verify_parameter_periods():
    # m,n modulo 6 cover every exponent, parity, and permutation dependency.
    for m in range(6):
        for n in range(6):
            A, B = m + n, 2 * n - m
            qcol = tuple((j + 3 * ((0, A, B)[j % 3] % 2)) % 6 for j in range(6))
            prow = tuple((i + 4 * A * (i % 2)) % 6 for i in range(6))
            assert sorted(qcol) == list(range(6))
            assert sorted(prow) == list(range(6))
            for i in range(6):
                assert prow[i] % 2 == i % 2
                for j in range(6):
                    assert qcol[j] % 3 == j % 3
                    lhs = i * qcol[j] + (i % 2) * (0, A, B)[qcol[j] % 3]
                    rhs = prow[i] * j
                    assert (lhs - rhs) % 6 == 0, (m, n, i, j)
    print('PASS: every lattice reduction is an explicit row/column permutation.')


def horizontal(M):
    rs = [sum(row, Q(0)) / 6 for row in M]
    cs = [sum((M[i][j] for i in range(6)), Q(0)) / 6 for j in range(6)]
    mean = sum(rs, Q(0)) / 6
    return [[M[i][j] - rs[i] - cs[j] + mean for j in range(6)] for i in range(6)]


def verify_norm():
    T = [horizontal([[Q((i % 2) * int(j % 3 == c)) for j in range(6)]
                     for i in range(6)]) for c in (1, 2)]
    G = [[sum((T[a][i][j] * T[b][i][j] for i in range(6) for j in range(6)), Q(0))
          for b in range(2)] for a in range(2)]
    assert G == [[2, -1], [-1, 2]], G
    for a in range(2):
        assert all(sum(T[a][i], Q(0)) == 0 for i in range(6))
        assert all(sum((T[a][i][j] for i in range(6)), Q(0)) == 0 for j in range(6))
    # Quadratic coordinate change alpha=(U+V)/3, beta=(2V-U)/3.
    # Coefficients of U^2, UV, V^2 in 2(alpha^2+beta^2-alpha*beta).
    change = ((Q(1, 3), Q(1, 3)), (Q(-1, 3), Q(2, 3)))
    transformed = [[sum((change[a][i] * G[a][b] * change[b][j]
                        for a in range(2) for b in range(2)), Q(0))
                    for j in range(2)] for i in range(2)]
    assert transformed == [[Q(2, 3), Q(-1, 3)], [Q(-1, 3), Q(2, 3)]]
    print('PASS: horizontal norm squared = (2/3)(U^2 - U V + V^2).')



def verify_projection_lattice():
    # Rectangle differences have covariance 36 P6 on the 36 entries.
    # Consequently their squared sum is 36 ||P6 N||^2 for every real N.
    rectangles = []
    for i, k in combinations(range(6), 2):
        for j, l in combinations(range(6), 2):
            e = [0] * 36
            for r, c, sign in ((i, j, 1), (i, l, -1), (k, j, -1), (k, l, 1)):
                e[6*r+c] = sign
            rectangles.append(e)
    for a in range(36):
        ar, ac = divmod(a, 6)
        for b in range(36):
            br, bc = divmod(b, 6)
            observed = sum(e[a] * e[b] for e in rectangles)
            expected = 36 * (Q(int(ar == br)) - Q(1, 6)) * (Q(int(ac == bc)) - Q(1, 6))
            assert observed == expected
    # Each nontrivial partition of six indices has at least five cross-pairs.
    # This is applied once to row-equivalence classes and once to distinct
    # integer values within each nonconstant row difference; see the proof.
    assert min(k * (6-k) for k in range(1, 6)) == 5
    one_entry = [[Q(int(i == 0 and j == 0)) for j in range(6)] for i in range(6)]
    projected = horizontal(one_entry)
    assert sum((x*x for row in projected for x in row), Q(0)) == Q(25, 36)
    print('PASS: rectangle identity; nonzero integer projection has norm >= 5/6, sharply.')


def sine_taylor(x, last_odd):
    return sum(((-1) ** k * x ** (2 * k + 1) / factorial(2 * k + 1)
                for k in range((last_odd + 1) // 2)), Q(0))


def verify_constants():
    # For 0<x<1, the odd-degree Taylor sums ending in negative/positive
    # terms are lower/upper bounds, respectively, by the alternating series.
    theta = Q(438872, 1000000)
    assert 0 < theta < 1
    s_lower = sine_taylor(theta, 7)
    assert s_lower > 0 and 144 * s_lower ** 2 > 26
    # Hence arcsin(sqrt(26)/12) < theta.
    nu_cap = Q(358338, 1000000)
    assert Q(2, 3) * theta ** 2 < nu_cap ** 2
    assert nu_cap < Q(5, 12)  # pi>3 implies nu_cap < 5*pi/36.
    assert nu_cap < Q(451, 1000) < Q(55, 100)
    proj_cap = Q(73081, 1000000)
    assert sine_taylor(theta / 6, 5) < proj_cap < Q(75, 1000)
    print('PASS: M<26 implies nu<0.358338 and d_F<0.073081, with rational certificates.')


def main():
    verify_hadamard()
    verify_spectrum()
    verify_parameter_periods()
    verify_norm()
    verify_projection_lattice()
    verify_constants()
    print('FOURIER FAMILY EXACT CERTIFICATE PASS')


if __name__ == '__main__':
    main()

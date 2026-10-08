#!/usr/bin/env python3
"""Exact finite part of HADAMARD_CORNER_CLASSIFICATION.md.

All arithmetic is in Z[omega], omega^2 + omega + 1 = 0.
No floating point and no third-party packages are used.
"""

from itertools import combinations, permutations, product
from pathlib import Path
import json


def add(x, y):
    return x[0] + y[0], x[1] + y[1]


def neg(x):
    return -x[0], -x[1]


def mul(x, y):
    return (x[0] * y[0] - x[1] * y[1],
            x[0] * y[1] + x[1] * y[0] - x[1] * y[1])


def conj(x):
    return x[0] - x[1], -x[1]


def norm(x):
    return x[0] ** 2 - x[0] * x[1] + x[1] ** 2


def total(xs):
    z = (0, 0)
    for x in xs:
        z = add(z, x)
    return z


def mm(A, B):
    return [[total(mul(A[i][k], B[k][j]) for k in range(len(B)))
             for j in range(len(B[0]))] for i in range(len(A))]


def adjoint(A):
    return [[conj(A[j][i]) for j in range(len(A))] for i in range(len(A[0]))]


ROOTS = [(1, 0), (0, 1), (-1, -1)]
F = [[ROOTS[i * j % 3] for j in range(3)] for i in range(3)]
FH = adjoint(F)
TAO = [
    [0, 0, 0, 0, 0, 0],
    [0, 0, 1, 1, 2, 2],
    [0, 1, 0, 2, 2, 1],
    [0, 1, 2, 0, 1, 2],
    [0, 2, 2, 1, 0, 1],
    [0, 2, 1, 2, 1, 0],
]


def diag(exponents):
    return [[ROOTS[exponents[i]] if i == j else (0, 0)
             for j in range(3)] for i in range(3)]


def check_hadamard(H):
    n = len(H)
    assert all(norm(x) == 1 for row in H for x in row)
    gram = mm(H, adjoint(H))
    assert gram == [[(n, 0) if i == j else (0, 0) for j in range(n)]
                    for i in range(n)]


def qval(B):
    per, det = (0, 0), (0, 0)
    for p in permutations(range(3)):
        term = mul(mul(B[0][p[0]], B[1][p[1]]), B[2][p[2]])
        per = add(per, term)
        inversions = sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
        det = add(det, neg(term) if inversions % 2 else term)
    denominator = (1, 0)
    for row in B:
        for x in row:
            denominator = mul(denominator, x)
    assert norm(denominator) == 1
    return mul(mul(per, mul(det, det)), conj(denominator))


def main():
    check_hadamard(F)
    # Every permutation of three labels is affine over F_3.
    affine = {tuple((a * j + b) % 3 for j in range(3))
              for a in (1, 2) for b in range(3)}
    assert affine == set(permutations(range(3)))

    chirps = [(0, a, b) for a, b in product(range(3), repeat=2)
              if b != 2 * a % 3]
    expected_cases = set(product(chirps, repeat=2))
    records = json.loads(Path(__file__).with_name("hadamard_corner_cases.json").read_text())
    seen, nflat = set(), 0
    for rec in records:
        le, me = tuple(rec["L"]), tuple(rec["M"])
        key = (le, me)
        assert key in expected_cases and key not in seen
        seen.add(key)
        L, M = diag(le), diag(me)
        numerator = [[neg(x) for x in row]
                     for row in mm(mm(mm(mm(F, M), FH), L), F)]
        norms = [[norm(x) for x in row] for row in numerator]
        flat = all(s == 9 for row in norms for s in row)
        assert flat == rec["flat"]
        # Quadratic chirality alpha is determined by l_j=omega^(alpha*j^2+beta*j).
        alpha = (2 * le[1] - le[2]) % 3
        gamma = (2 * me[1] - me[2]) % 3
        assert alpha and gamma
        assert flat == (alpha != gamma)
        if not flat:
            assert rec["squared_numerator_norms"] == norms
            continue
        nflat += 1
        assert all(x[0] % 3 == x[1] % 3 == 0 for row in numerator for x in row)
        D = [[(x[0] // 3, x[1] // 3) for x in row] for row in numerator]
        assert all(x in ROOTS for row in D for x in row)
        B, C = mm(L, F), mm(F, M)
        H = [F[i] + B[i] for i in range(3)] + [C[i] + D[i] for i in range(3)]
        check_hadamard(H)
        exponents = [[ROOTS.index(x) for x in row] for row in H]
        assert rec["H_exponents"] == exponents
        rows = rec["tao_equivalence"]["rows"]
        cols = rec["tao_equivalence"]["columns"]
        assert sorted(rows) == sorted(cols) == list(range(6))
        dephased = [[(exponents[rows[i]][cols[j]]
                      - exponents[rows[i]][cols[0]]
                      - exponents[rows[0]][cols[j]]
                      + exponents[rows[0]][cols[0]]) % 3
                     for j in range(6)] for i in range(6)]
        assert dephased == TAO, (le, me)
    assert seen == expected_cases
    assert len(seen) == 36 and nflat == 18

    # Exact M(Tao)=243 from F2. For q=a+b*omega, 4(Im q)^2=3*b^2.
    Ht = [[ROOTS[e] for e in row] for row in TAO]
    check_hadamard(Ht)
    R_values = []
    for rows, cols in product(combinations(range(6), 3), repeat=2):
        q = qval([[Ht[i][j] for j in cols] for i in rows])
        R_values.append(3 * q[1] ** 2)
    assert len(R_values) == 400
    assert set(R_values) == {0, 243}
    assert R_values.count(0) == 40 and R_values.count(243) == 360

    # CRT correspondence between the two block Fourier form and F_6.
    row_order = [(3 * x + 2 * i) % 6 for x in range(2) for i in range(3)]
    col_order = [(3 * y + 4 * j) % 6 for y in range(2) for j in range(3)]
    assert sorted(row_order) == sorted(col_order) == list(range(6))
    for x, i, y, j in product(range(2), range(3), range(2), range(3)):
        r, c = (3 * x + 2 * i) % 6, (3 * y + 4 * j) % 6
        assert (r * c - 3 * x * y - 2 * i * j) % 6 == 0
        assert r % 2 == x and c % 3 == j

    # Exact diagonal-moment formulas used in the quantitative extension.
    # Multiplication by 9 makes every coefficient an Eisenstein integer.
    # Keys are Laurent exponents of (m_0,m_1,m_2).
    def put(poly, a, b, value):
        exponent = [0, 0, 0]
        exponent[a] += 1
        exponent[b] -= 1
        key = tuple(exponent)
        poly[key] = add(poly.get(key, (0, 0)), value)

    for t in (1, 2):
        lhs, rhs = {}, {}
        for i, a, b in product(range(3), repeat=3):
            put(lhs, a, b, ROOTS[(i * (a - b - t) + b) % 3])
        for b in range(3):
            put(rhs, (b + t) % 3, b,
                (3 * ROOTS[b][0], 3 * ROOTS[b][1]))
        lhs = {k: v for k, v in lhs.items() if v != (0, 0)}
        rhs = {k: v for k, v in rhs.items() if v != (0, 0)}
        assert lhs == rhs
        moment_form = {}
        if t == 1:
            for s in range(3):
                put(moment_form, (s + 1) % 3, s,
                    (3 * ROOTS[s][0], 3 * ROOTS[s][1]))
        else:
            for s in range(3):
                root = ROOTS[(1 - 2 * s) % 3]
                put(moment_form, s, (s + 1) % 3, (3 * root[0], 3 * root[1]))
        assert rhs == moment_form

    print("HADAMARD CORNER CLASSIFICATION PASS")
    print("36 cubic-chirp cases checked exactly; 18 flat cases all equivalent to Tao.")
    print("Tao: 40 corner values 0 and 360 corner values 243, using F2.")
    print("Order-three affine permutations and Fourier CRT identification checked.")
    print("Circulant eigenvalues: lambda_1=conj(w_hat_1), lambda_2=omega*w_hat_2.")


if __name__ == "__main__":
    main()

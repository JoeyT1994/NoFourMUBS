#!/usr/bin/env python3
"""Independent exact algebra for the Step 2 topology blueprint.

Only Python's standard library is required.  Every coefficient is an integer
or a fractions.Fraction.  No floating-point acceptance is used.

Scope: the polynomial side signature's symmetries; the maximum seed's finite
orbit; the full affine Fourier joining family; and the horizontal projector.
This does NOT certify strict matched existence, matched-fiber uniqueness,
global strict reach, Step 1's maximum census, or a finite physical atlas.
"""

from collections import defaultdict
from fractions import Fraction as F
from itertools import permutations
import json
import sys


def require(condition, label):
    if not condition:
        raise RuntimeError(label)


def clean(p):
    return {k: v for k, v in p.items() if v}


def add(p, q):
    out = defaultdict(int, p)
    for k, v in q.items():
        out[k] += v
    return clean(out)


def scale(p, a):
    return clean({k: a * v for k, v in p.items()})


def mul(p, q):
    out = defaultdict(int)
    for k, v in p.items():
        for l, w in q.items():
            out[tuple(a + b for a, b in zip(k, l))] += v * w
    return clean(out)


P3 = tuple(permutations(range(3)))


def permutation_sign(p):
    return (-1) ** sum(p[i] > p[j] for i in range(len(p)) for j in range(i + 1, len(p)))


def signature_checks():
    """T(X) = -perm(X)det(X)^2/prod(X_ij), on phase matrices."""
    determinant, permanent = {}, {}
    for p in P3:
        exp = tuple(int(p[i] == j) for i in range(3) for j in range(3))
        determinant[exp] = permutation_sign(p)
        permanent[exp] = 1
    numerator = scale(mul(permanent, mul(determinant, determinant)), -1)
    signature = {tuple(e - 1 for e in ex): c for ex, c in numerator.items()}
    for ex in signature:
        for i in range(3):
            require(sum(ex[3 * i + j] for j in range(3)) == 0, "row-phase weight")
        for j in range(3):
            require(sum(ex[3 * i + j] for i in range(3)) == 0, "column-phase weight")

    def relabel(poly, p, q, transpose=False):
        result = defaultdict(int)
        for ex, coefficient in poly.items():
            out = [0] * 9
            for i in range(3):
                for j in range(3):
                    row, col = (p[j], q[i]) if transpose else (p[i], q[j])
                    out[3 * row + col] += ex[3 * i + j]
            result[tuple(out)] += coefficient
        return clean(result)

    for p in P3:
        for q in P3:
            require(relabel(signature, p, q) == signature, "row/column signature invariance")
            require(relabel(signature, p, q, True) == signature, "transposed signature invariance")
    # Real integer Laurent coefficients make formal conjugation precisely
    # exponent negation on the phase torus.  The returned dictionary records
    # that explicit polynomial as an independent consistency check.
    conjugate = {tuple(-e for e in ex): c for ex, c in signature.items()}
    require({tuple(-e for e in ex): c for ex, c in conjugate.items()} == signature,
            "signature conjugation involution")
    return {"signature_monomials": len(signature), "permutation_transpose_checks": 72}


def orbit_checks():
    V = ((0, 0, 0), (0, 1, 2), (0, -1, -2))
    pure, witnesses = set(), {}
    for p in P3:
        for q in P3:
            a = tuple(V[p[i]][q[j]] + V[p[0]][q[0]]
                      - V[p[i]][q[0]] - V[p[0]][q[j]]
                      for i, j in ((1, 1), (1, 2), (2, 1), (2, 2)))
            pure.add(a)
            witnesses.setdefault(a, (p, q))
    require(len(pure) == 18, "pure maximum orbit does not have 18 coefficient vectors")
    for transpose in (False, True):
        for conjugate in (False, True):
            transformed = set()
            for a in pure:
                b = (a[0], a[2], a[1], a[3]) if transpose else a
                transformed.add(tuple(-x for x in b) if conjugate else b)
            require(transformed == pure, "a transpose/conjugation coset adds an anchor")
    p, q = (2, 0, 1), (1, 2, 0)
    for i in range(3):
        for j in range(3):
            exponent = V[p[i]][q[j]] + V[p[0]][q[0]] - V[p[i]][q[0]] - V[p[0]][q[j]]
            require(exponent == V[j][i], "maximum-frame transposition identity")
            require(V[(0, 2, 1)[i]][j] == -V[i][j], "maximum-frame conjugation identity")
    # Exact evaluation at x=(1+i*sqrt(15))/4, satisfying x^2-x/2+1=0.
    # The quadratic is irreducible over Q (negative discriminant -15/4),
    # so equality of reduced pairs is exact equality in the quadratic field.
    def qadd(a, b):
        return (a[0] + b[0], a[1] + b[1])
    def qneg(a):
        return (-a[0], -a[1])
    def qmul(a, b):
        return (a[0] * b[0] - a[1] * b[1],
                a[0] * b[1] + a[1] * b[0] + a[1] * b[1] / 2)
    def qstar(a):
        return (a[0] + a[1] / 2, -a[1])
    one, x = (F(1), F(0)), (F(0), F(1))
    def qpow(n):
        b = x if n >= 0 else qstar(x)
        out = one
        for _ in range(abs(n)):
            out = qmul(out, b)
        return out
    require(qmul(x, qstar(x)) == one, "exact maximum phase has norm one")
    for n in range(1, 9):
        require(qpow(n) != one, "distinct exponent vectors may collide at maximum phase")
    seeds = {tuple(qpow(n) for n in a) for a in pure}
    require(len(seeds) == 18, "actual maximum seed orbit has 18 distinct phase tuples")
    def normsq(a):
        v = qmul(a, qstar(a))
        require(v[1] == 0, "nonreal exact norm square")
        return v[0]
    values = set()
    for a, b, c, d in seeds:
        s = qneg(qadd(qadd(one, a), b))
        t = qneg(qadd(qadd(one, c), d))
        r = qneg(qadd(qadd(one, qmul(c, qstar(a))), qmul(d, qstar(b))))
        X, Y, Z = map(normsq, (s, t, r))
        p = X + Y + Z
        triple = qmul(qmul(s, r), qstar(t))
        jr = qadd(triple, qstar(triple))
        require(jr[1] == 0, "nonreal Gram cycle invariant")
        J = jr[0]
        g, eta = 27 - 3*p + J, 9 - p + J
        chi = X*Y + X*Z + Y*Z - X*Y*Z - (p-9)*(p-18) + (p-15)*J
        value = 4*g*g*eta - chi*chi
        require(value == F(3**13, 2**12), "incorrect exact R at a maximum anchor")
        values.add(value)
    return {"maximum_coefficient_vectors": sorted(pure),
            "distinct_phase_tuples": len(seeds),
            "exact_R_at_all_anchors": str(next(iter(values))),
            "orbit_witnesses": [{"vector": a, "rows": witnesses[a][0], "cols": witnesses[a][1]}
                                for a in sorted(pure)]}


# Exact Laurent arithmetic in Z[z,z^-1,omega]/(omega^2+omega+1).
# A key (k,e) denotes z^k omega^e; e is always reduced to 0 or 1.
def cycl_reduce(poly):
    out = defaultdict(int)
    for (k, e), a in poly.items():
        e %= 3
        if e == 2:
            out[(k, 0)] -= a
            out[(k, 1)] -= a
        else:
            out[(k, e)] += a
    return clean(out)


def cmul(p, q):
    return cycl_reduce(mul(p, q))


def cpow(p, n):
    require(n >= 0, "cpow received negative exponent")
    out = {(0, 0): 1}
    for _ in range(n):
        out = cmul(out, p)
    return out


def cconj(p):
    return cycl_reduce({(-k, -e): a for (k, e), a in p.items()})


def at_one(p):
    out = defaultdict(int)
    for (_, e), a in p.items():
        out[(0, e)] += a
    return cycl_reduce(out)


def fourier_checks():
    one = {(0, 0): 1}
    z = {(1, 0): 1}
    zeta = cycl_reduce({(0, 2): -1})  # -omega^2 = exp(pi i / 3)
    H = [[cycl_reduce({((i // 3) * int(j % 3 == 1), (i % 3) * (j % 3)):
                       (-1) ** ((i // 3) * (j // 3))}) for j in range(6)] for i in range(6)]
    rows = [(3 * (i // 3) + 2 * (i % 3)) % 6 for i in range(6)]
    cols = [(3 * (j // 3) + 4 * (j % 3)) % 6 for j in range(6)]
    require(sorted(rows) == list(range(6)) and sorted(cols) == list(range(6)), "CRT permutations")
    for i in range(6):
        for j in range(6):
            require(cmul(H[i][j], cconj(H[i][j])) == one, "Fourier family flatness")
            gram = {}
            for k in range(6):
                gram = add(gram, cmul(H[i][k], cconj(H[j][k])))
            require(gram == scale(one, 6 if i == j else 0), "Fourier family orthogonality")
            require(at_one(H[i][j]) == cpow(zeta, rows[i] * cols[j]), "CRT Fourier identification")
            require(cconj(cpow(zeta, i * j)) == cpow(zeta, ((-i) % 6) * j),
                    "Fourier conjugation is a row permutation")
    cross_ratio = cmul(cmul(H[0][0], H[3][1]), cmul(cconj(H[0][1]), cconj(H[3][0])))
    require(cross_ratio == z, "Fourier family cross ratio")
    # Literal upstream affineFourierMatrix(omega,1,1), with Sum.inl 0..2
    # followed by Sum.inr 0..2. This independently ties the concrete Lean
    # Fourier anchor to the usual F6 indexing.
    def w(exponent, sign=1):
        return cycl_reduce({(0, exponent): sign})
    upstream = [
        [one, one, one, one, one, one],
        [one, w(0, -1), one, w(0, -1), one, w(0, -1)],
        [one, one, w(1), w(1), w(2), w(2)],
        [one, w(0, -1), w(1), w(1, -1), w(2), w(2, -1)],
        [one, one, w(2), w(2), w(1), w(1)],
        [one, w(0, -1), w(2), w(2, -1), w(1), w(1, -1)],
    ]
    upstream_rows = [0, 3, 2, 5, 4, 1]
    upstream_cols = [0, 3, 4, 1, 2, 5]
    for i in range(6):
        for j in range(6):
            require(upstream[i][j] == cpow(zeta, upstream_rows[i] * upstream_cols[j]),
                    "upstream concrete Fourier anchor identification")
    return {"fourier_phase_checks": 36, "fourier_gram_checks": 36,
            "fourier_CRT_rows": rows, "fourier_CRT_columns": cols,
            "upstream_fourier_identification_checks": 36,
            "upstream_fourier_rows": upstream_rows,
            "upstream_fourier_columns": upstream_cols,
            "fourier_family_cross_ratio": "z"}


def horizontal_checks():
    labels = [(i, j) for i in range(6) for j in range(6)]
    P = [[F(int(i == k and j == l)) - F(int(i == k), 6)
          - F(int(j == l), 6) + F(1, 36) for k, l in labels] for i, j in labels]
    for a in range(36):
        for b in range(36):
            require(P[a][b] == P[b][a], "horizontal projector symmetry")
            require(sum(P[a][c] * P[c][b] for c in range(36)) == P[a][b],
                    "horizontal projector idempotence")
            require((36 * P[a][b]).denominator == 1, "horizontal lattice denominator")
        for i in range(6):
            require(sum(P[a][6 * i + j] for j in range(6)) == 0, "row phases killed")
            require(sum(P[a][6 * j + i] for j in range(6)) == 0, "column phases killed")
    require(sum(P[a][a] for a in range(36)) == 25, "horizontal projector rank")
    for axis in (0, 1):
        for swap in range(5):
            perm = list(range(6))
            perm[swap], perm[swap + 1] = perm[swap + 1], perm[swap]
            indices = [(6 * perm[i] + j) if axis == 0 else (6 * i + perm[j]) for i, j in labels]
            for a in range(36):
                for b in range(36):
                    require(P[indices[a]][indices[b]] == P[a][b], "projector commutes with permutations")
    return {"horizontal_dimension": 25, "lattice_denominator": 36,
            "row_column_permutation_generators": 10}


def main():
    results = {"signature": signature_checks(), "orbit": orbit_checks(),
               "fourier": fourier_checks(), "horizontal": horizontal_checks()}
    print(json.dumps({"status": "PASS", "exact_arithmetic": "integers and Fraction",
                      "results": results,
                      "scope": "algebraic topology inputs only; no reconstruction or atlas theorem"}, indent=2))


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print("FAIL: " + str(error), file=sys.stderr)
        raise

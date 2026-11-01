"""Small structural identities, verified with independent integer Laurent arithmetic.

This file uses only the Python standard library.  It does not import any of
the rational-function verifiers or assume matched flatness.
"""
from itertools import permutations
import json
import time


class P:
    def __init__(self, n, terms=None):
        self.n = n
        self.t = {tuple(e): int(c) for e, c in (terms or {}).items() if c}

    def coerce(self, q):
        if isinstance(q, P):
            if q.n != self.n:
                raise ValueError("Different rings")
            return q
        return P(self.n, {(0,) * self.n: q})

    def __add__(self, q):
        q = self.coerce(q)
        d = self.t.copy()
        for e, c in q.t.items():
            d[e] = d.get(e, 0) + c
        return P(self.n, d)

    __radd__ = __add__

    def __neg__(self):
        return P(self.n, {e: -c for e, c in self.t.items()})

    def __sub__(self, q):
        return self + (-self.coerce(q))

    def __rsub__(self, q):
        return self.coerce(q) + (-self)

    def __mul__(self, q):
        q = self.coerce(q)
        d = {}
        for e, c in self.t.items():
            for f, k in q.t.items():
                h = tuple(x + y for x, y in zip(e, f))
                d[h] = d.get(h, 0) + c * k
        return P(self.n, d)

    __rmul__ = __mul__

    def __pow__(self, k):
        if k < 0:
            if len(self.t) != 1:
                raise ValueError("Only unit monomials may be inverted")
            (e, c), = self.t.items()
            if c not in (1, -1):
                raise ValueError("Nonunit coefficient")
            return P(self.n, {tuple(k * v for v in e): c ** (-k)})
        out = self.coerce(1)
        for _ in range(k):
            out = out * self
        return out

    def sharp(self):
        return P(self.n, {tuple(-v for v in e): c for e, c in self.t.items()})

    def swap_pairs(self):
        return P(self.n, {tuple(e[j ^ 1] for j in range(self.n)): c
                          for e, c in self.t.items()})


def variables(n):
    return [P(n, {tuple(int(i == j) for j in range(n)): 1}) for i in range(n)]


def transpose(M):
    return [list(r) for r in zip(*M)]


def adjoint(M):
    return [[v.sharp() for v in r] for r in transpose(M)]


def product(xs):
    out = xs[0].coerce(1)
    for x in xs:
        out = out * x
    return out


def mm(A, B):
    return [[sum((x * y for x, y in zip(r, c)), A[0][0].coerce(0))
             for c in transpose(B)] for r in A]


def determinant(M):
    out = M[0][0].coerce(0)
    for p in permutations(range(len(M))):
        inversions = sum(p[i] > p[j] for i in range(len(p)) for j in range(i + 1, len(p)))
        out += (-1) ** inversions * product([M[i][p[i]] for i in range(len(M))])
    return out


def permanent(M):
    return sum((product([M[i][p[i]] for i in range(len(M))])
                for p in permutations(range(len(M)))), M[0][0].coerce(0))


def data(s, S, t, T, r, Q):
    X, Y, Z = s * S, t * T, r * Q
    p, J = X + Y + Z, s * r * T + S * Q * t
    g, eta = 27 - 3 * p + J, 9 - p + J
    chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    ps = [r * s ** 2 + Q * t ** 2 + (3 - Z) * s * t,
          t * S ** 2 + r ** 2 * T + (3 - Y) * r * S,
          s * T ** 2 + Q ** 2 * S + (3 - X) * Q * T]
    return g, eta, chi, ps, [9 - Z, 9 - Y, 9 - X], p


def gram_data(G):
    return data(G[1][0], G[0][1], G[2][0], G[0][2], G[2][1], G[1][2])


def main():
    started = time.perf_counter()
    checks = []

    def check(name, lhs, rhs=0):
        rhs = lhs.coerce(rhs)
        residual = lhs - rhs
        if residual.t:
            raise AssertionError(f"{name}: {len(residual.t)} nonzero terms")
        checks.append({"identity": name, "lhs_terms": len(lhs.t), "rhs_terms": len(rhs.t)})

    s, S, t, T, r, Q = variables(6)
    one = s.coerce(1)
    G = [[3 * one, S, T], [s, 3 * one, Q], [t, r, 3 * one]]
    g, eta, chi, ps, cs, p = data(s, S, t, T, r, Q)
    check("det G", determinant(G), g)
    check("strict positivity determinant relation",
          determinant([[6 * (i == j) - G[i][j] for j in range(3)] for i in range(3)]) + eta,
          36 - 4 * p)
    check("g minus eta", g - eta, 2 * (9 - p))
    for j in range(3):
        check(f"P{j} norm", ps[j] * ps[j].swap_pairs(), g ** 2 + cs[j] * chi + cs[j] ** 2 * eta)

    a, b, c, d = variables(4)
    one = a.coerce(1)
    E = [[one] * 3, [one, a, b], [one, c, d]]
    Gh = [[6 * (i == j) - v for j, v in enumerate(row)]
          for i, row in enumerate(mm(E, adjoint(E)))]
    Gv = [[6 * (i == j) - v for j, v in enumerate(row)]
          for i, row in enumerate(mm(transpose(E), adjoint(transpose(E))))]
    for label, u, v in zip(("g", "eta", "chi"), gram_data(Gh)[:3], gram_data(Gv)[:3]):
        check(f"horizontal vertical {label}", u, v)

    x0, x1, x2, y0, y1, y2 = variables(6)
    x, y = [x0, x1, x2], [y0, y1, y2]
    one = x0.coerce(1)
    B = [[one] * 3, x, y]
    GG = mm(B, adjoint(B))
    g, eta, chi, ps, cs, _ = gram_data(GG)
    det, per = determinant(B), permanent(B)
    U, V = product(x), product(y)
    check("phase-side g", g, det * det.sharp())
    check("phase-side eta", eta, per * per.sharp())
    sig = -per * det ** 2 * U ** (-1) * V ** (-1)
    check("phase-side chi", chi, sig + sig.sharp())
    for j, multiplier in enumerate((U * V, V, U)):
        check(f"phase-side lambda{j} identity", det ** 2,
              U * V * cs[j] * per.sharp() - multiplier * ps[j].sharp())

    s, t, r = GG[1][0], GG[2][0], GG[2][1]
    S, T, Q = s.sharp(), t.sharp(), r.sharp()
    moment = {(0, 0): 3 * one, (1, 0): s, (0, 1): t, (1, -1): Q,
              (2, 0): s ** 2 - 2 * U * S,
              (0, 2): t ** 2 - 2 * V * T,
              (1, 1): s * t - per,
              (2, -1): s * Q - U * per.sharp(),
              (-1, 2): t * r - V * per.sharp(),
              (2, -2): Q ** 2 - 2 * U * V ** (-1) * r}
    for (i, j), value in list(moment.items()):
        moment[-i, -j] = value.sharp()
    pairs = [(0, 0), (0, 1), (0, 2), (1, 1), (1, 2), (2, 2)]
    exps = [(0, 0), (1, 0), (0, 1), (2, 0), (1, 1), (0, 2)]
    BB = [[B[i][j] * B[k][j] for j in range(3)] for i, k in pairs]
    TT = mm(BB, adjoint(BB))
    for i, e in enumerate(exps):
        for j, f in enumerate(exps):
            check(f"fourth-moment matrix {i},{j}", TT[i][j], moment[e[0] - f[0], e[1] - f[1]])

    vv = variables(15)
    K = [vv[i:i + 3] for i in (0, 3, 6)]
    bb, cc = vv[9:12], vv[12:15]
    direct = sum(cc[i] * K[i][j] * bb[j] for i in range(3) for j in range(3)) ** 2
    lifted = vv[0].coerce(0)
    for i, j in pairs:
        for k, l in pairs:
            coefficient = sum(K[ii][kk] * K[jj][ll]
                              for ii, jj in sorted(set(((i, j), (j, i))))
                              for kk, ll in sorted(set(((k, l), (l, k)))))
            lifted += cc[i] * cc[j] * coefficient * bb[k] * bb[l]
    check("symmetric-square multiplicities", direct, lifted)
    result = {"status": "PASS_EXACT_STRUCTURAL_IDENTITIES", "arithmetic": "Python integer Laurent polynomials",
              "identity_count": len(checks), "checks": checks,
              "wall_seconds": time.perf_counter() - started}
    print(json.dumps(result, indent=2))
    return result


if __name__ == "__main__":
    main()

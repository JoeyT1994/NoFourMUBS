"""Small exact Laurent-polynomial helpers. No floating-point arithmetic."""
from collections import defaultdict
from itertools import combinations, product
from functools import lru_cache
import sympy as sp


def add(*polys):
    out = defaultdict(int)
    for p in polys:
        for e, c in p.items():
            out[e] += c
    return {e: c for e, c in out.items() if c}


def scale(p, c):
    return {e: c*v for e, v in p.items() if c*v}


def mul(p, q):
    out = defaultdict(int)
    for e, c in p.items():
        for f, d in q.items():
            out[tuple(x+y for x, y in zip(e, f))] += c*d
    return {e: c for e, c in out.items() if c}


def conj(p):
    return {tuple(-x for x in e): c for e, c in p.items()}


def terms(expr, variables):
    out = {}
    for t in sp.expand(expr).as_ordered_terms():
        powers = t.as_powers_dict()
        e = tuple(int(powers.get(x, 0)) for x in variables)
        c = t / sp.prod(x**k for x, k in zip(variables, e))
        assert c.is_Integer
        out[e] = int(c)
    return out


@lru_cache(None)
def determinant_terms():
    a, b, c, d = variables = sp.symbols('a b c d', nonzero=True)
    columns = []
    for x, y in ((sp.Integer(1), sp.Integer(1)), (a, c), (b, d)):
        z = y/x
        columns.extend((sp.Matrix([x, -1/x, 0, 0, -z, 1/z]),
                        sp.Matrix([0, 0, y, -1/y, z, -1/z])))
    D = terms(sp.det(sp.Matrix.hstack(*columns)), variables)
    assert len(D) == 48 and set(D.values()) == {-1, 1}
    assert add(conj(D), D) == {}
    return D


@lru_cache(None)
def corner_polynomials():
    """Construct R directly, independently of the determinant identity."""
    one = {(0, 0, 0, 0): 1}
    a, b, c, d = ({tuple(int(j == k) for j in range(4)): 1} for k in range(4))
    s, t = scale(add(one, a, b), -1), scale(add(one, c, d), -1)
    r = scale(add(one, mul(c, conj(a)), mul(d, conj(b))), -1)
    X, Y, Z = [mul(v, conj(v)) for v in (s, t, r)]
    p = add(X, Y, Z)
    J = add(mul(mul(s, r), conj(t)), mul(mul(conj(s), conj(r)), t))
    W = add(mul(X, Y), mul(X, Z), mul(Y, Z), scale(mul(mul(X, Y), Z), -1))
    def R(sign):
        g = add(scale(one, 27), scale(p, -3), scale(J, sign))
        eta = add(scale(one, 9), scale(p, -1), scale(J, sign))
        chi = add(W, scale(mul(add(p, scale(one, -9)), add(p, scale(one, -18))), -1),
                  scale(mul(add(p, scale(one, -15)), J), sign))
        return add(scale(mul(mul(g, g), eta), 4), scale(mul(chi, chi), -1))
    positive, negative = R(1), R(-1)
    D = determinant_terms()
    assert add(negative, mul(D, D)) == {}
    return positive, negative


def family_entry(i, j):
    s, r = divmod(i, 3)
    t, c = divmod(j, 3)
    return (3*s*t + 2*r*c, s*int(c == 1), s*int(c == 2))


def family_seed(rows, columns):
    f = family_entry
    i0, j0 = rows[0], columns[0]
    return tuple(tuple(f(i,j)[k]+f(i0,j0)[k]-f(i,j0)[k]-f(i0,j)[k] for k in range(3))
                 for i in rows[1:] for j in columns[1:])


ROOTS = ((1,0), (0,1), (-1,1), (-1,0), (0,-1), (1,-1))


def evaluate_family(poly, seed):
    result = defaultdict(lambda: [0, 0])
    for e, c in poly.items():
        h, x, y = (sum(a*v[k] for a, v in zip(e, seed)) for k in range(3))
        A, B = ROOTS[h % 6]
        result[x, y][0] += c*A
        result[x, y][1] += c*B
    return tuple(sorted((e, tuple(c)) for e, c in result.items() if c != [0,0]))


def minus_square_eisenstein(poly):
    result = defaultdict(lambda: [0, 0])
    for (x, y), (A, B) in poly:
        for (u, v), (C, E) in poly:
            result[x+u, y+v][0] -= A*C-B*E
            result[x+u, y+v][1] -= A*E+B*C+B*E
    return tuple(sorted((e, tuple(c)) for e, c in result.items() if c != [0,0]))

"""Small integer Laurent-polynomial kernel. Python 3.10+, standard library only.

All keys are exponent tuples. All coefficients are arbitrary-precision integers.
The identities in this module are regenerated from the displayed definitions,
not imported from the source repository or inferred from floating-point tests.
"""
from itertools import permutations

ZERO = (0, 0, 0, 0)


def clean(p):
    return {e: c for e, c in p.items() if c}


def const(c):
    return {ZERO: c} if c else {}


def add(*polys):
    result = {}
    for p in polys:
        for e, c in p.items():
            result[e] = result.get(e, 0) + c
    return clean(result)


def scale(p, c):
    return clean({e: c * v for e, v in p.items()})


def mul(p, q):
    result = {}
    for e, a in p.items():
        for f, b in q.items():
            key = tuple(x + y for x, y in zip(e, f))
            result[key] = result.get(key, 0) + a * b
    return clean(result)


def conj(p):
    return {tuple(-v for v in e): c for e, c in p.items()}


def var(index):
    e = [0] * 4
    e[index] = 1
    return {tuple(e): 1}


def det_terms():
    """det L on x=(1,a,b), y=(1,c,d), with L exactly as in PROOF.md."""
    xs = [const(1), var(0), var(1)]
    ys = [const(1), var(2), var(3)]
    columns = []
    for x, y in zip(xs, ys):
        z = mul(y, conj(x))
        columns += [[x, scale(conj(x), -1), {}, {}, scale(z, -1), conj(z)],
                    [{}, {}, y, scale(conj(y), -1), z, scale(conj(z), -1)]]
    answer = {}
    for p in permutations(range(6)):
        sign = -1 if sum(p[i] > p[j] for i in range(6) for j in range(i + 1, 6)) % 2 else 1
        term = const(sign)
        for j in range(6):
            term = mul(term, columns[j][p[j]])
            if not term:
                break
        answer = add(answer, term)
    return answer


def corner_R():
    """R and R-vee, independently from the Gram formulas."""
    one = const(1)
    a, b, c, d = [var(i) for i in range(4)]
    s = scale(add(one, a, b), -1)
    t = scale(add(one, c, d), -1)
    r = scale(add(one, mul(c, conj(a)), mul(d, conj(b))), -1)
    X, Y, Z = [mul(v, conj(v)) for v in (s, t, r)]
    p = add(X, Y, Z)
    sr_t = mul(mul(s, r), conj(t))
    J = add(sr_t, conj(sr_t))
    W = add(mul(X, Y), mul(X, Z), mul(Y, Z), scale(mul(mul(X, Y), Z), -1))

    def build(Jval):
        g = add(const(27), scale(p, -3), Jval)
        eta = add(const(9), scale(p, -1), Jval)
        chi = add(W, scale(mul(add(p, const(-9)), add(p, const(-18))), -1),
                  mul(add(p, const(-15)), Jval))
        return add(scale(mul(mul(g, g), eta), 4), scale(mul(chi, chi), -1))
    return build(J), build(scale(J, -1))


def undephased_exponents(e):
    a, b, c, d = e
    return (a+b+c+d, -a-c, -b-d, -a-b, a, b, -c-d, c, d)


def eisenstein_mul(z, w):
    """(a+b*zeta)(c+d*zeta), zeta^2=zeta-1."""
    a, b = z
    c, d = w
    return a*c-b*d, a*d+b*c+b*d


ROOTS = ((1, 0), (0, 1), (-1, 1), (-1, 0), (0, -1), (1, -1))


def at_sixth_seed(poly, seed):
    a = b = 0
    for e, c in poly.items():
        u, v = ROOTS[sum(x*y for x, y in zip(e, seed)) % 6]
        a += c*u
        b += c*v
    return a, b


def seed_orbit(seed):
    E = ((0, 0, 0), (0, seed[0], seed[1]), (0, seed[2], seed[3]))
    result = set()
    for transpose in (False, True):
        A = tuple(zip(*E)) if transpose else E
        for rows in permutations(range(3)):
            for cols in permutations(range(3)):
                result.add(tuple((A[i][j] + A[rows[0]][cols[0]]
                                  - A[i][cols[0]] - A[rows[0]][j]) % 6
                                 for i in rows[1:] for j in cols[1:]))
    return result

"""Theorem B audit, check 3: PRM.md 6.2 (no Tao frame is product regular), exactly.

Exact arithmetic in Z[omega] (pairs (a,b) = a + b*omega, omega^2 = -1 - omega); no floating point.
 (a) all 729 normalized sides (1; x; y) with x, y in mu_3^3: classify singular / repeated x / simple x, and
     show delta = |sum y xbar|^2 - |sum y|^2 = 0 whenever det != 0 and x simple.  Counts must be 279/324/126.
 (b) every ORDERED frame (ordered row triple, ordered column triple) of Tao's matrix S6, dephased at the frame:
     confirm entries are in mu_3, and that the horizontal AND the vertical side each fail a product-regular
     guard (det = 0, or repeated coordinate root, or delta = 0).  Also count frames with R > 0 (strict).
"""
import itertools
from fractions import Fraction


def mul(u, v):
    a, b = u
    c, d = v
    return (a * c - b * d, a * d + b * c - b * d)


def add(u, v):
    return (u[0] + v[0], u[1] + v[1])


def sub(u, v):
    return (u[0] - v[0], u[1] - v[1])


def conj(u):
    return (u[0] - u[1], -u[1])


def norm(u):
    return u[0] * u[0] - u[0] * u[1] + u[1] * u[1]


ZERO, ONE = (0, 0), (1, 0)
W = [(1, 0), (0, 1), (-1, -1)]  # omega^0, omega^1, omega^2


def det3(M):
    tot = ZERO
    for p in itertools.permutations(range(3)):
        sgn = (-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
        term = ONE
        for i in range(3):
            term = mul(term, M[i][p[i]])
        tot = add(tot, term) if sgn > 0 else sub(tot, term)
    return tot


def classify_side(ex):
    """ex: 6 exponents (x0,x1,x2,y0,y1,y2) in Z/3."""
    x = [W[e % 3] for e in ex[:3]]
    y = [W[e % 3] for e in ex[3:]]
    if det3([[ONE] * 3, x, y]) == ZERO:
        return 'singular', None
    if len(set(e % 3 for e in ex[:3])) < 3:
        return 'repeated_x', None
    t = ZERO
    r = ZERO
    for j in range(3):
        t = add(t, y[j])
        r = add(r, mul(y[j], conj(x[j])))
    return 'simple_x', norm(r) - norm(t)


counts = {}
for ex in itertools.product(range(3), repeat=6):
    kind, delta = classify_side(ex)
    counts[kind] = counts.get(kind, 0) + 1
    if kind == 'simple_x':
        assert delta == 0, ('counterexample', ex, delta)
print('(a) 729 cubic sides:', counts)
assert counts == {'singular': 279, 'repeated_x': 324, 'simple_x': 126}

# (b) Tao frames
TAO = [[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
       [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]]
# sanity: Tao is Hadamard (exactly)
for i in range(6):
    for k in range(6):
        sm = ZERO
        for j in range(6):
            sm = add(sm, W[(TAO[i][j] - TAO[k][j]) % 3])
        assert sm == ((6, 0) if i == k else ZERO)


def gram_R(rows):
    """R from the Gram of a 3x3 mu_3 side given by exponent rows (exact rationals via Eisenstein norms)."""
    def ip(a, b):
        s = ZERO
        for j in range(3):
            s = add(s, W[(a[j] - b[j]) % 3])
        return s
    s, t, r = ip(rows[1], rows[0]), ip(rows[2], rows[0]), ip(rows[2], rows[1])
    X, Y, Z = norm(s), norm(t), norm(r)
    srt = mul(mul(s, r), conj(t))
    J = 2 * srt[0] - srt[1]  # 2 Re(a + b omega) = 2a - b
    p = X + Y + Z
    g = 27 - 3 * p + J
    eta = 9 - p + J
    chi = X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi


nframes = nstrict = 0
fail_h = fail_v = 0
for I in itertools.permutations(range(6), 3):
    for Jc in itertools.permutations(range(6), 3):
        nframes += 1
        i0, j0 = I[0], Jc[0]
        K = [[(TAO[i][j] - TAO[i][j0] - TAO[i0][j] + TAO[i0][j0]) % 3 for j in range(6)] for i in range(6)]
        assert all(K[i0][j] == 0 for j in range(6)) and all(K[i][j0] == 0 for i in range(6))
        cc = [j for j in range(6) if j not in Jc]
        rc = [i for i in range(6) if i not in I]
        hside = [K[I[1]][j] for j in cc] + [K[I[2]][j] for j in cc]
        vside = [K[i][Jc[1]] for i in rc] + [K[i][Jc[2]] for i in rc]
        for side, which in ((hside, 'h'), (vside, 'v')):
            kind, delta = classify_side(side)
            ok_fail = kind in ('singular', 'repeated_x') or delta == 0
            assert ok_fail, ('Tao frame passes guards', I, Jc, which)
        fail_h += 1
        fail_v += 1
        Rh = gram_R([[K[i][j] for j in cc] for i in I])
        nstrict += Rh > 0
print(f'(b) Tao ordered frames: {nframes}; horizontal guard fails in {fail_h}, vertical in {fail_v}; '
      f'strict (R>0) frames: {nstrict}')
assert nframes == 14400
print('CHECK 3 PASSED')

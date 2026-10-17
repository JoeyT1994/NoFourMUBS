#!/usr/bin/env python3
"""Exact full-space isolation certificate for the order-six product MUB triple.

Python standard library only. Arithmetic is Q(sqrt(3)), represented by pairs
of fractions, with formal complex pairs over that real field. No atlas,
floating point, external data files, or classification assertion is used.
"""

from fractions import Fraction as F
from pathlib import Path
import hashlib
import json

if not __debug__:
    raise SystemExit("Run without -O: assertions are certificate checks.")


class R:
    """The real quadratic field Q(sqrt(3))."""
    __slots__ = ("a", "b")

    def __init__(self, a=0, b=0):
        if isinstance(a, R):
            assert b == 0
            self.a, self.b = a.a, a.b
        else:
            self.a, self.b = F(a), F(b)

    @staticmethod
    def cast(x):
        return x if isinstance(x, R) else R(x)

    def __add__(self, y):
        y = R.cast(y)
        return R(self.a+y.a, self.b+y.b)

    __radd__ = __add__

    def __neg__(self):
        return R(-self.a, -self.b)

    def __sub__(self, y):
        return self + -R.cast(y)

    def __rsub__(self, y):
        return R.cast(y) + -self

    def __mul__(self, y):
        y = R.cast(y)
        return R(self.a*y.a+3*self.b*y.b, self.a*y.b+self.b*y.a)

    __rmul__ = __mul__

    def __truediv__(self, y):
        y = R.cast(y)
        n = y.a*y.a-3*y.b*y.b
        if not n:
            raise ZeroDivisionError
        return self * R(y.a/n, -y.b/n)

    def __bool__(self):
        return bool(self.a or self.b)

    def __eq__(self, y):
        y = R.cast(y)
        return self.a == y.a and self.b == y.b

    def ub_abs(self):
        # sqrt(3) < 7/4 follows from 3 < 49/16.
        return abs(self.a)+F(7, 4)*abs(self.b)

    def mod(self, p, sqrt3):
        return ((self.a.numerator*pow(self.a.denominator, -1, p))
                + sqrt3*self.b.numerator*pow(self.b.denominator, -1, p)) % p

    def serial(self):
        return [str(self.a), str(self.b)]


class C:
    """Formal complex pair a+i*b, a,b in R."""
    __slots__ = ("a", "b")

    def __init__(self, a=0, b=0):
        if isinstance(a, C):
            assert b == 0
            self.a, self.b = a.a, a.b
        else:
            self.a, self.b = R(a), R(b)

    @staticmethod
    def cast(x):
        return x if isinstance(x, C) else C(x)

    def __add__(self, y):
        y = C.cast(y)
        return C(self.a+y.a, self.b+y.b)

    __radd__ = __add__

    def __neg__(self):
        return C(-self.a, -self.b)

    def __sub__(self, y):
        return self + -C.cast(y)

    def __rsub__(self, y):
        return C.cast(y) + -self

    def __mul__(self, y):
        y = C.cast(y)
        return C(self.a*y.a-self.b*y.b, self.a*y.b+self.b*y.a)

    __rmul__ = __mul__

    def __truediv__(self, y):
        y = C.cast(y)
        den = y.a*y.a+y.b*y.b
        return self * C(y.a/den, -y.b/den)

    def __pow__(self, n):
        assert isinstance(n, int) and n >= 0
        out = C(1)
        for _ in range(n):
            out = out*self
        return out

    def conj(self):
        return C(self.a, -self.b)

    def abs2(self):
        return self.a*self.a+self.b*self.b

    def __bool__(self):
        return bool(self.a or self.b)

    def __eq__(self, y):
        y = C.cast(y)
        return self.a == y.a and self.b == y.b


I = C(0, 1)
W = C(F(-1, 2), R(0, F(1, 2)))
PAIRS = [(a, b) for a in range(6) for b in range(a+1, 6)]
VARIABLES = ([('H', r, c) for r in range(1, 6) for c in range(1, 6)]
             + [('K', r, c) for r in range(1, 6) for c in range(6)])


def adj(A):
    return [[A[r][c].conj() for r in range(len(A))]
            for c in range(len(A[0]))]


def mul(A, B):
    return [[sum((A[r][k]*B[k][c] for k in range(len(B))), C())
             for c in range(len(B[0]))] for r in range(len(A))]


def product_triple():
    """r=3a+b, c=3j+k: H=(-1)^(aj)w^(bk), K=i^a w^(b^2)H."""
    H = [[(-1)**((r//3)*(c//3))*W**((r%3)*(c%3))
          for c in range(6)] for r in range(6)]
    K = [[I**(r//3)*W**((r%3)**2)*H[r][c]
          for c in range(6)] for r in range(6)]
    return H, K


def check_local_factor_mubs():
    """Check the complete qubit triple and qutrit quartet used in the proof."""
    qutrit = [[[W**(n*r*r+r*c) for c in range(3)] for r in range(3)]
              for n in range(3)]
    qubit = [[[(-1)**(r*c)*I**(n*r) for c in range(2)] for r in range(2)]
             for n in range(2)]
    for d, bases in ((2, qubit), (3, qutrit)):
        for A in bases:
            assert all(z.abs2() == 1 for row in A for z in row)
            gram = mul(adj(A), A)
            assert all(gram[r][c] == (d if r == c else 0)
                       for r in range(d) for c in range(d))
        for n, A in enumerate(bases):
            for B in bases[n+1:]:
                cross = mul(adj(A), B)
                assert all(z.abs2() == d for row in cross for z in row)


def det3(A):
    return (A[0][0]*(A[1][1]*A[2][2]-A[1][2]*A[2][1])
            - A[0][1]*(A[1][0]*A[2][2]-A[1][2]*A[2][0])
            + A[0][2]*(A[1][0]*A[2][1]-A[1][1]*A[2][0]))


def check_triple(H, K):
    assert W**3 == 1 and W != 1 and I*I == -1
    assert all(H[0][c] == K[0][c] == 1 for c in range(6))
    assert all(H[r][0] == 1 for r in range(6))
    for A in (H, K):
        assert all(z.abs2() == 1 for row in A for z in row)
        gram = mul(adj(A), A)
        assert all(gram[r][c] == (6 if r == c else 0)
                   for r in range(6) for c in range(6))
    M = mul(adj(H), K)
    assert all(z.abs2() == 6 for row in M for z in row)
    for A in (H, K, M):
        assert det3([[A[r][c] for c in (0, 1, 3)] for r in (0, 1, 2)]) == 0
    # The M transition, after dephasing, is H with within-block row order
    # 0,2,1. This checks all three edges are the ordinary Fourier class.
    row_order = (0, 2, 1, 3, 5, 4)
    for r in range(6):
        for c in range(6):
            dephased = M[r][c]*M[0][0]/(M[r][0]*M[0][c])
            assert dephased == H[row_order[r]][c]
    # Chinese-remainder permutations identify H with the cyclic Fourier F6.
    zeta6 = -W**2
    fourier_rows = (0, 2, 4, 3, 5, 1)
    fourier_cols = (0, 4, 2, 3, 1, 5)
    assert all(H[r][c] == zeta6**(fourier_rows[r]*fourier_cols[c])
               for r in range(6) for c in range(6))
    # Conjugation is already in the finite equivalence orbit: exchange H,K,
    # apply common row phase conjugate(D), and negate each F3 column index.
    for r in range(6):
        dbar = K[r][0].conj()
        for c in range(6):
            assert dbar*K[r][row_order[c]] == H[r][c].conj()
            assert dbar*H[r][row_order[c]] == K[r][c].conj()
    return M


def jacobian(H, K, M):
    """Direct derivative of the 96 raw triple equations, at the product point."""
    J = [[R() for _ in VARIABLES] for _ in range(96)]
    for v, (kind, r, c) in enumerate(VARIABLES):
        A = H if kind == 'H' else K
        off = 0 if kind == 'H' else 30
        for s, (a, b) in enumerate(PAIRS):
            d = C()
            if c == a:
                d -= I*A[r][a].conj()*A[r][b]
            if c == b:
                d += I*A[r][a].conj()*A[r][b]
            J[off+s][v] = d.a
            J[off+15+s][v] = d.b
        for a in range(6):
            for b in range(6):
                if kind == 'H' and a == c:
                    dm = -I*H[r][c].conj()*K[r][b]
                elif kind == 'K' and b == c:
                    dm = I*H[r][a].conj()*K[r][c]
                else:
                    continue
                J[60+6*a+b][v] = 2*(M[a][b].conj()*dm).a
    return J


def monomial_jacobian_and_weights(H, K):
    """Independent phase-monomial expansion of every residual.

    The cross equations are expanded as 6+2 Re sum_{r<s} m_r conjugate(m_s),
    independently of the matrix-product derivative used in jacobian().
    The same expansion computes the rigorous Taylor row weights.
    """
    lookup = {v: j for j, v in enumerate(VARIABLES)}
    J = [[R() for _ in VARIABLES] for _ in range(96)]
    weights = [0]*96

    def exponent(*terms):
        out = {}
        for sign, which, r, c in terms:
            k = lookup.get((which, r, c))
            if k is not None:
                out[k] = out.get(k, 0)+sign
        return {k: v for k, v in out.items() if v}

    def add(row, coefficient, exponents, imag=False, amplitude=1):
        derivative = I*coefficient
        value = derivative.b if imag else derivative.a
        for k, v in exponents.items():
            J[row][k] += amplitude*v*value
        weights[row] += amplitude*sum(abs(v) for v in exponents.values())**2

    for which, A, offset in (('H', H, 0), ('K', K, 30)):
        for j, (a, b) in enumerate(PAIRS):
            for r in range(6):
                coefficient = A[r][a].conj()*A[r][b]
                exp = exponent((-1, which, r, a), (1, which, r, b))
                add(offset+j, coefficient, exp)
                add(offset+15+j, coefficient, exp, imag=True)
    for a in range(6):
        for b in range(6):
            m = [H[r][a].conj()*K[r][b] for r in range(6)]
            for r in range(6):
                for s in range(r+1, 6):
                    exp = exponent((-1, 'H', r, a), (1, 'K', r, b),
                                   (1, 'H', s, a), (-1, 'K', s, b))
                    add(60+6*a+b, m[r]*m[s].conj(), exp, amplitude=2)
    return J, weights


def pivot_rows_mod(J, p=13, root=4):
    assert root*root % p == 3
    A = [[x.mod(p, root) for x in row] for row in J]
    order = list(range(len(A)))
    rows = []
    for c in range(55):
        k = len(rows)
        r = next((r for r in range(k, len(A)) if A[r][c]), None)
        if r is None:
            continue
        A[k], A[r] = A[r], A[k]
        order[k], order[r] = order[r], order[k]
        inv = pow(A[k][c], -1, p)
        A[k] = [x*inv % p for x in A[k]]
        for t in range(k+1, len(A)):
            s = A[t][c]
            if s:
                A[t] = [(a-s*b) % p for a, b in zip(A[t], A[k])]
        rows.append(order[k])
    assert len(rows) == 55, f'Modular rank is {len(rows)}'
    return rows


def determinant_mod(A, p):
    A = [row[:] for row in A]
    det = 1
    for c in range(len(A)):
        r = next((r for r in range(c, len(A)) if A[r][c]), None)
        if r is None:
            return 0
        if r != c:
            A[r], A[c] = A[c], A[r]
            det = -det
        d = A[c][c]
        det = det*d % p
        inv = pow(d, -1, p)
        for t in range(c+1, len(A)):
            s = A[t][c]*inv % p
            for j in range(c+1, len(A)):
                A[t][j] = (A[t][j]-s*A[c][j]) % p
    return det % p


def inverse(A):
    n = len(A)
    B = [row[:]+[R(int(i == j)) for j in range(n)]
         for i, row in enumerate(A)]
    for c in range(n):
        r = next(r for r in range(c, n) if B[r][c])
        B[c], B[r] = B[r], B[c]
        d = B[c][c]
        B[c] = [x/d for x in B[c]]
        for t in range(n):
            if t == c:
                continue
            d = B[t][c]
            if d:
                B[t] = [x-d*y for x, y in zip(B[t], B[c])]
    assert all(B[i][j] == int(i == j) for i in range(n) for j in range(n))
    return [row[n:] for row in B]


def gram_weights():
    wh = [5 if a == 0 else 20 for a, b in PAIRS]
    return wh+wh+[20]*30+[90 if a == 0 else 360 for a in range(6) for b in range(6)]


def main():
    check_local_factor_mubs()
    print('PASS: the qubit triple and the complete qutrit quartet are exact MUBs.', flush=True)
    H, K = product_triple()
    M = check_triple(H, K)
    print('PASS: exact MUB triple, canonical gauge, three Fourier edges.', flush=True)
    J = jacobian(H, K, M)
    J_independent, weights = monomial_jacobian_and_weights(H, K)
    assert J == J_independent
    assert weights == gram_weights()
    print('PASS: independent monomial Jacobian and all 96 Taylor weights.', flush=True)
    assert all(x.a.denominator & (x.a.denominator-1) == 0
               and x.b.denominator & (x.b.denominator-1) == 0
               for row in J for x in row)
    rows = pivot_rows_mod(J)
    minor = [J[r] for r in rows]
    dmod = determinant_mod([[x.mod(13, 4) for x in row] for row in minor], 13)
    assert dmod != 0
    print(f'PASS: rank 55, determinant modulo 13 = {dmod}.', flush=True)
    B = inverse(minor)
    # Independent exact multiplication of the computed inverse and the minor.
    assert all(sum((B[i][k]*minor[k][j] for k in range(55)), R()) == int(i == j)
               for i in range(55) for j in range(55))
    inv_bound = max(sum((x.ub_abs() for x in row), F()) for row in B)
    weighted_bound = max(sum((x.ub_abs()*weights[rows[j]] for j, x in enumerate(row)), F())
                         for row in B)
    # At a second zero x, Taylor's theorem gives
    # ||x|| <= (weighted_bound/2) ||x||^2.  This is stronger for isolating
    # the known zero than a two-point injectivity estimate.
    radius_den = 1
    while F(1, radius_den)*weighted_bound/2 >= 1:
        radius_den *= 2
    radius = F(1, radius_den)
    assert weighted_bound*radius/2 < 1
    injectivity_radius = radius/2
    assert weighted_bound*injectivity_radius < 1
    here = Path(__file__).resolve().parent
    receipt = {
        'status': 'CERTIFIED, exact standard-library replay',
        'statements': [
            'The exact 96 by 55 Jacobian in the full canonical phase gauge has rank 55.',
            'The product triple is the unique exact MUB triple in the certified closed phase cube.',
            'All three transitions of the product triple are equivalent to the ordinary Fourier matrix.',
            'The complex conjugate triple is in the same allowed finite equivalence orbit.',
            'The local MUB identities used in PRODUCT_NONEXTENSION.md hold exactly.',
        ],
        'prime': 13,
        'sqrt3_mod_prime': 4,
        'row_order': 'Re upper(H_dagger_H), Im upper(H_dagger_H), Re upper(K_dagger_K), Im upper(K_dagger_K), row-major |H_dagger_K|^2',
        'variable_order': VARIABLES,
        'minor_row_indices_zero_based': rows,
        'minor_column_indices_zero_based': list(range(55)),
        'minor_determinant_mod_prime': dmod,
        'exact_inverse_norm_upper_bound': str(inv_bound),
        'weighted_derivative_constant_upper_bound': str(weighted_bound),
        'certified_phase_cube_radius_radians': str(radius),
        'radial_Taylor_constant_at_cube_radius': str(weighted_bound*radius/2),
        'nonzero_solution_phase_norm_lower_bound': str(2/weighted_bound),
        'injectivity_cube_radius_radians': str(injectivity_radius),
        'verifier_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    (here/'isolated_receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    (here/'isolated_inverse.json').write_text(json.dumps({
        'basis': ['1', 'sqrt(3)'],
        'row_selection': rows,
        'entries': [[x.serial() for x in row] for row in B],
    }, separators=(',', ':'))+'\n')
    print(json.dumps({k: v for k, v in receipt.items() if 'indices' not in k and k != 'variable_order'}, indent=2))
    print('PASS: exact inverse and explicit full-space isolation radius.')


if __name__ == '__main__':
    main()

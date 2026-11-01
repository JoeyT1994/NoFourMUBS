#!/usr/bin/env python3
"""Exact independent verification of Fourier-anchor Lemma Q.

Only Python's standard library is used.  All proof checks take place in
    Z[w, z, z^-1] / (w^2 + w + 1),
with involution w* = w^2 and z* = z^-1.  There are no floating-point
calculations in the verification.  Setting w=exp(2*pi*i/3), z=exp(i*t)
specializes every checked identity to the desired complex matrices.

The side invariant checked here is
    T(A) = -permanent(A) det(A)^2 product(A_ij)*,
and R = -(T(B)-T(B)*)^2 = 4 (Im T(B))^2.
This is checked independently against the project's seed discriminant
    R = 4 g^2 eta - chi^2
computed directly from each Gram matrix.  The project definitions are in
SideExistenceHandoff/reference/MinimalConstruction/RECONSTRUCTION.md, section 1.
"""

from itertools import permutations


class Laurent:
    """Canonical integer Laurent polynomial: (w exponent, z exponent) -> Z."""

    def __init__(self, terms=None):
        out = {}
        if isinstance(terms, int):
            terms = {(0, 0): terms}
        for (a, b), coefficient in (terms or {}).items():
            a %= 3
            reduced = [(a, coefficient)] if a < 2 else [(0, -coefficient), (1, -coefficient)]
            for new_a, new_c in reduced:
                key = (new_a, b)
                out[key] = out.get(key, 0) + new_c
        self.terms = {key: value for key, value in out.items() if value}

    @staticmethod
    def coerce(other):
        return other if isinstance(other, Laurent) else Laurent(other)

    def __add__(self, other):
        terms = dict(self.terms)
        for key, value in self.coerce(other).terms.items():
            terms[key] = terms.get(key, 0) + value
        return Laurent(terms)

    __radd__ = __add__

    def __neg__(self):
        return Laurent({key: -value for key, value in self.terms.items()})

    def __sub__(self, other):
        return self + -self.coerce(other)

    def __rsub__(self, other):
        return self.coerce(other) + -self

    def __mul__(self, other):
        out = {}
        for (a, b), c in self.terms.items():
            for (d, e), f in self.coerce(other).terms.items():
                key = (a + d, b + e)
                out[key] = out.get(key, 0) + c * f
        return Laurent(out)

    __rmul__ = __mul__

    def __pow__(self, exponent):
        if not isinstance(exponent, int) or exponent < 0:
            raise ValueError("Only nonnegative integer powers are implemented.")
        value = Laurent(1)
        base = self
        while exponent:
            if exponent % 2:
                value *= base
            base *= base
            exponent //= 2
        return value

    def star(self):
        return Laurent({(-a, -b): c for (a, b), c in self.terms.items()})

    def __eq__(self, other):
        return self.terms == self.coerce(other).terms

    def __repr__(self):
        if not self.terms:
            return "0"
        result = []
        for (a, b), c in sorted(self.terms.items(), key=lambda item: (item[0][1], item[0][0])):
            factor = ("*w" if a else "") + (f"*z^{b}" if b else "")
            result.append(f"{c}{factor}")
        return " + ".join(result)


ZERO = Laurent(0)
ONE = Laurent(1)
w = Laurent({(1, 0): 1})
z = Laurent({(0, 1): 1})
zi = Laurent({(0, -1): 1})


def matrix(rows):
    return [[Laurent.coerce(value) for value in row] for row in rows]


def identity(size, scalar=1):
    return matrix([[scalar if i == j else 0 for j in range(size)] for i in range(size)])


def adjoint(A):
    return [[A[j][i].star() for j in range(len(A))] for i in range(len(A[0]))]


def transpose(A):
    return [list(row) for row in zip(*A)]


def conjugate(A):
    return [[value.star() for value in row] for row in A]


def at_z_one(value):
    result = ZERO
    for (a, b), coefficient in value.terms.items():
        result += Laurent({(a, 0): coefficient})
    return result


def matmul(A, B):
    return [[sum((A[i][k] * B[k][j] for k in range(len(B))), ZERO)
             for j in range(len(B[0]))] for i in range(len(A))]


def matsub(A, B):
    return [[a - b for a, b in zip(arow, brow)] for arow, brow in zip(A, B)]


def product(values):
    result = ONE
    for value in values:
        result *= value
    return result


def perm(A):
    return sum((product(A[i][p[i]] for i in range(len(A)))
                for p in permutations(range(len(A)))), ZERO)


def det(A):
    result = ZERO
    for p in permutations(range(len(A))):
        inversions = sum(p[i] > p[j] for i in range(len(A)) for j in range(i + 1, len(A)))
        result += (-1 if inversions % 2 else 1) * product(A[i][p[i]] for i in range(len(A)))
    return result


def entry_product(A):
    return product(value for row in A for value in row)


def side_T(A):
    return -perm(A) * det(A)**2 * entry_product(A).star()


def gram_invariants(G):
    """Project invariants of G=[[3,s*,t*],[s,3,r*],[t,r,3]].

    These definitions evaluate the seed discriminant without using any
    side-existence or matched-completion theorem.
    """
    s, t, r = G[1][0], G[2][0], G[2][1]
    X, Y, Z = s*s.star(), t*t.star(), r*r.star()
    p = X + Y + Z
    triangle = s*r*t.star()
    J = triangle + triangle.star()
    W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3*p + J
    eta = 9 - p + J
    chi = W - (p - 9)*(p - 18) + (p - 15)*J
    R = 4*g*g*eta - chi*chi
    return dict(s=s, t=t, r=r, X=X, Y=Y, Z=Z, p=p, J=J, W=W,
                g=g, eta=eta, chi=chi, R=R)


checks = []


def check(label, actual, expected):
    if actual != expected:
        raise AssertionError(f"FAIL: {label}\nactual: {actual!r}\nexpected: {expected!r}")
    checks.append(label)
    print(f"PASS: {label}")


check("cyclotomic relation", w*w + w + 1, ZERO)
check("conjugation on w", w.star(), w*w)
check("unitary Laurent parameter", z*zi, ONE)

F = [[w**(i*j) for j in range(3)] for i in range(3)]
D = [ONE, z, ONE]
K = [row + row for row in F] + [
    [F[i][j] * D[j] for j in range(3)] + [-F[i][j] * D[j] for j in range(3)]
    for i in range(3)
]
check("F3 F3* = 3I", matmul(F, adjoint(F)), identity(3, 3))
check("K K* = 6I", matmul(K, adjoint(K)), identity(6, 6))
check("all 36 entries of K have unit modulus", [[a*a.star() for a in row] for row in K], matrix([[1]*6 for _ in range(6)]))
zeta = -w*w
row_freq = [0, 2, 4, 3, 5, 1]
column_freq = [0, 4, 2, 3, 1, 5]
check("F6 row frequency indices form a permutation", sorted(row_freq), list(range(6)))
check("F6 column frequency indices form a permutation", sorted(column_freq), list(range(6)))
check("K(0) equals a row/column permutation of F6",
      [[at_z_one(value) for value in row] for row in K],
      [[zeta**(a*b) for b in column_freq] for a in row_freq])

row_order = [1, 3, 5, 0, 2, 4]
column_order = [0, 2, 4, 1, 3, 5]
reordered = [[K[i][j] for j in column_order] for i in row_order]
H = [[reordered[i][j] * reordered[0][j].star()
      * reordered[i][0].star() * reordered[0][0]
      for j in range(6)] for i in range(6)]
check("dephased first row", H[0], [ONE]*6)
check("dephased first column", [row[0] for row in H], [ONE]*6)
check("H H* = 6I", matmul(H, adjoint(H)), identity(6, 6))

E = [row[:3] for row in H[:3]]
B = [row[3:] for row in H[:3]]
C = [row[:3] for row in H[3:]]
G = [row[3:] for row in H[3:]]
check("explicit selected corner E", E, matrix([
    [1, 1, 1], [1, w, -w*w*z], [1, w*w, -w*z],
]))
check("explicit row side B", B, matrix([
    [1, 1, 1], [w*w*z, -1, -w], [w*z, -1, -w*w],
]))
check("explicit column side C", C, matrix([
    [1, w, w*w], [1, w*w, w], [1, 1, -z],
]))
check("explicit last block G", G, matrix([
    [w*w, 1, w], [w, 1, w*w], [z, -1, -1],
]))
check("BB* = 6I - EE*", matmul(B, adjoint(B)), matsub(identity(3, 6), matmul(E, adjoint(E))))
check("C*C = 6I - E*E", matmul(adjoint(C), C), matsub(identity(3, 6), matmul(adjoint(E), E)))

check("permanent B", perm(B), 2*z - 1)
check("determinant B", det(B), (w - w*w)*(2*z - 1))
check("entry product B", entry_product(B), z*z)
check("permanent C", perm(C), z - 2)
check("determinant C", det(C), (w - w*w)*(z - 2))
check("entry product C", entry_product(C), -z)

TB = side_T(B)
TC = side_T(C)
check("T(B) factored", TB, 3*(2*z - 1)**3*zi**2)
check("T(B) expanded", TB, 24*z - 36 + 18*zi - 3*zi**2)
check("T(C) factored", TC, -3*(z - 2)**3*zi)
check("T(C) = conjugate T(B)", TC, TB.star())
J = TB - TB.star()
check("twice-i imaginary part", J, 3*(z - zi)*(z + zi + 2))
check("opposite column-side signature", TC - TC.star(), -J)

R = -J**2
check("R Laurent factorization", R, -9*(z - 1)**2*(z + 1)**6*zi**4)

Gh = matsub(identity(3, 6), matmul(E, adjoint(E)))
# The project's vertical convention uses E^T conjugate(E), the transpose
# of the ordinary column Gram E*E.  Its physical row side is C^T.
Gv = matsub(identity(3, 6), matmul(transpose(E), conjugate(E)))
check("project vertical Gram is realized by C^T", Gv,
      matmul(transpose(C), conjugate(C)))
Ih, Iv = gram_invariants(Gh), gram_invariants(Gv)
check("horizontal Gram s,t,r", [Ih[key] for key in ["s", "t", "r"]],
      [w*w*(1 + z), w*(1 + z), ZERO])
check("vertical Gram s,t,r", [Iv[key] for key in ["s", "t", "r"]],
      [ZERO, -1 - z, -1 - z])
u = z + zi  # u = 2 cos(t)
m = 2 + u
check("horizontal Gram X,Y,Z", [Ih[key] for key in ["X", "Y", "Z"]], [m, m, ZERO])
check("vertical Gram X,Y,Z", [Iv[key] for key in ["X", "Y", "Z"]], [ZERO, m, m])
expected_invariants = dict(p=2*m, J=ZERO, W=m*m,
                           g=15 - 6*u, eta=5 - 2*u,
                           chi=-3*u*u + 42*u - 66)
for label, invariants in [("horizontal", Ih), ("vertical", Iv)]:
    for name, expected in expected_invariants.items():
        check(f"{label} project invariant {name}", invariants[name], expected)
    check(f"{label} project R = side R", invariants["R"], R)
check("project chi = 2 Re T(B)", Ih["chi"], TB + TB.star())
check("project g = det Gh", Ih["g"], det(Gh))
check("project g = det Gv", Iv["g"], det(Gv))

# Under z=exp(i*t), sin^2(t) = (2-z^2-z^-2)/4 and
# (1+cos(t))^2 = (2+z+z^-1)^2/4.  The product with 144
# therefore has an integral Laurent expression as written below.
check("R = 144 sin^2(t) (1+cos(t))^2", R,
      9*(2 - z**2 - zi**2)*(2 + z + zi)**2)

# Let c=cos(t).  144(1-c^2)(1+c)^2 = 144+288c-288c^3-144c^4.
check("R polynomial in cos(t)", R,
      144 + 144*(z + zi) - 36*(z + zi)**3 - 9*(z + zi)**4)

# sin^2(t/2)=(2-z-z^-1)/4 and cos^2(t/2)=(2+z+z^-1)/4.
# 2304/4^4=9, so this exact identity requires no fractions.
check("R = 2304 sin^2(t/2) cos^6(t/2)", R,
      9*(2 - z - zi)*(2 + z + zi)**3)

# Alternative format requested by the brief: 288 sin^2(t/2)(1+cos(t))^3.
# 288/(4*8)=9.
check("R = 288 sin^2(t/2) (1+cos(t))^3", R,
      9*(2 - z - zi)*(2 + z + zi)**3)

# Euler derivation z*d/dz becomes (1/i)*d/dt on the unit circle.
# At z=1 the kth t derivative equals i^k times sum_b b^k coeff_b.
# R is independent of w; check exact R(0), R'(0), R''(0), R''''(0).
check("R is independent of w", {a for a, b in R.terms}, {0})
derivative0 = sum(R.terms.values())
derivative1_over_i = sum(b*c for (a, b), c in R.terms.items())
derivative2 = -sum(b*b*c for (a, b), c in R.terms.items())
derivative4 = sum(b**4*c for (a, b), c in R.terms.items())
check("R(0)=0", derivative0, 0)
check("R'(0)=0", derivative1_over_i, 0)
check("R''(0)=1152", derivative2, 1152)
check("R''''(0)=-11520", derivative4, -11520)

print(f"\nALL {len(checks)} EXACT IDENTITY CHECKS PASS.")
print("R(t) = 144 sin(t)^2 (1+cos(t))^2")
print("     = 2304 sin(t/2)^2 cos(t/2)^6")
print("     = 576 t^2 - 480 t^4 + O(t^6).")
print("Consequently R(t)>0 and Im T(B)>0 for every 0<t<pi.")

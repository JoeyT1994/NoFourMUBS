#!/usr/bin/env python3
"""Independent exact zero-product audit; standard library only.

Derives the signature from determinant/permanent in Z[w]/(w^2+w+1)
and Laurent variables, then checks its eight sign-corner Walsh sums.
It does not import any part of the recovered Return O implementation.
This checks the finite algebra of the accompanying paper argument,
not Lean elaboration or a conclusion from floating point samples.
"""

from dataclasses import dataclass
from itertools import permutations, product


@dataclass(frozen=True)
class E:
    """The Eisenstein integer a+b*w, where w^2+w+1=0."""
    a: int = 0
    b: int = 0

    def __add__(self, other):
        other = eis(other)
        return E(self.a + other.a, self.b + other.b)

    __radd__ = __add__

    def __neg__(self):
        return E(-self.a, -self.b)

    def __sub__(self, other):
        return self + -eis(other)

    def __rsub__(self, other):
        return eis(other) + -self

    def __mul__(self, other):
        other = eis(other)
        return E(self.a * other.a - self.b * other.b,
                 self.a * other.b + self.b * other.a - self.b * other.b)

    __rmul__ = __mul__

    def __pow__(self, power):
        if not isinstance(power, int) or power < 0:
            raise ValueError("Nonnegative integral field power required")
        out, base = E(1), self
        while power:
            if power & 1:
                out *= base
            base *= base
            power >>= 1
        return out

    def conj(self):
        return E(self.a - self.b, -self.b)


def eis(value):
    if isinstance(value, E):
        return value
    if isinstance(value, int):
        return E(value)
    raise TypeError(type(value))


N = 6
ZERO = (0,) * N


class L:
    """Six-variable Laurent polynomials over Eisenstein integers."""
    def __init__(self, value=0):
        if isinstance(value, L):
            self.d = value.d.copy()
        elif isinstance(value, dict):
            self.d = {m: eis(c) for m, c in value.items() if eis(c) != E()}
        else:
            value = eis(value)
            self.d = {ZERO: value} if value != E() else {}

    def __add__(self, other):
        other = L(other)
        out = self.d.copy()
        for m, c in other.d.items():
            out[m] = out.get(m, E()) + c
        return L(out)

    __radd__ = __add__

    def __neg__(self):
        return L({m: -c for m, c in self.d.items()})

    def __sub__(self, other):
        return self + -L(other)

    def __rsub__(self, other):
        return L(other) + -self

    def __mul__(self, other):
        other = L(other)
        out = {}
        for m, c in self.d.items():
            for n, d in other.d.items():
                key = tuple(a + b for a, b in zip(m, n))
                out[key] = out.get(key, E()) + c * d
        return L(out)

    __rmul__ = __mul__

    def __pow__(self, power):
        if not isinstance(power, int) or power < 0:
            raise ValueError("Nonnegative integral polynomial power required")
        out, base = L(1), self
        while power:
            if power & 1:
                out *= base
            base *= base
            power >>= 1
        return out

    def star(self):
        return L({tuple(-e for e in m): c.conj() for m, c in self.d.items()})

    def signs(self, signs):
        out = {}
        for m, c in self.d.items():
            factor = 1
            for sign, exponent in zip(signs, m):
                if exponent & 1:
                    factor *= sign
            out[m] = factor * c
        return L(out)


def monomial(*exponents):
    if len(exponents) > N:
        raise ValueError("Too many variables")
    return L({tuple(exponents) + (0,) * (N - len(exponents)): 1})


def determinant(matrix, signed=True):
    out = L(0)
    for perm in permutations(range(3)):
        term = L(1)
        for i in range(3):
            term *= matrix[i][perm[i]]
        inv = sum(perm[i] > perm[j] for i in range(3) for j in range(i + 1, 3))
        out += (-1 if signed and inv & 1 else 1) * term
    return out


CHECKS = 0


def require(condition, label):
    global CHECKS
    if not condition:
        raise AssertionError(label)
    CHECKS += 1
    print("PASS", label)


def equal(left, right, label):
    require(not (L(left) - L(right)).d, label)


def main():
    w = E(0, 1)
    require(w ** 2 + w + 1 == E(), "primitive cube root equation")
    require(w != E(1) and w ** 3 == E(1), "cube root is nontrivial")
    a, b, c = monomial(1), monomial(0, 1), monomial(0, 0, 1)
    x = (E(1), w, w ** 2)
    side = ((L(1),) * 3, tuple(L(q) for q in x), (a, b, c))
    det = determinant(side)
    per = determinant(side, signed=False)
    q = a + b * w + c * w ** 2
    equal(det, q * (w ** 2 - w), "Fourier determinant from six permutation terms")
    equal(per, -q, "Fourier permanent from six permutation terms")
    psi = per * det ** 2 * monomial(-1, -1, -1)
    equal(psi, 3 * q ** 3 * monomial(-1, -1, -1), "original signature is 3 q^3/(abc)")
    D = psi - psi.star()
    odd_parts = (
        monomial(2, -1, -1) - monomial(-2, 1, 1),
        monomial(-1, 2, -1) - monomial(1, -2, 1),
        monomial(-1, -1, 2) - monomial(1, 1, -2),
    )
    equal(D, 3 * sum(odd_parts, L()), "signature difference separates into three sign characters")
    signs = tuple(product((-1, 1), repeat=3))
    for i in range(3):
        j, k = tuple(t for t in range(3) if t != i)
        walsh = sum((e[j] * e[k] * D.signs(e) for e in signs), L())
        equal(walsh, 24 * odd_parts[i], "unsquared Walsh coefficient " + str(i))

    # A corner containing both members of one column pair is automatically critical.
    paired = ((L(1),) * 3, (L(1), L(1), L(w)), (a, -a, b))
    paired_psi = (determinant(paired, signed=False) * determinant(paired) ** 2
                  * monomial(-2, -1) * (-w.conj()))
    equal(paired_psi, 24, "a double-pair corner has real signature 24")

    # Fourier inversion uses a genuinely invertible matrix.
    fourier = ((L(1),) * 3,
               (L(1), L(w ** 2), L(w)),
               (L(1), L(w), L(w ** 2)))
    equal(determinant(fourier) ** 2, -27, "matching Fourier matrix is nonsingular")

    roots = (E(1), w, w ** 2)
    possibilities = [(u, v) for u, v in product(roots, repeat=2) if u * v == E(1)]
    require(possibilities == [(E(1), E(1)), (w, w ** 2), (w ** 2, w)],
            "all normalized squared-coordinate patterns are covered")
    constant = ((L(1),) * 3, tuple(L(v) for v in x), (L(1),) * 3)
    parallel = ((L(1),) * 3, tuple(L(v) for v in x), tuple(L(v) for v in x))
    equal(determinant(constant), 0, "constant square pattern has a singular sign corner")
    equal(determinant(parallel), 0, "parallel square pattern has a singular sign corner")
    counts = {0: 0, 4: 0}
    for e in signs:
        y = tuple(e[i] * x[i].conj() for i in range(3))
        t = sum(y, E())
        r = sum((x[i].conj() * y[i] for i in range(3)), E())
        norm_t, norm_r = t * t.conj(), r * r.conj()
        require(norm_t == norm_r and norm_t in (E(0), E(4)),
                "geometric sign corner moduli " + str(e))
        counts[norm_t.a] += 1
    require(counts == {0: 2, 4: 6}, "two p=0 corners and six p=8 sign corners")

    # Boundary specialization of the permanent saturation argument.
    z = monomial(0, 0, 0, 1)
    tau = z + 3
    Z = (1 - z) * tau
    equal((3 - Z) * tau, z * (z + 2) * tau, "geometric numerator P0 factor")
    equal(3 * z ** 2 + (9 - Z) * z, z * (z + 2) * tau,
          "geometric denominator L0 factor")
    equal(tau - z, 3, "permanent saturation is exactly three")

    # Self-test exercises rejection independently of Python optimization mode.
    require(bool((D - 3 * sum(odd_parts, L()) + 1).d), "constant mutation is rejected")
    print("PASS", CHECKS, "independent exact checks; no external dependencies")


if __name__ == "__main__":
    main()

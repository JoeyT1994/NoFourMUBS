#!/usr/bin/env python3
"""Exact JMMSW MUB triple {I,H,K} in Q(i,sqrt(2),sqrt(3),sqrt(5)).

Extracted without mathematical change from the archive file
90_replay_library/04_t4_coverage/ramified_frame_necessity/verify_counterexample.py
(field class MQ, matrix helpers, exact_mub_triple, verify_phase_hadamard).
The frame-enumeration code of that file is not needed here and is omitted.
"""

from __future__ import annotations

from dataclasses import dataclass
from fractions import Fraction


N = 6
INDICES = tuple(range(N))
RADICANDS = (-1, 2, 3, 5)  # basis bits: i, sqrt(2), sqrt(3), sqrt(5)


@dataclass(frozen=True)
class MQ:
    """Element of the endpoint's multiquadratic number field."""

    coefficients: tuple[Fraction, ...]

    def __post_init__(self):
        if len(self.coefficients) != 16:
            raise ValueError("MQ needs 16 coefficients")

    @staticmethod
    def rational(value=0):
        values = [Fraction(0)] * 16
        values[0] = Fraction(value)
        return MQ(tuple(values))

    @staticmethod
    def radical(bit):
        values = [Fraction(0)] * 16
        values[1 << bit] = Fraction(1)
        return MQ(tuple(values))

    def __add__(self, other):
        other = coerce(other)
        return MQ(tuple(a + b for a, b in zip(self.coefficients, other.coefficients)))

    __radd__ = __add__

    def __neg__(self):
        return MQ(tuple(-a for a in self.coefficients))

    def __sub__(self, other):
        return self + (-coerce(other))

    def __rsub__(self, other):
        return coerce(other) - self

    def __mul__(self, other):
        other = coerce(other)
        answer = [Fraction(0)] * 16
        for left_mask, left in enumerate(self.coefficients):
            if not left:
                continue
            for right_mask, right in enumerate(other.coefficients):
                if not right:
                    continue
                scale = left * right
                common = left_mask & right_mask
                for bit, radicand in enumerate(RADICANDS):
                    if common & (1 << bit):
                        scale *= radicand
                answer[left_mask ^ right_mask] += scale
        return MQ(tuple(answer))

    __rmul__ = __mul__

    def __truediv__(self, other):
        if isinstance(other, (int, Fraction)):
            return MQ(tuple(value / other for value in self.coefficients))
        raise TypeError("only rational scalar division is used in this certificate")

    def __pow__(self, exponent):
        if exponent < 0:
            raise ValueError("negative powers are not required")
        answer, base = ONE, self
        while exponent:
            if exponent & 1:
                answer = answer * base
            base = base * base
            exponent //= 2
        return answer

    def conjugate(self):
        return MQ(tuple(
            -value if mask & 1 else value
            for mask, value in enumerate(self.coefficients)
        ))

    def is_zero(self):
        return not any(self.coefficients)

    def to_complex(self):
        roots = (1j, 2**0.5, 3**0.5, 5**0.5)
        answer = 0j
        for mask, coefficient in enumerate(self.coefficients):
            term = complex(coefficient.numerator / coefficient.denominator)
            for bit, root in enumerate(roots):
                if mask & (1 << bit):
                    term *= root
            answer += term
        return answer


def coerce(value):
    return value if isinstance(value, MQ) else MQ.rational(value)


ZERO = MQ.rational(0)
ONE = MQ.rational(1)
I = MQ.radical(0)
RT2 = MQ.radical(1)
RT3 = MQ.radical(2)
RT5 = MQ.radical(3)
RT6 = RT2 * RT3
RT10 = RT2 * RT5
RT30 = RT2 * RT3 * RT5


def matrix_adjoint(matrix):
    return [[matrix[j][i].conjugate() for j in range(N)] for i in range(N)]


def matrix_multiply(left, right):
    return [[sum((left[i][k] * right[k][j] for k in range(N)), ZERO)
             for j in range(N)] for i in range(N)]


def matrix_scale(matrix, scale):
    return [[value * scale for value in row] for row in matrix]


def exact_mub_triple():
    """JMMSW Theorem 2.4 at sin(2t)=sqrt(5)/3, cos(2t)=2/3."""
    omega = (-ONE + I * RT3) / 2
    cos_t, sin_t = RT30 / 6, RT6 / 6
    cos_psi, sin_psi = RT6 / 3, RT3 / 3
    cos_beta, sin_beta = RT10 / 10, 3 * RT10 / 10
    cos_bp = cos_beta * cos_psi - sin_beta * sin_psi
    sin_bp = sin_beta * cos_psi + cos_beta * sin_psi
    sin_2t = RT5 / 3
    inverse_denominator = RT2  # 1/(sin(beta) sin(2t))
    cos_phi = (-cos_psi**2 * cos_t + cos_bp * sin_psi * sin_t) * inverse_denominator
    sin_phi = (sin_psi * cos_psi * cos_t - sin_bp * sin_psi * sin_t) * inverse_denominator
    cos_tilde = (-sin_t * sin_psi**2 + cos_psi * cos_t * sin_bp) * inverse_denominator
    sin_tilde = (cos_psi * cos_bp * cos_t - cos_psi * sin_t * sin_psi) * inverse_denominator
    eta = cos_t + I * sin_t
    nu = cos_phi + I * sin_phi
    xi = cos_tilde + I * sin_tilde
    c3 = (-ONE + 2 * RT2 * I) / 3
    y = cos_beta + I * sin_beta

    h = [
        [ONE, ONE, ONE, ONE, ONE, ONE],
        [ONE, -(omega**2), omega, -ONE, omega**2, -omega],
        [ONE, omega*y, omega**2, y, omega, omega**2*y],
        [ONE, -ONE, ONE, -ONE, ONE, -ONE],
        [ONE, omega**2, omega, ONE, omega**2, omega],
        [ONE, -omega*y, omega**2, -y, omega, -(omega**2)*y],
    ]
    cb, nb, xb, eb = c3.conjugate(), nu.conjugate(), xi.conjugate(), eta.conjugate()
    k = [
        [ONE, ONE, ONE, ONE, ONE, ONE],
        [cb, cb*omega**2, cb*omega, -cb, -cb*omega**2, -cb*omega],
        [nb*eta, nb*eta*omega, nb*eta*omega**2,
         I*xb*eta, I*xb*eta*omega, I*xb*eta*omega**2],
        [cb, cb, cb, -cb, -cb, -cb],
        [ONE, omega**2, omega, ONE, omega**2, omega],
        [nb*eb, nb*eb*omega, nb*eb*omega**2,
         -I*xb*eb, -I*xb*eb*omega, -I*xb*eb*omega**2],
    ]
    return h, k


def verify_phase_hadamard(matrix, name):
    if any(not (value * value.conjugate() - 1).is_zero()
           for row in matrix for value in row):
        raise AssertionError(f"{name}: entrywise phase equation failed")
    gram = matrix_multiply(matrix_adjoint(matrix), matrix)
    if any(not (gram[i][j] - (6 if i == j else 0)).is_zero()
           for i in range(N) for j in range(N)):
        raise AssertionError(f"{name}: Gram equation failed")


if __name__ == "__main__":
    h, k = exact_mub_triple()
    verify_phase_hadamard(h, "H")
    verify_phase_hadamard(k, "K")
    r = matrix_scale(matrix_multiply(matrix_adjoint(h), k), RT6 / 6)
    verify_phase_hadamard(r, "H^*K/sqrt(6)")
    print("PASS exact JMMSW endpoint is a MUB triple {I,H,K}")

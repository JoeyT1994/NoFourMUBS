"""Exact small-M campaign predicate, with no reconstruction.

Contract: box contains four CLOSED, consistently lifted turn intervals.
R_enclosure is an OUTWARD enclosure supplied by the caller. Certification is
only for physical completions whose displayed corner is strict and maximal.
This module does not verify that the caller's R enclosure is outward.

The positive cutoff is extraordinarily small. Its denominator must never be
expanded. ScaledRational stores a Fraction times an arbitrary integer power
of two; all comparisons remain exact. Binary floating-point inputs are rejected.
"""
from dataclasses import dataclass
from fractions import Fraction
from typing import Any, Sequence

K = 181 * 26 * 76**26
N = 2 * K
MODULE_ID = 'EffectiveConfinement/2026-09-30/v1'


def exact_fraction(value: Any) -> Fraction:
    if isinstance(value, bool) or isinstance(value, float):
        raise TypeError('Use integers, Fraction objects or exact rational strings, not floats/bools.')
    if isinstance(value, (int, str, Fraction)):
        return Fraction(value)
    raise TypeError('Unsupported rational input.')


def exact_integer(value: Any) -> int:
    if isinstance(value, bool):
        raise TypeError('Boolean is not an exponent.')
    if isinstance(value, int):
        return value
    if isinstance(value, str) and value.strip() and value.strip().lstrip('+-').isdigit():
        return int(value)
    raise TypeError('Exponent must be an integer or decimal integer string.')


def _v2(n: int) -> int:
    if not n:
        raise ValueError('v2(0) is undefined.')
    n = abs(n)
    return (n & -n).bit_length() - 1


def _compare_positive_shift(a: int, b: int, shift: int) -> int:
    """Compare a*2**shift with b without constructing an enormous denominator."""
    if shift < 0:
        return -_compare_positive_shift(b, a, -shift)
    bits_a, bits_b = a.bit_length() + shift, b.bit_length()
    if bits_a != bits_b:
        return 1 if bits_a > bits_b else -1
    # Only reached when the result fits within the size of the supplied integer b.
    value = a << shift
    return (value > b) - (value < b)


@dataclass(frozen=True)
class ScaledRational:
    mantissa: Fraction
    exponent2: int = 0

    def __post_init__(self):
        q, e = exact_fraction(self.mantissa), exact_integer(self.exponent2)
        if not q:
            e = 0
        else:
            a, b = _v2(q.numerator), _v2(q.denominator)
            q = Fraction(q.numerator // (1 << a), q.denominator // (1 << b))
            e += a-b
        object.__setattr__(self, 'mantissa', q)
        object.__setattr__(self, 'exponent2', e)

    def compare(self, other: Any) -> int:
        other = endpoint(other)
        q, r = self.mantissa, other.mantissa
        s, t = (q > 0)-(q < 0), (r > 0)-(r < 0)
        if s != t:
            return (s > t)-(s < t)
        if not s:
            return 0
        a = abs(q.numerator) * r.denominator
        b = abs(r.numerator) * q.denominator
        return s * _compare_positive_shift(a, b, self.exponent2-other.exponent2)

    def json(self):
        return {'mantissa': str(self.mantissa), 'exponent2': str(self.exponent2)}


def endpoint(value: Any) -> ScaledRational:
    if isinstance(value, ScaledRational):
        return value
    if isinstance(value, dict):
        if set(value) != {'mantissa', 'exponent2'}:
            raise ValueError('Scaled rational object needs exactly mantissa and exponent2.')
        return ScaledRational(exact_fraction(value['mantissa']), exact_integer(value['exponent2']))
    return ScaledRational(exact_fraction(value))


CUTOFF = ScaledRational(Fraction(1), -N)


def _seed_box(box: Sequence[Sequence[Any]]):
    if len(box) != 4:
        raise ValueError('Expected exactly four turn intervals.')
    result = []
    for interval in box:
        if len(interval) != 2:
            raise ValueError('A closed interval has two endpoints.')
        lo, hi = map(exact_fraction, interval)
        if lo > hi:
            raise ValueError('Reversed seed interval; use a consistent unwrapped lift.')
        result.append([str(lo), str(hi)])
    return result


def certify_box(box: Sequence[Sequence[Any]], R_enclosure: Sequence[Any]):
    """Return a replayable conditional certificate, or None.

    No claim is made about points of the box outside strict physical D0.
    A positive certificate excludes ALL quartet-edge completions in D0,
    not just one reconstructed sheet. R_upper < m is tested strictly.
    R_upper <= 0 excludes strict D0 without any reconstruction assumptions.
    """
    normalized_box = _seed_box(box)
    if len(R_enclosure) != 2:
        raise ValueError('R_enclosure needs lower and upper endpoints.')
    lo, hi = map(endpoint, R_enclosure)
    if lo.compare(hi) > 0:
        raise ValueError('Reversed R enclosure.')
    common = {
        'module': MODULE_ID,
        'seed_units': 'turns',
        'seed_box': normalized_box,
        'R_enclosure': [lo.json(), hi.json()],
        'premises': [
            'The caller-supplied R enclosure is outward on the entire closed seed box.',
            'Only physical Hadamards with this seed as a strict maximal corner are asserted excluded.'
        ]
    }
    if hi.compare(0) <= 0:
        return dict(common, status='CERTIFIED', conclusion='outside_strict_D0',
                    accepted_inputs=[], proved_dependencies=[])
    if hi.compare(CUTOFF) < 0:
        return dict(common, status='CERTIFIED', conclusion='no_quartet_edge_on_strict_physical_D0',
                    cutoff=CUTOFF.json(), full_matrix_phase_radius='1/3072',
                    projector_radius='1/3072',
                    accepted_inputs=['MinimalConstruction/ASSUMPTIONS.md: strict-corner coverage'],
                    proved_dependencies=[
                        'CornerBounds: complementary-corner square identity',
                        'Jeronimo-Perrucci-Tsigaridas, arXiv:1112.0544v1, Theorem 1',
                        'FourierNeighbourhood/ClusterTube/EXPANDED.md: projector tube 1/30'
                    ])
    return None


def verify_certificate(certificate: dict) -> bool:
    """Replay predicate logic. This cannot authenticate the supplied R enclosure."""
    if not isinstance(certificate, dict) or certificate.get('module') != MODULE_ID:
        return False
    try:
        expected = certify_box(certificate['seed_box'], certificate['R_enclosure'])
    except (TypeError, ValueError, KeyError, ZeroDivisionError, OverflowError):
        return False
    return expected is not None and expected == certificate

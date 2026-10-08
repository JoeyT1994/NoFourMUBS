"""Exact whole-box near-rank-one predicates, in turns (angle / 2*pi).

maximal_corner_prune: every maximal physical completion is equivalent to F6,
so the entire box is outside strict physical D0. No MUB-exclusion input.
quartet_exclusion_prune: a larger quartet-free tube, using the retained F6
matrix exclusion radius 1/30. This does not assert emptiness of D0.

Both require the selected corner to be maximal in an actual Hadamard.
Unknown boxes return None. No floating-point input is accepted.
"""
from fractions import Fraction as Q
from itertools import combinations
from typing import Iterable, Sequence

TURN_RADIUS = Q(1, 2**17)  # 2*pi*radius < 2^-14, using pi < 4.


def _q(value):
    if isinstance(value, float):
        raise TypeError('Supply exact integers, strings, or Fraction values, not floats.')
    return Q(value)


def _linear_box(box, coefficients):
    lo = hi = Q(0)
    for (a, b), k in zip(box, coefficients):
        if k >= 0:
            lo, hi = lo+k*a, hi+k*b
        else:
            lo, hi = lo+k*b, hi+k*a
    return lo, hi


def _near_integer(interval, radius):
    lo, hi = interval
    # Existence of one integer n with [lo,hi] inside [n-radius,n+radius].
    left, right = hi-radius, lo+radius
    n = -((-left.numerator)//left.denominator)  # exact ceiling
    if Q(n) <= right:
        return n
    return None


def _block_witness(box: Sequence[Sequence[object]], radius, status):
    """box contains four closed unwrapped turn intervals for (a,b,c,d).

    All three row pairs, all three anchor columns, and transposes are tested.
    Wrap-around boxes should be split, or supplied in one consistent lift.
    Returns a rational witness dictionary or None.
    """
    if len(box) != 4 or any(len(pair) != 2 for pair in box):
        raise ValueError('Expected four (lower,upper) interval pairs.')
    box = tuple(tuple(_q(x) for x in pair) for pair in box)
    if any(a > b for a, b in box):
        raise ValueError('An interval has lower endpoint above its upper endpoint.')
    zero = (0,)*4
    angle = [[zero for j in range(3)] for i in range(3)]
    for k, (i, j) in enumerate(((1,1),(1,2),(2,1),(2,2))):
        angle[i][j] = tuple(int(v == k) for v in range(4))
    for transpose in (False, True):
        mat = list(zip(*angle)) if transpose else angle
        for r, s in combinations(range(3), 2):
            for anchor in range(3):
                witnesses = []
                for j in range(3):
                    if j == anchor:
                        continue
                    coefficients = tuple(mat[s][j][k]-mat[r][j][k]
                                         -mat[s][anchor][k]+mat[r][anchor][k]
                                         for k in range(4))
                    interval = _linear_box(box, coefficients)
                    integer = _near_integer(interval, radius)
                    if integer is None:
                        break
                    witnesses.append(dict(column=j, coefficients=coefficients,
                                          interval=[str(x) for x in interval], integer=integer))
                if len(witnesses) == 2:
                    return dict(status=status,
                                transpose=transpose, rows=[r,s], anchor_column=anchor,
                                turn_radius=str(radius), witnesses=witnesses,
                                conclusion=('Any maximal physical completion is equivalent to F6.'
                                            if status == 'OUTSIDE_STRICT_PHYSICAL_D0' else
                                            'Any maximal physical completion is quartet-free, using the retained F6 radius 1/30.'))
    return None


def maximal_corner_prune(box: Sequence[Sequence[object]]):
    """Exact strict-D0 exclusion; no MUB exclusion theorem is a dependency."""
    return _block_witness(box, TURN_RADIUS, 'OUTSIDE_STRICT_PHYSICAL_D0')


def quartet_exclusion_prune(box: Sequence[Sequence[object]]):
    """Larger tube, conditional on the retained F6 radius-1/30 certificate.

    Requires the selected corner to be maximal in an actual Hadamard.
    This does not assert emptiness of D0. See PROOF.md Section 7.1.
    """
    result = _block_witness(box, Q(1,2**14), 'QUARTET_FREE_USING_RETAINED_F6_TUBE')
    if result is not None:
        result['dependency'] = 'ProvenResults/FourierNeighbourhood/ClusterTube/EXPANDED.md: F6 radius 1/30'
    return result

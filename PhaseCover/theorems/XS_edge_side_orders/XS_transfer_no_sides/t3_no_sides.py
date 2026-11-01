"""XS prototype: T3 parameter membership without stored side orders or tubes.

This is a reference integration point, not a production/Lean replacement.
It checks the finite analytic inequalities needed by the new transfer theorem.
The caller must already have established that Q encloses genuine Hadamards
and that `coarse_distance` is an upper bound for their horizontal phase
quotient distance to F6.  Passing a number does not prove that premise.
The accepted W chart/coverage theorem is also an external proof dependency.

Only rows, cols, g, and wind[:3] are read from the transfer record.  The
signature is evaluated on the unordered horizontal submatrix, in increasing
complement-column order; this is an arbitrary deterministic order, not a
side-angle assignment.  No fourth seed phase, side-order fields, side
windings, chart reference solves, or edgecert tube functions are used.

Reference dependencies: numpy, python-flint, and the supplied tmarb.py and
seedcert.py on PYTHONPATH.  No MUB atlas or Stage C routines are called.
"""
from __future__ import annotations

from collections.abc import Mapping
from dataclasses import dataclass
from fractions import Fraction
from itertools import permutations
import math

import numpy as np
from flint import arb, arb_mat

import tmarb as TMA
import seedcert as S


def _require(condition, message):
    if not condition:
        raise S.CertError("XS T3: " + message)


def _fraction(value, label):
    """Interpret finite record data exactly; hexadecimal strings are binary64."""
    _require(not isinstance(value, bool), label + " must be a number, not bool")
    try:
        if isinstance(value, Fraction):
            return value
        if isinstance(value, int):
            return Fraction(value)
        if isinstance(value, float):
            _require(math.isfinite(value), label + " must be finite")
            return Fraction.from_float(value)
        if isinstance(value, str):
            if value.lower().lstrip("+-").startswith("0x"):
                v = float.fromhex(value)
                _require(math.isfinite(v), label + " must be finite")
                return Fraction.from_float(v)
            return Fraction(value)
    except (ValueError, OverflowError, ZeroDivisionError) as exc:
        raise S.CertError("XS T3: malformed " + label) from exc
    raise S.CertError("XS T3: unsupported exact data type for " + label)


def _arb_fraction(value):
    return arb(value.numerator) / value.denominator


def _tri(value, label):
    _require(isinstance(value, (list, tuple)) and len(value) == 3,
             label + " must contain three indices")
    _require(all(isinstance(x, int) and not isinstance(x, bool) and 0 <= x < 6
                 for x in value), label + " must contain integer indices in [0,5]")
    _require(len(set(value)) == 3, label + " contains a repeated index")
    return tuple(value)


def _group(group):
    _require(isinstance(group, Mapping), "transfer record must be a mapping")
    rows = _tri(group.get("rows"), "rows")
    cols = _tri(group.get("cols"), "cols")
    action = group.get("g")
    _require(isinstance(action, str) and action in S.G4, "invalid g")
    wind = group.get("wind")
    # Both the new three-winding form and legacy four-winding records work.
    # The fourth legacy item is deliberately neither read nor validated.
    _require(isinstance(wind, (list, tuple)) and len(wind) in (3, 4),
             "wind must have three entries (or four in a legacy record)")
    first = wind[:3]
    _require(all(isinstance(x, int) and not isinstance(x, bool) for x in first),
             "the first three wind entries must be integers")
    return rows, cols, action, first


def _validate_phase_tm(Q):
    _require(isinstance(Q, TMA.TM), "Q must be a tmarb.TM")
    _require(isinstance(Q.c, np.ndarray) and Q.c.ndim == 2
             and Q.c.shape[0] > 0 and Q.c.shape[1] == 36,
             "Q must have shape (batch,36)")
    b = Q.c.shape[0]
    for name, shape in (("g", (b, 36, 4)), ("q", (b, 36, 10)),
                        ("rho", (b, 36)), ("h", (b, 4))):
        value = getattr(Q, name)
        _require(isinstance(value, np.ndarray) and value.shape == shape,
                 "malformed Q." + name)
    for name in ("c", "g", "q", "rho", "h"):
        _require(all(isinstance(v, arb) and v.is_finite()
                     for v in getattr(Q, name).flat),
                 "Q." + name + " must contain finite real Arb coefficients")
    _require(all(v >= 0 for v in Q.rho.flat), "negative/uncertain TM remainder bound")
    _require(all(v >= 0 for v in Q.h.flat), "negative/uncertain box half-width")


def _signature_raw_phases(phases):
    """Psi for a 3x3 unimodular matrix, with all nine entries retained."""
    entries = TMA.exp_i(phases)
    ps = list(permutations(range(3)))
    terms = [(entries[p[0]] * entries[3+p[1]]) * entries[6+p[2]] for p in ps]
    signs = [(-1)**sum(p[i] > p[j] for i in range(3) for j in range(i+1, 3))
             for p in ps]
    permanent = sum(terms)
    determinant = sum(term.scale(arb(s)) for term, s in zip(terms, signs))
    entry_product = entries[0]
    for k in range(1, 9):
        entry_product = entry_product * entries[k]
    # The exact entries exp(i*Q) are unimodular, so reciprocal product = conjugate.
    return (permanent * (determinant * determinant)) * entry_product.conj()


def extract_p(Q, group):
    """Enclose (theta'_1-pi/3,theta'_2-2pi/3,theta'_3-2pi/3,-2 Im Psi).

    This extraction routine alone asserts no Hadamard property or transfer.
    It is valid for any real phase TM of the required shape.
    """
    _validate_phase_tm(Q)
    rows, cols, action, wind = _group(group)
    sign, indices = S.g_perm(action)
    K = S.apply_signed_perm(Q, sign, indices)
    i0, j0 = rows[0], cols[0]
    selected = ((rows[1], cols[1]), (rows[1], cols[2]), (rows[2], cols[1]))
    linear = np.full((3, 36), arb(0), dtype=object)
    for k, (i, j) in enumerate(selected):
        linear[k, 6*i+j] += 1
        linear[k, 6*i+j0] -= 1
        linear[k, 6*i0+j] -= 1
        linear[k, 6*i0+j0] += 1
    seed3 = K.lmul(linear)
    shift = np.array([2*arb.pi()*wind[k] - arb.pi()*a/3
                      for k, a in enumerate((1, 2, 2))], dtype=object)
    seed3 = seed3 + shift[None, :]
    complement = tuple(j for j in range(6) if j not in cols)
    raw_indices = np.array([6*i+j for i in rows for j in complement], dtype=int)
    y = _signature_raw_phases(K[raw_indices]).im().scale(arb(-2))
    return TMA.stack([seed3[0], seed3[1], seed3[2], y], (4,), Q.h, False)


@dataclass(frozen=True, init=False)
class EdgeTarget:
    """Minimal target geometry; stored P,U,n,k and all side data are unnecessary."""
    matrix: np.ndarray
    inverse: np.ndarray
    center: np.ndarray
    radius: arb
    domain_upper: arb
    domain_spectral_upper: arb

    def __init__(self, record):
        _require(isinstance(record, Mapping), "edge record must be a mapping")
        _require(record.get("chart") == "F6-012", "target chart must be F6-012")
        raw = record.get("Mth")
        _require(isinstance(raw, (list, tuple, np.ndarray)), "Mth is missing or malformed")
        raw = np.asarray(raw, dtype=object)
        _require(raw.shape in ((16,), (4, 4)), "Mth must have 16 entries")
        f = [_fraction(v, "Mth") for v in raw.ravel()]
        matrix = np.array([_arb_fraction(v) for v in f], dtype=object).reshape(4, 4)
        try:
            mi = arb_mat(matrix.tolist()).inv()
        except (ZeroDivisionError, ValueError) as exc:
            raise S.CertError("XS T3: target Mth is not certified invertible") from exc
        inverse = np.array([[mi[i, j] for j in range(4)] for i in range(4)], dtype=object)
        _require(all(v.is_finite() for v in inverse.flat), "target Mth inverse is nonfinite")
        q0 = record.get("q0", [0]*4)
        _require(isinstance(q0, (list, tuple, np.ndarray)) and len(q0) == 4,
                 "q0 must have four entries")
        center = np.array([_arb_fraction(_fraction(v, "q0")) for v in q0], dtype=object)
        r = _fraction(record.get("r"), "r")
        _require(r > 0, "target radius must be positive")
        radius = _arb_fraction(r)

        # Exact W coordinates are q=(u1,u2,u3,y/24).  Gershgorin bounds the
        # largest eigenvalue of A^T W A; the center is handled by the metric
        # triangle inequality.  This is sufficient, not an optimal ellipsoid test.
        W = np.array([[arb(1), -arb(1)/2, -arb(1)/2, arb(0)],
                      [-arb(1)/2, arb(7)/4, arb(1)/4, arb(0)],
                      [-arb(1)/2, arb(1)/4, arb(7)/4, arb(0)],
                      [arb(0), arb(0), arb(0), arb(1)]], dtype=object)
        scale = np.array([arb(1), arb(1), arb(1), arb(1)/24], dtype=object)
        A = scale[:, None] * matrix
        c = scale * center
        gram = A.T @ W @ A
        row_bounds = [sum((abs(gram[i, j]) for j in range(4)), arb(0)) for i in range(4)]
        # TMA.up returns a verified outward binary64 upper bound, not a rounded midpoint.
        spectral_upper = arb(max(TMA.up(x) for x in row_bounds))
        _require(spectral_upper.is_finite() and spectral_upper > 0,
                 "invalid target metric bound")
        center_upper = TMA.sqrt_up(sum((c[i] * (W @ c)[i] for i in range(4)), arb(0)))
        domain_upper = center_upper + radius * spectral_upper.sqrt()
        _require(domain_upper < arb(1)/5,
                 "target ellipsoid is not certified inside W's exact tangent-radius 1/5 domain")
        for value in (matrix, inverse, center):
            value.setflags(write=False)
        for name, value in (("matrix", matrix), ("inverse", inverse),
                            ("center", center), ("radius", radius),
                            ("domain_upper", domain_upper),
                            ("domain_spectral_upper", spectral_upper)):
            object.__setattr__(self, name, value)

    @classmethod
    def from_record(cls, record):
        return cls(record)


def _distance_bound(value):
    # A rational input permits the exact endpoint 3/20.  For an Arb enclosure,
    # the entire enclosure must lie in [0,3/20]; an enclosure straddling the
    # endpoint is correctly rejected rather than interpreted as equality.
    if isinstance(value, arb):
        _require(value.is_finite() and value >= 0 and 20*value <= 3,
                 "coarse distance enclosure must lie in [0,3/20]")
        return value
    f = _fraction(value, "coarse_distance")
    _require(0 <= f <= Fraction(3, 20), "coarse distance must lie in [0,3/20]")
    return _arb_fraction(f)


@dataclass
class TransferCheck:
    parameters: TMA.TM
    target_coordinates: TMA.TM
    membership_upper: np.ndarray
    target_domain_upper: arb
    assumed_distance_upper: arb


def check_T3_no_sides(Q, target, group, *, coarse_distance):
    """Check the new finite T3 conditions, assuming the documented theorem inputs.

    `coarse_distance` is one already certified uniform bound for this batch.
    The returned object records the checked numerical hypotheses; invoking
    the XS transfer theorem then gives [K]=[H(p_K)] in the target image,
    where K=g applied to the matrix represented by Q. The caller retains its
    existing symmetry rule for g; arbitrary transposition is not asserted to
    be ordinary row/column equivalence.
    """
    distance = _distance_bound(coarse_distance)
    if not isinstance(target, EdgeTarget):
        target = EdgeTarget.from_record(target)
    p = extract_p(Q, group)
    w = (p - target.center[None, :]).lmul(target.inverse)
    bound = TMA.norm_sup(w)
    _require(all(x < target.radius for x in bound),
             "parameters are not certified strictly inside the target ellipsoid")
    return TransferCheck(p, w, bound, target.domain_upper, distance)

"""Exact coverage of S^3 by rational caps (return ZC's coverage.py, unchanged except for imports): caps
||x|| = 1, v_i.x >= h_i with h_i > 0 cover S^3 exactly when the polytope {y : v_i.y <= h_i} lies in the closed unit
ball; the certificate lists its facets (four caps each) with exact dual vertices, checked in integer arithmetic.
"""
from __future__ import annotations
from collections import Counter
from fractions import Fraction
from functools import reduce
from itertools import combinations, permutations, product
from math import gcd, lcm
from typing import Any

SCHEMA = "rational-s3-cap-cover-v1"
_PERMUTATIONS = []
for _p in permutations(range(4)):
    _inversions = sum(_p[i] > _p[j] for i in range(4) for j in range(i + 1, 4))
    _PERMUTATIONS.append((_p, (-1) ** _inversions))


def rational(value: Any) -> Fraction:
    if isinstance(value, Fraction):
        return value
    if isinstance(value, (list, tuple)) and len(value) == 2:
        return Fraction(int(value[0]), int(value[1]))
    if isinstance(value, dict) and set(value) == {"numerator", "denominator"}:
        return Fraction(int(value["numerator"]), int(value["denominator"]))
    if isinstance(value, str) and value.lower().lstrip("+-").startswith("0x"):
        return Fraction.from_float(float.fromhex(value))
    return Fraction(value)


def integer_rows(caps: list[dict]) -> list[tuple[int, ...]]:
    rows = []
    for i, cap in enumerate(caps):
        normal = cap.get("normal", cap.get("v"))
        threshold = cap.get("threshold", cap.get("h"))
        if len(normal) != 4:
            raise ValueError(f"cap {i}: normal must have four coordinates")
        rr = [rational(a) for a in normal] + [rational(threshold)]
        if rr[-1] <= 0:
            raise ValueError(f"cap {i}: positive threshold required by this theorem")
        denom = lcm(*(a.denominator for a in rr))
        row = [a.numerator * (denom // a.denominator) for a in rr]
        divisor = reduce(gcd, (abs(a) for a in row))
        row = tuple(a // divisor for a in row)
        if not any(row[:4]):
            raise ValueError(f"cap {i}: zero normal")
        rows.append(row)
    return rows


def determinant4(matrix) -> int:
    return sum(sgn * matrix[0][p[0]] * matrix[1][p[1]] *
               matrix[2][p[2]] * matrix[3][p[3]]
               for p, sgn in _PERMUTATIONS)


def exact_dual_vertex(rows, vertices):
    matrix = [list(rows[i][:4]) for i in vertices]
    rhs = [rows[i][4] for i in vertices]
    denominator = determinant4(matrix)
    if denominator == 0:
        raise ValueError(f"facet {vertices}: linearly dependent normal rows")
    numerator = []
    for k in range(4):
        replaced = [[rhs[i] if j == k else matrix[i][j] for j in range(4)]
                    for i in range(4)]
        numerator.append(determinant4(replaced))
    if denominator < 0:
        denominator = -denominator
        numerator = [-a for a in numerator]
    divisor = reduce(gcd, [denominator] + [abs(a) for a in numerator])
    return [a // divisor for a in numerator], denominator // divisor


def construct_coverage_certificate(caps: list[dict], qhull_options=None) -> dict:
    """Propose a certificate; always run verify_coverage before trusting it.

    A failed norm bound is useful during cap construction: the corresponding
    exact dual vertex, normalized radially, is an uncovered sphere direction.
    Qhull's QJ option is not used: jiggles could hide actual degeneracy.
    """
    import numpy as np
    from scipy.spatial import ConvexHull

    rows = integer_rows(caps)
    points = np.asarray([[float(Fraction(a, r[4])) for a in r[:4]] for r in rows])
    hull = ConvexHull(points, qhull_options=qhull_options)
    facets = []
    for simplex in sorted({tuple(sorted(map(int, ss))) for ss in hull.simplices}):
        numerator, denominator = exact_dual_vertex(rows, simplex)
        facets.append({"vertices": list(simplex), "numerator": numerator,
                       "denominator": denominator})
    return {"schema": SCHEMA, "dimension": 4, "cap_count": len(caps),
            "facets": facets}


def verify_coverage(caps: list[dict], certificate: dict,
                    require_cover: bool = True) -> dict:
    """Check exact supporting facets, complete enumeration, and all norms.

    require_cover=False verifies the complete polar hull but allows norms
    above one.  In that mode passed=True is NOT a sphere-cover assertion;
    the separate field `covers` states whether the norm test succeeds.
    """
    def fail(message, **extra):
        return {"passed": False, "covers": False, "error": message, **extra}

    try:
        if certificate.get("schema") != SCHEMA or certificate.get("dimension") != 4:
            return fail("unsupported schema or dimension")
        rows = integer_rows(caps)
        count = len(rows)
        if count < 5 or certificate.get("cap_count") != count:
            return fail("need at least five caps and matching cap_count")
        facets = certificate.get("facets", [])
        if not facets:
            return fail("empty facet list")
        seen = set()
        ridges = Counter()
        max_norm = Fraction(0)
        max_facet = None
        boundary_facets = 0
        for fi, facet in enumerate(facets):
            vertices = tuple(sorted(facet["vertices"]))
            if len(vertices) != 4 or len(set(vertices)) != 4:
                return fail("facet must contain four distinct indices", facet=fi)
            if any(type(i) is not int or i < 0 or i >= count for i in vertices):
                return fail("invalid facet index", facet=fi)
            if vertices in seen:
                return fail("duplicate facet", facet=fi)
            seen.add(vertices)
            if determinant4([rows[i][:4] for i in vertices]) == 0:
                return fail("facet normal rows are linearly dependent", facet=fi)
            numerator = facet["numerator"]
            denominator = facet["denominator"]
            if len(numerator) != 4 or any(type(a) is not int for a in numerator):
                return fail("numerator must be four integers", facet=fi)
            if type(denominator) is not int or denominator <= 0:
                return fail("denominator must be a positive integer", facet=fi)
            members = set(vertices)
            for j, row in enumerate(rows):
                slack = row[4] * denominator - sum(row[k] * numerator[k] for k in range(4))
                if j in members:
                    if slack != 0:
                        return fail("vertex witness fails incident hyperplane equality", facet=fi, cap=j)
                elif slack <= 0:
                    return fail("facet is not strict supporting simplex (or hull degenerate)",
                                facet=fi, cap=j, slack=slack)
            for ridge in combinations(vertices, 3):
                ridges[ridge] += 1
            norm = Fraction(sum(a * a for a in numerator), denominator * denominator)
            if norm > max_norm:
                max_norm, max_facet = norm, fi
            boundary_facets += norm == 1
        bad_ridges = [(list(rr), n) for rr, n in ridges.items() if n != 2]
        if bad_ridges:
            return fail("incomplete facet enumeration: each triangular ridge must occur twice",
                        bad_ridges=bad_ridges[:10], bad_ridge_count=len(bad_ridges))
        stats = {"caps": count, "facets": len(facets), "ridges": len(ridges),
                 "max_norm_squared": str(max_norm), "max_norm_squared_float": float(max_norm),
                 "worst_facet": max_facet, "boundary_vertices": boundary_facets,
                 "covers": max_norm <= 1,
                 "strict_margin": max_norm < 1}
        if require_cover and max_norm > 1:
            return fail("complete polar polytope has a vertex outside the unit ball", **stats)
        return {"passed": True, **stats}
    except (ValueError, TypeError, KeyError, ZeroDivisionError) as exc:
        return fail(f"malformed input: {exc}")


def quantize_caps(normals, thresholds, bits=40):
    """Quantize supplied numerical coefficients to exact dyadic rationals.

    This does not assert containment in the unrounded caps: transfer proofs
    must use these actual rounded coefficients.  Coverage and transfer must
    always refer to the very same caps.
    """
    scale = 1 << bits
    result = []
    for normal, threshold in zip(normals, thresholds):
        result.append({"normal": [[int(round(float(x) * scale)), scale] for x in normal],
                       "threshold": [int(round(float(threshold) * scale)), scale]})
    return result



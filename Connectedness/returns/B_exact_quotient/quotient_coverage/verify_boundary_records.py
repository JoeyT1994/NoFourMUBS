#!/usr/bin/env python3
"""Rigorous checker for the boundary-overlap certificate in BOUNDARY_FORMAT.md.

The checker proves only clopenness of the specified union. It does not check
quartet exclusion, representative membership, Claim A, or completeness of an
atlas. No nonempty atlas certificate accompanies this handoff.

Exact rational arithmetic checks geometry and partition coverage. Arb checks
every analytic acceptance inequality with outward rounding. Inconclusive
inequalities fail. Input rational numbers must be integer or fraction strings.
"""
from __future__ import annotations

import argparse
import json
from fractions import Fraction
from pathlib import Path

import sympy as sp
from flint import arb, ctx, fmpq


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def rat(value):
    require(isinstance(value, (int, str)) and not isinstance(value, bool),
            "rational data must be integer or fraction string")
    if isinstance(value, str):
        require(all(c in "-+0123456789/" for c in value), "invalid rational encoding")
    f = Fraction(value)
    return sp.Rational(f.numerator, f.denominator)


def ball(q):
    q = sp.Rational(q)
    return arb(fmpq(int(q.p), int(q.q)))


def interval(lo, hi):
    require(lo <= hi, "invalid interval")
    return ball(lo).union(ball(hi))


def psd_rank(M):
    """Exact symmetric-pivot Schur complement test for positive semidefiniteness."""
    require(M.rows == M.cols and M == M.T, "matrix is not symmetric")
    A = M.copy()
    rank = 0
    while A.rows:
        require(all(A[i, i] >= 0 for i in range(A.rows)), "matrix is not PSD")
        pivot = next((i for i in range(A.rows) if A[i, i] > 0), None)
        if pivot is None:
            require(A == sp.zeros(A.rows), "zero diagonal with nonzero off-diagonal")
            break
        order = [pivot] + [i for i in range(A.rows) if i != pivot]
        A = A.extract(order, order)
        p = A[0, 0]
        v = A[1:, 0]
        A = A[1:, 1:] - v*v.T/p
        rank += 1
    return rank


def matrix(raw, rows, cols):
    require(isinstance(raw, list) and len(raw) == rows,
            f"expected {rows} matrix rows")
    require(all(isinstance(r, list) and len(r) == cols for r in raw),
            f"expected {cols} matrix columns")
    return sp.Matrix([[rat(v) for v in r] for r in raw])


def full_horizontal(x):
    """The first 5 by 5 entries are coordinates; all 36 row/column sums vanish."""
    zero = x[0]*0
    U = [[zero for _ in range(6)] for _ in range(6)]
    for i in range(5):
        for j in range(5):
            U[i][j] = x[5*i+j]
        U[i][5] = -sum(U[i][:5], zero)
    for j in range(5):
        U[5][j] = -sum((U[i][j] for i in range(5)), zero)
    U[5][5] = sum(x, zero)
    return U


def horizontal_matrix(M):
    require(M.rows == M.cols == 6, "horizontal projection shape")
    row = [sum(M[i, j] for j in range(6))/6 for i in range(6)]
    col = [sum(M[i, j] for i in range(6))/6 for j in range(6)]
    mean = sum(M)/36
    return sp.Matrix(6, 6, lambda i, j: M[i, j]-row[i]-col[j]+mean)


def quadratic(Q, x):
    result = arb(0)
    for i in range(25):
        if Q[i, i]:
            result += ball(Q[i, i])*x[i]**2
        for j in range(i):
            if Q[i, j]:
                result += ball(2*Q[i, j])*x[i]*x[j]
    require(result.is_finite(), "nonfinite quadratic enclosure")
    return result


def prepare(raw):
    require(isinstance(raw.get("id"), str) and raw["id"], "record id required")
    C = matrix(raw["centre_phases"], 6, 6)
    Qt = matrix(raw["tangent_form"], 25, 25)
    Qn = matrix(raw["normal_form"], 25, 25)
    require(psd_rank(Qt) == 4, "tangent quadratic rank must be 4")
    require(psd_rank(Qn) == 21, "normal quadratic rank must be 21")
    lam, bound = rat(raw["lambda_lower"]), rat(raw["bound"])
    require(lam > 0 and bound > 0, "positive lambda and bound required")
    psd_rank(Qt+Qn-lam*sp.eye(25))
    require(lam*bound**2 >= 2, "declared cube does not enclose tube")
    require("tree" in raw, "partition tree required")
    return {"id": raw["id"], "C": C, "Qt": Qt, "Qn": Qn,
            "bound": bound, "tree": raw["tree"]}


def permutation(raw):
    require(isinstance(raw, list) and sorted(raw) == list(range(6))
            and all(type(i) is int for i in raw), "invalid permutation")
    return raw


def transfer(source, target, leaf, x):
    pr, pc = permutation(leaf["rows"]), permutation(leaf["columns"])
    winding = leaf.get("winding", [[0]*6 for _ in range(6)])
    N = matrix(winding, 6, 6)
    require(all(v.q == 1 for v in N), "winding numbers must be integers")
    difference = source["C"].extract(pr, pc)-target["C"]
    A0, A1 = horizontal_matrix(difference), horizontal_matrix(N)
    U = full_horizontal(x)
    pi = arb.pi()
    y = [ball(A0[i, j])+2*pi*ball(A1[i, j])+U[pr[i]][pc[j]]
         for i in range(5) for j in range(5)]
    require(quadratic(target["Qt"], y) < 1,
            f"transfer to {target['id']} does not prove tangent interior")
    require(quadratic(target["Qn"], y) < 1,
            f"transfer to {target['id']} does not prove normal interior")


def nonhadamard(record, leaf, x):
    pair = leaf["row_pair"]
    require(isinstance(pair, list) and len(pair) == 2
            and all(type(i) is int and 0 <= i < 6 for i in pair)
            and pair[0] < pair[1], "invalid orthogonality row pair")
    i, j = pair
    part = leaf["part"]
    require(part in ("real", "imag"), "residual part must be real or imag")
    U = full_horizontal(x)
    z = arb(0)
    for k in range(6):
        phase = ball(record["C"][i, k]-record["C"][j, k])+U[i][k]-U[j][k]
        z += phase.cos() if part == "real" else phase.sin()
    require(z.is_finite() and not z.contains(0), "residual does not exclude zero")


def verify_tree(record, records):
    b = record["bound"]
    stack = [(record["tree"], [(-b, b)]*25)]
    count = 0
    while stack:
        node, box = stack.pop()
        kind = node.get("kind")
        if kind == "split":
            axis, at = node["axis"], rat(node["at"])
            require(type(axis) is int and 0 <= axis < 25, "invalid split axis")
            lo, hi = box[axis]
            require(lo < at < hi, "split must be strictly inside inherited interval")
            left, right = box.copy(), box.copy()
            left[axis], right[axis] = (lo, at), (at, hi)
            stack.append((node["left"], left))
            stack.append((node["right"], right))
            continue
        count += 1
        x = [interval(lo, hi) for lo, hi in box]
        if kind == "source_interior":
            require(quadratic(record["Qt"], x) < 1
                    and quadratic(record["Qn"], x) < 1,
                    "source leaf not strictly interior")
        elif kind == "source_exterior":
            require(quadratic(record["Qt"], x) > 1
                    or quadratic(record["Qn"], x) > 1,
                    "source leaf not outside closed tube")
        elif kind == "nonhadamard":
            nonhadamard(record, node, x)
        elif kind == "transfer":
            require(node["target"] in records, "unknown target record")
            transfer(record, records[node["target"]], node, x)
        else:
            raise AssertionError(f"unknown leaf kind: {kind}")
    return count


def verify(data):
    require(data.get("format") == "horizontal-boundary-records-v1", "unknown format")
    prec = data.get("arb_precision_bits", 192)
    require(type(prec) is int and 64 <= prec <= 65536, "invalid Arb precision")
    ctx.prec = prec
    require(isinstance(data.get("records"), list) and data["records"],
            "at least one record specification is required")
    records = {}
    for raw in data["records"]:
        r = prepare(raw)
        require(r["id"] not in records, "duplicate record id")
        records[r["id"]] = r
    leaves = sum(verify_tree(r, records) for r in records.values())
    return len(records), leaves


def selftest():
    # This sample has NO Hadamards: all its phase matrices remain near the
    # all-ones matrix, so two rows cannot be orthogonal. Empty W is clopen.
    # It is a checker regression, never an atlas or coverage certificate.
    diag = lambda values: [[values[i] if i == j else 0 for j in range(25)]
                           for i in range(25)]
    raw = {"id": "empty-regression-tube", "centre_phases": [[0]*6 for _ in range(6)],
           "tangent_form": diag([10000]*4+[0]*21),
           "normal_form": diag([0]*4+[10000]*21),
           "lambda_lower": 10000, "bound": "1/50",
           "tree": {"kind": "nonhadamard", "row_pair": [0, 1], "part": "real"}}
    data = {"format": "horizontal-boundary-records-v1", "records": [raw]}
    require(verify(data) == (1, 1), "empty-tube regression")
    bad = json.loads(json.dumps(data))
    bad["records"][0]["tree"]["part"] = "imag"
    failed = False
    try:
        verify(bad)
    except AssertionError:
        failed = True
    require(failed, "checker accepted an inconclusive residual")
    # Check affine transfer even though this is not used by the empty-tube
    # certificate: a zero-sized coordinate box maps to itself exactly.
    rec = prepare(raw)
    transfer(rec, rec, {"rows": list(range(6)), "columns": list(range(6))}, [arb(0)]*25)
    print("PASS: boundary checker arithmetic regressions; sample union is empty.")
    print("No actual atlas, representative membership, or quartet exclusion is certified.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("certificate", nargs="?", type=Path)
    parser.add_argument("--selftest", action="store_true")
    args = parser.parse_args()
    if args.selftest:
        require(args.certificate is None, "choose certificate or selftest")
        selftest()
        return
    require(args.certificate is not None, "an actual certificate path is required")
    records, leaves = verify(json.loads(args.certificate.read_text()))
    print(f"PASS: boundary criterion for {records} Records and {leaves} partition leaves.")
    print("This certifies clopenness only, not nonemptiness, coverage, or quartet exclusion.")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Independent Arb replay of N1 second-order rejection comparisons.

This verifier imports only the Python standard library and python-flint. It
does not import the candidate plugin, the survey driver, NumPy, or Stage C.
All binary64 inputs are loaded exactly from hexadecimal fixture strings.
Geometry bars are supplied hypotheses, not established by this replay.

Usage:
  PYTHONPATH=/tmp/n_stagec_deps python replay_arb.py --fixtures arb_fixtures.json.gz
"""
from __future__ import annotations

import argparse
from collections import Counter
import gzip
import hashlib
import itertools
import json
import math
from pathlib import Path
import sys
import time
import flint
from flint import arb, acb, ctx

SIGNS = list(itertools.product((-1, 1), repeat=5))
PAIRS = list(itertools.combinations(range(6), 2))


def exact_hex(text):
    value = float.fromhex(text)
    if not math.isfinite(value):
        raise ValueError("nonfinite fixture input")
    numerator, denominator = value.as_integer_ratio()
    return arb(numerator) / arb(denominator)


def exact_float(value):
    return exact_hex(float(value).hex())


def asum(values):
    return sum(values, arb(0))


def anorm(values):
    return asum(x**2 for x in values).sqrt()


def amax(values):
    values = iter(values)
    result = next(values)
    for value in values:
        result = result.max(value)
    return result


def amin(values):
    values = iter(values)
    result = next(values)
    for value in values:
        result = result.min(value)
    return result


def load_context(raw):
    P = [[exact_hex(v) for v in row] for row in raw["P_hex"]]
    flat = [[exact_hex(v) for v in row] for row in raw["T_hex"]]
    if len(P) != 6 or any(len(row) != 6 for row in P) or len(flat) != 36:
        raise ValueError("bad matrix shape")
    k = len(flat[0])
    if k > 4 or any(len(row) != k for row in flat):
        raise ValueError("bad tangent dimension")
    T = [[flat[6*j+i] for i in range(6)] for j in range(6)]
    result = dict(P=P, T=T, k=k)
    for key in ("r", "rF", "h", "n", "K"):
        result[key] = exact_hex(raw[key+"_hex"])
        if not result[key] >= 0:
            raise ValueError("negative geometry bar")
    return result


def weighted_square_bound(v, X, r, rF, rowsum):
    m, total = amax(v), asum(v)
    mean = total / 6
    centered = anorm(t-mean for t in v)
    first = m*(6*X**2 + 2*X*rowsum + rF**2)
    second = total*(X+r)**2
    third = total*X**2 + 2*X*(rF*centered + total*rowsum/6) + m*rF**2
    return amin((first, second, third))


def support(A, C, D, ld, le, a, h, guard):
    """Interval upper support, with independently certified forced coordinates."""
    k = len(D)
    positive_diag = a**2 * asum(A[j][j].max(arb(0)) for j in range(5))
    offdiag = asum(abs(A[j][l]) for j in range(5) for l in range(5) if j != l)
    if k:
        gershgorin = amax(D[j][j] + asum(abs(D[j][l]) for l in range(k) if j != l)
                          for j in range(k))
        mu = asum(D[j][j] for j in range(k)) / k
        traceless_norm = anorm(D[j][l] - (mu if j == l else 0)
                               for j in range(k) for l in range(k))
        trace_bound = mu + (arb(k-1)/k).sqrt()*traceless_norm
        eigen_upper = gershgorin.min(trace_bound)
        qee = h**2 * eigen_upper.max(arb(0))
        cross = 2*a*h*anorm(asum(abs(C[j][l]) for j in range(5)) for l in range(k))
        linear_eta = h*anorm(le)
    else:
        qee = cross = linear_eta = arb(0)
    cheap = a*asum(abs(t) for t in ld) + linear_eta + positive_diag + a**2*offdiag + cross + qee
    forced, endpoints = [], []
    for j in range(5):
        derivative = 2*a*asum(abs(t) for t in A[j])
        if k:
            derivative += 2*h*anorm(C[j])
        force = bool(abs(ld[j]).lower() > (derivative+guard).upper())
        forced.append(force)
        if force:
            if ld[j] > 0:
                endpoints.append(1)
            elif ld[j] < 0:
                endpoints.append(-1)
            else:
                raise ArithmeticError("uncertain sign for certified forced coordinate")
        else:
            endpoints.append(0)
    diagonal_lift = a**2 * asum(A[j][j] if forced[j] else A[j][j].max(arb(0))
                               for j in range(5))
    vertex_values = []
    for signs in SIGNS:
        if any(forced[j] and signs[j] != endpoints[j] for j in range(5)):
            continue
        value = a**2*asum(signs[j]*A[j][l]*signs[l]
                          for j in range(5) for l in range(5) if j != l)
        value += a*asum(ld[j]*signs[j] for j in range(5))
        if k:
            value += h*anorm(le[l] + 2*a*asum(signs[j]*C[j][l] for j in range(5))
                             for l in range(k))
        vertex_values.append(value)
    vertex = diagonal_lift + amax(vertex_values) + qee
    return cheap.min(vertex), cheap, vertex, forced


def evaluate(context, fixture):
    """Reconstruct true q, J and quadratic blocks; return Arb enclosures."""
    P, T, k = context["P"], context["T"], context["k"]
    r, rF, h, n, K = (context[key] for key in ("r", "rF", "h", "n", "K"))
    M = int(fixture["M"])
    if M not in (6, 12, 24, 48, 96):
        raise ValueError("unsupported M")
    indices = fixture["bin_k_over_192"]
    if len(indices) != 6 or indices[0] != 0:
        raise ValueError("bad bin index vector")
    # Midpoint provenance is checked by exact integer arithmetic.
    if any((int(indices[j])*M) % 192 != 96 for j in range(1, 6)):
        raise ValueError("index is not a midpoint at the asserted resolution")
    y = [exact_hex(v) for v in fixture["y_hex"]]
    if len(y) != 6 or any(not abs(t) <= 1 for t in y):
        raise ValueError("bad multiplier")
    pi = arb.pi()
    sqrt6, sqrt2 = arb(6).sqrt(), arb(2).sqrt()
    a = arb(1)/(2*M)
    X = (arb(29)/6).sqrt()*a
    q = [[acb(0, 2*pi*(arb(indices[j])/192-P[j][i])).exp()/sqrt6
          for i in range(6)] for j in range(6)]
    S = [sum((q[j][i] for j in range(6)), acb(0)) for i in range(6)]
    J = [[-(S[i].conjugate()*q[j][i]).imag for i in range(6)] for j in range(6)]
    c = [(S[i].real**2+S[i].imag**2-1)/(4*pi) for i in range(6)]
    yc = asum(y[i]*c[i] for i in range(6))
    if yc > 0:
        orientation = -1
    elif yc < 0:
        orientation = 1
    else:
        raise ArithmeticError("constant sign is not certified")
    weights = [orientation*t for t in y]
    lhs = abs(yc)

    # Independent pair construction. The candidate implementation uses a
    # different q/alpha contraction circuit. Build all coefficients by sums
    # of pairwise rank-one forms instead.
    size = 5+k
    polynomial = [[arb(0) for _ in range(size)] for _ in range(size)]
    for i in range(6):
        for j, l in PAIRS:
            coefficient = -pi*weights[i]*(q[j][i]*q[l][i].conjugate()).real
            dpart = [arb((int(j == t)-int(l == t))) for t in range(1, 6)]
            vector = dpart + [-(T[j][i][t]-T[l][i][t]) for t in range(k)]
            active = [t for t in range(size) if not vector[t].is_zero()]
            for ip, p in enumerate(active):
                for z in active[ip:]:
                    polynomial[p][z] += coefficient*vector[p]*vector[z]
    for j in range(size):
        for l in range(j):
            polynomial[j][l] = polynomial[l][j]
    A = [row[:5] for row in polynomial[:5]]
    C = [row[5:] for row in polynomial[:5]]
    D = [row[5:] for row in polynomial[5:]]
    ld = [asum(weights[i]*J[j][i] for i in range(6)) for j in range(1, 6)]
    le = [-asum(weights[i]*J[j][i]*T[j][i][t] for i in range(6) for j in range(6))
          for t in range(k)]
    upper, cheap, vertex, forced = support(A, C, D, ld, le, a, h, exact_float(1e-8))

    abs_y = [abs(t) for t in y]
    m = amax(abs_y)
    Ny = anorm(y[i]*J[j][i] for i in range(6) for j in range(6))
    row_frame = anorm(asum(T[j][i][t] for i in range(6)) for j in range(6) for t in range(k))
    rowsum = h*(row_frame+exact_float(1e-12)) + sqrt6*n
    W2 = weighted_square_bound([t**2 for t in y], X, r, rF, rowsum)
    Enu = n*Ny + 2*pi*n*W2.max(arb(0)).sqrt() + pi*n**2*m
    W1 = weighted_square_bound(abs_y, X, r, rF, rowsum)
    Euniform = (2*pi**2/3)*(2*a+sqrt2*r)*W1

    g = []
    for j, l in PAIRS:
        gram = sum((y[i]*q[j][i]*q[l][i].conjugate() for i in range(6)), acb(0))
        g.append(abs(gram))
    ex_values = []
    for signs in SIGNS:
        full_signs = (0,)+signs
        ex_values.append(asum(g[t]*abs(full_signs[j]-full_signs[l])**3
                              for t, (j, l) in enumerate(PAIRS)))
    Ex = (2*pi**2/3)*a**3*amax(ex_values)
    Edd = (2*sqrt2*pi**2/3)*m*r*rF**2
    Exxd = (pi**2/3)*arb(606).sqrt()*anorm(y)*a**2*rF
    Exdd = 4*pi**2*a*m*rF**2
    Esplit = Ex+Edd+Exxd+Exdd
    E3 = Euniform.min(Esplit)
    rhs = upper+Enu+E3

    # Independent replay of the old formula with the original 1e-7 guard:
    # this makes the NEW-only classification reviewable for these inputs.
    sy = [abs(S[i])*abs_y[i] for i in range(6)]
    sy1, sy2, syinf, y1 = asum(sy), anorm(sy), amax(sy), asum(abs_y)
    Gy = amax(abs(sum((y[i]*S[i].conjugate()*q[j][i] for i in range(6)), acb(0)))
              for j in range(6))
    old_error = n*Ny + pi*(
        (m*(K*X+rF)**2).min(y1*(K*X+r)**2)
        + (Gy*X**2).min(K*sy2*(3*a/2)*X)
        + (2/sqrt6)*X*(sy2*rF).min(sy1*r)
        + (1/sqrt6)*(syinf*rF**2).min(sy1*r**2))
    old_rhs = a*asum(abs(t) for t in ld)+h*anorm(le)+old_error
    return dict(lhs=lhs, rhs=rhs, support=upper, cheap_support=cheap,
                vertex_support=vertex, normal=Enu, cubic=E3,
                cubic_uniform=Euniform, cubic_split=Esplit, old_rhs=old_rhs,
                margin=lhs-rhs, forced=forced)


def main():
    base = Path(__file__).resolve().parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--fixtures", default=str(base/"arb_fixtures.json.gz"))
    parser.add_argument("--output", default=str(base/"arb_replay_results.jsonl"))
    parser.add_argument("--summary", default=str(base/"arb_replay_summary.json"))
    parser.add_argument("--precision", type=int, default=160)
    parser.add_argument("--limit", type=int)
    args = parser.parse_args()
    if args.precision < 100:
        parser.error("use at least 100 bits")
    ctx.prec = args.precision
    source = Path(args.fixtures)
    blob = source.read_bytes()
    payload = json.loads(gzip.decompress(blob) if source.suffix == ".gz" else blob)
    contexts = {key: load_context(value) for key, value in payload["contexts"].items()}
    fixtures = payload["fixtures"][:args.limit]
    output = Path(args.output)
    output.parent.mkdir(parents=True, exist_ok=True)
    failures, old_failures, forced_mismatches = [], [], []
    groups = Counter()
    max_error = {key: arb(0) for key in ("lhs", "rhs", "support", "normal", "cubic")}
    min_margin = None
    start = time.perf_counter()
    with output.open("w") as stream:
        for number, fixture in enumerate(fixtures, 1):
            row = {"id": fixture["id"], "context": fixture["context"], "M": fixture["M"]}
            try:
                result = evaluate(contexts[fixture["context"]], fixture)
                passed = bool(result["lhs"].lower() > result["rhs"].upper())
                old_keeps = bool(result["lhs"].upper() <=
                                 (result["old_rhs"]+exact_float(1e-7)).lower())
                forced_match = result["forced"] == fixture["forced_float"]
                if not passed:
                    failures.append(fixture["id"])
                if not old_keeps:
                    old_failures.append(fixture["id"])
                if not forced_match:
                    forced_mismatches.append(fixture["id"])
                for key in max_error:
                    error = abs(exact_hex(fixture["float_values_hex"][key])-result[key])
                    max_error[key] = max_error[key].max(error)
                min_margin = result["margin"] if min_margin is None else min_margin.min(result["margin"])
                groups[(payload["contexts"][fixture["context"]]["record"], fixture["M"])] += int(passed)
                row.update(certified_comparison=passed, old_formula_keeps_with_margin=old_keeps,
                           forced_coordinates_match=forced_match, forced=result["forced"],
                           intervals={key: str(value) for key, value in result.items() if key != "forced"})
            except Exception as error:
                failures.append(fixture["id"])
                row.update(certified_comparison=False, error=repr(error))
            stream.write(json.dumps(row, sort_keys=True)+"\n")
            stream.flush()
            if number % 25 == 0 or number == len(fixtures):
                print(json.dumps({"replayed": number, "failures": len(failures),
                                  "seconds": time.perf_counter()-start}), flush=True)
    summary = {
        "status": "PASS" if not failures else "FAIL",
        "scope": "Every listed N1 comparison is evaluated with Arb, conditional on the supplied geometry bars. No full geometric-bar proof, bin-tree proof, atlas recertification, or Lean replay.",
        "precision_bits": args.precision, "fixtures": len(fixtures),
        "certified_comparisons": len(fixtures)-len(failures), "failures": failures,
        "old_formula_nonrejection_failures": old_failures,
        "forced_coordinate_mismatches": forced_mismatches,
        "minimum_margin_interval": str(min_margin),
        "maximum_observed_float_formula_error_intervals": {key: str(value) for key, value in max_error.items()},
        "all_observed_formula_errors_below_1e-7": all(value.upper() < exact_float(1e-7) for value in max_error.values()),
        "by_record_M": [{"record": record, "M": M, "certified": count}
                        for (record, M), count in sorted(groups.items())],
        "seconds": time.perf_counter()-start,
        "fixture_sha256": hashlib.sha256(blob).hexdigest(),
        "verifier_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "plugin_source_hash_from_collection": payload["source_hashes"]["plugin"],
        "python": sys.version,
        "python_flint_version": flint.__version__,
    }
    Path(args.summary).write_text(json.dumps(summary, indent=2, sort_keys=True)+"\n")
    print(json.dumps(summary, sort_keys=True), flush=True)
    if failures:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

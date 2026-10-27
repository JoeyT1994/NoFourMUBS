"""Rigorous spherical-cap transfers to the F6 X-ball (return ZC2b).

Two affine outputs are checked by independent 5 x 5 cap witnesses: the
four-dimensional inverse-parameter output and the 36-dimensional horizontal
phase difference.  Their nonlinear remainders are recomputed in Arb from the
source's verified whole-ball model.  See ZC2b/T3_THEOREM.md.

Only ``propose_alignment`` uses floating point as an untrusted proposal.
All geometric acceptance decisions use Arb or exact integer arithmetic.
"""
from __future__ import annotations

import hashlib
import itertools
import json
import math
import time

import numpy as np
from flint import arb, arb_mat, ctx

import caps as C
import edgecert as E
import patches as P
import seedcert as SC
import wholeball as Z


def group_digest(group):
    """Bind a new T3 cap to its exact transfer descriptor, excluding boxes."""
    descriptor = {k: v for k, v in group.items() if k != "boxes"}
    return hashlib.sha256(json.dumps(descriptor, sort_keys=True,
                                    separators=(",", ":"), allow_nan=False).encode()).hexdigest()


def _integers(value, size, name):
    if not isinstance(value, (list, tuple)) or len(value) != size or any(type(x) is not int for x in value):
        raise ValueError("%s must contain %d exact integers" % (name, size))
    return list(value)


def _permutation(value, name):
    value = _integers(value, 6, name)
    if sorted(value) != list(range(6)):
        raise ValueError("%s must be a permutation of 0,...,5" % name)
    return value


def _stack(rows):
    return arb_mat([[row[0, j] for j in range(row.ncols())] for row in rows])


def _row(a, i):
    return arb_mat([[a[i, j] for j in range(a.ncols())]])


def _bool(cap, name):
    value = cap.get(name, False)
    if type(value) is not bool:
        raise ValueError("%s must be a boolean" % name)
    return value


def _finite(a):
    if not all(x.is_finite() for x in a.entries()):
        raise ArithmeticError("nonfinite affine output")
    return a


def _psi_hessian_at(v):
    """Exact 24-frequency Hessian at an enclosed phase anchor."""
    hessian = arb_mat(9, 9)
    for coefficient, nu in Z.signature_terms()[1]:
        angle = sum((nu[i] * v[i, 0] for i in range(9)), arb(0))
        weight = -coefficient * angle.sin()
        for i in range(9):
            for j in range(9):
                hessian[i, j] += weight * nu[i] * nu[j]
    return P.matrix_norm(hessian)


def _normal_bound(model, output, order, weighted):
    if weighted:
        import cap_weighted as W
        return W.bounds(model, output)["T%d" % order]
    return P.matrix_norm(output) * model["tau" if order == 0 else "Z2"]


class Transfer:
    """One T3 descriptor and its fixed ordered corner.

    The production caller separately requires the target's accepted C1e
    object.  This object verifies the target ellipsoid is inside W's chart;
    it does not manufacture an edge-chart existence certificate.
    """
    def __init__(self, model, target, group, group_index=None):
        if group.get("kind") != "T3":
            raise ValueError("T3 transfer required")
        self.model, self.target, self.group = model, target, group
        self.group_index = group_index
        self.digest = group_digest(group)
        self.kind = "T3"
        self.r, self.target_r = model["r"], arb(target.r)
        self.distance_limit = arb(3) / 20
        E.edge_in_W(target)
        self.rows, self.cols = E.t3_corner(group)
        self.G = Z.mat(SC.g_matrix(group["g"]))
        self.L = Z.mat(SC.corner_L(self.rows[:3], self.cols[:3]) @ SC.g_matrix(group["g"]))
        self.L3 = arb_mat([[self.L[i, j] for j in range(36)] for i in range(3)])
        wind = group.get("wind")
        if not isinstance(wind, (list, tuple)) or len(wind) not in (3, 4):
            raise ValueError("T3 wind must have three or four entries")
        # The optional fourth entry has the same ignored meaning as check_T3.
        self.wind = _integers(wind[:3], 3, "T3 wind")
        self.offset3 = C.col([2 * arb.pi() * n - arb.pi() * k / 3
                              for n, k in zip(self.wind, (1, 2, 2))])
        self.Mi = arb_mat([[target.Minv()[i, j] for j in range(4)] for i in range(4)])
        self.last_column_norm = P.matrix_norm(arb_mat([[self.Mi[i, 3]] for i in range(4)]))
        self.S, self.R = P.orientation_terms(group["g"], self.rows[:3], self.cols[:3], "h")
        self.RH, self.RX = self.R * model["H2"], self.R * model["X"]
        self._phase_bounds = {}
        self._distance_maps = {}
        self._distance_bounds = {}
        self._local_data = {}

    def phase_remainder(self, order, weighted):
        key = (ctx.prec, order, weighted)
        if key not in self._phase_bounds:
            self._phase_bounds[key] = (P.matrix_norm(self.RH),
                                      _normal_bound(self.model, self.RX, order, weighted))
        return self._phase_bounds[key]

    def distance_map(self, alignment):
        if not isinstance(alignment, dict):
            raise ValueError("t3_alignment must be a dictionary")
        rows = _permutation(alignment.get("rows"), "distance rows")
        cols = _permutation(alignment.get("cols"), "distance cols")
        wind = _integers(alignment.get("wind"), 36, "distance wind")
        key = (ctx.prec, tuple(rows), tuple(cols), tuple(wind))
        if key not in self._distance_maps:
            horizontal = arb_mat([[arb((36 if i == j else 0) -
                                           (6 if i // 6 == j // 6 else 0) -
                                           (6 if i % 6 == j % 6 else 0) + 1) / 36
                                   for j in range(36)] for i in range(36)])
            perm = Z.mat(SC.perm_matrix(rows, cols))
            D = horizontal * perm * self.G
            offset = horizontal * C.col([2 * arb.pi() * wind[k] -
                                          arb.pi() * ((k // 6 * (k % 6)) % 6) / 3
                                          for k in range(36)])
            self._distance_maps[key] = (D, offset)
        return self._distance_maps[key]


def propose_alignment(tr, qcentre):
    """Untrusted numerical alignment; every returned integer is replayed."""
    q = Z.mid_np(tr.G * qcentre).reshape(6, 6)
    pf = np.asarray([2 * math.pi * ((a * b) % 6) / 6
                     for a in range(6) for b in range(6)]).reshape(6, 6)
    best = None
    for rr in itertools.permutations(tr.rows[3:]):
        rows = tr.rows[:3] + list(rr)
        for cc in itertools.permutations(tr.cols[3:]):
            cols = tr.cols[:3] + list(cc)
            difference = q[np.ix_(rows, cols)] - pf
            dephased = difference - difference[:, :1] - difference[:1, :] + difference[0, 0]
            wind = -np.rint(dephased / (2 * math.pi)).astype(np.int64)
            z = difference + 2 * math.pi * wind
            z = z - z.mean(axis=0)[None, :] - z.mean(axis=1)[:, None] + z.mean()
            cost = float(np.linalg.norm(z))
            if best is None or cost < best[0]:
                best = cost, dict(rows=rows, cols=cols, wind=[int(x) for x in wind.ravel()])
    return best[1]


def _data_at(tr, centre, qc, dc, alignment, weighted, polynomial=False):
    model = tr.model
    f, gradient = P.psi_gradient(tr.S * qc)
    jlast = -2 * gradient * tr.R
    jacobian = _stack([_row(tr.L3, i) for i in range(3)] + [jlast])
    parameter_centre = C.col([(tr.L3 * qc + tr.offset3)[i, 0] for i in range(3)] + [-2 * f])
    A = tr.Mi * jacobian
    parameter_B = A * dc
    parameter_d = (tr.Mi * parameter_centre - parameter_B * centre) / tr.target_r
    parameter_F = parameter_B * (tr.r / tr.target_r)
    parameter_hessian = P.matrix_norm(A * model["H2"]) / tr.target_r
    order = 0 if polynomial else 2
    parameter_normal = _normal_bound(model, A * model["X"], order, weighted) / tr.target_r
    phase_hessian, phase_normal = tr.phase_remainder(order, weighted)
    D, offset = tr.distance_map(alignment)
    distance_B = D * dc
    distance_d = (D * qc + offset - distance_B * centre) / tr.distance_limit
    distance_F = distance_B * (tr.r / tr.distance_limit)
    distance_key = (ctx.prec, tuple(alignment["rows"]), tuple(alignment["cols"]), order, weighted)
    if distance_key not in tr._distance_bounds:
        tr._distance_bounds[distance_key] = (
            P.matrix_norm(D * model["H2"]) / tr.distance_limit,
            _normal_bound(model, D * model["X"], order, weighted) / tr.distance_limit)
    distance_hessian, distance_normal = tr._distance_bounds[distance_key]
    data = dict(parameter_d=_finite(parameter_d), parameter_F=_finite(parameter_F),
                parameter_hessian=parameter_hessian, parameter_normal=parameter_normal,
                parameter_curvature=parameter_hessian + parameter_normal,
                psi_slope=P.matrix_norm(tr.R * dc), psi_hessian=phase_hessian,
                psi_normal=phase_normal, psi_curvature=phase_hessian + phase_normal,
                psi_factor=72 * tr.last_column_norm / tr.target_r,
                psi_hessian_at_anchor=_psi_hessian_at(tr.S * qc),
                psi_output_norm=tr.last_column_norm / tr.target_r,
                psi_cubic=24 * arb(18).sqrt(),
                distance_d=_finite(distance_d), distance_F=_finite(distance_F),
                distance_hessian=distance_hessian, distance_normal=distance_normal,
                distance_curvature=distance_hessian + distance_normal,
                polynomial=polynomial, alignment=alignment, weighted_target=weighted)
    return data


def prepare_local_data(tr, v, alignment=None, weighted=False):
    """Arb predictor at r*v/||v||, reusable while a cap threshold changes."""
    v = _integers(v, 4, "cap normal")
    n2 = sum(x*x for x in v)
    if not n2:
        raise ValueError("zero cap normal")
    if type(weighted) is not bool:
        raise ValueError("weighted must be a boolean")
    key = (ctx.prec, tuple(v))
    # One true source jet can serve different transfer descriptors.
    cache = tr.model.setdefault("_t3_true_jets", {})
    if key not in cache:
        centre = C.col(v) * (tr.r / arb(n2).sqrt())
        qc, dc, eta = P.centre_jet(tr.model, centre)
        cache[key] = centre, qc, dc, eta
    centre, qc, dc, eta = cache[key]
    if alignment is None:
        alignment = propose_alignment(tr, qc)
    align_key = json.dumps(alignment, sort_keys=True, separators=(",", ":"), allow_nan=False)
    data_key = key + (align_key, weighted)
    if data_key not in tr._local_data:
        tr._local_data[data_key] = _data_at(tr, centre, qc, dc, alignment, weighted)
    return tr._local_data[data_key]


def prepare_cap(model, tr, cap):
    """Recompute both affine models and all non-witness bounds for a cap."""
    if tr.model is not model:
        raise ValueError("T3 transfer belongs to another source model")
    if tr.group_index is not None and (type(cap.get("group_index")) is not int or
                                      cap.get("group_index") != tr.group_index):
        raise ValueError("T3 group_index does not match this transfer")
    if cap.get("t3_group_sha256") != tr.digest:
        raise ValueError("T3 transfer descriptor binding differs")
    mode = cap.get("mode", "polynomial")
    if mode not in ("polynomial", "local", "local_sphere"):
        raise ValueError("unknown T3 cap mode")
    weighted = _bool(cap, "weighted_target")
    psi_remainder = cap.get("psi_remainder", "global")
    if psi_remainder not in ("global", "local_hessian"):
        raise ValueError("unknown Psi remainder mode")
    e, t, centre, delta2 = C.cap_geometry(cap, model["r"])
    alignment = cap.get("t3_alignment", tr.group.get("t3_alignment"))
    if alignment is None:
        raise ValueError("a fixed T3 distance alignment is required")
    if mode == "local_sphere":
        delta2 = 2 * model["r"] * model["r"] * (1 - t)
        data = prepare_local_data(tr, cap["v"], alignment, weighted)
    else:
        if mode == "polynomial":
            hc = P.tensor_at(model["H2"], centre)
            qc = model["Q0"] + model["U"] * centre + hc * centre / 2
            dc = model["U"] + hc
        else:
            qc, dc, _ = P.centre_jet(model, centre)
        data = _data_at(tr, centre, qc, dc, alignment, weighted, mode == "polynomial")
    delta = delta2.sqrt()
    if data["polynomial"]:
        phase_distance = data["psi_slope"] * delta + data["psi_hessian"] * delta2 / 2 + data["psi_normal"]
        parameter_error = data["parameter_hessian"] * delta2 / 2 + data["parameter_normal"]
        distance_error = data["distance_hessian"] * delta2 / 2 + data["distance_normal"]
    else:
        phase_distance = data["psi_slope"] * delta + data["psi_curvature"] * delta2 / 2
        parameter_error = data["parameter_curvature"] * delta2 / 2
        distance_error = data["distance_curvature"] * delta2 / 2
    psi_error = data["psi_factor"] * phase_distance * phase_distance
    if psi_remainder == "local_hessian":
        local_error = data["psi_output_norm"] * (data["psi_hessian_at_anchor"] +
                                                data["psi_cubic"] * phase_distance) * phase_distance * phase_distance
        # Each candidate is a proved upper bound; freeze the smaller upper
        # endpoint as an exact binary rational.  No float estimate is trusted.
        psi_error = arb(min(Z.upper(psi_error), Z.upper(local_error)))
    parameter_error += psi_error
    return dict(data, e=e, t=t, delta2=delta2, delta=delta, mode=mode,
                parameter_error=parameter_error, distance_error=distance_error,
                side_phase_distance=phase_distance, psi_remainder=psi_remainder)


def affine_witness(d, F, e, t, error, witness):
    """Check the strengthened 5 x 5 S-lemma witness for a normalized output."""
    if not isinstance(witness, dict):
        raise ValueError("T3 norm witness must be a dictionary")
    lam = C.exact_number(witness.get("lambda", witness.get("lambda_")))
    mu = C.exact_number(witness["mu"])
    sval = C.exact_number(witness["s"])
    avec_values = witness.get("multiplier_vec", [0, 0, 0, 0])
    if not isinstance(avec_values, list) or len(avec_values) != 4:
        raise ValueError("multiplier_vec must contain four exact scalars")
    avec = C.col([C.exact_number(x) for x in avec_values])
    if not (mu >= 0 and sval >= 0 and mu * mu >= C.dot(avec, avec)):
        return dict(ok=False, reason="multiplier SOC or nonnegative bound")
    gram, b = F.transpose() * F, F.transpose() * d
    matrix = arb_mat(5, 5)
    for i in range(4):
        for j in range(4):
            matrix[i, j] = (lam if i == j else arb(0)) - gram[i, j]
            matrix[i, j] -= (e[i, 0] * avec[j, 0] + avec[i, 0] * e[j, 0]) / 2
        cross = -b[i, 0] - (mu * e[i, 0] - t * avec[i, 0]) / 2
        matrix[i, 4], matrix[4, i] = cross, cross
    matrix[4, 4] = sval - C.dot(d, d) + t * mu - lam
    pivots = C.pd_pivots(matrix)
    if pivots is None:
        return dict(ok=False, reason="PSD witness")
    margin = 1 - sval.sqrt() - error
    return dict(ok=bool(margin > 0), reason="CERTIFIED" if margin > 0 else "remainder",
                normalized_margin_lower=Z.lower(margin),
                normalized_error_upper=Z.upper(error),
                min_ldl_pivot_lower=min(Z.lower(x) for x in pivots))


def check_cap(model, tr, cap):
    """Certify both T3 inequalities on the actual closed cap in ``cap``."""
    prepared = prepare_cap(model, tr, cap)
    parameter = affine_witness(prepared["parameter_d"], prepared["parameter_F"],
                               prepared["e"], prepared["t"], prepared["parameter_error"],
                               cap.get("t3_parameter"))
    distance = affine_witness(prepared["distance_d"], prepared["distance_F"],
                              prepared["e"], prepared["t"], prepared["distance_error"],
                              cap.get("t3_distance"))
    ok = parameter["ok"] and distance["ok"]
    reason = "CERTIFIED" if ok else ("T3 parameter " + parameter["reason"] if not parameter["ok"]
                                     else "T3 phase distance " + distance["reason"])
    result = dict(ok=ok, reason=reason, kind="T3", mode=prepared["mode"],
                  weighted_target=prepared["weighted_target"], parameter=parameter, distance=distance,
                  psi_remainder=prepared["psi_remainder"],
                  delta_upper=Z.upper(prepared["delta"]),
                  side_phase_distance_upper=Z.upper(prepared["side_phase_distance"]),
                  orientation_margins_lower=[])
    if "normalized_margin_lower" in parameter:
        result["target_margin_lower"] = Z.lower(tr.target_r * arb(parameter["normalized_margin_lower"]))
    if "normalized_margin_lower" in distance:
        result["distance_margin_lower"] = Z.lower(tr.distance_limit * arb(distance["normalized_margin_lower"]))
    return result


def replay(data, proposal, precision=224, model=None):
    """Replay a mixed sphere against the supplied compact T3 data extract.

    This certifies geometric transfers conditional on the inherited local
    matched-completion germ and the target W/XS chart theorem.  Production
    ``seedcert.check_seed_caps`` additionally requires accepted edge C1e.
    """
    start = time.perf_counter()
    ctx.prec = precision
    seed = proposal.get("seed")
    headers = data.get("seed_headers", data.get("seeds"))
    if type(seed) is not int or headers is None or not 0 <= seed < len(headers):
        raise ValueError("invalid source seed index")
    if "t3_seeds" in data:
        if str(seed) not in data["t3_seeds"]:
            raise ValueError("source absent from the T3 extract")
        row = data["t3_seeds"][str(seed)]
    else:
        row = headers[seed]
    ball = SC.Ball(row)
    if model is None:
        model = P.normal_form(ball, precision)
    # A caller-supplied model is an internal already-verified cache, but its
    # exact source record is nevertheless checked against the selected seed.
    cached_ball = model["ball"]
    if (cached_ball.r != ball.r or cached_ball.o != ball.o or cached_ball.gauge != ball.gauge or
            any(not np.array_equal(getattr(cached_ball, field), getattr(ball, field))
                for field in ("theta0", "Mth", "P", "U"))):
        raise ValueError("cached model belongs to another source seed")
    caps = proposal.get("caps")
    if not isinstance(caps, list):
        raise ValueError("caps must be a list")
    groups = row["transfers"]
    transfers, results = {}, []
    for k, cap in enumerate(caps):
        try:
            gi = cap.get("group_index")
            if type(gi) is not int or not 0 <= gi < len(groups):
                raise ValueError("invalid transfer group_index")
            group, target = groups[gi], groups[gi].get("target")
            if type(target) is not int:
                raise ValueError("invalid target index")
            kind = group.get("kind")
            if gi not in transfers:
                if kind == "T3":
                    edges = data.get("edge", [])
                    if not 0 <= target < len(edges):
                        raise ValueError("invalid edge target index")
                    transfers[gi] = Transfer(model, E.EdgeBall(edges[target]), group, gi)
                elif kind in ("T0", "T1"):
                    if not 0 <= target < len(headers):
                        raise ValueError("invalid seed target index")
                    transfers[gi] = P.Transfer(model, SC.Ball(headers[target]), group)
                else:
                    raise ValueError("unsupported cap transfer kind")
            result = (check_cap if kind == "T3" else C.check_cap)(model, transfers[gi], cap)
            result.update(cap=k, group_index=gi, kind=kind)
        except (ValueError, ArithmeticError, KeyError, TypeError, IndexError, OverflowError) as exc:
            result = dict(ok=False, reason="malformed or uncertifiable cap: %s" % exc, cap=k)
        results.append(result)
    import cap_coverage
    coverage = cap_coverage.verify_coverage([{"v": c["v"], "h": c["h"]} for c in caps],
                                            proposal.get("coverage") or {})
    all_caps = bool(results) and all(x["ok"] for x in results)
    full = all_caps and coverage.get("passed", False) and coverage.get("covers", False)
    return dict(seed=seed, status="CERTIFIED full sphere" if full else
                "CERTIFIED caps only" if all_caps else "NOT ESTABLISHED", source_model=model["summary"],
                caps=len(caps), certified_caps=sum(x["ok"] for x in results),
                all_caps_passed=all_caps, full_sphere=full, coverage=coverage,
                precision_bits=precision, cap_results=results, seconds=time.perf_counter()-start,
                scope="Geometric T0/T1/T3 cap transfers and sphere coverage, conditional on inherited local matched-completion and W/XS chart theorems; no global atlas or MUB exclusion replay.")

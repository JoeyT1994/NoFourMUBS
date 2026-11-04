"""Boundary transfers on spherical caps (return ZC, proof/theorems/ZC_cap_transfers): one cap of the sphere
||x|| = 1, v.x >= h (x = w / r) is certified for a T0/T1 transfer by a 5 x 5 PSD witness on the whole-ball model's
quadratic predictor with ZT's error terms, and both Psi signs by the linear-cap minimum and the signature remainder;
the caps cover S^3 by cap_coverage.verify_coverage (exact integer polar-facet certificate).  Code: return ZC's
cap_verify.py with an additive edge-source adapter: the X-ball uses its augmented centre jet and,
when weighted_target is true, its output-weighted normal bounds.
"""
import math
from flint import arb, arb_mat, ctx
import patches as P
import seedcert as SC
import wholeball as Z


def exact_number(value):
    """Read only exact integer or finite binary64-hex certificate scalars."""
    if type(value) is int:
        return arb(value)
    if isinstance(value, str) and value.lower().lstrip("+-").startswith("0x"):
        number = float.fromhex(value)
        if math.isfinite(number):
            return arb(number)
    raise ValueError("certificate scalar must be an integer or finite float.hex string")


def col(values):
    return arb_mat([[v if isinstance(v, arb) else arb(v)] for v in values])


def dot(a, b):
    return sum((x * y for x, y in zip(a.entries(), b.entries())), arb(0))


def pd_pivots(matrix):
    """Strict interval LDL; only rigorous interval signs decide acceptance."""
    size = matrix.nrows()
    if matrix.ncols() != size or not all(v.is_finite() for v in matrix.entries()):
        return None
    low = [[arb(0) for _ in range(size)] for _ in range(size)]
    pivots = []
    for i in range(size):
        pivot = matrix[i, i] - sum(
            (low[i][k] * low[i][k] * pivots[k] for k in range(i)), arb(0))
        if not pivot > 0:
            return None
        pivots.append(pivot)
        for j in range(i + 1, size):
            low[j][i] = (matrix[j, i] - sum(
                (low[j][k] * low[i][k] * pivots[k] for k in range(i)), arb(0))) / pivot
    return pivots


def cap_geometry(cap, radius):
    values = cap["v"]
    if not isinstance(values, list) or len(values) != 4 or any(type(v) is not int for v in values):
        raise ValueError("v must contain four exact integers")
    norm2_int = sum(v * v for v in values)
    if norm2_int == 0:
        raise ValueError("zero cap normal")
    h = exact_number(cap["h"])
    norm2 = arb(norm2_int)
    if not (h > 0 and h * h < norm2):
        raise ValueError("this replay requires 0 < h < ||v||")
    v = col(values)
    norm = norm2.sqrt()
    e, t = v / norm, h / norm
    # The cap-rim centre lies strictly inside the original ball.
    centre = v * (radius * h / norm2)
    delta2 = radius * radius * (1 - h * h / norm2)
    return e, t, centre, delta2


def linear_cap_lower(linear, e, t):
    """Rigorous lower bound of b.x on ||x||=1, e.x>=t.

    The exact boundary formula is used only when its branch is proved.  An
    inconclusive branch or interval cancellation uses the whole-sphere bound.
    """
    b2 = dot(linear, linear)
    if all(v == 0 for v in linear.entries()):
        return arb(0)
    if not b2 > 0:
        return -P.matrix_norm(linear)
    bn = b2.sqrt()
    be = dot(linear, e)
    if -be > t * bn:
        return -bn
    if -be < t * bn:
        transverse2 = b2 - be * be
        # A safe upper bound is sufficient in the subtractive radical.
        transverse2 = arb(max(0.0, Z.upper(transverse2)))
        return t * be - ((1 - t * t) * transverse2).sqrt()
    return -bn


def check_cap(model, transfer, cap):
    """Certify one entire closed cap; errors and orientations are recomputed."""
    mode = cap.get("mode", "polynomial")
    if mode not in ("polynomial", "local", "local_sphere"):
        raise ValueError("unknown cap mode")
    e, t, centre, delta2 = cap_geometry(cap, model["r"])
    if mode == "local_sphere":
        centre = e * model["r"]
        delta2 = 2 * model["r"] * model["r"] * (1 - t)
    delta = delta2.sqrt()
    lam = exact_number(cap.get("lambda", cap.get("lambda_")))
    mu = exact_number(cap["mu"])
    sval = exact_number(cap["s"])
    av = cap.get("multiplier_vec", [0, 0, 0, 0])
    if not isinstance(av, list) or len(av) != 4:
        raise ValueError("multiplier_vec must have four entries")
    avec = col([exact_number(v) for v in av])
    if not (mu >= 0 and sval >= 0 and mu * mu >= dot(avec, avec)):
        return {"ok": False, "reason": "multiplier SOC or nonnegative bound"}

    tr = transfer
    weighted_target = cap.get("weighted_target", False)
    if type(weighted_target) is not bool:
        raise ValueError("weighted_target must be a boolean")
    weighted_bounds = None
    if weighted_target and not tr.linear:
        weighted_bounds = getattr(tr, "_zc_weighted_target_bounds", None)
        if weighted_bounds is None:
            import cap_weighted as weighted
            weighted_bounds = weighted.target_bounds(tr)
            tr._zc_weighted_target_bounds = weighted_bounds
    if tr.linear:
        d, ff = tr.a0 / tr.target_r, tr.B0 * (model["r"] / tr.target_r)
        eps = arb(0)
        qc = dc = None
    elif mode == "polynomial":
        hc = P.tensor_at(tr.AH, centre)
        d = (tr.a0 - hc * centre / 2) / tr.target_r
        ff = (tr.B0 + hc) * (model["r"] / tr.target_r)
        normal_error = weighted_bounds["T0"] if weighted_bounds is not None else tr.xnorm * model["tau"]
        eps = tr.hnorm * delta2 / 2 + normal_error
        qc = model["Q0"] + model["U"] * centre + P.tensor_at(model["H2"], centre) * centre / 2
        dc = model["U"] + P.tensor_at(model["H2"], centre)
    else:
        if model.get("edge_chart", False):
            from edge_wholeball import edge_centre_jet
            qc, dc, _ = edge_centre_jet(model, centre)
        else:
            qc, dc, _ = P.centre_jet(model, centre)
        bb = tr.A * dc
        d = (tr.A * qc + tr.offset - bb * centre) / tr.target_r
        ff = bb * (model["r"] / tr.target_r)
        # The edge adapter may bound the full output Hessian more sharply than
        # a sum using this transfer's independently rounded predictor norm.
        local_hessian = (weighted_bounds["local_hessian"] if weighted_bounds is not None
                         else tr.hnorm + tr.xnorm * model["Z2"])
        eps = local_hessian * delta2 / 2

    gram = ff.transpose() * ff
    b = ff.transpose() * d
    matrix = arb_mat(5, 5)
    for i in range(4):
        for j in range(4):
            matrix[i, j] = (lam if i == j else arb(0)) - gram[i, j]
            matrix[i, j] -= (e[i, 0] * avec[j, 0] + avec[i, 0] * e[j, 0]) / 2
        cross = -b[i, 0] - (mu * e[i, 0] - t * avec[i, 0]) / 2
        matrix[i, 4] = cross
        matrix[4, i] = cross
    matrix[4, 4] = sval - dot(d, d) + t * mu - lam
    pivots = pd_pivots(matrix)
    if pivots is None:
        return {"ok": False, "reason": "target PSD witness"}
    target_margin = tr.target_r * (1 - sval.sqrt()) - eps
    out = {"ok": False, "mode": mode, "weighted_target": weighted_target,
           "target_margin_lower": Z.lower(target_margin),
           "target_error_upper": Z.upper(eps),
           "min_ldl_pivot_lower": min(Z.lower(v) for v in pivots),
           "delta_upper": Z.upper(delta),
           "orientation_margins_lower": []}
    if not target_margin > 0:
        out["reason"] = "target remainder"
        return out

    for side in ([] if tr.linear else tr.sides):
        f, gradient = P.psi_gradient(side["S"] * qc)
        rb = side["R"] * dc
        lin = gradient * rb
        linear = lin.transpose() * (side["sg"] * model["r"])
        const = side["sg"] * (f - (lin * centre)[0, 0])
        scalar_hessian = gradient * side["RH"]
        scalar_hessian4 = arb_mat([[scalar_hessian[0, 4*i+j] for j in range(4)] for i in range(4)])
        if mode == "polynomial":
            eg = P.matrix_norm(scalar_hessian4) * delta2 / 2
            eg += P.matrix_norm(gradient * side["RX"]) * model["tau"]
            ep = side["hn"] * delta2 / 2 + side["xn"] * model["tau"]
        else:
            eg = (P.matrix_norm(scalar_hessian4) +
                  P.matrix_norm(gradient * side["RX"]) * model["Z2"]) * delta2 / 2
            ep = (side["hn"] + side["xn"] * model["Z2"]) * delta2 / 2
        phase_distance = P.matrix_norm(rb) * delta + ep
        margin = const + linear_cap_lower(linear, e, t) - eg - 36 * phase_distance * phase_distance
        out["orientation_margins_lower"].append(Z.lower(margin))
        if not margin > 0:
            out["reason"] = "orientation"
            return out
    out.update(ok=True, reason="CERTIFIED")
    return out



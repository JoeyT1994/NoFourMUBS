"""Rigorous overlap exclusion for two phase tubes with shared real parameters.

No claim is made that the supplied tubes exhaust the column roots.  That premise
must be proved by a separate exhaustive cover.  No root existence is needed.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
from pathlib import Path
from flint import arb, acb, ctx


def A(value):
    if isinstance(value, str) and "0x" in value.lower():
        result = arb(float.fromhex(value))
    else:
        result = arb(value)
    if not result.is_finite():
        raise ValueError("nonfinite input")
    return result


def upper_norm(values):
    """Upper Euclidean norm, valid also for components containing zero."""
    values = [abs(v).upper() for v in values]
    return sum((v*v for v in values), arb(0)).sqrt().upper()


def matrix_operator_upper(M):
    """Min of Frobenius and Gershgorin upper bounds on the spectral norm."""
    n = len(M[0])
    frob = upper_norm([x for row in M for x in row])
    G = [[sum((row[i]*row[j] for row in M), arb(0))
          for j in range(n)] for i in range(n)]
    uppers = [sum((abs(x).upper() for x in row), arb(0)).upper()
              for row in G]
    gersh = uppers[0]
    for u in uppers[1:]:
        if u > gersh:
            gersh = u
    gersh = gersh.sqrt().upper()
    return gersh if gersh < frob else frob


def text(x):
    return x.str(radius=True, more=True)


def helmert():
    E = [[arb(0) for j in range(5)] for i in range(6)]
    for j in range(5):
        d = arb((j+1)*(j+2)).sqrt()
        for i in range(j+1):
            E[i][j] = 1/d
        E[j+1][j] = -(j+1)/d
    return E


def certify_helmert_pair(c_a, c_b, S_a, S_b, epsilon_a, epsilon_b, r,
                         multiplier=None):
    """Wrapper with six phase centres and 5 x m Helmert-coordinate slopes."""
    if len(S_a) != 5 or len(S_b) != 5:
        raise ValueError("Helmert slope matrices must have five rows")
    m = len(S_a[0])
    if m < 1 or any(len(row) != m for row in S_a + S_b):
        raise ValueError("inconsistent Helmert slope dimensions")
    E = helmert()
    S_a = [[A(x) for x in row] for row in S_a]
    S_b = [[A(x) for x in row] for row in S_b]
    Ta = [[sum((E[i][k]*S_a[k][j] for k in range(5)), arb(0))
           for j in range(m)] for i in range(6)]
    Tb = [[sum((E[i][k]*S_b[k][j] for k in range(5)), arb(0))
           for j in range(m)] for i in range(6)]
    return certify_pair(c_a, c_b, Ta, Tb, epsilon_a, epsilon_b, r,
                        multiplier=multiplier)


def certify_pair(phase_a, phase_b, slope_a, slope_b,
                 error_radius_a, error_radius_b, parameter_radius,
                 multiplier=None):
    """Enclose |sum_i exp(i(v_b-v_a)_i)|/6 for correlated phase tubes.

    v_a = phase_a + slope_a w + e_a, ||w||_2 <= parameter_radius,
    ||e_a||_2 <= error_radius_a, and likewise for b with the SAME w.
    Phase errors can have arbitrary means.  Removing their common-phase parts
    cannot increase their Euclidean norms and leaves overlap magnitude fixed.

    Inputs may be exact numbers or Arb interval strings.  Slopes are 6 x m.
    A positive returned lower bound is a rigorous incompatibility certificate.
    """
    if len(phase_a) != 6 or len(phase_b) != 6:
        raise ValueError("phase vectors must have length six")
    if len(slope_a) != 6 or len(slope_b) != 6:
        raise ValueError("slope matrices must have six rows")
    m = len(slope_a[0])
    if m < 1 or any(len(row) != m for row in slope_a + slope_b):
        raise ValueError("inconsistent slope dimensions")
    ca, cb = list(map(A, phase_a)), list(map(A, phase_b))
    Ta = [[A(x) for x in row] for row in slope_a]
    Tb = [[A(x) for x in row] for row in slope_b]
    r, ea, eb = map(A, [parameter_radius, error_radius_a, error_radius_b])
    if not (r >= 0 and ea >= 0 and eb >= 0):
        raise ValueError("indeterminate or negative radius")
    # Use exact outward endpoints for all radius premises.
    r, eta = r.upper(), (ea + eb).upper()
    D = [[Tb[i][j] - Ta[i][j] for j in range(m)] for i in range(6)]
    means = [sum((D[i][j] for i in range(6)), arb(0))/6 for j in range(m)]
    D = [[D[i][j] - means[j] for j in range(m)] for i in range(6)]
    z = [acb(0, cb[i]-ca[i]).exp()/6 for i in range(6)]
    s = sum(z, acb(0))
    if multiplier is None:
        # A floating point choice is only a proposal.  It is then interpreted
        # as an exact dyadic complex number; unit modulus is not assumed.
        sr, si = float(s.real.mid()), float(s.imag.mid())
        if not math.isfinite(sr) or not math.isfinite(si):
            raise ArithmeticError("nonfinite midpoint")
        sn = math.hypot(sr, si)
        multiplier = [float(sr/sn).hex(), float(-si/sn).hex()] if sn else ["1", "0"]
    if len(multiplier) != 2:
        raise ValueError("complex multiplier must have two real components")
    lam = acb(A(multiplier[0]), A(multiplier[1]))
    lam_abs = abs(lam).upper()
    if not lam_abs > 0:
        raise ValueError("zero multiplier")
    g = [-(lam*zi).imag for zi in z]
    gm = sum(g, arb(0))/6
    g0 = [gi-gm for gi in g]
    hw = [sum((D[i][j]*g[i] for i in range(6)), arb(0)) for j in range(m)]
    slope_norm = matrix_operator_upper(D)
    forcing = (r*upper_norm(hw)).upper()
    error_linear = (eta*upper_norm(g0)).upper()
    remainder = (lam_abs*(r*slope_norm+eta)**2/12).upper()
    centre = (lam*s).real
    signed = centre-forcing-error_linear-remainder
    normalized_lower = (signed/lam_abs).lower()
    return {
        "schema": "tc-correlated-tube-pair-v1",
        "status": "PAIR_INCOMPATIBLE_GIVEN_TUBES" if signed > 0 else "NOT_ESTABLISHED",
        "parameter_radius": text(r),
        "sum_error_radii": text(eta),
        "multiplier": multiplier,
        "centre_signed_overlap": text(centre),
        "parameter_linear_loss": text(forcing),
        "residual_linear_loss": text(error_linear),
        "quadratic_remainder": text(remainder),
        "difference_slope_operator_upper": text(slope_norm),
        "normalized_overlap_lower": text(normalized_lower),
        "precision_bits": ctx.prec,
        "scope": "All phases in both supplied tubes with the same real parameter w; tube completeness is an external premise.",
    }


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("input")
    ap.add_argument("--out", required=True)
    ap.add_argument("--precision", type=int, default=160)
    args = ap.parse_args()
    if args.precision < 64:
        raise ValueError("precision below 64 bits")
    ctx.prec = args.precision
    raw = Path(args.input).read_bytes()
    doc = json.loads(raw)
    try:
        result = certify_pair(**doc)
    except (ValueError, ArithmeticError, ZeroDivisionError) as e:
        result = {"status": "NOT_ESTABLISHED", "reason": str(e)}
    result["input_sha256"] = hashlib.sha256(raw).hexdigest()
    result["checker_sha256"] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    Path(args.out).write_text(json.dumps(result, indent=2)+"\n")
    print(json.dumps(result, indent=2))
    return 0 if result["status"] == "PAIR_INCOMPATIBLE_GIVEN_TUBES" else 1


if __name__ == "__main__":
    raise SystemExit(main())

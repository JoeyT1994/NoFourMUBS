#!/usr/bin/env python3
"""Meaningful smoke checks of the XS reference integration, not a proof replay.

Run with python-flint available and pass --context if the supplied reference
modules are not in their original sibling archive directory.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as F
from itertools import permutations
import json
from pathlib import Path
import sys

import numpy as np
from flint import arb, acb, acb_mat, ctx


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--context", type=Path,
                        default=Path(__file__).resolve().parent/"reference")
    parser.add_argument("--receipt", type=Path)
    args = parser.parse_args()
    sys.path.insert(0, str(args.context.resolve()))
    import tmarb as TM
    import seedcert as S
    import t3_no_sides as XS
    ctx.prec = 192

    checks = []
    def passed(name):
        checks.append(name)

    def rejection(name, call):
        try:
            call()
        except S.CertError:
            passed(name)
        else:
            raise AssertionError("Expected rejection: " + name)

    def const(values):
        return TM.const(np.asarray(values, dtype=object).reshape(1, 36),
                        TM.zeros((1, 4)), cplx=False)

    def a(f):
        f = F(f)
        return arb(f.numerator)/f.denominator

    def phase_fourier_family(alpha=arb(0), beta=arb(0)):
        # This is the exact two-parameter Fourier/Diţă family:
        # V_ij = 1_(i odd) f(j mod 3), f=(0,alpha,beta).
        # Its horizontal phase norm is sqrt(2(alpha²-alpha*beta+beta²)).
        f = (arb(0), alpha, beta)
        return np.array([[arb.pi()*i*j/3 + (f[j % 3] if i % 2 else arb(0))
                          for j in range(6)] for i in range(6)], dtype=object)

    group = {"rows": [0, 1, 2], "cols": [0, 1, 2], "g": "id", "wind": [0, 0, 0]}
    header = json.loads((args.context/"edge_ball_header.json").read_text())
    target = XS.EdgeTarget.from_record(header)
    QF = const(phase_fourier_family())
    cf = XS.check_T3_no_sides(QF, target, group, coarse_distance=F(3, 20))
    assert all(v.contains(0) and abs(v) < arb(2)**-140 for v in cf.parameters.c.flat)
    passed("Exact F6 passes at the inclusive rational coarse-distance endpoint 3/20")
    assert target.domain_upper < a(F(1, 5))
    passed("Actual development Mth/r header certified inside the exact W ellipsoid")

    class PoisonOldFields(dict):
        forbidden = {"hcols", "vrows", "wind_h", "wind_v"}
        def get(self, key, default=None):
            if key in self.forbidden:
                raise AssertionError("deprecated field was read: " + key)
            return super().get(key, default)
        def __getitem__(self, key):
            if key in self.forbidden:
                raise AssertionError("deprecated field was read: " + key)
            return super().__getitem__(key)
    poisoned = PoisonOldFields(group)
    for k in poisoned.forbidden:
        poisoned[k] = object()
    poisoned["wind"] = [0, 0, 0, object()]
    XS.check_T3_no_sides(QF, target, poisoned, coarse_distance=0)
    passed("Deprecated side fields and legacy fourth winding can be opaque and are never read")

    changed = phase_fourier_family()
    changed[2, 2] = a(F(127, 17))
    pp = XS.extract_p(const(changed), group)
    assert all(v.contains(0) and abs(v) < arb(2)**-140 for v in pp.c.flat)
    passed("Extraction independent of theta4, checked without asserting the modified matrix is Hadamard")

    # Exact invariances: arbitrary row/column gauges, complement permutations,
    # and phase-lift changes are handled before any chart or side construction.
    gauged = phase_fourier_family()
    rp, cp = [0, 1, 2, 5, 3, 4], [0, 1, 2, 4, 5, 3]
    gauged = gauged[np.ix_(rp, cp)]
    for i in range(6):
        for j in range(6):
            gauged[i, j] += a(F(i, 13)-F(j, 11))
    gauged[1, 1] += 2*arb.pi()
    gauge_group = dict(group, wind=[-1, 0, 0])
    cg = XS.check_T3_no_sides(const(gauged), target, gauge_group, coarse_distance=0)
    assert all(v.contains(0) and abs(v) < arb(2)**-130 for v in cg.parameters.c.flat)
    passed("Gauge, complement row/column permutation, and phase winding invariance on F6")

    # Compare arbitrary raw matrix extraction to direct Acb matrix operations.
    # This test makes no Hadamard or distance claim about those raw matrices.
    raw = np.array([[a(F(11*i+7*j+i*j, 37)) for j in range(6)]
                    for i in range(6)], dtype=object)
    for action in ("id", "conj", "T", "conjT"):
        gg = {"rows": [4, 1, 5], "cols": [2, 0, 3], "g": action, "wind": [1, -2, 0]}
        got = XS.extract_p(const(raw), gg)
        transformed = raw.T.copy() if action in ("T", "conjT") else raw.copy()
        if action in ("conj", "conjT"):
            transformed = -transformed
        I, J = gg["rows"], gg["cols"]
        complement = [j for j in range(6) if j not in J]
        C = acb_mat([[acb(0, transformed[i, j]).exp() for j in complement] for i in I])
        permanent = sum((C[0, p[0]]*C[1, p[1]]*C[2, p[2]]
                         for p in permutations(range(3))), acb(0))
        product = acb(1)
        for v in C.entries():
            product *= v
        signature = permanent*C.det()**2/product
        expected = []
        for (ii, jj), base, wind in zip(((1, 1), (1, 2), (2, 1)), (1, 2, 2), gg["wind"]):
            expected.append(transformed[I[ii], J[jj]]-transformed[I[ii], J[0]]
                            -transformed[I[0], J[jj]]+transformed[I[0], J[0]]
                            +2*arb.pi()*wind-arb.pi()*base/3)
        expected.append(-2*signature.imag)
        assert all(abs(got.c[0, k]-expected[k]) < arb(2)**-130 for k in range(4))
    passed("All four g actions and nonstandard corners agree with independent direct matrix signature evaluation")

    # An exact nonconstant Hadamard family checks the nonlinear TM path,
    # including its remainder bounds and target membership on a whole box.
    c = QF.c.copy()
    gradient = TM.zeros((1, 36, 4))
    for i in range(6):
        for j in range(6):
            if i % 2 and j % 3 == 1:
                gradient[0, 6*i+j, 0] = arb(1)
    h = np.array([[a(F(1, 1000)), arb(0), arb(0), arb(0)]], dtype=object)
    curve = TM.TM(c, gradient, TM.zeros((1, 36, 10)), TM.zeros((1, 36)), h)
    cc = XS.check_T3_no_sides(curve, target, group, coarse_distance=F(3, 2000))
    assert cc.membership_upper[0] < target.radius
    assert abs(cc.parameters.g[0, 0, 0]-1) < arb(2)**-140
    for s in (F(-1, 1000), F(-1, 2000), F(0), F(1, 2000), F(1, 1000)):
        point = XS.extract_p(const(phase_fourier_family(a(s))), group)
        for k in range(4):
            model = cc.parameters.c[0, k] + cc.parameters.g[0, k, 0]*a(s) \
                    + cc.parameters.q[0, k, 0]*a(s)**2
            assert abs(model-point.c[0, k]) < cc.parameters.rho[0, k] + arb(2)**-125
    passed("Whole-box extraction and target membership for a nonconstant exact Fourier-family TM")

    tiny = dict(header, r=(0.001).hex())
    displaced = const(phase_fourier_family(a(F(1, 50))))
    rejection("Genuine nearby Fourier-family matrix outside a tiny target is rejected",
              lambda: XS.check_T3_no_sides(displaced, tiny, group, coarse_distance=F(3, 100)))

    for label, value in (("too large", F(151, 1000)), ("negative", -1), ("nonfinite", float("inf"))):
        rejection("Coarse distance " + label + " rejected",
                  lambda value=value: XS.check_T3_no_sides(QF, target, group, coarse_distance=value))
    rejection("Arb enclosure straddling the inclusive threshold is rejected",
              lambda: XS.check_T3_no_sides(QF, target, group,
                                           coarse_distance=arb(a(F(3, 20)), a(F(1, 10000)))))
    rejection("Target radius .30 outside W domain rejected",
              lambda: XS.EdgeTarget.from_record(dict(header, r=(0.30).hex())))
    shifted = dict(header, r=(0.05).hex(), q0=[(0.01).hex(), 0, 0, 0])
    shifted_target = XS.EdgeTarget.from_record(shifted)
    XS.check_T3_no_sides(QF, shifted_target, group, coarse_distance=0)
    passed("Nonzero q0 supported and F6 membership checked in the shifted ellipsoid")
    rejection("Large shifted ellipsoid outside W domain rejected",
              lambda: XS.EdgeTarget.from_record(dict(shifted, q0=[1, 0, 0, 0])))

    malformed = [dict(group, rows=[0, 0, 2]), dict(group, cols=[0, 1, True]),
                 dict(group, g="unknown"), dict(group, wind=[0, 0]),
                 dict(group, wind=[0, 0, False])]
    for k, gg in enumerate(malformed):
        rejection("Malformed transfer record " + str(k+1) + " rejected",
                  lambda gg=gg: XS.extract_p(QF, gg))
    for label, bad in (("singular", dict(header, Mth=[0]*16)),
                       ("wrong matrix size", dict(header, Mth=[1]*15)),
                       ("nonfinite matrix", dict(header, Mth=[float("nan")]*16)),
                       ("wrong center size", dict(header, q0=[0]*3)),
                       ("negative radius", dict(header, r=-1))):
        rejection("Malformed target " + label + " rejected", lambda bad=bad: XS.EdgeTarget.from_record(bad))
    assert "edgecert" not in sys.modules
    passed("No edgecert import or tube construction occurred")

    receipt = {"status": "PASS", "count": len(checks), "checks": checks,
               "development_target_W_radius_upper": str(target.domain_upper),
               "development_target_metric_squared_norm_upper": str(target.domain_spectral_upper),
               "Fourier_family_box_target_coordinate_norm_upper": str(cc.membership_upper[0]),
               "scope": "Prototype API smoke checks. Genuine-Hadamard and coarse-distance premises and W/XS theorems are external; no atlas or Stage C certification was run."}
    text = json.dumps(receipt, indent=2)
    print(text)
    if args.receipt:
        args.receipt.write_text(text+"\n")


if __name__ == "__main__":
    main()

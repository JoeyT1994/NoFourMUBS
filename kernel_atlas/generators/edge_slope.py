"""Exact frame-coordinate slope mirror and baseline kernel-check emitter.

The floating inverse only proposes a preconditioner. The four rational Taylor
row sums, including all rounding and root/forced derivative errors, decide acceptance.
"""
from fractions import Fraction as Fr
from pathlib import Path
import numpy as np
import edge_c1e as E
import edge_derivative as Df
import edge_normal as N
import knormal as K

OUT = Path(__file__).resolve().parents[1] / 'lean/KernelAtlas/Edge/Baseline'


def rationalT(q):
    q = Fr(q)
    z = q * E.SC
    return E.addRho(E.const(E.rz(z.numerator // z.denominator)), 1)


def eta_weights(fc):
    return [[sum(fc['Gi'][i][k]*fc['F'][k][a][b] for k in range(4))
             for a in range(6) for b in range(6)] for i in range(4)]


def etaJacT(h, weights, cols):
    return [E.sumT([E.mul(h, rationalT(weights[i][k]), cols[j][k])
                    for k in range(36)]) for i in range(4) for j in range(4)]


def slopeEntry(h, Y, J, i, j):
    return E.sub(E.const(E.ONE if i == j else E.ZERO),
                 E.sumT([E.smul(h, E.rz(Y[4*i+k]), J[4*k+j]) for k in range(4)]))


def slope_rows(h, Y, J):
    return [sum(E.bnd(h, slopeEntry(h, Y, J, i, j)) for j in range(4)) for i in range(4)]


def slopeOK(h, Y, J, q):
    return 0 <= q < E.SC and all(x <= q for x in slope_rows(h, Y, J))


def slope_data(B, D, H, V, fc):
    cols = Df.completion_derivative_models(B, D, H, V)
    J = etaJacT(D['hb'], eta_weights(fc), cols)
    center = np.array([T.cg(0)[0]/E.SC for T in J]).reshape(4, 4)
    Y = [int(round(float(x)*E.SC)) for x in np.linalg.inv(center).ravel()]
    rows = slope_rows(D['hb'], Y, J)
    q = max(rows)
    if not slopeOK(D['hb'], Y, J, q):
        raise RuntimeError(f'frame-coordinate slope check failed: {[x/E.SC for x in rows]}')
    P = [Df.derivative_predictor(D['Xp'][k], j) for j in range(4) for k in range(9)]
    return dict(P=P, Y=Y, q=q, rows=rows)


def main():
    xb = E.XBall()
    B = xb.ball_dict()
    D = E.tune(B, E.box_data(xb, xb.boxes()[0]))
    H, V = Df.root_diff_data(B, D, False), Df.root_diff_data(B, D, True)
    ints, den = N.predict_frame()
    S = slope_data(B, D, H, V, K.frame_consts(ints, den))
    OUT.mkdir(exist_ok=True)
    (OUT/'SlopeData.lean').write_text('''import KernelAtlas.Edge.EtaJacModels

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Seed

''' + f"def derivativeP0 : List Seed.CT := {E.lean_ct_list(S['P'])}\n\n".replace('List Seed.CT', 'List NoFourMUBs.KernelAtlas.Seed.CT') +
        f"def slopeY0 : List ℤ := {E.lean_int_list(S['Y'])}\n\n" +
        f"def slopeQ0 : ℕ := {S['q']}\n\nend NoFourMUBs.KernelAtlas.Edge.Baseline\n")
    (OUT/'SlopeCheck.lean').write_text('''import KernelAtlas.Edge.Baseline.C1eData
import KernelAtlas.Edge.Baseline.RootDiffData
import KernelAtlas.Edge.Baseline.SlopeData
import KernelAtlas.Edge.Fourier.Data

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem box0_slope : slopeOK box0.hb slopeY0
    (etaJacT ball box0 Fourier.frame Fourier.fq diffH0 diffV0 derivativeP0) slopeQ0 = true := by
  decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
''')
    print('slope rows:', [x/E.SC for x in S['rows']])


if __name__ == '__main__':
    main()

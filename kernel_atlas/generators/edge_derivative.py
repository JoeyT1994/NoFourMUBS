"""Exact mirrors of the augmented-root differential checks and baseline emitter.

The differentiated predictor polynomial is only a prediction. The kernel checks
the residual against the true Jacobian models before accepting its error radius.
"""
from pathlib import Path
import edge_c1e as E
from seed_c1 import QPAIR
from seed_c1 import mulH

OUT = Path(__file__).resolve().parents[1] / 'lean/KernelAtlas/Edge/Baseline'


def sideJcT(h, g, k, m):
    if k == 0:
        return E.mulI(g[m]) if m < 3 else E.const(E.ZERO)
    if k == 1:
        return E.const(E.ZERO) if m < 3 else E.mulI(g[m])
    if m < 3:
        return E.neg(E.mulI(E.mul(h, g[m+3], E.conj(g[m]))))
    return E.mulI(E.mul(h, g[m], E.conj(g[m-3])))


def dG4T(h, v, e, k):
    if k == 0:
        return E.const(E.ZERO)
    if k == 1:
        return E.mulI(e[3])
    return E.mulI(E.mul(h, e[3], E.conj(e[2 if v else 1])))


def edgeJT(h, v, e, g):
    c = [[dG4T(h, v, e, k) if m == 0 else sideJcT(h, g, k, m-1)
          for m in range(7)] for k in range(3)]
    return ([[E.re(x) for x in row] for row in c] +
            [[E.im(x) for x in row] for row in c] +
            [[E.const(E.ZERO)] + [E.im(x) for x in E.dpsiT(h, g)]])


def scaleMR(h, B, k, j, T):
    return E.smul(h, E.rz(B['Mth'][4*k+j]), T)


def parameterGramT(h, B, v, e, k, j):
    b, c = (2, 1) if v else (1, 2)
    scale = lambda k, T: scaleMR(h, B, k, j, T)
    if k == 0:
        return E.add(scale(0, E.mulI(e[0])), scale(b, E.mulI(e[b])))
    if k == 1:
        return scale(c, E.mulI(e[c]))
    z = E.mulI(E.mul(h, e[c], E.conj(e[0])))
    return E.sub(E.sub(scale(c, z), scale(0, z)),
                 scale(b, E.mulI(E.mul(h, e[3], E.conj(e[b])))))


def parameterJT(h, B, v, e):
    c = [[parameterGramT(h, B, v, e, k, j) for j in range(4)] for k in range(3)]
    return ([[E.re(x) for x in row] for row in c] +
            [[E.im(x) for x in row] for row in c] +
            [[scaleMR(h, B, 3, j, E.const(E.halfZ(v))) for j in range(4)]])


def solveDefect(h, Y, A, i, j):
    return E.sub(E.const(E.ONE if i == j else E.ZERO), E.sumT([
        E.smul(h, E.rz(Y[7*i+k]), A[k][j]) for k in range(7)]))


def solveResidual(h, Y, A, p, b):
    return E.matT7(h, Y, [E.add(E.sumT([E.mul(h, A[i][k], E.re(p[k]))
                                      for k in range(7)]), b[i]) for i in range(7)])


def solveOK(h, Y, A, p, b, r, q):
    if not 0 <= q < E.SC or r < 0:
        return False
    residual = solveResidual(h, Y, A, p, b)
    return all(sum(E.bnd(h, solveDefect(h, Y, A, i, j)) for j in range(7)) <= q and
               E.bnd(h, residual[i])*E.SC <= (E.SC-q)*r for i in range(7))


def sideCornerT(B, D, ph, ec):
    h = D['hb']
    return [E.expI(h, E.aT(B, D, k)) for k in range(3)] + [
        E.addRho(E.expI(h, E.re(ph[0])), ec[0])]


def rootDiffOK(B, D, v, S):
    side = 'V' if v else 'H'
    h, ph, ec, Y = D['hb'], D['ph'+side], D['e'+side], D['Y'+side]
    e = sideCornerT(B, D, ph, ec)
    A = edgeJT(h, v, e, E.rowsE(h, ph, ec))
    b = parameterJT(h, B, v, e)
    return all(solveOK(h, Y, A, [S['pred'][4*i+j] for i in range(7)],
                       [b[i][j] for i in range(7)], S['radius'][j], S['q']) for j in range(4))


def derivative_predictor(T, j):
    c = [T.cg(j+1)] + [E.ZERO]*4
    for m, (a, b) in QPAIR.items():
        if a == j:
            c[b+1] = E.zadd(c[b+1], T.cg(m))
        if b == j:
            c[a+1] = E.zadd(c[a+1], T.cg(m))
    return E.CT(c, 0)


def root_diff_data(B, D, v):
    side = 'V' if v else 'H'
    h, ph, ec, Y = D['hb'], D['ph'+side], D['e'+side], D['Y'+side]
    pred = [derivative_predictor(ph[i], j) for i in range(7) for j in range(4)]
    e = sideCornerT(B, D, ph, ec)
    A = edgeJT(h, v, e, E.rowsE(h, ph, ec))
    b = parameterJT(h, B, v, e)
    q = max(sum(E.bnd(h, solveDefect(h, Y, A, i, j)) for j in range(7)) for i in range(7))
    if q >= E.SC:
        raise RuntimeError(f'differential contraction failed ({side}: {q/E.SC})')
    radii = []
    for j in range(4):
        res = solveResidual(h, Y, A, [pred[4*i+j] for i in range(7)], [b[i][j] for i in range(7)])
        num = max(E.bnd(h, x) for x in res)*E.SC
        radii.append((num+E.SC-q-1)//(E.SC-q))
    S = dict(pred=pred, radius=radii, q=q)
    if not rootDiffOK(B, D, v, S):
        raise RuntimeError('root differential exact mirror failed')
    return S


def rootDiffT(S, i, j):
    return E.addRho(E.re(S['pred'][4*i+j]), S['radius'][j])


def sub3T(X, Y):
    return [E.sub(x, y) for x, y in zip(X, Y)]


def add3T(X, Y):
    return [E.add(x, y) for x, y in zip(X, Y)]


def cornerDerivativeT(de):
    return sub3T(E.ET(de), E.ET([E.const(E.ZERO) for _ in range(4)]))


def sideDerivativeT(dx):
    return sub3T(E.BT(dx), E.BT([E.const(E.ZERO) for _ in range(6)]))


def verticalDerivativeT(dx):
    return sub3T(E.CT3(dx), E.CT3([E.const(E.ZERO) for _ in range(6)]))


def forcedDerivativeT(h, P, A0, e, b, c, d, de, db, dc):
    identity = [E.const(E.ONE if q//3 == q%3 else E.ZERO) for q in range(9)]
    rhs = add3T(add3T(mulH(h, dc, e), mulH(h, c, de)), mulH(h, d, db))
    return E.forcedT(h, P, A0, identity, b, rhs)


def phaseDerivativeT(h, dd, d):
    return [E.im(E.mul(h, dd[q], E.conj(d[q]))) for q in range(9)]


def completion_derivative_models(B, D, H, V):
    """Four phase-derivative model columns, using the differentiated forced equation."""
    h = D['hb']
    e = sideCornerT(B, D, D['phH'], D['eH'])
    xh, xv = E.rowsE(h, D['phH'], D['eH']), E.rowsE(h, D['phV'], D['eV'])
    em, bm, cm = E.ET(e), E.BT(xh), E.CT3(xv)
    ok, dm = E.forcedT(h, D['Xp'], D['A0'], em, bm, cm)
    if not ok:
        raise RuntimeError('forced block inverse check failed')
    cols = []
    for j in range(4):
        dt = [E.const(E.rz(B['Mth'][4*k+j])) for k in range(3)] + [rootDiffT(H, 0, j)]
        de = cornerDerivativeT([E.mulI(E.mul(h, e[k], dt[k])) for k in range(4)])
        dh = [rootDiffT(H, k+1, j) for k in range(6)]
        dv = [rootDiffT(V, k+1, j) for k in range(6)]
        db = sideDerivativeT([E.mulI(E.mul(h, xh[k], dh[k])) for k in range(6)])
        dc = verticalDerivativeT([E.mulI(E.mul(h, xv[k], dv[k])) for k in range(6)])
        pred = [derivative_predictor(D['Xp'][k], j) for k in range(9)]
        ok, dd = forcedDerivativeT(h, pred, D['A0'], em, bm, cm, dm, de, db, dc)
        if not ok:
            raise RuntimeError('forced derivative inverse check failed')
        cols.append(E.QT(h, dt, dh, dv, phaseDerivativeT(h, dd, dm)))
    return cols


def lean_root_diff(name, S):
    return (f'def {name} : RootDiffD where\n'
            f"  pred := {E.lean_ct_list(S['pred'])}\n"
            f"  radius := {E.lean_nat_list(S['radius'])}\n"
            f"  q := {S['q']}\n")


def main():
    xb = E.XBall()
    B = xb.ball_dict()
    D = E.tune(B, E.box_data(xb, xb.boxes()[0]))
    H, V = root_diff_data(B, D, False), root_diff_data(B, D, True)
    OUT.mkdir(exist_ok=True)
    (OUT/'RootDiffData.lean').write_text('''import KernelAtlas.Edge.RootModels

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

''' + lean_root_diff('diffH0', H) + '\n' + lean_root_diff('diffV0', V) +
        '\nend NoFourMUBs.KernelAtlas.Edge.Baseline\n')
    (OUT/'RootDiffCheck.lean').write_text('''import KernelAtlas.Edge.Baseline.C1eData
import KernelAtlas.Edge.Baseline.RootDiffData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem box0_diffH : rootDiffOK ball box0 false box0.phH box0.eH box0.YH diffH0 = true := by decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem box0_diffV : rootDiffOK ball box0 true box0.phV box0.eV box0.YV diffV0 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
''')
    for side, S in [('H', H), ('V', V)]:
        print(side, 'q:', S['q']/E.SC, 'derivative radii:', [r/E.SC for r in S['radius']])


if __name__ == '__main__':
    main()

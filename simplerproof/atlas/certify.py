"""Independent re-check of an atlas produced by atlas.py.  Exits nonzero on any failure.

For every stored Record s (the family is the closure under Gamma = {id, conj, tr, conj-tr}; each operation maps
Hadamards to Hadamards, preserves equivalence, the quartet-edge property, Records and transfers):
  (R) recompute the ball Record from its centre: sigma (Arb Cholesky), the normal bound n(R) and r_H (ballrecord.py),
      and rerun Stage C at the stored (R, label radius).  Check n_stored >= n0 + dT r_H and rH_stored >= r_H.
  (B) replay the boundary tree.  The eta-cube [-rH, rH]^4 is split into 256 boxes of side rH/2 and recursively into 16
      children.  Each box must be (i) a stored leaf whose transfer passes, (ii) certified off the shell
      R - n <= ||T eta|| <= R + n, or outside ||eta|| <= rH, or (iii) subdivided.  Nothing is left over.
  Transfer test for leaf (eta_c, w) into target t via the signed permutation A and winding N:
      ||c + M eta_c|| + ||M||_2 w + n_s < R_t,   c = h(A P_s + 2 pi N - P_t),  M = h(A T_s).
  c is computed in Arb (N integer, recovered and checked), ||M||_2 is bounded in Arb; the norm at the box centre is a
  float evaluation of exact inputs, whose rounding error (< 1e-13) is dominated by MARGIN.
Together with COVERAGE.md (connectedness of the non-Tao quotient) a PASS shows every non-Tao class lies in a Record,
and Stage C excludes a quartet edge in every Record.
"""
import itertools, math, pickle, sys, time
import numpy as np
from flint import arb, arb_mat
import atlas as AT
from ballrecord import BallRecord
from record import opnorm_upper

MARGIN = 1e-10
PI = arb.pi()


def harb(X):
    """Horizontal projection of a 6x6 list of arbs: X_ij - rowmean_i - colmean_j + mean."""
    rm = [sum(X[i], arb(0)) / 6 for i in range(6)]
    cm = [sum((X[i][j] for i in range(6)), arb(0)) / 6 for j in range(6)]
    m = sum(rm, arb(0)) / 6
    return [[X[i][j] - rm[i] - cm[j] + m for j in range(6)] for i in range(6)]


def transfer_data(A, Ps, Pt, Ts):
    sign, pi = A
    W = AT.amap(A, Ps) - Pt                                          # exact float difference representable? use Arb
    Wa = [[sign * arb(float(Ps.reshape(36)[pi[6 * i + j]])) - arb(float(Pt[i, j])) for j in range(6)] for i in range(6)]
    D = AT.wrapD(A, Ps, Pt)
    base = W - W[:1, :] - W[:, :1] + W[0, 0]
    Nf = (D - base) / (2 * math.pi)
    N = np.rint(Nf)
    if np.abs(Nf - N).max() > 1e-6: raise AssertionError('winding not integral')
    c = harb([[Wa[i][j] + 2 * PI * int(N[i, j]) for j in range(6)] for i in range(6)])
    crad = max(float(c[i][j].rad()) for i in range(6) for j in range(6))
    cf = np.array([[float(c[i][j].mid()) for j in range(6)] for i in range(6)]).reshape(36)
    T6 = Ts.T.reshape(4, 6, 6)
    M = AT.hproj(AT.amap(A, T6)).reshape(4, 36).T
    Mn = AT.mnorm(M)
    return cf, 6 * crad, M, Mn


def certify_record(rec):
    B = BallRecord(rec['phi'].reshape(36))
    rH, n0 = B.normal_bound(rec['R'])
    dT = float(np.abs(np.array([[float(abs(B.rec.Tb[e, k] - arb(float(B.rec.Tbn[e, k]))).upper()) for k in range(4)] for e in range(36)])).sum())
    assert np.array_equal(np.array(B.rec.Tbn, float), rec['T']), 'frame mismatch'
    assert rec['n'] >= n0 + dT * rH and rec['rH'] >= rH, 'normal bound'
    o = B.stage_c(rec['R'], radius=rec['label_radius'])
    assert o.get('ok'), 'Stage C failed: %s' % o
    return o


def certify_boundary(A, s, wmin_frac=1 / 32):
    rs = A.recs[s]; tr = A.transfers[s]
    T = rs['T']; R, n, rH = rs['R'], rs['n'], rs['rH']
    nT = AT.mnorm(T)
    tdat = [(t, transfer_data((sg, tuple(pi)), rs['phi'], A.recs[t]['phi'], T)) for (t, sg, pi) in tr['targets']]
    leaves = {}
    for (eta, w, j) in tr['leaves']:
        leaves[(tuple(np.round(eta / w * 4).astype(int)), round(math.log2(rH / w)))] = (eta, w, j)
    w = rH / 2
    E = np.array(list(itertools.product(np.array([-0.75, -0.25, 0.25, 0.75]) * rH, repeat=4)))
    nleaf = 0
    while len(E):
        off = AT.offshell(E, w, T, nT, R, n, rH, margin=MARGIN)
        rest = []
        for i in np.where(~off)[0]:
            key = (tuple(np.round(E[i] / w * 4).astype(int)), round(math.log2(rH / w)))
            if key in leaves:
                eta, ww, j = leaves[key]
                t, (cf, cr, M, Mn) = tdat[j]
                sup = np.linalg.norm(cf + M @ E[i]) + cr + Mn * w
                if not sup + n < A.recs[t]['R'] - MARGIN:
                    raise AssertionError('record %d: transfer leaf %s into %d fails (%.3e)' % (s, E[i], t, sup + n - A.recs[t]['R']))
                nleaf += 1
            else:
                rest.append(E[i])
        if rest:
            if w / 2 < wmin_frac * R: raise AssertionError('record %d: uncovered boundary box %s' % (s, rest[0]))
            E, w = AT.children(np.array(rest), w)
        else:
            E = np.zeros((0, 4))
    return nleaf


if __name__ == '__main__':
    d = pickle.load(open(sys.argv[1], 'rb'))
    A = AT.Atlas(); A.__dict__.update(d)
    closed = sorted(A.closed)
    if len(closed) != len(A.recs):
        print('NOTE: %d of %d records closed; checking closed records only (atlas incomplete)' % (len(closed), len(A.recs)))
    t0 = time.time(); bad = 0
    for s in closed:
        try:
            certify_record(A.recs[s]); nl = certify_boundary(A, s)
        except AssertionError as e:
            print('FAIL', s, e); bad += 1; continue
        if s % 20 == 0: print('record %d ok (%d leaves)  %.0fs' % (s, nl, time.time() - t0), flush=True)
    print('certified %d records, %d failures, %.0fs' % (len(closed) - bad, bad, time.time() - t0))
    sys.exit(1 if bad or len(closed) != len(A.recs) else 0)

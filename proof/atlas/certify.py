"""Independent re-check of an atlas produced by atlas.py.  Exits nonzero on any failure.

For every stored Record s (the family is the closure under Gamma = {id, conj, tr, conj-tr}; each operation maps
Hadamards to Hadamards, preserves equivalence, the quartet-edge property, Records and transfers):
  (R) recompute the ball Record from its centre: sigma (Arb Cholesky), the normal bound n(R) and r_H (ballrecord.py),
      and rerun Stage C at the stored (R, label radius).  The recomputed r_H and n (not the stored ones) are used in (B).
  (B) replay the boundary tree.  The eta-cube [-rH, rH]^4 is split into 256 boxes of side rH/2 and recursively into 16
      children.  Each box must be (i) a stored leaf whose transfer passes, (ii) certified off the shell
      R - n <= ||T eta|| <= R + n, or outside ||eta|| <= rH, or (iii) subdivided.  Nothing is left over.
  Transfer test for leaf (eta_c, w) into target t via the signed permutation A and winding N:
      ||c + M eta_c|| + ||M||_2 w + n_s < R_t,   c = h(A P_s + 2 pi N - P_t),  M = h(A T_s).
  c is computed in Arb (N integer, recovered and checked), ||M||_2 <= ||T_s||_2 (bounded in Arb) since A is a signed
  permutation and h an orthogonal projector; the norm at the box centre is a
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
    return cf, 6 * crad, M


def certify_record(rec):
    B = BallRecord(rec['phi'].reshape(36))
    rH, n0 = B.normal_bound(rec['R'])
    rec['Tcert'] = np.array(B.rec.Tbn, float)                       # the certifier's own frame
    dT = float(np.abs(np.array([[float(abs(B.rec.Tb[e, k] - arb(float(B.rec.Tbn[e, k]))).upper()) for k in range(4)] for e in range(36)])).sum())
    o = B.stage_c(rec['R'], radius=rec['label_radius'])
    assert o.get('ok'), 'Stage C failed: %s' % o
    return rH, n0 + dT * rH                                           # recomputed, used for the boundary replay


def certify_boundary(A, s, rH, n, wmin_frac=1 / 64):
    """Replay the adaptive box tree over [-rH, rH]^4 using only the stored transfer targets of s, with the certifier's
    own r_H and normal bound n (recomputed by certify_record)."""
    rs = A.recs[s]; tr = A.transfers[s]
    T = rs['Tcert']; R = rs['R']
    nT = AT.mnorm(T)
    tdat = [(t, transfer_data((sg, tuple(pi)), rs['phi'], A.recs[t]['phi'], T)) for (t, sg, pi) in tr['targets']]
    Mn = nT                                     # ||h(A T)|| <= ||T||: A orthogonal (signed permutation), h a projector
    w = rH / 2
    E = np.array(list(itertools.product(np.array([-0.75, -0.25, 0.25, 0.75]) * rH, repeat=4)))
    nleaf = 0
    while len(E):
        E = E[~AT.offshell(E, w, T, nT, R, n, rH, margin=MARGIN)]
        done = np.zeros(len(E), bool)
        for t, (cf, cr, M) in tdat:
            sup = np.linalg.norm(cf[None, :] + E @ M.T, axis=1) + cr + Mn * w + 1e-12
            done |= sup + n < A.recs[t]['R'] - MARGIN
        nleaf += int(done.sum()); E = E[~done]
        if len(E):
            if w / 2 < wmin_frac * R: raise AssertionError('record %d: uncovered boundary box %s' % (s, E[0]))
            E, w = AT.children(E, w)
    return nleaf


if __name__ == '__main__':
    if sys.argv[1].endswith('.json.gz'):
        from export import load_certificate
        A = load_certificate(sys.argv[1])
    else:
        A = AT.load(sys.argv[1])
    lo, hi = (int(sys.argv[2]), int(sys.argv[3])) if len(sys.argv) > 3 else (0, len(A.recs))
    closed = [s for s in sorted(A.closed) if lo <= s < hi]
    nopen = len([s for s in range(lo, min(hi, len(A.recs))) if s not in A.closed])
    if nopen: print('NOTE: %d records in [%d, %d) are not closed (atlas incomplete)' % (nopen, lo, hi))
    t0 = time.time(); bad = 0
    for s in closed:
        try:
            rH, n = certify_record(A.recs[s]); nl = certify_boundary(A, s, rH, n)
        except AssertionError as e:
            print('FAIL', s, e); bad += 1; continue
        if s % 20 == 0: print('record %d ok (%d leaves)  %.0fs' % (s, nl, time.time() - t0), flush=True)
    print('certified %d records, %d failures, %.0fs' % (len(closed) - bad, bad, time.time() - t0))
    sys.exit(1 if bad or nopen else 0)

"""Atlas survey: per-Record kernel workload, test requirements and structural invariants (exploratory).

For each Record of proof/atlas/results/atlas_certificate.json.gz this computes, with the exact mirrors of the kernel
checkers (kernel_atlas/generators) where they exist and stagec.py floats otherwise:

* kernel bin tree (direct + tangent test, y = c) on the kernel-derived bars: direct tests, tangent tests, depth-0
  survivors;
* labels clustered from the kernel survivors (klabels.py), and the label tests of the in-kernel search;
* the edge graph: whether the direct tests (6.16) suffice for "no two cliques", else the support tests (6.20)-(6.21),
  else the joint test (6.23), else failure; the clique-search calls (mirror of `noTwo`);
* tier 1: whether the final O graph has no 6-clique (no Hadamard in the ball admits a third MUB);
* the normal bound: e0, j1, and whether the exact sigma certificate (knormal.sigma_cert) passes;
* invariants of the centre H = e^{iP}, unchanged by equivalence: d2 = min over 2x2 submatrices of the row-orthogonality
  defect |h_ac conj(h_bc) + h_ad conj(h_bd)| / 2 (0 iff H is H2-reducible), and d3 = min over 3x3 submatrices of
  ||B B* - 3I||_F / 3 (0 iff H has a 3x3 Hadamard block);
* torus roots of the centre (unbiased flat vectors to I and H/sqrt6), by Newton from the label centres: count, minimal
  separation, minimal singular value of the Jacobian (fold proximity);
* an estimated kernel time, calibrated on Record 100.

Usage: python3 survey.py <out.jsonl> <idx> [<idx> ...]   or   --range START STOP [--step S]
One JSON line per Record; failures are recorded with their error and do not stop the run.
"""
import argparse, gzip, itertools, json, math, os, sys, time, traceback
from fractions import Fraction as Fr

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
GEN = os.path.join(ROOT, 'kernel_atlas', 'generators')
sys.path.insert(0, GEN)
sys.path.insert(0, os.path.join(ROOT, 'proof', 'atlas'))

import numpy as np

# Kernel cost model (seconds), calibrated on Record 100: bin tree 769 s for 814,336 direct tests, 154,831 tangent tests
# and 715,616 label tests; the graph 66 s for 131 labels; sigma, e0, j1 46 s; about 30 s of data and assembly.
C_DIRECT, C_TANGENT, C_LABEL = 0.75e-3, 1.35e-3, 0.12e-3
CAL = 769.0 / (814336 * C_DIRECT + 154831 * C_TANGENT + 715616 * C_LABEL)
C_GRAPH_131, C_NORMAL, C_FIXED = 66.0, 46.0, 30.0

_ATLAS = None


def atlas():
    global _ATLAS
    if _ATLAS is None:
        _ATLAS = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))
    return _ATLAS


def invariants(P):
    """d2, d3 of H = e^{iP} (P radians, 6x6)."""
    H = np.exp(1j * P)
    d2 = min(abs(H[a, c] * np.conj(H[b, c]) + H[a, d] * np.conj(H[b, d])) / 2
             for a, b in itertools.combinations(range(6), 2) for c, d in itertools.combinations(range(6), 2))
    d3 = min(np.linalg.norm(H[np.ix_(R, C)] @ H[np.ix_(R, C)].conj().T - 3 * np.eye(3)) / 3
             for R in itertools.combinations(range(6), 3) for C in itertools.combinations(range(6), 3))
    return float(d2), float(d3)


def torus_roots(P, centres):
    """Newton from label centres for flat x = (1, e(phi_1..5)) with |sum_j conj(h_ji) x_j|^2 = 6, i = 1..5."""
    H = np.exp(1j * P)
    Hc = H.conj()

    def F(phi):
        x = np.exp(2j * np.pi * np.concatenate([[0.0], phi]))
        S = Hc.T @ x
        return np.abs(S[1:]) ** 2 - 6, S, x

    def Jac(phi):
        _, S, x = F(phi)
        # d|S_i|^2 / d phi_m = 2 Re(conj(S_i) * conj(h_mi) * 2 pi i x_m)
        J = np.zeros((5, 5))
        for i in range(1, 6):
            for m in range(1, 6):
                J[i - 1, m - 1] = 2 * np.real(np.conj(S[i]) * Hc[m, i] * 2j * np.pi * x[m])
        return J
    roots = []
    for c in centres:
        phi = np.array(c, dtype=float)
        ok = False
        for _ in range(30):
            f = F(phi)[0]
            if np.max(np.abs(f)) < 1e-12:
                ok = True
                break
            try:
                phi = phi - np.linalg.solve(Jac(phi), f)
            except np.linalg.LinAlgError:
                break
        if ok:
            phi = np.mod(phi, 1.0)
            if all(np.max(np.abs(((phi - r + 0.5) % 1.0) - 0.5)) > 1e-7 for r in roots):
                roots.append(phi)
    if not roots:
        return dict(n=0)
    smin = min(float(np.linalg.svd(Jac(r), compute_uv=False)[-1]) for r in roots)
    sep = min((float(np.linalg.norm(((a - b + 0.5) % 1.0) - 0.5)) for a, b in itertools.combinations(roots, 2)),
              default=None)
    return dict(n=len(roots), sigma_min=smin, min_sep=sep, delta3=third_mub_defect(roots))


def third_mub_defect(roots):
    """delta3 of the centre: the least t such that 6 of its unbiased vectors have all pairwise |<x, y>|/6 <= t.
    0 iff the centre extends to a MUB triple (up to the Newton tolerance); a proxy for the distance to T3."""
    import stagec as SC
    X = np.array([np.exp(2j * np.pi * np.concatenate([[0.0], r])) for r in roots])
    G = np.abs(X.conj() @ X.T) / 6
    np.fill_diagonal(G, 2.0)
    vals = np.unique(G[np.triu_indices(len(X), 1)])
    lo, hi = 0, len(vals) - 1
    def has6(t):
        try:
            return not SC.one_clique(G <= t, cap=5_000_000)[0]
        except RuntimeError:
            return True
    if not has6(vals[hi]):
        return None
    while lo < hi:
        mid = (lo + hi) // 2
        if has6(vals[mid]):
            hi = mid
        else:
            lo = mid + 1
    return float(vals[lo])


def one_record(idx):
    import kbins as KB
    import ktangent as KT
    import klabels as KL
    import knormal as KN
    import stagec as SC
    from export_tangent import record_data, DT
    t = {}
    out = dict(idx=idx)
    rec = atlas()['records'][idx]
    out.update(R=rec['R'], label_radius=rec['label_radius'])
    phi = np.array([float.fromhex(x) for x in rec['phi']])
    P = phi.reshape(6, 6)
    t0 = time.time()
    out['d2'], out['d3'] = invariants(P)
    t['invariants'] = time.time() - t0
    # kernel bin tree and labels
    t0 = time.time()
    par, tc, tp, W0, R5, info = record_data(idx)
    S, st = KL.survivors(par, tc, tp, W0, R5)
    labs = KL.cluster(S, rec['label_radius'])
    out['direct_tests'] = sum(v for (k, d), v in st.items() if k == 'tested')
    out['tangent_tests'] = sum(v for (k, d), v in st.items() if k == 'tangent')
    out['survivors'] = len(S)
    out['labels'] = len(labs)
    out['label_smax'] = float(max(s for _, s, _ in labs))
    out['label_tests'] = sum(KL.first_label(k, labs) + 1 for k in S)
    t['bintree'] = time.time() - t0
    # edges
    t0 = time.time()
    C = np.array([w for w, _, _ in labs]) / 192.0
    s = np.array([float(sr) for _, sr, _ in labs])
    n = len(labs)
    E = SC.cis_table(np.concatenate([np.zeros((n, 1), int), SC._toint(C)], axis=1))
    aS = np.abs((E[:, None, :] * E.conj()[None, :, :]).sum(-1))
    re = s[:, None] + s[None, :]
    lim = SC.TWO_PI * SC.SQ6 * re + 1e-7
    O, U = aS <= lim, np.abs(aS - SC.SQ6) <= lim
    np.fill_diagonal(O, False)
    np.fill_diagonal(U, False)
    need = None
    graphs = [('direct', O, U)]
    O2, U2 = SC.edges(C, s)
    graphs.append(('support', O & O2, U & U2))
    Pc = P / SC.TWO_PI
    tang = (atlas_frame(idx), float(tp.rHbar), float(tp.nbar))
    try:
        O3, U3 = SC.joint_filter(C, s, O & O2, U & U2, Pc, float(par.rbar), SC.opnorm_bound(Pc), SC.cis_centre(Pc),
                                 float(par.rFbar), *tang)
        graphs.append(('joint', O3, U3))
    except Exception as e:                                          # noqa: BLE001
        out['joint_error'] = repr(e)
    for name, Og, Ug in graphs:
        try:
            ok, steps = SC.two_cliques(Og, Ug, cap=50_000_000)
        except RuntimeError:
            ok, steps = False, None
        out['edges_%s' % name] = dict(O=int(Og.sum() // 2), U=int(Ug.sum() // 2), ok=bool(ok), steps=steps)
        if ok and need is None:
            need = name
            Ofin = Og
    out['edge_tests_needed'] = need or 'fail'
    if need is not None:
        try:
            out['no_third_mub'] = bool(SC.one_clique(Ofin, cap=50_000_000)[0])
        except RuntimeError:
            out['no_third_mub'] = None
    t['edges'] = time.time() - t0
    # normal bound (exact kernel constants and sigma certificate)
    t0 = time.time()
    try:
        kc = KN.kernel_consts(rec, DT)
        out['sigma'] = float(kc['sigma'])
        out['e0'], out['j1'] = float(kc['e0']), float(kc['j1'])
        out['n_rad'], out['r_rad'] = float(kc['n']), float(kc['r'])
        try:
            _, _, sst = KN.sigma_cert(kc['X'], kc['eps'], kc['fc']['F'], kc['sigma'])
            out['sigma_cert'] = True
            out['sigma_min_diag'] = sst['min_diag']
        except AssertionError as e:
            out['sigma_cert'] = False
            out['sigma_cert_error'] = str(e)
    except AssertionError as e:
        out['normal_error'] = str(e)
    t['normal'] = time.time() - t0
    # torus roots of the centre
    t0 = time.time()
    out['roots'] = torus_roots(P, [w for w, _ in [(np.array(w) / 192.0, sr) for w, sr, _ in labs]])
    t['roots'] = time.time() - t0
    # kernel cost estimate
    out['est_kernel_s'] = (CAL * (out['direct_tests'] * C_DIRECT + out['tangent_tests'] * C_TANGENT +
                                  out['label_tests'] * C_LABEL) + C_GRAPH_131 * (n / 131) ** 2 + C_NORMAL + C_FIXED)
    out['python_s'] = {k: round(v, 2) for k, v in t.items()}
    return out


def atlas_frame(idx):
    """The float frame (36 x 4) that stagec.joint_filter expects, as in ballrecord.py."""
    from ballrecord import BallRecord
    rec = atlas()['records'][idx]
    B = BallRecord(np.array([float.fromhex(x) for x in rec['phi']]), Tint=rec.get('Tint'))
    return B.rec.Tbn


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('out')
    ap.add_argument('idx', nargs='*', type=int)
    ap.add_argument('--range', nargs=2, type=int)
    ap.add_argument('--step', type=int, default=1)
    a = ap.parse_args()
    idxs = list(a.idx)
    if a.range:
        idxs += list(range(a.range[0], a.range[1], a.step))
    done = set()
    if os.path.exists(a.out):
        for line in open(a.out):
            try:
                done.add(json.loads(line)['idx'])
            except Exception:                                      # noqa: BLE001
                pass
    with open(a.out, 'a') as f:
        for idx in idxs:
            if idx in done:
                continue
            t0 = time.time()
            try:
                row = one_record(idx)
            except Exception as e:                                  # noqa: BLE001
                row = dict(idx=idx, error=repr(e), trace=traceback.format_exc()[-2000:])
            row['wall_s'] = round(time.time() - t0, 1)
            f.write(json.dumps(row) + '\n')
            f.flush()
            print(idx, row.get('edge_tests_needed', row.get('error')), row['wall_s'], flush=True)


if __name__ == '__main__':
    main()

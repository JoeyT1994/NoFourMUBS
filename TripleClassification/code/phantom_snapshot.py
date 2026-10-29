"""Write a complete, self-describing snapshot of one certifier pattern (for developing exclusion methods; no proof role).

  python phantom_snapshot.py TC_TREE SUBATLAS SUB PATTERN OUT.json

Contents (Arb values as "mid +/- rad" strings, Arb's own exact decimal output; floats as hex):
- the sub-ball record, its SHA-256, and the certifier row for it;
- H's normal-form enclosure: Q0 (36), U (36x4), H2 (36x16), X (36 x m), r, tau, and the index convention
  (entry 6a + c is H[a, c]);
- the pattern's six colours and, per column, v0 (6), T (6x4), epsilon, phase_radius, and the fine bins
  (bin_deltas, bin_radius) of that colour;
- a numerical least-squares K* (H at the centre, K = exp(i (v0 + basis t)) column-wise), its residual and the
  Jacobian's singular values, with the 66 equations spelled out.
"""
import gzip, hashlib, json, os, sys
import numpy as np


def a2s(x):
    return x.str(radius=True, more=True) if hasattr(x, 'str') else str(x)


def mat(m):
    return [[a2s(m[i, j]) for j in range(m.ncols())] for i in range(m.nrows())]


def main():
    tc, sa, sub, pat, out = sys.argv[1], sys.argv[2], int(sys.argv[3]), int(sys.argv[4]), sys.argv[5]
    fn = os.path.join(tc, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path.insert(0, fn); os.chdir(fn)
    import run as R, native_cover as NC, moving_symmetry as MS, patches as P
    from flint import ctx
    from scipy.optimize import least_squares
    ctx.prec = 160
    doc = json.load(gzip.open(sa, 'rt')); rec = doc['seeds'][sub]
    rows = {}
    for l in open(sa[:-len('.json.gz')] + '.jsonl'):
        try:
            x = json.loads(l)
        except ValueError:
            continue
        if x['index'] == sub and (sub not in rows or rows[sub]['status'] == 'NOT ESTABLISHED'): rows[sub] = x
    b = R.SC.Ball(rec); model = P.normal_form(b, prec=160)
    Q0 = MS.numeric(model['Q0']).reshape(6, 6); H = np.exp(1j * Q0)
    roots = NC.propose_roots(H); cover = NC.complete_cover(b, model, roots)
    prepared, bounds, cliques, steps = NC.contract_patterns(model, roots, cover)
    cl = cliques[pat]
    cols = []
    for c in cl:
        p, bd = prepared[c], bounds[c]
        cols.append(dict(colour=int(c), v0=[a2s(p['v0'][a, 0]) for a in range(6)], T=mat(p['T']),
                         epsilon=a2s(bd['epsilon']), phase_radius=a2s(bd['phase_radius']),
                         bin_deltas=[[float(v).hex() for v in d] for d in cover['bin_deltas'][c]] if 'bin_deltas' in cover else None))
    v0 = np.array([[float(prepared[c]['v0'][a, 0].mid()) for c in cl] for a in range(6)])
    basis = np.linalg.qr(np.eye(6)[:, :5] - np.eye(6)[:, 5, None])[0]

    def res(t):
        K = np.exp(1j * (v0 + basis @ t.reshape(5, 6))); G = K.conj().T @ K; M = H.conj().T @ K
        o = [G[a, c].real for a in range(6) for c in range(a + 1, 6)] + [G[a, c].imag for a in range(6) for c in range(a + 1, 6)]
        return np.array(o + list(((np.abs(M) ** 2 - 6) / 6).ravel()))
    f = least_squares(res, np.zeros(30), max_nfev=600, ftol=1e-15, xtol=1e-15, gtol=1e-15)
    Kphase = v0 + basis @ f.x.reshape(5, 6)
    snap = dict(
        schema='tc-pattern-snapshot-v1', subatlas=os.path.basename(sa), sub=sub, pattern=pat,
        record=rec, record_sha256=hashlib.sha256(json.dumps(rec, sort_keys=True).encode()).hexdigest(),
        certifier_row=rows.get(sub),
        model=dict(convention='H[a, c] = exp(i Q[6a + c]); Q = Q0 + U w + H2 (w kron w)/2 + X xi, |w| <= r, |xi| <= tau',
                   Q0=[a2s(model['Q0'][i, 0]) for i in range(36)], U=mat(model['U']), H2=mat(model['H2']),
                   X=mat(model['X']), r=a2s(model['r']), tau=a2s(model['tau'])),
        pattern_colours=[int(c) for c in cl], columns=cols,
        bin_radius=a2s(cover['bin_radius']) if 'bin_radius' in cover else None,
        column_convention='K column k has phases V_k (mean-zero gauge); every zero in the pattern has ||V_k - v0_k|| <= phase_radius_k',
        fit=dict(equations='15 Re + 15 Im of (K*K)_{ac}, a<c; then 36 of (|(H*K)_{ij}|^2 - 6)/6; H at the centre exp(i mid Q0)',
                 gauge_basis=[[float(x).hex() for x in r] for r in basis],
                 t=[float(x).hex() for x in f.x], K_phases=[[float(x).hex() for x in r] for r in Kphase],
                 residual=float(np.linalg.norm(f.fun)), singular_values=[float(x) for x in np.linalg.svd(f.jac, compute_uv=False)]))
    json.dump(snap, open(out, 'w'), indent=1)
    print(out, 'residual %.3e' % snap['fit']['residual'], 'columns', len(cols))


if __name__ == '__main__': main()

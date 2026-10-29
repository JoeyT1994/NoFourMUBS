"""NUMERICAL diagnostic (no proof role): is the set of third bases K over a fixed H positive-dimensional here?

For undischarged patterns of a ball (from its gamma receipts), fix H at the cell's centre, fit K by least squares from
the pattern's column centres (K's columns unbiased to I and H, mutually orthogonal), and report the residual and the
smallest singular values of the Jacobian of those equations in K's 30 gauge-fixed phases. Near-zero singular values at
a near-exact fit mean K moves in a family with H fixed.

  python fiber_probe.py TC_TREE GAMMA_FILE N
"""
import gzip, json, os, sys, random
import numpy as np
STARTS = int(os.environ.get('STARTS', '20'))


def main():
    tc, gfile, n = sys.argv[1], sys.argv[2], int(sys.argv[3])
    fn = os.path.join(tc, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path.insert(0, fn); here = os.getcwd(); os.chdir(fn)
    import run as R, native_cover as NC, moving_symmetry as MS, patches as P
    from flint import ctx
    from scipy.optimize import least_squares
    ctx.prec = 160
    picks = []
    for l in open(gfile):
        try:
            g = json.loads(l)
        except ValueError:
            continue
        if 'error' in g: continue
        und = [p['pattern'] for p in g['patterns'] if not (p.get('fourier') or p.get('ordering'))]
        if und: picks.append((g['subatlas'], g['sub'], und[0]))
    random.seed(7); random.shuffle(picks)
    base = os.path.dirname(gfile)
    for sa_name, sub, pat in picks[:n]:
        ball = int(sa_name[1:].split('_')[0]); level = int(sa_name.split('_l')[1].split('.')[0])
        sel = None
        for d in ('selective', 'selective2'):
            dd = os.path.join(os.path.dirname(os.path.dirname(base)), d)      # .../triples_tc/<chain dir>
            p = os.path.join(dd, 'children' if level == 3 else 'l%d' % level, sa_name)
            if os.path.exists(p): sel = p; break
        if sel is None: print('missing', sa_name); continue
        rec = json.load(gzip.open(sel, 'rt'))['seeds'][sub]
        b = R.SC.Ball(rec); model = P.normal_form(b, prec=160)
        Q0 = MS.numeric(model['Q0']).reshape(6, 6); H = np.exp(1j * Q0)
        roots = NC.propose_roots(H); cover = NC.complete_cover(b, model, roots)
        prepared, bounds, cliques, steps = NC.contract_patterns(model, roots, cover)
        cl = cliques[pat]
        v0 = np.array([[float(prepared[c]['v0'][a, 0].mid()) for c in cl] for a in range(6)])
        basis = np.linalg.qr(np.eye(6)[:, :5] - np.eye(6)[:, 5, None])[0]        # mean-zero 5-dim column gauge

        def K_of(t):
            return np.exp(1j * (v0 + basis @ t.reshape(5, 6)))

        def res(t):
            K = K_of(t); G = K.conj().T @ K; M = H.conj().T @ K
            out = [G[a, c].real for a in range(6) for c in range(a + 1, 6)] + [G[a, c].imag for a in range(6) for c in range(a + 1, 6)]
            out += list(((np.abs(M) ** 2 - 6) / 6).ravel())
            return np.array(out)
        # multi-start: the centre and random points of the pattern's box (column phase radius pr per column)
        pr = np.array([float(bounds[c]['phase_radius']) for c in cl])
        rng = np.random.default_rng(sub * 131 + pat)
        starts = [np.zeros(30)] + [(rng.standard_normal((5, 6)) * pr[None, :] / np.sqrt(5)).ravel() for _ in range(STARTS)]
        fits = [least_squares(res, x0, max_nfev=400, ftol=1e-14, xtol=1e-14, gtol=1e-14) for x0 in starts]
        f = min(fits, key=lambda z: np.linalg.norm(z.fun))
        all_res = sorted(float(np.linalg.norm(z.fun)) for z in fits)
        Jm = f.jac; sv = np.linalg.svd(Jm, compute_uv=False)
        print(json.dumps(dict(ball=ball, level=level, sub=sub, pattern=pat, residual=float(np.linalg.norm(f.fun)), residuals=all_res[:5],
                              moved=float(np.linalg.norm(f.x)), smallest_sv=[float(x) for x in sv[-4:]],
                              largest_sv=float(sv[0]))), flush=True)


if __name__ == '__main__': main()

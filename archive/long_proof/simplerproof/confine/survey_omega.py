"""Numerical survey (NOT rigorous) of the confinement chart region Omega = {theta in T^4 : 0 < R(theta) < C0}.

For each sampled seed, both sheets H_+-(theta) are built.  A seed is 'maximal' (in D0) on a sheet if its corner E
has the largest R among the 400 corners (within tol).  For maximal seeds we record nu = ||u|| to the F6 orbit, g, R.
Usage: python3 survey_omega.py NSAMPLES(millions) SEED C0 OUT.jsonl
"""
import json, os, sys
import numpy as np
from multiprocessing import Pool
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'RouteC', 'averaging'))
import common as C
import chart_np as K


def work(args):
    seed, C0 = args
    rng = np.random.default_rng(seed)
    th = rng.uniform(-np.pi, np.pi, (1_000_000, 4))
    R, g = K.R_seed(th)
    sel = np.where((R > 0) & (R < C0))[0]
    out = dict(seed=seed, n=len(th), nOmega=len(sel), maxi=[])
    for i in sel:
        for sh in (1, -1):
            try:
                H = K.hadamard(th[i], sh)
            except Exception:
                continue
            if H is None or not np.isfinite(H).all() or np.abs(H @ H.conj().T - 6 * np.eye(6)).max() > 1e-6:
                continue
            Rc = C.R_all(H); m = Rc.max()
            if R[i] >= m - 1e-7 * max(1, m):
                out['maxi'].append(dict(theta=list(map(float, th[i])), sheet=sh, R=float(R[i]), g=float(g[i]),
                                        nu=float(C.dist_F6(H)[0][0])))
    return out


if __name__ == '__main__':
    nm, s0, C0, outp = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3]), sys.argv[4]
    with Pool(int(os.environ.get('NPROC', '9'))) as P, open(outp, 'a') as f:
        for r in P.imap_unordered(work, [(s, C0) for s in range(s0, s0 + nm)]):
            f.write(json.dumps(r) + '\n'); f.flush()

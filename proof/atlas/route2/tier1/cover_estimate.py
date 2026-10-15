"""Size estimate of a tiered atlas (geometry only, floating point).

Tier-1 regions are balls of radius rho (in the horizontal phase norm) around Record centres.  A Record t is SWALLOWED by a
region around c when d(c, t) + R_t <= rho, d(c, t) = ||h(A P_t + 2 pi N - P_c)|| for an alignment A found by composing
boundary-transfer alignments along paths of the transfer graph (any alignment gives a valid upper bound).
Random-order greedy: scan Records in random order; an unswallowed Record becomes a region centre (if allowed) and
swallows everything within reach.  Usage: cover_estimate.py rho [seed] [allowed.npy]"""
import sys, gzip, json, time
from pathlib import Path
import numpy as np
HERE = Path(__file__).resolve().parent; ATLAS = HERE.parents[1]
sys.path.insert(0, str(ATLAS))
from atlas import to_sp, compose, amap, wrapD, hproj
from centres import load

def graph():
    cache = HERE / 'tgraph.npz'
    d = json.load(gzip.open(ATLAS / 'results/atlas_certificate.json.gz', 'rt'))
    nbr = []
    for r in d['records']:
        nbr.append([(t, to_sp('tr' if tr else 'id', np.array(rp), np.array(cp)) if sg > 0 else
                     (lambda A: (-A[0], A[1]))(to_sp('tr' if tr else 'id', np.array(rp), np.array(cp))))
                    for (t, sg, tr, rp, cp) in r['targets']])
    return nbr

def dist(A, Ps, Pt):
    return float(np.linalg.norm(hproj(wrapD(A, Ps, Pt))))

def reach(c, rho, nbr, phi, R, slack=0.12):
    """Records t with d(c, t) + R_t <= rho, found by BFS (nodes with d <= rho + slack are expanded)."""
    Pc = phi[c].reshape(6, 6); ID = (1, tuple(range(36)))
    best = {c: (0.0, ID)}; frontier = [c]; out = {c}
    while frontier:
        nf = []
        for s in frontier:
            ds, As = best[s]
            for t, A in nbr[s]:
                At = compose(A, As)                      # maps P_c-frame?  A_s: c -> s, A: s -> t
                # alignment maps P_c to (approximately) P_t
                dt = dist(At, Pc, phi[t].reshape(6, 6))
                if dt <= rho + slack and (t not in best or dt < best[t][0] - 1e-12):
                    best[t] = (dt, At); nf.append(t)
                    if dt + R[t] <= rho: out.add(t)
        frontier = nf
    return out, best

if __name__ == '__main__':
    rho = float(sys.argv[1]); seed = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    allowed = np.load(sys.argv[3]) if len(sys.argv) > 3 else None
    phi, R, _ = load(); n = len(phi); t0 = time.time()
    nbr = graph()
    # sanity: distances along direct edges
    dd = [dist(A, phi[s].reshape(6, 6), phi[t].reshape(6, 6)) for s in range(0, n, 997) for t, A in nbr[s][:5]]
    print('edge distances (sample): median %.3f max %.3f' % (np.median(dd), max(dd)), flush=True)
    order = np.random.default_rng(seed).permutation(n); covered = np.zeros(n, bool); centres = []
    for k, c in enumerate(order):
        if covered[c]: continue
        if allowed is not None and not allowed[c]: continue
        out, _ = reach(c, rho, nbr, phi, R)
        centres.append((int(c), len(out))); covered[list(out)] = True
        if len(centres) % 50 == 0: print(f'  {len(centres)} centres, covered {covered.sum()} ({time.time()-t0:.0f}s)', flush=True)
    sizes = np.array([s for _, s in centres])
    res = dict(rho=rho, centres=len(centres), covered=int(covered.sum()), uncovered=int(n - covered.sum()),
               swallowed_median=float(np.median(sizes)), secs=round(time.time() - t0))
    print(json.dumps(res), flush=True)
    np.save(HERE / f'cover_{rho}_{seed}.npy', np.array([c for c, _ in centres]))

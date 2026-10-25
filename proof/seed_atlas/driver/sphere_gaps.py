"""Gap proposals on the edge ball's sphere without a full cover: well-spread sphere points that no seed ball's index
query reaches (edge_phase.gap_proposals), for driver.py --gaps.  Usage: python sphere_gaps.py RUN [--n 20000]"""
import argparse, os, pickle, sys, time, numpy as np
sys.path[:0] = [os.path.dirname(os.path.abspath(__file__)), os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'atlas')]
import warnings; warnings.filterwarnings('ignore')
import edge_phase as EP, cover as CV, seedgeom as SG
from multiprocessing import Pool
G = {}


def init(run):
    G['eb'] = pickle.load(open(os.path.join(run, 'edge_ball.pkl'), 'rb'))
    A = pickle.load(open(os.path.join(run, 'atlas_state.pkl'), 'rb')); s = A.snap()
    G['idx'] = CV.Index(s['theta0'], s['Minv'], s['Mth'], s['r'])


def one(w):
    q = G['eb'].Qw(w)
    if q is None: return None
    c = SG.census(q.reshape(6, 6))
    qi, _, _, _ = G['idx'].query(c['seed'], 1.0)
    return None if len(qi) else q


if __name__ == '__main__':
    ap = argparse.ArgumentParser(); ap.add_argument('run'); ap.add_argument('--n', type=int, default=20000)
    ap.add_argument('--workers', type=int, default=os.cpu_count()); a = ap.parse_args()
    t0 = time.time(); init(a.run); eb = G['eb']
    d = np.random.default_rng(1).normal(size=(a.n, 4)); d /= np.linalg.norm(d, axis=1)[:, None]
    for f in (1.0, 1.05):                         # on the sphere and just outside it
        pass
    ws = np.vstack([eb.r * d, 1.05 * eb.r * d])
    with Pool(a.workers, initializer=init, initargs=(a.run,)) as p: res = p.map(one, list(ws), chunksize=64)
    gaps = [q for q in res if q is not None]
    props = EP.gap_proposals(gaps)
    pickle.dump(props, open(os.path.join(a.run, 'edge_gaps.pkl'), 'wb'))
    print('sphere points %d, unreached %d (%.0f%%), proposals %d (%.0fs)' % (
        len(ws), len(gaps), 100 * len(gaps) / len(ws), len(props), time.time() - t0), flush=True)

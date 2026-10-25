"""Several edge balls in the chart F6-012 (return W: the chart covers every class within phase distance 0.15 of F6).

Edge ball 0 is centred at F6.  Every edge ball's sphere is covered box by box, by T1 into a seed ball or T3 into another
edge ball.  A box that no target reaches is a gap; gaps become new edge balls centred just outside the sphere (p0 +
Mth (1.4 r d)), each made by Stage C.  This repeats until every edge sphere closes.  Writes run/edge_balls.pkl (the
balls) and run/atlas_state_edge.pkl (A.edges = [dict(ball, groups, failed)]) for seed_export.py --edge.

Usage: python edge_multi.py RUN [--workers N] [--rounds 8]
"""
import argparse, os, pickle, sys, time
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path[:0] = [HERE, os.path.join(HERE, '..', '..', 'atlas')]
import warnings; warnings.filterwarnings('ignore')
import edge_phase as EP, cover as CV, seedgeom as SG
from multiprocessing import Pool

MAXLEV = EP.EDGE_MAXLEV
G = {}


def init(snap, ebs):
    G['idx'] = CV.Index(snap['theta0'], snap['Minv'], snap['Mth'], snap['r']); G['snap'] = snap; G['ebs'] = ebs


def t3_targets(Qc, Qv, err, e_self):
    """First other edge ball containing every vertex of the box (screen; the certifiers decide)."""
    for e2, eb2 in enumerate(G['ebs']):
        if e2 == e_self: continue
        for (v, g, rows, cols, wind) in EP.edge_candidates(Qc, eb2)[:6]:
            vals = [EP.t3_value(q, eb2, g, rows, cols, wind) for q in Qv]
            marg = 270.0 * np.linalg.norm(eb2.Minv, 2) * err / eb2.r
            if np.all(np.isfinite(vals)) and max(vals) + marg < EP.VMAX:
                (_, hc, wh), (_, vr, wv) = EP.side_orders(SG.gphase(g, Qc.reshape(6, 6)), rows, cols)
                return dict(desc=('T3', e2, g, tuple(rows), tuple(cols)), wind=list(wind), hcols=list(hc), vrows=list(vr),
                            wind_h=list(wh), wind_v=list(wv))
    return None


def cover_box(args):
    """The sphere of edge ball e from one start box (edge_phase.edge_cover_box2 with T3 into other edge balls)."""
    m, I, e = args
    eb = G['ebs'][e]; idx = G['idx']; snap = G['snap']
    out, gaps, todo = [], [], [(m, list(I), None)]
    curv = 4.0 * eb.n / eb.r ** 2
    while todo:
        m, I, x0 = todo.pop()
        lo, hi = CV.box_lohi(np.array([m]), np.array([I]))
        wc = (lo[0] + hi[0]) / 2 * eb.r; hw = (hi[0] - lo[0]) / 2 * eb.r
        Qc, xc = eb.Qw(wc, x0=x0, want_x=True)
        if Qc is None: Qc, xc = eb.Qw(wc, want_x=True)
        if Qc is None: gaps.append((wc, None)); continue
        Js = [eb.Qw(wc + 1e-4 * u, x0=xc) for u in np.eye(4)]
        if any(q is None for q in Js): gaps.append((wc, Qc)); continue
        J = np.stack([SG.wrap(q - Qc) / 1e-4 for q in Js], 1)
        Qv = Qc[None] + ((CV.SG_VERT * 2 - 1) * hw[None]) @ J.T
        err = curv * float((hw ** 2).sum())
        c = SG.census(Qc.reshape(6, 6))
        qi, bl, N, v = idx.query(c['seed'], 1.0)
        done = False
        for k in np.argsort(v):
            a, l, n = qi[k], bl[k], N[k]
            g, rows, cols = SG.G4[c['g'][a]], tuple(c['rows'][a]), tuple(c['cols'][a])
            Lg = SG.corner_seed_matrix(rows, cols) @ SG.g_matrix(g)
            Mi = idx.Minv[l]
            x = (Qv @ Lg.T + EP.TWO_PI * n - idx.th0[l]) @ Mi.T
            val = np.linalg.norm(x, axis=1).max() + np.linalg.norm(Mi @ Lg, 2) * err
            if val < EP.VMAX * snap['r'][l] and CV.orient_ok(Qc[None], g, rows, cols)[0]:
                out.append(dict(desc=('T1', int(l), g, rows, cols), wind=[int(x) for x in n], boxes=[[m] + I])); done = True; break
        if not done:
            t3 = t3_targets(Qc, Qv, err, e)
            if t3 is not None: out.append(dict(t3, boxes=[[m] + I])); done = True
        if not done:
            if not len(qi) or m >= MAXLEV:
                gaps.append((wc, Qc)); continue
            for ch in CV.children(np.array([I])):
                l2, h2 = CV.box_lohi(np.array([m + 1]), ch[None])
                if CV.meets_sphere(l2, h2)[0]: todo.append((m + 1, [int(x) for x in ch], xc))
    return e, out, gaps


def make_edge(p0):
    eb = EP.EdgeBall(p0=p0)
    return eb if eb.make() else None


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('run')
    ap.add_argument('--workers', type=int, default=os.cpu_count()); ap.add_argument('--rounds', type=int, default=8)
    ap.add_argument('--start-level', type=int, default=3)
    a = ap.parse_args()
    t0 = time.time()
    A = pickle.load(open(os.path.join(a.run, 'atlas_state.pkl'), 'rb'))
    snap = A.snap(); snap.pop('tries', None)
    ebp = os.path.join(a.run, 'edge_balls.pkl')
    if os.path.exists(ebp): ebs = pickle.load(open(ebp, 'rb'))
    else:
        eb0 = EP.EdgeBall(); assert eb0.make(), 'edge ball 0: Stage C failed'
        ebs = [eb0]
    print('edge balls: %d (%.0fs)' % (len(ebs), time.time() - t0), flush=True)
    groups = {}; todo = list(range(len(ebs))); I0 = CV.level_boxes(a.start_level)
    for rnd in range(a.rounds):
        gaps = {}
        with Pool(a.workers, initializer=init, initargs=(snap, ebs)) as pool:
            jobs = [(a.start_level, list(map(int, I)), e) for e in todo for I in I0]
            for k, (e, out, gp) in enumerate(pool.imap_unordered(cover_box, jobs, chunksize=4)):
                groups.setdefault(e, []).extend(out); gaps.setdefault(e, []).extend(gp)
                if (k + 1) % 500 == 0:
                    print('  round %d: %d / %d start boxes, %d gaps (%.0fs)' % (rnd, k + 1, len(jobs),
                          sum(len(x) for x in gaps.values()), time.time() - t0), flush=True)
        ng = {e: len(gaps.get(e, [])) for e in todo}
        print('round %d: covered %s; gaps per ball %s (%.0fs)' % (rnd, todo, ng, time.time() - t0), flush=True)
        open_ = [e for e in todo if ng[e]]
        if not open_: break
        # proposals: centres just outside each gap, well separated in ball 0's w units
        props = []
        M0inv = ebs[0].Minv; sep = 0.6 * ebs[0].r
        for e in open_:
            for wc, _ in gaps[e]:
                d = wc / np.linalg.norm(wc)
                p = ebs[e].p0 + ebs[e].Mth @ (1.4 * ebs[e].r * d)
                if all(np.linalg.norm(M0inv @ (p - q)) > sep for q in props + [b.p0 for b in ebs]): props.append(p)
        print('  %d new edge ball proposals' % len(props), flush=True)
        with Pool(min(a.workers, max(1, len(props)))) as pool:
            new = [b for b in pool.map(make_edge, props) if b is not None]
        print('  made %d of %d (%.0fs)' % (len(new), len(props), time.time() - t0), flush=True)
        if not new:
            print('no new edge ball could be made: stopping with gaps', flush=True); break
        base = len(ebs); ebs = ebs + new
        with open(ebp, 'wb') as f: pickle.dump(ebs, f)
        for e in open_: groups.pop(e, None)                  # re-cover with the new targets
        todo = open_ + list(range(base, len(ebs)))
    else:
        open_ = todo
    A.edges = [dict(ball=ebs[e], groups=groups.get(e, []), failed=gaps.get(e, []) if e in open_ else [])
               for e in range(len(ebs))]
    A.record = None
    with open(os.path.join(a.run, 'atlas_state_edge.pkl'), 'wb') as f: pickle.dump(A, f, protocol=4)
    print('wrote atlas_state_edge.pkl: %d edge balls, open %s (%.0fs)' % (len(ebs), open_, time.time() - t0), flush=True)
    sys.exit(0 if not any(x['failed'] for x in A.edges) else 3)


if __name__ == '__main__':
    main()

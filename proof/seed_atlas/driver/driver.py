"""Seed atlas driver: breadth-first growth of seed balls (untrusted floats; the certifier checks everything).

Master/worker loop on one node (ProcessPoolExecutor).  Tasks:
  make(spec)  -> a Ball (centre data, radius ladder: C1 Taylor-model n and Stage C)
  cover(j)    -> the dyadic sphere cover of ball j against a snapshot of all balls (+ the F6 record), and, for
                 uncovered boxes, spawn proposals (a point just outside the sphere, in the same corner chart if its
                 edge distance is within CHART_KEEP of the best corner's, else in the best corner).
The master adds balls, de-duplicates proposals against balls added since the snapshot and against pending ones, and
re-covers a ball once the balls it waits for exist.  A ball is closed when its whole sphere is covered.
Usage: driver.py OUT_DIR [--workers N] [--start JSON|record:K] [--hours H] [--max-balls N]
"""
import argparse, gzip, json, math, os, pickle, sys, time, traceback, warnings
import concurrent.futures as cf
import multiprocessing as mp
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE); sys.path.insert(0, os.path.join(HERE, '../../atlas'))
os.environ.setdefault('OMP_NUM_THREADS', '1'); os.environ.setdefault('OPENBLAS_NUM_THREADS', '1')
warnings.filterwarnings('ignore')
import seedgeom as SG
import cover as CV
from c1 import Ball
from makeball import make_ball, LADDER

CHART_KEEP = 0.6          # stay in the parent's corner chart if its edge distance >= CHART_KEEP x the best corner's
SPAWN_F = (1.3, 1.15, 1.0)
MAX_SPAWN = 6             # proposals per cover result
SPAWN_SEP = 0.7           # min angle (rad) between proposals of one cover
DUP_V = 0.85              # a proposal point inside an existing/pending ellipsoid at this depth is not spawned
PENDING_R = 0.08          # radius assumed for pending (not yet made) balls
MAX_COVERS = 40

F6PHI = np.array([[2 * math.pi * ((j * k) % 6) / 6 for k in range(6)] for j in range(6)])
F6R = 0.125


def f6_record():
    from geometry import corner_census
    return dict(phi=F6PHI.copy(), R=F6R, label_radius=0.03, R400=corner_census(np.exp(1j * F6PHI))[0])


# ------------------------------------------------------------------ worker side
_W = {}


def _init():
    warnings.filterwarnings('ignore')
    _W['recs'] = [f6_record()]


def snapshot_index(snap):
    return CV.Index(snap['theta0'], snap['Minv'], snap['Mth'], snap['r'])


def task_make(spec):
    t0 = time.time(); log = []
    try:
        b = make_ball(spec['theta'], spec['phih'], spec['phiv'], rmax=spec.get('rmax', LADDER[0]), hint=spec.get('hint'), log=log)
    except Exception as e:
        b = None; log.append('make exception: %s' % traceback.format_exc()[-800:])
    return dict(kind='make', pid=spec['pid'], ball=b, log=log, s=time.time() - t0)


def choose_chart(Qpt, parent_same=True):
    """(g, rows, cols, edge) for the new ball: the same chart if good enough, else the best corner."""
    c = SG.census(Qpt.reshape(6, 6), orderings=False)
    if not len(c['g']): return None
    ib = int(np.argmax(c['edge']))
    same = np.where((c['g'] == 0) & np.all(c['rows'] == [0, 1, 2], 1) & np.all(c['cols'] == [0, 1, 2], 1))[0]
    if parent_same and len(same) and c['edge'][same[0]] >= CHART_KEEP * c['edge'][ib]:
        return ('id', (0, 1, 2), (0, 1, 2), float(c['edge'][same[0]]))
    return (SG.G4[c['g'][ib]], tuple(int(x) for x in c['rows'][ib]), tuple(int(x) for x in c['cols'][ib]), float(c['edge'][ib]))


def proposals(ball, j, failed, tries, idx=None):
    """Spawn proposals for the uncovered boxes: well-separated directions, the worst first."""
    if not failed: return []
    lo, hi = CV.box_lohi(np.array([f[0] for f in failed]), np.array([f[1] for f in failed]))
    d = (lo + hi) / 2; d /= np.linalg.norm(d, axis=1)[:, None]
    order = np.argsort([-f[2] for f in failed])
    chosen = []
    for i in order:
        if all(np.arccos(np.clip(d[i] @ d[k], -1, 1)) > SPAWN_SEP for k in chosen): chosen.append(i)
        if len(chosen) >= MAX_SPAWN: break
    out = []
    for i in chosen:
        key = tuple(np.round(d[i], 1))
        k0 = tries.get(key, 0)
        for f in SPAWN_F[min(k0, len(SPAWN_F) - 1):]:
            w = f * ball.r * d[i]
            Q, ph, pv, ok = ball.Q_at(w[None])
            if not ok[0]: continue
            if idx is not None and f > SPAWN_F[-1] and len(idx.query(SG.census(Q[0].reshape(6, 6))['seed'], 0.9)[0]):
                continue                                    # already inside a ball: spawn nearer the sphere
            ch = choose_chart(Q[0], parent_same=(k0 < 2))
            if ch is None: continue
            g, rows, cols, edge = ch
            th, phh, phv = SG.corner_split(Q[0].reshape(6, 6), g, rows, cols)
            try:
                nb = Ball(th, phh, phv)
            except Exception:
                continue
            out.append(dict(Q=Q[0], theta=th, phih=phh, phiv=phv, Minv=nb.Minv, chart=(g, rows, cols), edge=edge,
                            parent=j, f=f, key=key, rmax=LADDER[0], hint=(ball.r, ball.label)))
            break
    return out


def task_cover(j, ball, snap):
    t0 = time.time()
    try:
        idx = snapshot_index(snap)
        recs = _W['recs']
        found = CV.discover(ball, j, idx, rec_targets=[(0, recs[0])], seed=j)
        order = {'T0': 0, 'T1': 1, 'T2': 2}

        def build(found):
            descs = sorted(found, key=lambda d: (order[d[0]], not CV.is_linear(d[2], d[3], d[4]) if d[0] != 'T2' else 1, found[d]))
            cands = []
            for d in descs:
                tgt = None
                if d[0] != 'T2':
                    l = d[1]
                    tgt = dict(theta0=snap['theta0'][l], Minv=snap['Minv'][l], r=snap['r'][l])
                cands.append(CV.Cand(d, tgt, recs))
            return cands
        cands = build(found)
        leaves, failed = CV.cover(ball, cands)
        if failed:
            # loop closure: look for targets at the uncovered boxes themselves, then retry once
            lo, hi = CV.box_lohi(np.array([f[0] for f in failed]), np.array([f[1] for f in failed]))
            dirs = (lo + hi) / 2
            if len(dirs) > 256: dirs = dirs[np.random.default_rng(j).choice(len(dirs), 256, replace=False)]
            more = CV.discover(ball, j, idx, rec_targets=[(0, recs[0])], seed=j + 7, nrand=0, extra_dirs=dirs, level_dirs=False)
            new = {d: v for d, v in more.items() if d not in found}
            if new:
                found.update(new); cands = build(found)
                leaves, failed = CV.cover(ball, cands)
        props = proposals(ball, j, failed, snap.get('tries', {}).get(j, {}), idx) if failed else []
        groups = {}
        for (m, I, ci, N) in leaves:
            groups.setdefault((ci, N), []).append([m] + [int(x) for x in I])
        gl = [dict(desc=cands[ci].desc, wind=list(N), boxes=np.array(bx, np.int16)) for (ci, N), bx in groups.items()]
        return dict(kind='cover', j=j, nsnap=len(snap['r']), groups=gl, nleaves=len(leaves),
                    failed=[(int(m), [int(x) for x in I], v) for (m, I, v) in failed], props=props,
                    ncand=len(cands), s=time.time() - t0)
    except Exception:
        return dict(kind='cover', j=j, nsnap=len(snap['r']), error=traceback.format_exc()[-1500:], s=time.time() - t0)


def _rec():
    if 'F6rec' not in _W:
        import record_boundary as RB
        _W['F6rec'] = RB.F6Record(F6R)
    return _W['F6rec']


def task_rdiscover(snap, nsamp, seed):
    import record_boundary as RB
    t0 = time.time()
    try:
        rec = _rec(); idx = snapshot_index(snap)
        found, _, _ = RB.discover_rec(rec, idx, nsamp=nsamp, seed=seed)
        return dict(kind='rdiscover', found=found, s=time.time() - t0)
    except Exception:
        return dict(kind='rdiscover', error=traceback.format_exc()[-1500:], s=time.time() - t0)


def task_rcover(I, descs, snap):
    import record_boundary as RB
    t0 = time.time()
    try:
        rec = _rec()
        cands = [RB.RecCand(d, dict(theta0=snap['theta0'][d[1]], Minv=snap['Minv'][d[1]], r=snap['r'][d[1]])) for d in descs]
        leaves, failed = RB.cover_rec(rec, cands, I=I)
        props = []
        if failed:
            lo, hi = CV.box_lohi(np.array([f[0] for f in failed]), np.array([f[1] for f in failed]))
            etas = (lo + hi) / 2 * rec.eta_scale
            v = etas @ rec.T.T
            etas = etas * (rec.R / np.maximum(np.linalg.norm(v, axis=1), 1e-12))[:, None]
            Q, ok, _ = RB.hadamard_b(rec, etas)
            chosen = []
            for i in np.argsort([-f[2] for f in failed]):
                if not ok[i]: continue
                if any(np.linalg.norm(etas[i] - etas[k]) < 0.5 * F6R for k in chosen): continue
                chosen.append(i)
                if len(chosen) >= 16: break
            for i in chosen:
                ch = choose_chart(Q[i], parent_same=False)
                if ch is None: continue
                g, rows, cols, edge = ch
                th, phh, phv = SG.corner_split(Q[i].reshape(6, 6), g, rows, cols)
                try:
                    nb = Ball(th, phh, phv)
                except Exception:
                    continue
                props.append(dict(Q=Q[i], theta=th, phih=phh, phiv=phv, Minv=nb.Minv, chart=(g, rows, cols), edge=edge,
                                  parent=-2, f=1.0, key=tuple(np.round(etas[i] / F6R, 1)), rmax=LADDER[0], hint=None))
        groups = {}
        for (m, Ib, ci, N) in leaves:
            groups.setdefault((ci, N), []).append([m] + [int(x) for x in Ib])
        gl = [dict(desc=cands[ci].desc, wind=list(N), boxes=np.array(bx, np.int16)) for (ci, N), bx in groups.items()]
        return dict(kind='rcover', groups=gl, nleaves=len(leaves), failed=[(int(m), [int(x) for x in Ib], v) for (m, Ib, v) in failed],
                    props=props, s=time.time() - t0)
    except Exception:
        return dict(kind='rcover', error=traceback.format_exc()[-1500:], s=time.time() - t0)


# ------------------------------------------------------------------ master
class Atlas:
    def __init__(self):
        self.balls = []; self.status = []; self.groups = {}; self.ncover = []; self.tries = {}
        self.parent = []; self.log_fail = {}; self.stats = dict(make_s=0.0, cover_s=0.0, makes=0, covers=0, make_fail=0)
        self.record = None; self.record_rounds = 0

    def snap(self):
        n = len(self.balls)
        return dict(theta0=np.array([b.theta0 for b in self.balls]).reshape(n, 4),
                    Minv=np.array([b.Minv for b in self.balls]).reshape(n, 4, 4),
                    Mth=np.array([b.Mth for b in self.balls]).reshape(n, 4, 4),
                    r=np.array([b.r for b in self.balls], float), tries=self.tries)

    def add(self, b, parent):
        self.balls.append(b); self.status.append('open'); self.ncover.append(0); self.parent.append(parent)
        return len(self.balls) - 1


def save(A, path):
    tmp = path + '.tmp'
    with open(tmp, 'wb') as f: pickle.dump(A, f, protocol=4)
    os.replace(tmp, path)


def start_spec(arg):
    if arg.startswith('record:'):
        k = int(arg.split(':')[1])
        d = json.load(gzip.open(os.path.join(HERE, '../../atlas/results/atlas_certificate.json.gz')))['records']
        Q = np.array([float.fromhex(x) if isinstance(x, str) else float(x) for x in d[k]['phi']]).reshape(6, 6)
    else:
        Q = np.array(json.load(open(arg))['phi'], float).reshape(6, 6)
    c = SG.census(Q, orderings=False); i = int(np.argmax(c['edge']))
    th, ph, pv = SG.corner_split(Q, c['g'][i], c['rows'][i], c['cols'][i])
    return dict(theta=th, phih=ph, phiv=pv, pid=0, parent=-1)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('out'); ap.add_argument('--workers', type=int, default=os.cpu_count())
    ap.add_argument('--start', default='record:2003'); ap.add_argument('--hours', type=float, default=1e9)
    ap.add_argument('--max-balls', type=int, default=10 ** 9)
    a = ap.parse_args()
    os.makedirs(a.out, exist_ok=True)
    state = os.path.join(a.out, 'atlas_state.pkl'); logf = open(os.path.join(a.out, 'driver.log'), 'a')

    def log(*x):
        s = time.strftime('%H:%M:%S ') + ' '.join(str(y) for y in x)
        logf.write(s + '\n'); logf.flush()

    if os.path.exists(state):
        A = pickle.load(open(state, 'rb'))
        for j, s in enumerate(A.status):
            if s in ('covering', 'waiting', 'queued'): A.status[j] = 'open'
        log('resumed', len(A.balls), 'balls,', sum(s == 'closed' for s in A.status), 'closed')
    else:
        import driver as DRV                     # pickle as driver.Atlas, not __main__.Atlas
        A = DRV.Atlas()
    ctx = mp.get_context('fork' if sys.platform.startswith('linux') else 'spawn')
    ex = cf.ProcessPoolExecutor(a.workers, mp_context=ctx, initializer=_init)
    futs = {}
    pending = {}                     # pid -> proposal (submitted make)
    waiting = {}                     # j -> set of pids it waits for
    next_pid = [1]
    t_start = time.time(); last_save = time.time(); last_stat = time.time()
    _init()

    from collections import deque
    qcover, qmake = deque(), deque()
    snapc = {}

    def snap():
        n = len(A.balls)
        if snapc.get('n') != n:
            snapc.update(n=n, d=A.snap())
        d = dict(snapc['d']); d['tries'] = A.tries
        return d

    def submit_make(spec):
        qmake.append(spec)

    def submit_cover(j):
        A.status[j] = 'queued'; qcover.append(j)

    def dispatch():
        while len(futs) < a.workers + 2 and (qcover or qmake):
            if qcover:
                j = qcover.popleft(); A.status[j] = 'covering'; A.ncover[j] += 1
                futs[ex.submit(task_cover, j, A.balls[j], snap())] = ('cover', j)
            else:
                spec = qmake.popleft()
                futs[ex.submit(task_make, spec)] = ('make', spec['pid'])

    if not A.balls:
        spec = start_spec(a.start); pending[0] = spec; submit_make(spec)
    else:
        for j, s in enumerate(A.status):
            if s == 'open': submit_cover(j)

    def pending_index():
        ps = list(pending.values())
        if not ps: return None, []
        Mth = [np.linalg.inv(p['Minv']) if 'Minv' in p else np.eye(4) for p in ps]
        return CV.Index([p['theta'] for p in ps], [p.get('Minv', np.eye(4)) for p in ps], Mth, [PENDING_R] * len(ps)), ps

    rphase = dict(state='idle')

    def record_phase_start():
        A.record_rounds += 1
        rphase.update(state='discover', parts=[], pending=0)
        sn = snap()
        for k in range(8):
            futs[ex.submit(task_rdiscover, sn, 400, 1000 * A.record_rounds + k)] = ('rdiscover', k)
        rphase['pending'] = 8; rphase['found'] = {}
        log('RECORD phase round', A.record_rounds, 'with', len(A.balls), 'balls')

    def record_cover_start():
        import record_boundary as RB
        rec = _rec()
        descs = sorted(rphase['found'], key=lambda d: rphase['found'][d])
        rphase['descs'] = descs
        I = RB.shell_boxes(rec)
        rng = np.random.default_rng(0); I = I[rng.permutation(len(I))]
        chunks = np.array_split(I, min(len(I), 4 * a.workers))
        sn = snap()
        for c in chunks:
            futs[ex.submit(task_rcover, c, descs, sn)] = ('rcover', 0)
        rphase.update(state='cover', pending=len(chunks), groups=[], failed=[], props=[])
        log('RECORD cover: %d candidates, %d shell boxes in %d chunks' % (len(descs), len(I), len(chunks)))

    dispatch()
    while futs or qcover or qmake or rphase['state'] == 'idle':
        if not futs and not qcover and not qmake:
            if rphase['state'] == 'idle' and A.record is None and not any(s in ('open', 'queued', 'covering', 'waiting') for s in A.status):
                if A.record_rounds >= 12: log('RECORD: giving up after 12 rounds'); break
                record_phase_start()
            elif rphase['state'] == 'idle':
                break
        done, _ = cf.wait(list(futs), timeout=60, return_when=cf.FIRST_COMPLETED)
        for fu in done:
            kind, key = futs.pop(fu)
            try:
                res = fu.result()
            except Exception:
                log('task crashed', kind, key, traceback.format_exc()[-600:]); res = None
            if kind == 'rdiscover':
                if res is None or 'error' in res: log('rdiscover error', (res or {}).get('error'))
                else:
                    for d, v in res['found'].items():
                        if v < rphase['found'].get(d, 9.0): rphase['found'][d] = v
                rphase['pending'] -= 1
                if rphase['pending'] == 0: record_cover_start()
                continue
            if kind == 'rcover':
                if res is None or 'error' in res: log('rcover error', (res or {}).get('error')); rphase['failed'].append('error')
                else:
                    rphase['groups'] += res['groups']; rphase['failed'] += res['failed']; rphase['props'] += res['props']
                rphase['pending'] -= 1
                if rphase['pending'] == 0:
                    if not rphase['failed']:
                        A.record = dict(groups=rphase['groups'], descs=rphase['descs'])
                        log('RECORD closed: %d groups, %d leaves' % (len(rphase['groups']), sum(len(g['boxes']) for g in rphase['groups'])))
                        rphase['state'] = 'done'
                    else:
                        log('RECORD uncovered boxes %d, proposals %d' % (len(rphase['failed']), len(rphase['props'])))
                        pidx, plist = pending_index()
                        nsp = 0
                        for p in rphase['props']:
                            seeds = SG.census(p['Q'].reshape(6, 6))['seed']
                            if pidx is not None and len(pidx.query(seeds, DUP_V)[0]): continue
                            p['pid'] = next_pid[0]; next_pid[0] += 1
                            pending[p['pid']] = p; submit_make(p); nsp += 1
                            pidx, plist = pending_index()
                        log('RECORD spawned', nsp)
                        rphase['state'] = 'idle'
                        if nsp == 0 and A.record_rounds >= 3: log('RECORD: no progress'); rphase['state'] = 'stuck'
                continue
            if kind == 'make':
                spec = pending.pop(key, None)
                A.stats['makes'] += 1
                if res is not None: A.stats['make_s'] += res['s']
                b = res['ball'] if res else None
                if b is None:
                    A.stats['make_fail'] += 1
                    log('make failed pid', key, 'parent', spec and spec.get('parent'), (res or {}).get('log'))
                    if spec and spec.get('parent', -1) >= 0:
                        tj = A.tries.setdefault(spec['parent'], {}); tj[spec['key']] = tj.get(spec['key'], 0) + 1
                else:
                    jn = A.add(b, spec.get('parent', -1) if spec else -1)
                    log('ball', jn, 'r %.3f n %.2e lab %.2f edge %.3f S %s parent %s chart %s %.0fs' % (
                        b.r, b.n, b.label, b.edge, np.round(b.S, 1), spec.get('parent'), spec.get('chart'), res['s']))
                    if len(A.balls) <= a.max_balls: submit_cover(jn)
                for j in list(waiting):
                    waiting[j].discard(key)
                    if not waiting[j]:
                        del waiting[j]
                        if A.status[j] == 'waiting': submit_cover(j)
            else:
                j = key
                A.stats['covers'] += 1
                if res is None or 'error' in res:
                    log('cover error', j, (res or {}).get('error')); A.status[j] = 'failed'; A.log_fail[j] = 'error'; continue
                A.stats['cover_s'] += res['s']
                if not res['failed']:
                    A.status[j] = 'closed'; A.groups[j] = res['groups']
                    log('closed', j, 'leaves', res['nleaves'], 'groups', len(res['groups']), 'cands', res['ncand'], '%.0fs' % res['s'])
                    continue
                # uncovered boxes: re-cover if balls were added since the snapshot, else spawn
                nnew = len(A.balls) - res['nsnap']
                deps = set(); spawned = 0
                pidx, plist = pending_index()
                recent = CV.Index([b.theta0 for b in A.balls[res['nsnap']:]], [b.Minv for b in A.balls[res['nsnap']:]],
                                  [b.Mth for b in A.balls[res['nsnap']:]], [b.r for b in A.balls[res['nsnap']:]]) if nnew else None
                for p in res['props']:
                    seeds = SG.census(p['Q'].reshape(6, 6))['seed']
                    if recent is not None and len(recent.query(seeds, DUP_V)[0]):
                        deps.add(None); continue
                    if pidx is not None:
                        qi, bl, _, _ = pidx.query(seeds, DUP_V)
                        if len(bl):
                            deps.update(plist[k]['pid'] for k in set(bl.tolist())); continue
                    p['pid'] = next_pid[0]; next_pid[0] += 1
                    pending[p['pid']] = p; submit_make(p); deps.add(p['pid']); spawned += 1
                    pidx, plist = pending_index()
                if A.ncover[j] >= MAX_COVERS or not res['props']:
                    A.status[j] = 'failed'; A.log_fail[j] = 'covers %d props %d failed boxes %d' % (A.ncover[j], len(res['props']), len(res['failed']))
                    log('FAILED', j, A.log_fail[j]); continue
                log('cover', j, 'failed boxes', len(res['failed']), 'props', len(res['props']), 'spawned', spawned,
                    'deps', len(deps), 'new since snap', nnew, '%.0fs' % res['s'])
                real = set(d for d in deps if d is not None)
                if real:
                    waiting[j] = real; A.status[j] = 'waiting'
                else:
                    submit_cover(j)
        dispatch()
        now = time.time()
        if now - last_stat > 120:
            st = {s: A.status.count(s) for s in set(A.status)}
            log('STAT balls', len(A.balls), st, 'pending', len(pending), 'inflight', len(futs), 'queued', len(qcover), len(qmake),
                'make %.0f s / %d, cover %.0f s / %d' % (A.stats['make_s'], A.stats['makes'], A.stats['cover_s'], A.stats['covers']))
            last_stat = now
        if now - last_save > 600:
            save(A, state); last_save = now
        if (now - t_start) / 3600 > a.hours:
            log('time limit reached'); break
    save(A, state)
    st = {s: A.status.count(s) for s in set(A.status)}
    log('DONE balls', len(A.balls), st, 'wall %.0f s' % (time.time() - t_start))
    ex.shutdown(wait=False, cancel_futures=True)


if __name__ == '__main__':
    main()

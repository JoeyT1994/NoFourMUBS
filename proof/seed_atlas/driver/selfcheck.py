"""Float self-check of a seed atlas certificate (not a proof; piece A certifies in Arb).

For every seed ball, from the stored data only:
  C1     the Taylor-model bound over the k^4 boxes is <= the stored n, and the centre orientation is matched (+1);
  C2     every transfer box passes its test with the stored winding (T0 / linear T1: exact vertex test; general T1 and
         T2: Taylor models over the box, orientation at the box centre);
  cover  the listed boxes cover the unit sphere (exact dyadic traversal);
  stagec (with --stagec) Stage C passes at the stored (r, n, label radius).
Records: the F6 record contains F6, and Stage C passes at R (with --stagec); its boundary is checked by
record_boundary.py.
Usage: selfcheck.py CERT.json.gz [-j N] [--stagec] [--lo L --hi H]
"""
import argparse, itertools, os, sys, time, warnings
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
warnings.filterwarnings('ignore')
import cover as CV
import seedgeom as SG
from c1 import c1_bound, box_Q
from seed_export import SeedData, load, fh

_C = {}


def _init(path):
    warnings.filterwarnings('ignore')
    d = load(path)
    _C['seeds'] = [SeedData(s) for s in d['seeds']]
    _C['recs'] = [dict(phi=np.array([fh(x) for x in r['phi']]).reshape(6, 6), R=fh(r['R'])) for r in d['records']]
    _C['max_level'] = d['max_level']


def check_seed(j, stagec=False):
    S = _C['seeds']; b = S[j]; out = dict(j=j, errors=[])
    t0 = time.time()
    n, why = c1_bound(b, b.r, b.k)
    out['n_check'] = n
    if n is None or n > b.n: out['errors'].append('C1: %s > stored %.3e (%s)' % (n, b.n, why))
    leaves = []
    nbox = dict(T0=0, T1lin=0, T1=0, T2=0)
    for gr in b.transfers:
        kind, t = gr['kind'], gr['target']
        boxes = np.array(gr['boxes'], int).reshape(-1, 5)
        leaves += [(int(x[0]), x[1:]) for x in boxes]
        m, I = boxes[:, 0], boxes[:, 1:]
        if kind in ('T0', 'T1'):
            if not (0 <= t < len(S)): out['errors'].append('bad target %d' % t); continue
            if S[t].o != b.o: out['errors'].append('orientation mismatch to %d' % t)
            g, rows, cols = (gr.get('g', 'id'), tuple(gr.get('rows', (0, 1, 2))), tuple(gr.get('cols', (0, 1, 2))))
            if kind == 'T0' and (g, rows, cols) != ('id', (0, 1, 2), (0, 1, 2)): out['errors'].append('T0 with a corner'); continue
            tgt = dict(theta0=S[t].theta0, Minv=S[t].Minv, r=S[t].r)
        else:
            if not (0 <= t < len(_C['recs'])): out['errors'].append('bad record %d' % t); continue
            g, rows, cols = gr['g'], tuple(gr['rows']), tuple(gr['cols']); tgt = None
        cand = CV.Cand((kind, t, g, rows, cols), tgt, _C['recs'])
        N = np.broadcast_to(np.array(gr['wind'], float), (len(boxes), len(gr['wind'])))
        if cand.linear:
            for mm in np.unique(m):
                sel = m == mm
                ok, _, _ = CV.lin_test(b, cand, int(mm), I[sel], N=N[sel])
                if not ok.all(): out['errors'].append('%s box fails (target %d)' % (kind, t))
            nbox['T0' if kind == 'T0' else 'T1lin'] += len(boxes)
        else:
            lo, hi = CV.box_lohi(m, I)
            wc = b.r * (lo + hi) / 2; hw = b.r * (hi - lo) / 2
            for s in range(0, len(boxes), 128):
                Q, okq, why = box_Q(b, wc[s:s + 128], hw[s:s + 128])
                ok, _, _ = CV.nl_test(Q, hw[s:s + 128], cand, N=N[s:s + 128])
                if not (ok & okq).all(): out['errors'].append('%s box fails (target %d, %s)' % (kind, t, why))
            nbox[kind] += len(boxes)
    okc, where = CV.check_coverage(leaves, _C['max_level'])
    if not okc: out['errors'].append('sphere not covered near %s' % (where,))
    out['nbox'] = nbox
    if stagec:
        from makeball import run_stage_c
        o = run_stage_c(b, b.r, b.n, b.label)
        if not o.get('ok'): out['errors'].append('Stage C fails')
    out['s'] = time.time() - t0
    return out


def check_record(d, k=3):
    """F6 record: centre is F6 (to rounding), F6 inside, boundary shell covered, every T1prime box passes the float
    test at a k^4 grid of the actual Hadamard points with the stored winding."""
    import record_boundary as RB
    errs = []
    r0 = d['records'][d['fourier_record']]
    rec = RB.F6Record(fh(r0['R']), fh(r0['label_radius']))
    phi = np.array([fh(x) for x in r0['phi']]).reshape(6, 6)
    if np.abs(SG.wrap(phi - RB.F6PHI)).max() > 1e-12: errs.append('record centre is not F6')
    if fh(r0['eta_scale']) < rec.rH: errs.append('eta_scale < r_H')
    rec.eta_scale = fh(r0['eta_scale'])
    S = _C['seeds']
    leaves = []; nbox = 0
    for gr in r0['boundary']:
        if gr['kind'] != 'T1prime': errs.append('record target kind %s' % gr['kind']); continue
        t = gr['target']
        cand = RB.RecCand(('T1prime', t, gr['g'], tuple(gr['rows']), tuple(gr['cols'])), dict(theta0=S[t].theta0, Minv=S[t].Minv, r=S[t].r))
        boxes = np.array(gr['boxes'], int).reshape(-1, 5); nbox += len(boxes)
        leaves += [(int(x[0]), x[1:]) for x in boxes]
        for mm in np.unique(boxes[:, 0]):
            sel = boxes[:, 0] == mm
            N = np.broadcast_to(np.array(gr['wind'], float), (sel.sum(), 4))
            ok, _, _ = RB.rec_test(rec, cand, int(mm), boxes[sel, 1:], k=k, N=N)
            if not ok.all(): errs.append('T1prime box fails (target %d)' % t)
    # coverage of the shell (float shell test, exact dyadic traversal)
    Sset = set((m,) + tuple(int(x) for x in I) for (m, I) in leaves)
    stack = [(0, (0, 0, 0, 0))]
    while stack:
        m, I = stack.pop()
        if (m,) + I in Sset or not RB.shell_meets(rec, m, np.array([I]))[0]: continue
        if m >= d['max_level']: errs.append('shell not covered near %s' % ((m, I),)); break
        for off in itertools.product((0, 1), repeat=4):
            stack.append((m + 1, tuple(2 * i + o for i, o in zip(I, off))))
    return errs, nbox


def _work(args):
    return check_seed(*args)


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('cert'); ap.add_argument('-j', type=int, default=1); ap.add_argument('--stagec', action='store_true')
    ap.add_argument('--lo', type=int, default=0); ap.add_argument('--hi', type=int, default=None)
    a = ap.parse_args()
    _init(a.cert)
    hi = len(_C['seeds']) if a.hi is None else a.hi
    jobs = [(j, a.stagec) for j in range(a.lo, hi)]
    t0 = time.time(); bad = 0; tot = dict(T0=0, T1lin=0, T1=0, T2=0); worst = 0.0
    if a.j > 1:
        import multiprocessing as mp
        with mp.get_context('fork').Pool(a.j, initializer=_init, initargs=(a.cert,)) as pool:
            res = pool.imap_unordered(_work, jobs, chunksize=4)
            res = list(res)
    else:
        res = [_work(x) for x in jobs]
    for r in sorted(res, key=lambda x: x['j']):
        for k in tot: tot[k] += r['nbox'][k]
        b = _C['seeds'][r['j']]
        if r['n_check'] is not None: worst = max(worst, r['n_check'] / b.n)
        if r['errors']:
            bad += 1; print('SEED %d FAIL: %s' % (r['j'], '; '.join(r['errors'][:5])), flush=True)
    print('seeds %d, failures %d, boxes %s, max n_check / n = %.3f, %.0f s' % (len(res), bad, tot, worst, time.time() - t0))
    if a.lo == 0 and a.hi is None:
        errs, nb = check_record(load(a.cert))
        print('F6 record: %d boundary boxes, %s' % (nb, 'PASS' if not errs else 'FAIL: ' + '; '.join(errs[:5])))
        bad += bool(errs)
    sys.exit(1 if bad else 0)

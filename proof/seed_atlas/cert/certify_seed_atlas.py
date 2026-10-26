"""Check a whole seed-atlas certificate (proof/seed_atlas/FORMAT.md, "seed-atlas-v1").  Exits nonzero on any failure.

Per seed ball j (seedcert.py, all in Arb):
  (C1)  Mth_j certified invertible; the certified remainder n_cert <= n_j over the k^4 boxes meeting the ball;
  (SC)  stagec.stage_c on P_j + U_j w + nu, ||w|| <= r_j, ||nu|| <= n_j, with rigorous rcol, rF (seedcert.stage_c_args);
  (C2)  every transfer group (T0, T1, T2) passes on every listed box, and the listed boxes cover the sphere ||w|| = r_j.
Per record s: the existing record certification (the calls of proof/atlas/certify.certify_record: sigma, normal bound,
Stage C at the stored R and label radius), then its boundary groups (rec, T1prime with the Krawczyk enclosure of nu)
and the coverage of its shell.
Per edge ball e (edgecert.py, SPEC section 10): C1e (augmented 7-unknown Krawczyk tubes, t' = t, g > 0, the remainder),
SPEC 10.1-10.2's (G) (sigma at F6 by BallRecord, R_G L < sigma, the image inside ||hor(Q - P_F)|| < R_G) and (D)
(sigma_D > 0), Stage C, its T1 transfers into seed balls and its sphere coverage; seed balls may transfer into it by T3.
Globally: F6 lies in the image (F6 = H(0) of edge ball 0, or the interior of record `fourier_record` by
proof/atlas/nonempty.py's test), and Tao's record passes (proof/atlas/tao.py: exact spectrum, isolation, Stage C).

The receipt's `binding` records the certificate's SHA-256, the SHA-256 of every source of this checker
(BINDING_DIRS) and the package versions; `check_binding.py` compares it with a checkout.

Usage: python certify_seed_atlas.py CERT [-j JOBS] [--receipt receipt.json] [--only seeds:0-99,records:all]
"""
import argparse, gzip, json, math, os, sys, time, traceback
HERE = os.path.dirname(os.path.abspath(__file__))
ATLAS = os.path.abspath(os.path.join(HERE, '../../atlas'))
for p in (HERE, ATLAS):
    if p not in sys.path: sys.path.insert(0, p)
import numpy as np


# ------------------------------------------------------------------------------------------------ the code binding
ROOT = os.path.abspath(os.path.join(HERE, '../../..'))
BINDING_DIRS = ('proof/seed_atlas/cert', 'proof/atlas')     # every .py and .json here (tests excluded) is bound


def sha256_file(path):
    import hashlib
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        for block in iter(lambda: f.read(1 << 20), b''): h.update(block)
    return h.hexdigest()


def bound_sources():
    """{repo-relative path: SHA-256} of the checker's sources (check_binding.py recomputes the same set)."""
    out = {}
    for d in BINDING_DIRS:
        for name in sorted(os.listdir(os.path.join(ROOT, d))):
            if name.endswith(('.py', '.json')) and os.path.isfile(os.path.join(ROOT, d, name)):
                out[d + '/' + name] = sha256_file(os.path.join(ROOT, d, name))
    out['requirements.txt'] = sha256_file(os.path.join(ROOT, 'requirements.txt'))
    return out


def binding(cert_path, argv_options):
    from importlib import metadata
    def version(pkg):
        try: return metadata.version(pkg)
        except metadata.PackageNotFoundError: return None
    return dict(format='nofour-arb-seed-binding-v1', certificate_sha256=sha256_file(cert_path), python=sys.version.split()[0],
                packages={p: version(p) for p in ('python-flint', 'numpy', 'sympy', 'mpmath', 'scipy')},
                options=argv_options, sources=bound_sources())


# ------------------------------------------------------------------------------------------------ the one adapter
def read_certificate(path):
    """FORMAT.md -> plain dict.  Everything format-specific is here; the checks below see only this structure:
    seeds: raw seed dicts (seedcert.Ball reads theta0, Mth, r, o, k, P, U, n, label_radius; 'transfers' = groups);
    records: dicts phi (6x6 floats), R, label_radius, Tint (36x4 ints), eta_scale, boundary (groups), and
    optionally Nint (36x21 ints, units 2^-30: the basis of N for T1'; the certifier builds its own if absent);
    fourier_record, tao {R, label_radius}, max_level."""
    op = gzip.open if path.endswith('.gz') else open
    with op(path, 'rt') as f: d = json.load(f)
    if d.get('format') != 'seed-atlas-v1': raise ValueError('not a seed-atlas-v1 certificate')
    hx = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)
    recs = []
    for r in d.get('records', []):
        recs.append(dict(phi=np.array([hx(x) for x in r['phi']]).reshape(6, 6), R=hx(r['R']), label_radius=hx(r['label_radius']),
                         Tint=np.array(r['Tint'], dtype=np.int64).reshape(36, 4) if r.get('Tint') is not None else None,
                         eta_scale=hx(r['eta_scale']) if 'eta_scale' in r else None, boundary=r.get('boundary', []),
                         Nint=np.array(r['Nint'], dtype=np.int64).reshape(36, 21) if r.get('Nint') is not None else None))
    tao = d.get('tao') or {}
    return dict(seeds=d['seeds'], records=recs, edge=d.get('edge', []), fourier_record=d.get('fourier_record'),
                max_level=int(d.get('max_level', 12)),
                tao=dict(R=hx(tao.get('R', 0.08)), label_radius=hx(tao.get('label_radius', 0.03))))


# ------------------------------------------------------------------------------------------------ work items
def split(cert):
    """(core, groups): the certificate without the per-item box lists (sent once to each worker), and each seed's
    transfer groups / each record's boundary groups (sent with that item's task)."""
    core = dict(cert)
    core['seeds'] = [{k: v for k, v in s.items() if k != 'transfers'} for s in cert['seeds']]
    core['records'] = [{k: v for k, v in r.items() if k != 'boundary'} for r in cert['records']]
    core['edge'] = [{k: v for k, v in e.items() if k != 'transfers'} for e in cert.get('edge', [])]
    groups = {('seed', j): s.get('transfers', []) for j, s in enumerate(cert['seeds'])}
    groups.update({('edge', e): ed.get('transfers', []) for e, ed in enumerate(cert.get('edge', []))})
    # an edge sphere's boxes are checked in chunks (each needs an Arb chart enclosure); the ('edge', e) item keeps the
    # sphere coverage, Stage C or X, and checks no box itself
    for e, ed in enumerate(cert.get('edge', [])):
        chunks, cur, n = [], [], 0
        for g in ed.get('transfers', []):
            bx = g.get('boxes', []) if isinstance(g, dict) else []
            for s0 in range(0, max(len(bx), 1), EDGE_CHUNK):
                cur.append(dict(g, boxes=bx[s0:s0 + EDGE_CHUNK])); n += len(bx[s0:s0 + EDGE_CHUNK])
                if n >= EDGE_CHUNK: chunks.append(cur); cur, n = [], 0
        if cur: chunks.append(cur)
        groups.update({('edgeT', (e, c)): ch for c, ch in enumerate(chunks)})
    groups.update({('record', i): r.get('boundary', []) for i, r in enumerate(cert['records'])})
    return core, groups


class Ctx:
    """The certificate core (no box lists), parsed once per process."""

    def __init__(self, cert):
        import seedcert as S
        self.cert = cert
        self.balls = []
        self.bad_parse = {}
        for j, s in enumerate(cert['seeds']):
            try: self.balls.append(S.Ball(s))
            except (S.CertError, KeyError, TypeError, ValueError) as e:
                self.balls.append(None); self.bad_parse[j] = repr(e)
        self.rec_targets = [(r['phi'].reshape(36), r['R']) for r in cert['records']]
        import edgecert as EC
        self.edges = []                                         # (EdgeBall, EdgeTubes or None) per edge ball
        for e, ed in enumerate(cert.get('edge', [])):
            try: eb = EC.EdgeBall(ed)
            except (S.CertError, KeyError, TypeError, ValueError): eb = None
            self.edges.append((eb, (cert.get('edge_c1') or {}).get(e, {}).get('tubes')))


def check_seed(C, j, groups=None):
    import seedcert as S
    t0 = time.time(); out = dict(item='seed', index=j)
    try:
        if C.balls[j] is None: raise S.CertError('parse: ' + C.bad_parse[j])
        if any(b is None for b in C.balls): raise S.CertError('some seed ball is malformed')
        ball = C.balls[j]
        c1 = S.certify_c1(ball)
        out.update(n=ball.n, n_cert=c1['n_cert'], r=ball.r, k=ball.k, c1_boxes=c1['boxes'], c1_s=round(c1['seconds'], 3))
        if not c1['ok']: raise S.CertError(c1['reason'])
        t1 = time.time()
        sc = S.run_stage_c(ball)
        out.update(stagec_ok=bool(sc.get('ok')), bins=sc.get('bins'), labels=sc.get('labels'), steps=sc.get('steps'),
                   stagec_s=round(time.time() - t1, 3), rcol=sc['rcol'], rF=sc['rF'])
        if not sc.get('ok'): raise S.CertError('Stage C failed: %s' % sc.get('reason', 'quartet edge not excluded'))
        t2 = time.time()
        if groups is None: groups = C.cert['seeds'][j].get('transfers', [])
        cnt = S.check_seed_transfers(ball, C.balls, C.rec_targets, groups, C.cert['max_level'], edges=C.edges,
                                     caps=C.cert['seeds'][j].get('caps'))
        out.update(transfers=cnt, c2_s=round(time.time() - t2, 3))
        out['ok'] = True
    except S.CertError as e:
        out.update(ok=False, reason=str(e))
    except Exception as e:                                       # malformed data must fail, never pass
        out.update(ok=False, reason='exception: %r' % (e,), tb=traceback.format_exc(limit=3))
    out['seconds'] = round(time.time() - t0, 3)
    return out


def check_record(C, s, groups=None):
    """The existing record certification (the calls of certify.certify_record, inside seedcert.RecordData), then the
    record's boundary groups and the coverage of its shell."""
    import seedcert as S
    t0 = time.time(); out = dict(item='record', index=s)
    try:
        r = C.cert['records'][s]
        rd = S.RecordData(r['phi'], r['R'], r['label_radius'], r['Tint'], r.get('Nint'))
        out.update(R=r['R'], rH=rd.rH, n0=rd.n0, bins=rd.stagec.get('bins'), labels=rd.stagec.get('labels'),
                   record_s=round(time.time() - t0, 3))
        if groups is None: groups = r.get('boundary', [])
        if not groups: raise S.CertError('record has no boundary groups')
        if r['eta_scale'] is None: raise S.CertError('record with a boundary but no eta_scale')
        cnt = S.check_record_boundary(rd, r['eta_scale'], C.balls, C.rec_targets, groups, C.cert['max_level'])
        out.update(boundary=cnt)
        out['ok'] = True
    except S.CertError as e:
        out.update(ok=False, reason=str(e))
    except Exception as e:
        out.update(ok=False, reason='exception: %r' % (e,), tb=traceback.format_exc(limit=3))
    out['seconds'] = round(time.time() - t0, 3)
    return out


def check_edge(C, e, groups=None):
    """Edge ball e (SPEC section 10): C1e (run once in the main process, edge_c1), Stage C, its T1 transfers into seed
    balls and the coverage of its sphere."""
    import seedcert as S, edgecert as EC
    t0 = time.time(); out = dict(item='edge', index=e)
    try:
        eb, tubes = C.edges[e]
        if eb is None: raise S.CertError('edge ball %d malformed' % e)
        c1 = (C.cert.get('edge_c1') or {}).get(e)
        if c1 is None: raise S.CertError('edge ball %d: C1e not run' % e)
        out.update(n=eb.n, n_cert=c1['n_cert'], r=eb.r, k=eb.k, c1_boxes=c1['boxes'], c1_s=round(c1['seconds'], 3), graph=c1.get('graph'))
        if not c1['ok']: raise S.CertError(c1['reason'])
        t1 = time.time()
        if eb.exclusion == 'X':                       # return X; the image bound was certified with C1e
            out.update(exclusion='X', image_delta_max=(c1.get('graph') or {}).get('image_delta_max'))
        else:
            sc = S.run_stage_c(eb)
            out.update(stagec_ok=bool(sc.get('ok')), bins=sc.get('bins'), labels=sc.get('labels'), stagec_s=round(time.time() - t1, 3))
            if not sc.get('ok'): raise S.CertError('Stage C failed: %s' % sc.get('reason', 'quartet edge not excluded'))
        t2 = time.time()
        if groups is None: groups = C.cert['edge'][e].get('transfers', [])
        out.update(transfers=EC.check_edge_transfers(eb, C.balls, groups, C.cert['max_level'], edges=C.edges, check=False),
                   c2_s=round(time.time() - t2, 3))
        out['ok'] = True
    except S.CertError as ex:
        out.update(ok=False, reason=str(ex))
    except Exception as ex:
        out.update(ok=False, reason='exception: %r' % (ex,), tb=traceback.format_exc(limit=3))
    out['seconds'] = round(time.time() - t0, 3)
    return out


EDGE_CHUNK = 2000


def check_edge_t(C, e, c, groups):
    """One chunk of edge ball e's sphere boxes: every listed transfer checked (coverage is the ('edge', e) item's)."""
    import seedcert as S, edgecert as EC
    t0 = time.time(); out = dict(item='edgeT', index=[e, c])
    try:
        eb, tubes = C.edges[e]
        if eb is None or tubes is None: raise S.CertError('edge ball %d did not pass C1e' % e)
        out.update(transfers=EC.check_edge_transfers(eb, C.balls, groups, C.cert['max_level'], edges=C.edges, cover=False))
        out['ok'] = True
    except S.CertError as ex:
        out.update(ok=False, reason=str(ex))
    except Exception as ex:
        out.update(ok=False, reason='exception: %r' % (ex,), tb=traceback.format_exc(limit=3))
    out['seconds'] = round(time.time() - t0, 3)
    return out


def run_edge_c1(core, jobs=1):
    """C1e of every edge ball, in this process, with SPEC sections 10.1-10.2's (G) and (D) (the entry's "graph"
    {"R", "sigma"} and "sigma_D"; defaults when absent: R_G = 0.45, sigma = 1.7, sigma_D only required > 0).  The results (verdicts, n_cert, the (G)/(D) values, the certified tube data for T3)
    go into the core that the workers receive."""
    import edgecert as EC, seedcert as S
    res = {}
    pool = None
    if jobs > 1 and core.get('edge'):
        import multiprocessing as mp
        from concurrent.futures import ProcessPoolExecutor
        pool = ProcessPoolExecutor(jobs, mp_context=mp.get_context('spawn'))
    for e, ed in enumerate(core.get('edge', [])):
        try:
            gd = EC.GraphData(ed.get('graph'))
            sD = S._hexf(ed['sigma_D']) if 'sigma_D' in ed else None
            res[e] = EC.certify_edge_wholeball(EC.EdgeBall(ed), ed, gd, sigma_D=sD)      # return ZT: one contraction
            if not res[e]['ok']:
                res[e] = EC.certify_edge_c1(EC.EdgeBall(ed), graph=gd, sigma_D=sD, pool=pool, ed=ed, gspec=ed.get('graph'))
        except S.CertError as ex:
            res[e] = dict(ok=False, n_cert=math.inf, reason='C1e: %s' % ex, boxes=None, seconds=0.0, tubes=None)
        if not res[e]['ok']: res[e]['tubes'] = None
        print('edge ball %d: C1e %s n_cert %.4e (%s boxes, %.1fs) %s %s' % (e, 'ok' if res[e]['ok'] else 'FAIL', res[e]['n_cert'],
              res[e]['boxes'], res[e]['seconds'], res[e].get('graph', ''), res[e]['reason']), flush=True)
    if pool is not None: pool.shutdown()
    core['edge_c1'] = res


def check_fourier(C):
    """F6 in the image: with edge balls, F6 = H(0) of edge ball 0 (edgecert.f6_in_edge); otherwise in the interior of
    record fourier_record (nonempty.check on an atlas holding just that record)."""
    import atlas as AT, nonempty as NE
    t0 = time.time(); out = dict(item='fourier')
    if C.cert.get('edge') and C.cert.get('fourier_record') is None:
        import edgecert as EC
        tubes = C.edges[0][1] if C.edges else None
        eb0 = C.edges[0][0] if C.edges else None
        if getattr(tubes, 'wb', False):
            f6 = bool(((C.cert.get('edge_c1') or {}).get(0) or {}).get('f6'))
        else:
            f6 = tubes is not None and EC.f6_in_edge(tubes)
        out['ok'] = bool(f6 and eb0 is not None and not eb0.q0.any()); out['edge'] = 0
        if not out['ok']: out['reason'] = 'F6 = H(0) not certified in edge ball 0'
        out['seconds'] = round(time.time() - t0, 3)
        return out
    try:
        t = C.cert['fourier_record']
        assert isinstance(t, int) and 0 <= t < len(C.cert['records']), 'fourier_record out of range'
        r = C.cert['records'][t]
        A = AT.Atlas()
        A.add(dict(phi=r['phi'], R=r['R'], R400=AT.corner_census(np.exp(1j * r['phi']))[0]))
        out['ok'] = bool(NE.check(A, maxtry=1)); out['record'] = t
        if not out['ok']: out['reason'] = 'F6 not certified inside record %d' % t
    except Exception as e:
        out.update(ok=False, reason='exception: %r' % (e,))
    out['seconds'] = round(time.time() - t0, 3)
    return out


def check_tao(C):
    """proof/atlas/tao.py's three checks at the certificate's R and label radius."""
    import tao as TAO
    from ballrecord import BallRecord
    t0 = time.time(); out = dict(item='tao')
    try:
        R, lab = C.cert['tao']['R'], C.cert['tao']['label_radius']
        B = BallRecord((2 * math.pi * TAO.K / 3).reshape(36), sigma_try=(2.1, 2.0, 1.9, 1.7), dimT=0)
        ok0 = TAO.exact_spectrum(); ok1 = B.unique_in_ball(R); o = B.stage_c(R, radius=lab)
        out.update(ok=bool(ok0 and ok1 and o.get('ok')), R=R, sigma=B.sigma, bins=o.get('bins'), labels=o.get('labels'))
        if not out['ok']: out['reason'] = 'Tao: spectrum %s isolation %s Stage C %s' % (ok0, ok1, o.get('ok'))
    except Exception as e:
        out.update(ok=False, reason='exception: %r' % (e,))
    out['seconds'] = round(time.time() - t0, 3)
    return out


_C = None


def _init(core):
    global _C
    import warnings; warnings.simplefilter('ignore')
    os.environ.setdefault('OMP_NUM_THREADS', '1')
    _C = Ctx(core)


def _run(item, groups=None):
    kind, idx = item
    if kind == 'seed': return check_seed(_C, idx, groups)
    if kind == 'record': return check_record(_C, idx, groups)
    if kind == 'edge': return check_edge(_C, idx, groups)
    if kind == 'edgeT': return check_edge_t(_C, idx[0], idx[1], groups)
    if kind == 'fourier': return check_fourier(_C)
    return check_tao(_C)


def parse_only(spec, ns, nr, ne=0):
    """'seeds:0-99,records:all,edge:all,fourier,tao' -> work items (default: everything)."""
    if not spec:
        return ([('seed', j) for j in range(ns)] + [('record', s) for s in range(nr)] + [('edge', e) for e in range(ne)]
                + [('fourier', 0), ('tao', 0)])
    items = []
    for part in spec.split(','):
        name, _, rng = part.partition(':')
        n = ns if name == 'seeds' else (ne if name == 'edge' else nr)
        if name in ('fourier', 'tao'): items.append((name, 0)); continue
        if rng in ('', 'all'): idx = range(n)
        else:
            a, _, b = rng.partition('-'); idx = range(int(a), int(b) + 1 if b else int(a) + 1)
        items += [({'seeds': 'seed', 'edge': 'edge'}.get(name, 'record'), i) for i in idx if 0 <= i < n]
    return items


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('certificate')
    ap.add_argument('-j', '--jobs', type=int, default=1)
    ap.add_argument('--receipt', help='write the JSON receipt here')
    ap.add_argument('--only', help="subset, e.g. 'seeds:0-99,records:all,fourier,tao' (a partial run is never a PASS)")
    a = ap.parse_args(argv)
    t0 = time.time()
    bind = binding(a.certificate, dict(only=a.only))
    cert = read_certificate(a.certificate)
    ns, nr = len(cert['seeds']), len(cert['records'])
    ne = len(cert.get('edge', []))
    items = parse_only(a.only, ns, nr, ne)
    core, groups = split(cert)
    del cert
    sel = {i for k, i in items if k == 'edge'}
    items += [k for k in groups if k[0] == 'edgeT' and k[1][0] in sel]
    if ne and any(k in ('seed', 'edge', 'fourier') for k, _ in items): run_edge_c1(core, a.jobs)
    results = []
    if a.jobs > 1:
        import multiprocessing as mp
        from concurrent.futures import ProcessPoolExecutor, as_completed
        # most boxes first (scheduling only; never a verdict)
        items.sort(key=lambda it: -sum(len(g.get('boxes', [])) for g in groups.get(it, []) if isinstance(g, dict)))
        with ProcessPoolExecutor(a.jobs, mp_context=mp.get_context('spawn'), initializer=_init, initargs=(core,)) as pool:
            futs = [pool.submit(_run, it, groups.get(it)) for it in items]
            for k, f in enumerate(as_completed(futs)):
                res = f.result(); results.append(res)
                if not res['ok']: print('FAIL', res['item'], res.get('index', ''), res.get('reason'), flush=True)
                if (k + 1) % 100 == 0: print('%d / %d done  %.0fs' % (k + 1, len(items), time.time() - t0), flush=True)
    else:
        _init(core)
        for it in items:
            res = _run(it, groups.get(it)); results.append(res)
            print('%s %s %s %s  %.1fs' % ('PASS' if res['ok'] else 'FAIL', res['item'], res.get('index', ''),
                                          res.get('reason', ''), res['seconds']), flush=True)
    bad = [r for r in results if not r['ok']]
    seeds = [r for r in results if r['item'] == 'seed']
    ok_seeds = [r for r in seeds if r['ok']]
    full = a.only is None
    summary = dict(
        certificate=os.path.abspath(a.certificate), complete_run=full, items=len(results), failures=len(bad),
        seeds=len(seeds), records=sum(1 for r in results if r['item'] == 'record'),
        edge=[dict(index=r.get('index'), ok=r['ok'], n=r.get('n'), n_cert=r.get('n_cert'), c1_s=r.get('c1_s'), stagec_s=r.get('stagec_s'),
                   c2_s=r.get('c2_s'), labels=r.get('labels'), graph=r.get('graph')) for r in results if r['item'] == 'edge'],
        max_n_cert=max((r['n_cert'] for r in ok_seeds), default=None),
        max_n_ratio=max((r['n_cert'] / r['n'] for r in ok_seeds if r['n'] > 0), default=None),
        transfer_boxes={k: sum(r.get('transfers', {}).get(k, 0) for r in ok_seeds) for k in ('T0', 'T1', 'T1sym', 'T2', 'T3')},
        seed_seconds=dict(total=round(sum(r['seconds'] for r in seeds), 1), max=max((r['seconds'] for r in seeds), default=0),
                          c1_total=round(sum(r.get('c1_s', 0) or 0 for r in seeds), 1),
                          stagec_total=round(sum(r.get('stagec_s', 0) or 0 for r in seeds), 1),
                          c2_total=round(sum(r.get('c2_s', 0) or 0 for r in seeds), 1)),
        wall_seconds=round(time.time() - t0, 1), jobs=a.jobs,
        verdict='PASS' if (full and not bad) else ('FAIL' if bad else 'PARTIAL (no failures in the subset)'))
    summary['failed'] = [dict(item=r['item'], index=r.get('index'), reason=r.get('reason')) for r in bad[:200]]
    if bound_sources() != bind['sources'] or sha256_file(a.certificate) != bind['certificate_sha256']:
        summary['verdict'] = 'FAIL'                       # a source or the certificate changed during the run
        summary['failed'].insert(0, dict(item='binding', index=None, reason='sources or certificate changed during the run'))
    if a.receipt:
        with open(a.receipt, 'w') as f:
            json.dump(dict(binding=bind, summary=summary, results=sorted(results, key=lambda r: (r['item'], r.get('index', 0)))), f, indent=1, default=str)
    print(json.dumps({k: v for k, v in summary.items() if k != 'failed'}, default=str))
    print('SEED ATLAS %s' % summary['verdict'])
    return 0 if summary['verdict'] == 'PASS' else 1


if __name__ == '__main__':
    sys.exit(main())

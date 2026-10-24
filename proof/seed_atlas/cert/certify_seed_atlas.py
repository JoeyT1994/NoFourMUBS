"""Check a whole seed-atlas certificate (proof/seed_atlas/FORMAT.md, "seed-atlas-v1").  Exits nonzero on any failure.

Per seed ball j (seedcert.py, all in Arb):
  (C1)  Mth_j certified invertible; the certified remainder n_cert <= n_j over the k^4 boxes meeting the ball;
  (SC)  stagec.stage_c on P_j + U_j w + nu, ||w|| <= r_j, ||nu|| <= n_j, with rigorous rcol, rF (seedcert.stage_c_args);
  (C2)  every transfer group (T0, T1, T2) passes on every listed box, and the listed boxes cover the sphere ||w|| = r_j.
Per record s: the existing record certification (the calls of proof/atlas/certify.certify_record: sigma, normal bound,
Stage C at the stored R and label radius), then its boundary groups (rec, T1prime with the Krawczyk enclosure of nu)
and the coverage of its shell.
Globally: F6 lies in the interior of record `fourier_record` (proof/atlas/nonempty.py's test), and Tao's record passes
(proof/atlas/tao.py: exact spectrum, isolation, Stage C).

Usage: python certify_seed_atlas.py CERT [-j JOBS] [--receipt receipt.json] [--only seeds:0-99,records:all]
"""
import argparse, gzip, json, math, os, sys, time, traceback
HERE = os.path.dirname(os.path.abspath(__file__))
ATLAS = os.path.abspath(os.path.join(HERE, '../../atlas'))
for p in (HERE, ATLAS):
    if p not in sys.path: sys.path.insert(0, p)
import numpy as np


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
    return dict(seeds=d['seeds'], records=recs, fourier_record=d.get('fourier_record'), max_level=int(d.get('max_level', 12)),
                tao=dict(R=hx(tao.get('R', 0.08)), label_radius=hx(tao.get('label_radius', 0.03))))


# ------------------------------------------------------------------------------------------------ work items
def split(cert):
    """(core, groups): the certificate without the per-item box lists (sent once to each worker), and each seed's
    transfer groups / each record's boundary groups (sent with that item's task)."""
    core = dict(cert)
    core['seeds'] = [{k: v for k, v in s.items() if k != 'transfers'} for s in cert['seeds']]
    core['records'] = [{k: v for k, v in r.items() if k != 'boundary'} for r in cert['records']]
    groups = {('seed', j): s.get('transfers', []) for j, s in enumerate(cert['seeds'])}
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
        cnt = S.check_seed_transfers(ball, C.balls, C.rec_targets, groups, C.cert['max_level'])
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


def check_fourier(C):
    """F6 in the interior of record fourier_record: nonempty.check on an atlas holding just that record."""
    import atlas as AT, nonempty as NE
    t0 = time.time(); out = dict(item='fourier')
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
    if kind == 'fourier': return check_fourier(_C)
    return check_tao(_C)


def parse_only(spec, ns, nr):
    """'seeds:0-99,records:all,fourier,tao' -> work items (default: everything)."""
    if not spec:
        return [('seed', j) for j in range(ns)] + [('record', s) for s in range(nr)] + [('fourier', 0), ('tao', 0)]
    items = []
    for part in spec.split(','):
        name, _, rng = part.partition(':')
        n = ns if name == 'seeds' else nr
        if name in ('fourier', 'tao'): items.append((name, 0)); continue
        if rng in ('', 'all'): idx = range(n)
        else:
            a, _, b = rng.partition('-'); idx = range(int(a), int(b) + 1 if b else int(a) + 1)
        items += [('seed' if name == 'seeds' else 'record', i) for i in idx if 0 <= i < n]
    return items


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('certificate')
    ap.add_argument('-j', '--jobs', type=int, default=1)
    ap.add_argument('--receipt', help='write the JSON receipt here')
    ap.add_argument('--only', help="subset, e.g. 'seeds:0-99,records:all,fourier,tao' (a partial run is never a PASS)")
    a = ap.parse_args(argv)
    t0 = time.time()
    cert = read_certificate(a.certificate)
    ns, nr = len(cert['seeds']), len(cert['records'])
    items = parse_only(a.only, ns, nr)
    core, groups = split(cert)
    del cert
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
        max_n_cert=max((r['n_cert'] for r in ok_seeds), default=None),
        max_n_ratio=max((r['n_cert'] / r['n'] for r in ok_seeds if r['n'] > 0), default=None),
        transfer_boxes={k: sum(r.get('transfers', {}).get(k, 0) for r in ok_seeds) for k in ('T0', 'T1', 'T1sym', 'T2')},
        seed_seconds=dict(total=round(sum(r['seconds'] for r in seeds), 1), max=max((r['seconds'] for r in seeds), default=0),
                          c1_total=round(sum(r.get('c1_s', 0) or 0 for r in seeds), 1),
                          stagec_total=round(sum(r.get('stagec_s', 0) or 0 for r in seeds), 1),
                          c2_total=round(sum(r.get('c2_s', 0) or 0 for r in seeds), 1)),
        wall_seconds=round(time.time() - t0, 1), jobs=a.jobs,
        verdict='PASS' if (full and not bad) else ('FAIL' if bad else 'PARTIAL (no failures in the subset)'))
    summary['failed'] = [dict(item=r['item'], index=r.get('index'), reason=r.get('reason')) for r in bad[:200]]
    if a.receipt:
        with open(a.receipt, 'w') as f:
            json.dump(dict(summary=summary, results=sorted(results, key=lambda r: (r['item'], r.get('index', 0)))), f, indent=1, default=str)
    print(json.dumps({k: v for k, v in summary.items() if k != 'failed'}, default=str))
    print('SEED ATLAS %s' % summary['verdict'])
    return 0 if summary['verdict'] == 'PASS' else 1


if __name__ == '__main__':
    sys.exit(main())

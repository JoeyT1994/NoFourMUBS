#!/usr/bin/env python3
"""Run the anchored-column exclusion (anchored_column_certificate.py) on the open patterns of many sub-balls.

  python anchored_run.py TC_TREE LIST OUT.jsonl WORKERS [--narrow R]

LIST has lines "SUBATLAS SUB PATTERN[,PATTERN...]" (the patterns no certifier or score receipt closed). For each
sub-ball the frozen certifier's normal form, complete cover and pattern list are rebuilt once. For each listed pattern
a tc-pattern-snapshot-v1 file is written to a private temporary directory, the two narrowest columns (phase radius
below R) are taken as anchors, and the other columns are tried as the wide column, narrowest first, until
anchored_column_certificate.check (with the H normal form rebuilt from the record) returns
EXCLUDED_GIVEN_INPUT_ENCLOSURES. One JSON line per pattern: the receipt, or why none was established, with the
bindings audit_select.py checks (sub-atlas and record hashes, the pattern's colours and count, this runner's and the
checker's hashes). The temporary directory is removed automatically.
"""
import gzip, hashlib, json, os, sys, tempfile
from concurrent.futures import ProcessPoolExecutor, as_completed

HERE = os.path.dirname(os.path.abspath(__file__))
M = {}


def a2s(x):
    return x.str(radius=True, more=True)


def mat(m):
    return [[a2s(m[i, j]) for j in range(m.ncols())] for i in range(m.nrows())]


def setup(tc):
    os.environ['TC_ROOT'] = tc
    fn = os.path.join(tc, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path[:0] = [fn, HERE]; os.chdir(fn)
    import run as R, native_cover as NC, moving_symmetry as MS, patches as P
    import anchored_column_certificate as AC
    from flint import ctx
    ctx.prec = 160
    M.update(R=R, NC=NC, MS=MS, P=P, AC=AC)


def job(args):
    sa, sub, patterns, narrow = args
    R, NC, MS, P, AC = M['R'], M['NC'], M['MS'], M['P'], M['AC']
    import numpy as np
    from flint import ctx
    out = []
    try:
        ctx.prec = 160
        if M.get('sa') != sa:                                      # one sub-atlas read per worker and file
            raw = open(sa, 'rb').read()
            M.update(sa=sa, sa_sha=hashlib.sha256(raw).hexdigest(), seeds=json.loads(gzip.decompress(raw))['seeds'])
        rec = M['seeds'][sub]
        b = R.SC.Ball(rec); model = P.normal_form(b, prec=160)
        H = np.exp(1j * MS.numeric(model['Q0']).reshape(6, 6))
        roots = NC.propose_roots(H); cover = NC.complete_cover(b, model, roots)
        prepared, bounds, cliques, steps = NC.contract_patterns(model, roots, cover)
        base = dict(schema='tc-pattern-snapshot-v1', subatlas=os.path.basename(sa), sub=sub, record=rec,
                    record_sha256=hashlib.sha256(json.dumps(rec, sort_keys=True).encode()).hexdigest(), certifier_row=None,
                    model=dict(Q0=[a2s(model['Q0'][i, 0]) for i in range(36)], U=mat(model['U']), H2=mat(model['H2']),
                               X=mat(model['X']), r=a2s(model['r']), tau=a2s(model['tau'])))
        with tempfile.TemporaryDirectory() as tmp:
            for pat in patterns:
                cl = cliques[pat]
                cols = [dict(colour=int(c), v0=[a2s(prepared[c]['v0'][a, 0]) for a in range(6)], T=mat(prepared[c]['T']),
                             epsilon=a2s(bounds[c]['epsilon']), phase_radius=a2s(bounds[c]['phase_radius'])) for c in cl]
                snap = dict(base, pattern=pat, pattern_colours=[int(c) for c in cl], columns=cols)
                path = os.path.join(tmp, 'p%d.json' % pat)
                with open(path, 'w') as f: json.dump(snap, f)
                radii = [float(bounds[c]['phase_radius'].mid()) for c in cl]
                order = sorted(range(6), key=lambda k: radii[k])
                anchors = order[:2]
                res = dict(subatlas=os.path.basename(sa), sub=sub, pattern=pat, record_sha256=base['record_sha256'],
                           status='NOT_ESTABLISHED', reason='fewer than two narrow columns', radii=[round(x, 4) for x in radii])
                bind = dict(subatlas_sha256=M['sa_sha'], runner_sha256=M['RUN_SHA'], patterns_total=len(cliques),
                            pattern_colours=[int(c) for c in cl])
                res.update(bind)
                if radii[anchors[1]] < narrow:
                    res['reason'] = 'no wide column gave a certificate'
                    for col in order[2:]:
                        try:
                            prop = AC.propose(path, col, anchors)
                            r = AC.check(path, prop, rebuild_model=True)
                        except (ValueError, ArithmeticError, ZeroDivisionError) as e:
                            res.setdefault('attempts', []).append([col, str(e)[:80]]); continue
                        if r.get('status') == 'EXCLUDED_GIVEN_INPUT_ENCLOSURES':
                            r['checker_sha256'] = M['AC_SHA']; r['proposal'] = prop
                            r.update(bind); res = r; break
                out.append(res)
    except Exception as e:                                          # noqa: BLE001
        out.append(dict(subatlas=os.path.basename(sa), sub=sub, error='%s: %s' % (type(e).__name__, e)))
    return out


def main():
    a = sys.argv[1:]
    narrow = 0.1
    if '--narrow' in a:
        i = a.index('--narrow'); narrow = float(a[i + 1]); del a[i:i + 2]
    tc, lst, outp, workers = os.path.abspath(a[0]), a[1], os.path.abspath(a[2]), int(a[3])
    jobs = []
    for line in open(lst):
        if not line.strip(): continue
        sa, sub, pats = line.split()
        jobs.append((os.path.abspath(sa), int(sub), [int(x) for x in pats.split(',')], narrow))
    setup(tc)
    M['AC_SHA'] = hashlib.sha256(open(M['AC'].__file__, 'rb').read()).hexdigest()
    M['RUN_SHA'] = hashlib.sha256(open(os.path.abspath(__file__), 'rb').read()).hexdigest()
    ctxf = __import__('multiprocessing').get_context('fork')
    with ProcessPoolExecutor(workers, mp_context=ctxf) as pool, open(outp, 'a') as f:
        for fu in as_completed([pool.submit(job, j) for j in jobs]):
            for r in fu.result(): f.write(json.dumps(r) + '\n')
            f.flush()


if __name__ == '__main__': main()

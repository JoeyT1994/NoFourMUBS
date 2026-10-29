#!/usr/bin/env python3
"""Run the frozen certifier on sub-balls, scoring each pattern before certifying it (EXPERIMENTAL).

  python score_first_run.py TC_TREE GAMMA_LOWER GAMMA_OUT SUBATLAS... [--workers N] [--seconds T]

Exactly split_select.py's run, with one change inside the frozen run_ball: before the certifier's own per-pattern
step (run.final_pattern), the pattern is scored by gamma_test.pattern. If its Arb upper bound on
min(Gamma_F(K), Gamma_F(H*K/sqrt6)) is at most 19/50, or below this cell's Gamma_F(H) lower bound, the pattern is
recorded as DISCHARGED with its bounds and the expensive certification is skipped. Otherwise the frozen step runs
unchanged. The frozen files are not modified; run.final_pattern is wrapped in this process only.

Each sub-ball's row goes to its sub-atlas's .jsonl, as before. A row that is not closed by the certifier alone but has
DISCHARGED patterns also gives a gamma receipt, in gamma_test.py's format, appended to GAMMA_OUT. The auditor checks
that receipt exactly as it checks gamma_test.py's own. The binding is split_select's, with this file as 'split.py'
and gamma_test.py added to the sources.

Resume: a sub-ball that already has a row of any binding is skipped, so a layer never gets two rows for one sub-ball.

Parts (for helper nodes): with TC_PART=i/k only sub-balls with index = i (mod k) are run, and with TC_ROWS_OUT=FILE
their rows go to FILE instead of the layer's .jsonl (rows already in either are skipped). The caller appends FILE to
the layer's .jsonl afterwards, so the layer keeps one writer.
"""
import gzip, hashlib, json, os, signal, sys
from pathlib import Path

HERE = os.path.dirname(os.path.abspath(__file__))
STATE = {}
G = {}                                           # set in main before the pool forks


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def job(sa, i, bid, seconds, g_ball, ball, sa_sha):
    R, gt, glow = G['R'], G['gt'], G['glow']
    STATE.clear(); STATE.update(g_ball=g_ball, n=0)

    def expire(signum, frame): raise TimeoutError('sub-ball time limit of %d s reached' % seconds)
    if seconds: signal.signal(signal.SIGALRM, expire); signal.alarm(int(seconds))
    try:
        row = R.run_ball(sa, i, bid)
    except TimeoutError as e:
        row = dict(index=i, status='NOT ESTABLISHED', binding=bid, reason='TimeoutError: %s' % e)
    finally:
        if seconds: signal.alarm(0)
    rec = None
    pats = row.get('patterns', [])
    if row['status'] == 'NOT ESTABLISHED' and 'patterns_after_column_filter' in row and \
            any(p['status'] == 'DISCHARGED' for p in pats) and 'ctx' in STATE:
        keep = ('fourier', 'ordering', 'g_up_L_hex', 'g_up_K_hex', 'pr_hex', 'dH_hex', 'm_hex', 'E_L_hex',
                'g_centre_L_hex')
        rec = dict(subatlas=os.path.basename(sa), subatlas_sha256=sa_sha, sub=i, seed_sha256=row.get('seed_sha256'),
                   receipt_binding=row['binding'], gamma_sha256=gt, patterns_total=row['patterns_after_column_filter'],
                   closed_by_certifier=sorted(p['number'] for p in pats if p['status'] in ('CERTIFIED', 'EXCLUDED')),
                   ball=ball, g_lo_H=glow[str(ball)], g_lo_H_cell_hex=STATE['ctx']['g_cell'].hex(),
                   open_patterns=sum(p['status'] not in ('CERTIFIED', 'EXCLUDED') for p in pats),
                   patterns=[dict(pattern=p['number'], **{k: p[k] for k in keep if k in p})
                             for p in pats if p['status'] == 'DISCHARGED'],
                   source='score_first_run.py')
        rec['fourier'] = sum(p.get('fourier', False) for p in rec['patterns'])
        rec['ordering'] = sum(p.get('ordering', False) for p in rec['patterns'])
    return sa, row, rec


def main():
    a = sys.argv[1:]
    w, t = 1, 0
    if '--workers' in a:
        i = a.index('--workers'); w = int(a[i + 1]); del a[i:i + 2]
    if '--seconds' in a:
        i = a.index('--seconds'); t = int(a[i + 1]); del a[i:i + 2]
    tc, glow_path, gamma_out = os.path.abspath(a[0]), os.path.abspath(a[1]), os.path.abspath(a[2])
    subatlases = [os.path.abspath(x) for x in a[3:]]
    glow = json.load(open(glow_path))
    fn = os.path.join(tc, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path[:0] = [fn, HERE]; os.chdir(fn)
    import run as R
    import gamma_test as GT
    from fractions import Fraction
    me, gt = sha(__file__), sha(GT.__file__)

    def binding(atlas):
        files = {str(p.relative_to(R.ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in R.source_paths()}
        files['split.py'] = me; files['gamma_test.py'] = gt
        value = dict(schema='tc-native-allk-v1+split', atlas_sha256=sha(atlas), sources=files, precision=160)
        value['id'] = hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
        return value
    R.binding = binding
    frozen = R.final_pattern

    def final_pattern(model, prepared, bounds, cover, clique):
        if 'ctx' not in STATE: STATE['ctx'] = GT.prep(model, STATE['g_ball'])
        number = STATE['n']; STATE['n'] += 1                     # run_ball calls this once per pattern, in order
        res = GT.pattern(STATE['ctx'], prepared, bounds, number, clique)
        if res['fourier'] or res['ordering']:
            out = {k: v for k, v in res.items() if k != 'pattern'}
            out.update(status='DISCHARGED', rule='fourier' if res['fourier'] else 'ordering')
            return out
        return frozen(model, prepared, bounds, cover, clique)
    R.final_pattern = final_pattern

    G.update(R=R, gt=gt, glow=glow)

    jobs, outs = [], {}
    for sa in subatlases:
        out = sa[:-len('.json.gz')] + '.jsonl'
        bid = binding(sa)['id']; sa_sha = sha(sa)
        done = set()
        alt = os.environ.get('TC_ROWS_OUT')
        for rows_file in (out, alt) if alt else (out,):
            if not os.path.exists(rows_file): continue
            for line in open(rows_file):
                try:
                    done.add(json.loads(line)['index'])
                except (ValueError, KeyError):
                    continue
        if alt: out = alt
        doc = json.load(gzip.open(sa, 'rt'))
        ball = doc['info']['split']['parent']; g_ball = Fraction(glow[str(ball)])
        outs[sa] = open(out, 'a')
        part = os.environ.get('TC_PART')
        pi, pk = (int(x) for x in part.split('/')) if part else (0, 1)
        jobs += [(sa, i, bid, t, g_ball, ball, sa_sha) for i in range(len(doc['seeds'])) if i not in done and i % pk == pi]
    from concurrent.futures import ProcessPoolExecutor, as_completed
    ctxf = __import__('multiprocessing').get_context('fork')
    with ProcessPoolExecutor(max_workers=w, mp_context=ctxf) as pool, open(gamma_out, 'a') as g:
        for fu in as_completed([pool.submit(job, *j) for j in jobs]):
            sa, row, rec = fu.result()
            outs[sa].write(json.dumps(row, allow_nan=False) + '\n'); outs[sa].flush()
            if rec: g.write(json.dumps(rec) + '\n'); g.flush()
    for f in outs.values(): f.close()


if __name__ == '__main__': main()

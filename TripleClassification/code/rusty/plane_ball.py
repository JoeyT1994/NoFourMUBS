#!/usr/bin/env python3
"""Run PR #4's whole-cell certifier on every open cell of one ball (no proof role here; receipts for the audit).

  python plane_ball.py BALL WORKERS

Reads the ball's exact open cells from results_live/open_cells.json (every live pass writes it). For each cell not
attempted before it writes the entry (ball, level, cell,
sub-atlas, sub-ball, record hash) and runs pr4_914919b/TripleClassification/code/plane_frontier_certificate.py twice:
a search, then a separate replay of the saved input and proposal, which is the result kept. The certifier builds its
own H record for the exact dyadic cell, proves in Arb that it covers the whole closed cell inside the original ball,
re-proves C1, H and Stage C, rebuilds every K pattern, and excludes or classifies each one. Results go to
plane_v1/b<ball>/<level>_<c0>_<c1>_<c2>_<c3>/ and one line per cell to plane_v1/b<ball>.jsonl.
"""
import gzip, hashlib, json, os, subprocess, sys
from concurrent.futures import ThreadPoolExecutor

B = os.environ.get('TC_B', '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc')     # overridable for local tests
PR = os.environ.get('TC_PLANE_ROOT', B + '/pr4_914919b'); PY = os.environ.get('TC_PY', '/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python')
F = PR + '/TripleClassification/code/plane_frontier_certificate.py'


def run(task):
    entry, d = task
    os.makedirs(d, exist_ok=True)
    e = os.path.join(d, 'entry.json'); json.dump(entry, open(e, 'w'))
    env = dict(os.environ, OMP_NUM_THREADS='1')
    s = subprocess.run([PY, '-W', 'ignore', F, e, '--out', os.path.join(d, 'frontier.json')], capture_output=True, text=True, cwd=PR, env=env)
    res = dict(ball=entry['ball'], level=entry['level'], cell=entry['cell'])
    inp, prop = os.path.join(d, 'frontier.input.json.gz'), os.path.join(d, 'frontier.proposal.json.gz')
    if not (os.path.exists(inp) and os.path.exists(prop)):
        res.update(status='SEARCH_FAILED', error=(s.stderr.strip().splitlines() or [''])[-1][:200]); return res
    r = subprocess.run([PY, '-W', 'ignore', F, e, '--input', inp, '--proposal', prop, '--out', os.path.join(d, 'replay.json')],
                       capture_output=True, text=True, cwd=PR, env=env)
    try:
        rep = json.load(open(os.path.join(d, 'replay.json')))
        res.update(status=rep.get('status'), replay_sha256=hashlib.sha256(open(os.path.join(d, 'replay.json'), 'rb').read()).hexdigest(),
                   reason=rep.get('reason'))
    except (OSError, ValueError):
        res.update(status='REPLAY_FAILED', error=(r.stderr.strip().splitlines() or [''])[-1][:200])
    return res


def main():
    b, w = int(sys.argv[1]), int(sys.argv[2])
    # the ball's exact open cells: from open_cells.py when it ran more recently, else from the live pass
    own, live = B + '/open_cells/b%d.json' % b, B + '/results_live/open_cells.json'
    if os.path.exists(own) and (not os.path.exists(live) or os.path.getmtime(own) > os.path.getmtime(live)):
        x = json.load(open(own)); oc = dict(level=x['level'], cells=x.get('unresolved_cells', []),
                                            layers=[os.path.join(B, q) for q in x['layers']])
    else:
        oc = json.load(open(live))['balls'][str(b)]
    last = oc['layers'][-1]; doc = json.load(gzip.open(last, 'rt'))
    sub_of = {tuple(x['cell']): x['sub'] for x in doc['info']['split']['cover'] if 'sub' in x}
    tasks = []
    def settled(d):
        """Replayed, or the search itself concluded NOT_ESTABLISHED (a mathematical failure: the cell needs refining,
        not a retry). Infrastructure failures (missing files, a moving atlas, a crash) are retried."""
        if os.path.exists(d + '/replay.json'):             # finished only if the replay certified these exact files
            try:
                r = json.load(open(d + '/replay.json')); h = lambda f: hashlib.sha256(open(d + '/' + f, 'rb').read()).hexdigest()
                return (r.get('snapshot_sha256') == h('frontier.input.json.gz') and r.get('proposal_sha256') == h('frontier.proposal.json.gz')
                        and r.get('entry_sha256') == h('entry.json'))
            except (OSError, ValueError): return False
        try: r = json.load(open(d + '/frontier.json'))
        except (OSError, ValueError): return False
        why = r.get('reason') or ''
        return r.get('status') == 'NOT_ESTABLISHED' and not any(k in why for k in ('wrong original atlas', 'No such file', 'Errno', 'checker root'))
    part = os.environ.get('TC_PART')                      # i/k: only cells with index = i (mod k), for several nodes
    pi, pk = (int(x) for x in part.split('/')) if part else (0, 1)
    mine = [c for n, c in enumerate(oc['cells']) if n % pk == pi]
    for c in mine:
        if settled('%s/plane_v1/b%d/%d_%s' % (B, b, oc['level'], '_'.join(map(str, c)))): continue
        sub = sub_of[tuple(c)]
        entry = dict(ball=b, level=oc['level'], cell=list(c), subatlas=os.path.basename(last), sub=sub,
                     record_sha256=hashlib.sha256(json.dumps(doc['seeds'][sub], sort_keys=True).encode()).hexdigest())
        tasks.append((entry, '%s/plane_v1/b%d/%d_%s' % (B, b, oc['level'], '_'.join(map(str, c)))))
    split_first = os.environ.get('TC_SPLIT_FIRST') == '1'   # large cells: skip the whole-cell attempt, prove children
    if not split_first:
        with ThreadPoolExecutor(w) as pool, open('%s/plane_v1/b%d%s.jsonl' % (B, b, '.p%d' % pi if part else ''), 'a') as f:
            for res in pool.map(run, tasks):
                f.write(json.dumps(res) + '\n'); f.flush()
    else:
        for entry, d in tasks:
            os.makedirs(d, exist_ok=True); json.dump(entry, open(os.path.join(d, 'entry.json'), 'w'))
    # cells whose search failed mathematically: prove them as trees of their children (two levels at most)
    failed = []
    for c in mine:
        d = '%s/plane_v1/b%d/%d_%s' % (B, b, oc['level'], '_'.join(map(str, c)))
        if (settled(d) or split_first) and not os.path.exists(d + '/replay.json') and not os.path.exists(d + '/refined.json'): failed.append(d)
    def refine(d):
        subprocess.run([PY, '-W', 'ignore', os.path.join(B, 'plane_refine.py'), PR, d, '--depth', '2', '--workers', '8', '--py', PY,
                        '--seconds', os.environ.get('TC_SEARCH_SECONDS', '600')],
                       cwd=PR, env=dict(os.environ, OMP_NUM_THREADS='1'), capture_output=True)
    with ThreadPoolExecutor(max(1, w // 8)) as pool: list(pool.map(refine, failed))
    # the hash-bound manifest of the certified cells, for audit_select.py --plane (which replays them)
    subprocess.run([PY, '-W', 'ignore', os.path.join(B, 'plane_manifest.py'), PR, '%s/plane_v1/b%d' % (B, b), str(b)], cwd=PR)


if __name__ == '__main__': main()

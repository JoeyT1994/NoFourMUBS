#!/usr/bin/env python3
"""Run PR #4's whole-cell certifier on every open cell of one ball (no proof role here; receipts for the audit).

  python plane_ball.py BALL WORKERS

Reads open_cells/b<ball>.json (open_cells.py). For each unresolved last-level cell it writes the entry (ball, level, cell,
sub-atlas, sub-ball, record hash) and runs pr4_914919b/TripleClassification/code/plane_frontier_certificate.py twice:
a search, then a separate replay of the saved input and proposal, which is the result kept. The certifier builds its
own H record for the exact dyadic cell, proves in Arb that it covers the whole closed cell inside the original ball,
re-proves C1, H and Stage C, rebuilds every K pattern, and excludes or classifies each one. Results go to
plane_v1/b<ball>/<level>_<c0>_<c1>_<c2>_<c3>/ and one line per cell to plane_v1/b<ball>.jsonl.
"""
import gzip, hashlib, json, os, subprocess, sys
from concurrent.futures import ThreadPoolExecutor

B = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'
PR = B + '/pr4_914919b'; PY = '/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python'
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
    oc = json.load(open(B + '/open_cells/b%d.json' % b))
    last = os.path.join(B, oc['layers'][-1]); doc = json.load(gzip.open(last, 'rt'))
    sub_of = {tuple(x['cell']): x['sub'] for x in doc['info']['split']['cover'] if 'sub' in x}
    tasks = []
    for c in oc.get('unresolved_cells', []):
        sub = sub_of[tuple(c)]
        entry = dict(ball=b, level=oc['level'], cell=list(c), subatlas=os.path.basename(last), sub=sub,
                     record_sha256=hashlib.sha256(json.dumps(doc['seeds'][sub], sort_keys=True).encode()).hexdigest())
        tasks.append((entry, '%s/plane_v1/b%d/%d_%s' % (B, b, oc['level'], '_'.join(map(str, c)))))
    with ThreadPoolExecutor(w) as pool, open('%s/plane_v1/b%d.jsonl' % (B, b), 'a') as f:
        for res in pool.map(run, tasks):
            f.write(json.dumps(res) + '\n'); f.flush()
    # the hash-bound manifest of the certified cells, for audit_select.py --plane (which replays them)
    subprocess.run([PY, '-W', 'ignore', os.path.join(B, 'plane_manifest.py'), PR, '%s/plane_v1/b%d' % (B, b), str(b)], cwd=PR)


if __name__ == '__main__': main()

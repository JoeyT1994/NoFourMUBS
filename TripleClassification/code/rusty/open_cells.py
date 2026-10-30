#!/usr/bin/env python3
"""Exact open cells of every open ball after all rules (no proof role; a work list).

  python open_cells.py OUT_DIR [BALL...]      (default: the balls results_live/balls.tsv lists as open)

For each ball: its selective chain down to the last layer whose receipts cover every sub-ball (as assemble.py does),
audited by audit_select.py --report-open with every rule. Writes OUT_DIR/b<ball>.json (the audit's JSON: status,
last level, unresolved cells, or the failure) and OUT_DIR/summary.txt (one line per ball, fewest open cells first).
"""
import gzip, json, os, subprocess, sys
from concurrent.futures import ThreadPoolExecutor

B = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'; G = B + '/selective'
C = B + '/main_split3/TripleClassification/code'; PY = '/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python'
L2 = ','.join([B + '/main_split/TripleClassification/code/split.py', B + '/main_split2/TripleClassification/code/split.py', C + '/split.py'])
DEEP = ','.join(C + '/' + n for n in ('split_select.py', 'tree_build.py', 'tree_build_v0.py', 'tree_build_v1.py', 'tree_build_v2.py',
                                      'score_first_run.py', 'score_first_run_v0.py', 'score_first_run_v1.py'))
sha = lambda p: subprocess.run(['sha256sum', p], capture_output=True, text=True).stdout[:64]


def layers(b):
    for d in ('selective', 'selective2'):
        if os.path.exists('%s/%s/parents/b%d_l2.json.gz' % (B, d, b)): chain = '%s/%s' % (B, d)
    out, k = [], 2
    while True:
        sa = '%s/%s/b%d_l%d.json.gz' % (chain, 'parents' if k == 2 else 'children' if k == 3 else 'l%d' % k, b, k)
        if not (os.path.exists(sa) and os.path.exists(sa[:-8] + '.jsonl')): break
        n = len(json.load(gzip.open(sa, 'rt'))['seeds']); have = set()
        for line in open(sa[:-8] + '.jsonl'):
            try: have.add(json.loads(line)['index'])
            except (ValueError, KeyError): pass
        if not have >= set(range(n)): break
        out.append(sa); k += 1
    return out


def one(b):
    L = layers(b)
    S = [L2, C + '/split_mixed.py,' + DEEP][:len(L)] + [DEEP] * max(0, len(L) - 2)
    graph = sorted(G + '/graph_v1/' + x for x in os.listdir(G + '/graph_v1') if x.startswith('b%d.' % b) and x.endswith('.jsonl'))
    anc = [p for p in (G + '/anchored_v1/b%d.jsonl' % b, G + '/anchored_v1/b%d.chain.jsonl' % b) if os.path.exists(p)]
    cmd = [PY, '-W', 'ignore', C + '/audit_select.py', '--root', B + '/frozen_bd87c69', '--index', str(b), '--layers'] + L + \
          ['--scripts'] + S + ['--gamma', G + '/gamma_v3/b%d.jsonl' % b, '--gamma-sha', sha(G + '/gamma_test.py'),
          '--gamma-rules', 'fourier,ordering,anchored,graph', '--gamma-lower', G + '/gamma_lower.json',
          '--gamma-lower-sha', sha(G + '/gamma_lower.json'), '--anchored'] + anc + \
          ['--anchored-sha', sha(C + '/anchored_column_certificate.py'), '--anchored-runner-sha', sha(C + '/anchored_run.py'),
           '--graph'] + graph + ['--graph-dir', C + '/hardball', '--graph-sha', sha(C + '/hardball/certify_graph.py'),
           '--graph-runner-sha', sha(C + '/graph_run.py'), '--report-open']
    p = subprocess.run(cmd, capture_output=True, text=True, env=dict(os.environ, OMP_NUM_THREADS='1'))
    try: r = json.loads((p.stdout.strip().splitlines() or ['{}'])[-1])
    except ValueError: r = {}
    if p.returncode or 'status' not in r: r = dict(status='AUDIT_FAILED', error=(p.stderr.strip().splitlines() or [''])[-1][:300])
    r.update(ball=b, layers=[os.path.relpath(x, B) for x in L])
    r.pop('discharged', None)
    return r


def main():
    out = sys.argv[1]; os.makedirs(out, exist_ok=True)
    balls = [int(x) for x in sys.argv[2:]] or [int(l.split('\t')[0]) for l in open(B + '/results_live/balls.tsv') if l.split('\t')[2] == 'open']
    with ThreadPoolExecutor(len(balls)) as pool:
        res = list(pool.map(one, balls))
    for r in res: json.dump(r, open(os.path.join(out, 'b%d.json' % r['ball']), 'w'))
    key = lambda r: (r['status'] != 'OPEN_CELLS' and r['status'] != 'GEOMETRY_AND_RECEIPTS_VERIFIED', len(r.get('unresolved_cells', [])))
    with open(os.path.join(out, 'summary.txt'), 'w') as f:
        for r in sorted(res, key=key):
            f.write('%d %s level %s open %d %s\n' % (r['ball'], r['status'], r.get('level'), len(r.get('unresolved_cells', [])), r.get('error', '')))


if __name__ == '__main__': main()

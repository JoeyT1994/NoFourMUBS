#!/usr/bin/env python3
"""Where each open ball stands, after every proof we have: one audit per ball, one line per ball (no proof role).

  python ball_progress.py OUT_DIR BALL...

For each ball: its selective chain down to the last layer whose receipts cover every sub-ball (as assemble.py does),
audited by audit_select.py --report-open with every rule whose inputs exist and, when the ball has one, its whole-cell
manifest (replayed through the job replay cache, on the plane checker's tree). Each cell still open is labelled from
its whole-cell directory:
  proved, not yet in the manifest | failed after splitting | search failed, splitting pending | not yet run
Writes OUT_DIR/b<ball>.json (status, level, cells with labels) and OUT_DIR/progress.tsv (one line per ball).
Paths are overridable by environment variables for local tests.
"""
import collections, gzip, json, os, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor

E = os.environ.get
B = E('TC_B', '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'); G = B + '/selective'
C = E('TC_CODE', B + '/main_split3/TripleClassification/code'); PY = E('TC_PY', '/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python')
TC = E('TC_TREE', B + '/frozen_bd87c69'); PR = E('TC_PLANE_ROOT', B + '/pr4_914919b')
L2 = E('TC_L2', ','.join([B + '/main_split/TripleClassification/code/split.py', B + '/main_split2/TripleClassification/code/split.py', C + '/split.py']))
DEEP = E('TC_DEEP', ','.join(C + '/' + n for n in ('split_select.py', 'tree_build.py', 'tree_build_v0.py', 'tree_build_v1.py',
                                                    'tree_build_v2.py', 'score_first_run.py', 'score_first_run_v0.py', 'score_first_run_v1.py')))
L3 = E('TC_L3', C + '/split_mixed.py,' + DEEP)
CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')
def sha(p): return __import__('hashlib').sha256(open(p, 'rb').read()).hexdigest()


def status(p):
    try: return json.load(open(p)).get('status')
    except (OSError, ValueError): return None


def label(d):
    if status(d + '/replay.json') in CERT or status(d + '/refined.json') in CERT: return 'proved, not yet in the manifest'
    if status(d + '/refined.json') == 'NOT_ESTABLISHED': return 'failed after splitting'
    if status(d + '/frontier.json') == 'NOT_ESTABLISHED': return 'search failed, splitting pending'
    return 'not yet run'


def layers(b):
    chain = None
    for d in ('selective', 'selective2'):
        if os.path.exists('%s/%s/parents/b%d_l2.json.gz' % (B, d, b)): chain = '%s/%s' % (B, d)
    out, k = [], 2
    while chain:
        sa = '%s/%s/b%d_l%d.json.gz' % (chain, 'parents' if k == 2 else 'children' if k == 3 else 'l%d' % k, b, k)
        if not (os.path.exists(sa) and os.path.exists(sa[:-8] + '.jsonl')): break
        n = len(json.load(gzip.open(sa, 'rt'))['seeds']); have = set()
        for line in open(sa[:-8] + '.jsonl'):
            try: have.add(json.loads(line)['index'])
            except (ValueError, KeyError): pass
        if not have >= set(range(n)): break
        out.append(sa); k += 1
    return out


def one(b, out):
    t0 = time.time(); L = layers(b)
    S = [L2, L3][:len(L)] + [DEEP] * max(0, len(L) - 2)
    rules, extra = [], []
    gf = G + '/gamma_v3/b%d.jsonl' % b
    if os.path.exists(gf) and os.path.exists(G + '/gamma_test.py'):
        rules += ['fourier', 'ordering']
        extra += ['--gamma', gf, '--gamma-sha', sha(G + '/gamma_test.py'), '--gamma-lower', G + '/gamma_lower.json',
                  '--gamma-lower-sha', sha(G + '/gamma_lower.json')]
    anc = [p for p in (G + '/anchored_v1/b%d.jsonl' % b, G + '/anchored_v1/b%d.chain.jsonl' % b) if os.path.exists(p)]
    if anc:
        rules.append('anchored'); extra += ['--anchored'] + anc + ['--anchored-sha', sha(C + '/anchored_column_certificate.py'),
                                                                   '--anchored-runner-sha', sha(C + '/anchored_run.py')]
    gdir = G + '/graph_v1'
    graph = sorted(gdir + '/' + x for x in os.listdir(gdir) if x.startswith('b%d.' % b) and x.endswith('.jsonl')) if os.path.isdir(gdir) else []
    if graph:
        rules.append('graph'); extra += ['--graph'] + graph + ['--graph-dir', C + '/hardball', '--graph-sha', sha(C + '/hardball/certify_graph.py'),
                                                               '--graph-runner-sha', sha(C + '/graph_run.py')]
    if rules: extra += ['--gamma-rules', ','.join(rules)]
    man = B + '/plane_v1/b%d/manifest.json' % b; root = TC
    if os.path.exists(man):
        extra += ['--plane', man, '--plane-cache', B + '/plane_v1/b%d/replay_cache.progress.json' % b]; root = PR   # own file: reads all
    cmd = [PY, '-W', 'ignore', C + '/audit_select.py', '--root', root, '--index', str(b), '--layers'] + L + ['--scripts'] + S + extra + ['--report-open']
    p = subprocess.run(cmd, capture_output=True, text=True, env=dict(os.environ, OMP_NUM_THREADS='1'))
    try: r = json.loads((p.stdout.strip().splitlines() or ['{}'])[-1])
    except ValueError: r = {}
    res = dict(ball=b, seconds=round(time.time() - t0), layers=[os.path.basename(x) for x in L])
    if r.get('status') == 'GEOMETRY_AND_RECEIPTS_VERIFIED':
        res.update(status='CLOSED', plane=(r.get('gamma') or {}).get('plane', 0))
    elif r.get('status') == 'OPEN_CELLS':
        lv = r['level']; cells = []
        for c in r['unresolved_cells']:
            cells.append(dict(level=lv, cell=c, label=label('%s/plane_v1/b%d/%d_%s' % (B, b, lv, '_'.join(map(str, c))))))
        res.update(status='OPEN', level=lv, cells=cells, plane=(r.get('gamma') or {}).get('plane', 0))
    else:
        res.update(status='AUDIT_ERROR', error=((p.stderr.strip().splitlines() or [''])[-1])[:200])
    json.dump(res, open(os.path.join(out, 'b%d.json' % b), 'w'))
    return res


def main():
    out = sys.argv[1]; balls = [int(x) for x in sys.argv[2:]]; os.makedirs(out, exist_ok=True)
    with ThreadPoolExecutor(max(1, len(balls))) as pool:
        res = list(pool.map(lambda b: one(b, out), balls))
    lines = ['ball\tstatus\tlevel\topen_cells\tproved_not_in_manifest\tfailed_after_splitting\tsplitting_pending\tnot_yet_run\tcells_closed_by_plane\taudit_seconds\terror']
    for r in sorted(res, key=lambda r: (r['status'] != 'CLOSED', len(r.get('cells', [])))):
        c = collections.Counter(x['label'] for x in r.get('cells', []))
        lines.append('\t'.join(map(str, [r['ball'], r['status'], r.get('level', ''), len(r.get('cells', [])), c['proved, not yet in the manifest'],
                                         c['failed after splitting'], c['search failed, splitting pending'], c['not yet run'],
                                         r.get('plane', ''), r['seconds'], r.get('error', '')])))
    open(os.path.join(out, 'progress.tsv.new'), 'w').write('\n'.join(lines) + '\n'); os.replace(os.path.join(out, 'progress.tsv.new'), os.path.join(out, 'progress.tsv'))
    print('\n'.join(lines))


if __name__ == '__main__': main()

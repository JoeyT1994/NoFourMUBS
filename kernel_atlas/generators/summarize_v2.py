"""Summarise the whole-atlas run of the v2 tangent-test mirror (check_v2.py --out, run_v2_rusty.sh).

Usage: python3 kernel_atlas/generators/summarize_v2.py <dir with w*.jsonl> [--out SUMMARY.md]
Compares, per Record, which edge tests the label graph needs (direct, support, joint, or fail) with the v1 kernel
labels of the atlas survey (explorations/atlas_survey/results/full/survey_all.jsonl.gz).
"""
import collections, glob, gzip, json, os, statistics, sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))


def main():
    d = sys.argv[1]
    out = sys.argv[sys.argv.index('--out') + 1] if '--out' in sys.argv else None
    rows = {}
    for p in glob.glob(os.path.join(d, 'w*.jsonl')):
        for l in open(p):
            if l.strip():
                r = json.loads(l); rows[r['idx']] = r
    v1 = {r['idx']: r for r in map(json.loads, gzip.open(os.path.join(
        ROOT, 'explorations/atlas_survey/results/full/survey_all.jsonl.gz'), 'rt'))}
    ok = [r for r in rows.values() if 'error' not in r]
    err = [r for r in rows.values() if 'error' in r]
    order = ['direct', 'support', 'joint', 'fail']
    need2 = collections.Counter(r['need'] for r in ok)
    need1 = collections.Counter(v1[r['idx']].get('edge_tests_needed', 'fail') for r in ok if r['idx'] in v1)
    trans = collections.Counter((v1[r['idx']].get('edge_tests_needed', 'fail'), r['need']) for r in ok if r['idx'] in v1)
    surv2 = [r['survivors'] for r in ok]
    surv1 = [v1[r['idx']]['survivors'] for r in ok if r['idx'] in v1 and 'survivors' in v1[r['idx']]]
    tt2 = [r['tangent_tests'] for r in ok]
    dt2 = [r['direct_tests'] for r in ok]
    tt1 = [v1[r['idx']]['tangent_tests'] for r in ok if r['idx'] in v1 and 'tangent_tests' in v1[r['idx']]]
    dt1 = [v1[r['idx']]['direct_tests'] for r in ok if r['idx'] in v1 and 'direct_tests' in v1[r['idx']]]
    rej = collections.Counter()
    for r in ok:
        rej.update(r['rej'])
    L = ['# Whole-atlas run of the v2 tangent test (exact mirror)', '',
         'Records: %d processed, %d errors (of 12,021).' % (len(rows), len(err)), '',
         '| edge tests needed | v1 kernel labels | v2 labels |', '|---|---|---|']
    for k in order:
        L.append('| %s | %d | %d |' % (k, need1.get(k, 0), need2.get(k, 0)))
    L += ['', '| v1 → v2 | Records |', '|---|---|']
    for (a, b), cnt in sorted(trans.items(), key=lambda kv: (order.index(kv[0][0]), order.index(kv[0][1]))):
        L.append('| %s → %s | %d |' % (a, b, cnt))
    L += ['', '| per Record (median) | v1 | v2 |', '|---|---|---|',
          '| depth-0 survivors | %d | %d |' % (statistics.median(surv1), statistics.median(surv2)),
          '| direct tests | %d | %d |' % (statistics.median(dt1), statistics.median(dt2)),
          '| tangent tests | %d | %d |' % (statistics.median(tt1), statistics.median(tt2)),
          '', 'v2 rejections by test (all Records): %s.' % dict(rej)]
    fails = sorted(r['idx'] for r in ok if r['need'] == 'fail')
    L += ['', 'Records that still fail (%d): %s' % (len(fails), ', '.join(map(str, fails[:80])) +
                                                  (' …' if len(fails) > 80 else ''))]
    if err:
        L += ['', 'Errors: %s' % ', '.join('%d (%s)' % (r['idx'], r['error'][:60]) for r in err[:20])]
    text = '\n'.join(L) + '\n'
    print(text)
    if out:
        open(out, 'w').write(text)


if __name__ == '__main__':
    main()

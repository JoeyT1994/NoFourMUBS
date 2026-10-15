"""Summarise survey results: python3 summarize.py <results dir> [--csv <file>].

Reads every *.jsonl in the directory, prints a Markdown report (also written to <dir>/SUMMARY.md), and optionally
writes a flat CSV for plotting.
"""
import argparse, csv, glob, json, math, os, statistics as stt
from collections import Counter

N_ATLAS = 12021


def load(d):
    rows = {}
    for f in glob.glob(os.path.join(d, '*.jsonl')):
        for line in open(f):
            try:
                r = json.loads(line)
                rows[r['idx']] = r
            except Exception:                                      # noqa: BLE001
                pass
    return [rows[k] for k in sorted(rows)]


def q(xs, p):
    xs = sorted(xs)
    return xs[min(len(xs) - 1, int(p * len(xs)))] if xs else float('nan')


def flat(r):
    e = {k: r.get(k) for k in ('idx', 'R', 'label_radius', 'd2', 'd3', 'direct_tests', 'tangent_tests', 'survivors',
                               'labels', 'label_smax', 'label_tests', 'edge_tests_needed', 'no_third_mub', 'sigma',
                               'sigma_cert', 'sigma_min_diag', 'e0', 'j1', 'n_rad', 'r_rad', 'est_kernel_s', 'wall_s')}
    ro = r.get('roots') or {}
    e.update(roots_n=ro.get('n'), roots_sigma_min=ro.get('sigma_min'), roots_min_sep=ro.get('min_sep'),
             delta3=ro.get('delta3'))
    for g in ('direct', 'support', 'joint'):
        x = r.get('edges_%s' % g) or {}
        e['O_%s' % g], e['steps_%s' % g] = x.get('O'), x.get('steps')
    e['error'] = r.get('error')
    return e


def report(rows):
    ok = [r for r in rows if 'error' not in r]
    L = ['# Atlas survey summary', '', '%d Records surveyed (%d with errors) of %d.' % (len(rows), len(rows) - len(ok), N_ATLAS), '']
    if not ok:
        return '\n'.join(L)
    need = Counter(r['edge_tests_needed'] for r in ok)
    L += ['## Edge tests needed for "no two cliques" (kernel labels)', '', '| tests | Records | share |', '|---|---|---|']
    for k in ('direct', 'support', 'joint', 'fail'):
        L.append('| %s | %d | %.1f%% |' % (k, need.get(k, 0), 100 * need.get(k, 0) / len(ok)))
    t3 = Counter(r.get('no_third_mub') for r in ok)
    L += ['', '## Tier 1 (no third MUB anywhere in the ball)', '',
          'no third MUB: %d, third MUB not excluded: %d, undecided: %d.' % (t3.get(True, 0), t3.get(False, 0),
                                                                          t3.get(None, 0)), '']
    sc = Counter(r.get('sigma_cert') for r in ok)
    L += ['## Normal bound', '', 'exact sigma certificate passes: %d, fails: %d, not run: %d.' % (
        sc.get(True, 0), sc.get(False, 0), sc.get(None, 0)), '']
    est = [r['est_kernel_s'] for r in ok]
    tot = stt.mean(est) * N_ATLAS / 3600
    L += ['## Estimated kernel cost per Record (model calibrated on Record 100)', '',
          '| mean | median | p90 | p99 | max | extrapolated total |', '|---|---|---|---|---|---|',
          '| %.0f s | %.0f s | %.0f s | %.0f s | %.0f s | %.0f CPU-hours |' % (stt.mean(est), stt.median(est), q(est, .9),
                                                                         q(est, .99), max(est), tot), '']
    L += ['## Workload', '', '| quantity | median | p90 | max |', '|---|---|---|---|']
    for k in ('direct_tests', 'tangent_tests', 'survivors', 'labels', 'label_tests'):
        xs = [r[k] for r in ok]
        L.append('| %s | %d | %d | %d |' % (k, stt.median(xs), q(xs, .9), max(xs)))
    L += ['', '## By radius R', '', '| R | Records | median est. s | direct-only share | no third MUB share |',
          '|---|---|---|---|---|']
    for R in sorted({r['R'] for r in ok}):
        g = [r for r in ok if r['R'] == R]
        L.append('| %s | %d | %.0f | %.0f%% | %.0f%% |' % (R, len(g), stt.median([r['est_kernel_s'] for r in g]),
                 100 * sum(r['edge_tests_needed'] == 'direct' for r in g) / len(g),
                 100 * sum(r.get('no_third_mub') is True for r in g) / len(g)))
    # structure: does hardness concentrate near the H2 locus (small d2) or near 3x3 blocks (small d3)?
    L += ['', '## Structure: distance to H2-reducibility (d2) and to a 3x3 Hadamard block (d3)', '',
          '| d2 bin | Records | median est. s | needs more than direct | third MUB not excluded |', '|---|---|---|---|---|']
    bins = [(0, 1e-3), (1e-3, 1e-2), (1e-2, 3e-2), (3e-2, 1e-1), (1e-1, 1.0)]
    for lo, hi in bins:
        g = [r for r in ok if lo <= r['d2'] < hi]
        if g:
            L.append('| [%g, %g) | %d | %.0f | %.0f%% | %.0f%% |' % (lo, hi, len(g),
                     stt.median([r['est_kernel_s'] for r in g]),
                     100 * sum(r['edge_tests_needed'] != 'direct' for r in g) / len(g),
                     100 * sum(r.get('no_third_mub') is False for r in g) / len(g)))
    L += ['', '| d3 bin | Records | median est. s | needs more than direct | third MUB not excluded |', '|---|---|---|---|---|']
    for lo, hi in [(0, 1e-2), (1e-2, 3e-2), (3e-2, 1e-1), (1e-1, 3e-1), (3e-1, 2.0)]:
        g = [r for r in ok if lo <= r['d3'] < hi]
        if g:
            L.append('| [%g, %g) | %d | %.0f | %.0f%% | %.0f%% |' % (lo, hi, len(g),
                     stt.median([r['est_kernel_s'] for r in g]),
                     100 * sum(r['edge_tests_needed'] != 'direct' for r in g) / len(g),
                     100 * sum(r.get('no_third_mub') is False for r in g) / len(g)))
    rn = Counter((r.get('roots') or {}).get('n') for r in ok)
    L += ['', '## Torus roots at the centre (Newton from labels)', '', 'count distribution: %s' %
          ', '.join('%s: %d' % (k, v) for k, v in sorted(rn.items(), key=lambda kv: (kv[0] is None, kv[0] or 0))), '']
    smin = [r['roots']['sigma_min'] for r in ok if (r.get('roots') or {}).get('sigma_min') is not None]
    if smin:
        L.append('smallest Jacobian singular value: median %.3g, p10 %.3g, min %.3g.' % (stt.median(smin), q(smin, .1),
                                                                                         min(smin)))
    d3c = [r['roots']['delta3'] for r in ok if (r.get('roots') or {}).get('delta3') is not None]
    if d3c:
        L += ['', '## Distance of the centre to a MUB triple (delta3: best 6 unbiased vectors, worst pairwise |<x,y>|/6)', '',
              '| delta3 bin | Records | median est. s | needs more than direct | kernel graph fails |', '|---|---|---|---|---|']
        for lo, hi in [(0, 1e-6), (1e-6, 0.05), (0.05, 0.1), (0.1, 0.2), (0.2, 0.4), (0.4, 1.01)]:
            g = [r for r in ok if (r.get('roots') or {}).get('delta3') is not None and lo <= r['roots']['delta3'] < hi]
            if g:
                L.append('| [%g, %g) | %d | %.0f | %.0f%% | %.0f%% |' % (lo, hi, len(g),
                         stt.median([r['est_kernel_s'] for r in g]),
                         100 * sum(r['edge_tests_needed'] != 'direct' for r in g) / len(g),
                         100 * sum(r['edge_tests_needed'] == 'fail' for r in g) / len(g)))
    err = Counter(r['error'][:80] for r in rows if 'error' in r)
    if err:
        L += ['', '## Errors', ''] + ['- %d × `%s`' % (v, k) for k, v in err.most_common()]
    return '\n'.join(L) + '\n'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('dir')
    ap.add_argument('--csv', default=None)
    a = ap.parse_args()
    rows = load(a.dir)
    rep = report(rows)
    print(rep)
    with open(os.path.join(a.dir, 'SUMMARY.md'), 'w') as f:
        f.write(rep)
    if a.csv:
        os.makedirs(os.path.dirname(os.path.abspath(a.csv)), exist_ok=True)
        fl = [flat(r) for r in rows]
        with open(a.csv, 'w', newline='') as f:
            w = csv.DictWriter(f, fieldnames=list(fl[0].keys()))
            w.writeheader()
            w.writerows(fl)


if __name__ == '__main__':
    main()

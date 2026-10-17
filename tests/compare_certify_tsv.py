"""Compare two per-Record TSVs of certify.py --tsv (plain or .gz; the first may be several chunk files).

  python3 tests/compare_certify_tsv.py REFERENCE [REFERENCE ...] RUN [--subset] [--strict]

Every Record of RUN must be in REFERENCE (and, without --subset, the two sets must be equal) with the same verdict.
Every other column except clique_steps, wall_s and cpu_s (r_H, n, sigma as exact hex; bin counts and SHA-1s per
level; labels; O/U edges before and after the joint filter; boundary leaves and boxes) is compared too: differences
are listed, and with --strict they fail the comparison.  Exits nonzero on failure.
"""
import gzip, sys

SKIP = {'clique_steps', 'wall_s', 'cpu_s'}


def read(paths):
    rows, cols = {}, None
    for p in paths:
        for line in (gzip.open(p, 'rt') if p.endswith('.gz') else open(p)):
            line = line.rstrip('\n')
            if line.startswith('#'): cols = line[1:].split('\t'); continue
            v = dict(zip(cols, line.split('\t'))); s = int(v['record'])
            assert s not in rows, 'record %d twice' % s
            rows[s] = v
    return rows, cols


def summary(name, R):
    cpu = sum(float(v['cpu_s']) for v in R.values()); wall = sum(float(v['wall_s']) for v in R.values())
    steps = max((int(v['clique_steps'] or 0), s) for s, v in R.items())
    top = sorted(((float(v['cpu_s']), s) for s, v in R.items()), reverse=True)[:5]
    print('%s: %d Records, %d PASS; CPU %.0f s (%.2f CPU-hours), wall %.0f s summed over Records; max clique-search '
          'steps %d (Record %d); costliest %s' % (name, len(R), sum(v['verdict'] == 'PASS' for v in R.values()), cpu,
          cpu / 3600, wall, steps[0], steps[1], ', '.join('%d (%.0f s)' % (s, c) for c, s in top)))


def main():
    flags = {a for a in sys.argv[1:] if a.startswith('--')}; paths = [a for a in sys.argv[1:] if not a.startswith('--')]
    ref, cols = read(paths[:-1]); run, cols2 = read(paths[-1:])
    assert cols == cols2, 'different columns'
    same = [c for c in cols if c not in SKIP]
    bad = 0
    missing = sorted(set(run) - set(ref)); extra = sorted(set(ref) - set(run))
    if missing: bad += 1; print('Records not in the reference:', missing[:20])
    if extra and '--subset' not in flags: bad += 1; print('%d reference Records not in the run' % len(extra))
    common = sorted(set(run) & set(ref))
    verdict = [s for s in common if ref[s]['verdict'] != run[s]['verdict']]
    if verdict: bad += 1; print('VERDICT DIFFERS for Records', verdict[:20])
    diff = [s for s in common if any(ref[s][c] != run[s][c] for c in same)]
    print('%d common Records: %d identical in every compared column (%s), %d differ'
          % (len(common), len(common) - len(diff), ', '.join(same), len(diff)))
    for s in diff[:10]: print('  Record %d:' % s, [(c, ref[s][c], run[s][c]) for c in same if ref[s][c] != run[s][c]])
    if diff and '--strict' in flags: bad += 1
    summary('reference', {s: ref[s] for s in common}); summary('run', {s: run[s] for s in common})
    print('COMPARISON PASS' if not bad else 'COMPARISON FAIL')
    sys.exit(1 if bad else 0)


if __name__ == '__main__':
    main()

"""Write the build-log summary (markdown) from the exported certificate and the slurm accounting.
Usage: build_log.py CERT.json.gz OUT.md [JOBID ...]"""
import gzip, json, subprocess, sys
from collections import Counter
import numpy as np

fh = lambda s: float.fromhex(s) if isinstance(s, str) else float(s)


def core_hours(jobs):
    out = []
    for j in jobs:
        try:
            s = subprocess.run(['sacct', '-j', str(j), '-X', '-n', '-P', '-o', 'JobID,AllocCPUS,ElapsedRaw,State'],
                               capture_output=True, text=True).stdout.strip().splitlines()
            for line in s:
                jid, cpus, el, st = line.split('|')
                out.append((jid, int(cpus), int(el), st))
        except Exception as e:
            out.append((str(j), 0, 0, 'sacct unavailable: %r' % e))
    return out


def main(cert, outp, jobs):
    d = json.load(gzip.open(cert, 'rt'))
    S = d['seeds']; recs = d['records']
    L = ['# Seed atlas build log', '', 'Certificate `%s` (format %s).' % (cert.rsplit('/', 1)[-1], d['format']), '']
    rad = Counter((fh(s['r']), fh(s['label_radius']), s['k']) for s in S)
    L += ['## Seed balls: %d' % len(S), '', '| r | label radius | k | balls |', '|---|---|---|---|']
    L += ['| %g | %g | %d | %d |' % (r, l, k, c) for (r, l, k), c in sorted(rad.items(), key=lambda z: (-z[0][0], z[0][1], z[0][2]))]
    kinds = Counter(); groups = Counter(); nb = []
    for s in S:
        n = 0
        for g in s['transfers']:
            k = g['kind']
            if k == 'T1' and sorted(g['rows']) == [0, 1, 2] and sorted(g['cols']) == [0, 1, 2]: k = 'T1 (corner symmetry)'
            kinds[k] += len(g['boxes']); groups[k] += 1; n += len(g['boxes'])
        nb.append(n)
    L += ['', '## Transfers (seed spheres)', '', '| kind | boxes | groups |', '|---|---|---|']
    L += ['| %s | %d | %d |' % (k, kinds[k], groups[k]) for k in sorted(kinds)]
    L += ['', 'Boxes per ball: median %d, max %d, total %d.' % (np.median(nb), max(nb), sum(nb))]
    L += ['', '## Full-matrix records: %d' % len(recs), '']
    for i, r in enumerate(recs):
        b = r['boundary']; kc = Counter(g['kind'] for g in b)
        L.append('- record %d%s: R = %g, label radius %g, boundary %d boxes in %d groups (%s), info %s' % (
            i, ' (F6)' if i == d['fourier_record'] else '', fh(r['R']), fh(r['label_radius']),
            sum(len(g['boxes']) for g in b), len(b), dict(kc), r.get('info')))
    L += ['- Tao: R = %g, label radius %g (proof/atlas/tao.py)' % (fh(d['tao']['R']), fh(d['tao']['label_radius']))]
    if jobs:
        ch = core_hours(jobs)
        tot = sum(c * e for _, c, e, _ in ch) / 3600
        L += ['', '## Rusty jobs', '', '| job | CPUs | wall (h) | core-hours | state |', '|---|---|---|---|---|']
        L += ['| %s | %d | %.2f | %.1f | %s |' % (j, c, e / 3600, c * e / 3600, st) for j, c, e, st in ch]
        L += ['', 'Total: %.1f core-hours (allocated CPUs x wall time).' % tot]
    if d.get('info', {}).get('stats'):
        st = d['info']['stats']
        L += ['', 'Driver CPU time: make %.1f h (%d balls made), cover %.1f h (%d covers).' % (
            st['make_s'] / 3600, st['makes'], st['cover_s'] / 3600, st['covers'])]
    open(outp, 'w').write('\n'.join(L) + '\n')
    print('\n'.join(L))


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2], sys.argv[3:])

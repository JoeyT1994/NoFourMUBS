#!/usr/bin/env python3
"""For every row still delegated to the collaborator (ring, export2, addendum; minus rows we accepted since export2),
the radius a uniform punctured ball at (2,4,4,2)pi/3 / (4,2,2,4)pi/3 (sup circular norm) must have to contain the box:
need = min over the two seeds of max_j circ(theta_j - seed_j) + half-width.  Prints the distribution."""
import gzip, json, math, collections, bisect
TWO = 2 * math.pi; SEEDS = [[k * math.pi / 3 for k in s] for s in ((2, 4, 4, 2), (4, 2, 2, 4))]
def circ(x): x = math.fmod(x, TWO); x = x + TWO if x < 0 else x; return min(x, TWO - x)
e2 = set(); 
for s in json.load(open('export2_2026-10-05/MANIFEST.json'))['shards']:
    for l in gzip.open('export2_2026-10-05/' + s['file'], 'rt'): e2.add(json.loads(l)['inventory_row'])
for l in gzip.open('export2_addendum_2026-10-06/addendum_0000.jsonl.gz', 'rt'): e2.add(json.loads(l)['inventory_row'])
acc = {int(l.split('\t')[1]) for l in open('export2_update_2026-10-06/ACCEPTED_SINCE_EXPORT2.tsv') if not l.startswith('#')}
need = collections.defaultdict(list); i = 0
with gzip.open('postE/inventory.txt.gz', 'rt') as f:
    for line in f:
        if not line.strip() or line.startswith('#'): continue
        r = line.split()
        ring = r[7] == '2,4,4,2' and float(r[8]) <= 0.07 - 1e-6
        if ring or (i in e2 and i not in acc):
            th = [float(x) for x in r[1:5]]; h = math.pi / 2 ** int(r[0]) + 2 ** -40
            d = min(max(circ(t - s) for t, s in zip(th, S)) for S in SEEDS)
            need['ring' if ring else 'export2+addendum ' + r[7]].append(d + h)
        i += 1
allv = sorted(v for L in need.values() for v in L)
print('delegated rows', len(allv), {k: len(v) for k, v in need.items()})
for k, L in need.items(): L.sort(); print(k, 'min %.4f max %.4f' % (L[0], L[-1]))
for R in (0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08, 0.1, 0.2, 0.5, 1.0):
    print('radius %.3f covers %9d  outside %9d  (%s)' % (R, bisect.bisect_right(allv, R), len(allv) - bisect.bisect_right(allv, R),
          ', '.join('%s %d' % (k, len(L) - bisect.bisect_right(L, R)) for k, L in need.items())))
for q in (0.9, 0.99, 0.999, 1.0): print('quantile', q, '%.5f' % allv[min(len(allv) - 1, int(q * len(allv)))])

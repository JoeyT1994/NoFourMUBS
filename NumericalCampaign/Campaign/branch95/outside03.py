#!/usr/bin/env python3
"""Every box still delegated to the collaborator that a uniform punctured ball of radius R0 = 0.03 rad at
(2,4,4,2)pi/3 and (4,2,2,4)pi/3 (sup circular norm) does not contain (7 Oct 2026 cut).
  python3 outside03.py OUTDIR
Delegated = ring (class 2,4,4,2, seed distance <= 0.07 - 1e-6) + export2 + addendum, minus ACCEPTED_SINCE_EXPORT2.
need = min over the two seeds of max_j circ(centre_j - seed_j) + half-width; a box is listed when need > R0 - 1e-6
(boxes on the boundary are listed, never dropped).  Geometry is copied exactly from postE/inventory_boxes.jsonl.gz
(row-aligned with the inventory) and checked against the ring export / export2 record of the same box."""
import gzip, json, math, os, sys, hashlib, collections
R0 = 0.03; od = sys.argv[1]; os.makedirs(od, exist_ok=True)
TWO = 2 * math.pi; SEEDS = [[k * math.pi / 3 for k in s] for s in ((2, 4, 4, 2), (4, 2, 2, 4))]
def circ(x): x = math.fmod(x, TWO); x = x + TWO if x < 0 else x; return min(x, TWO - x)
e2 = {}
for s in json.load(open('export2_2026-10-05/MANIFEST.json'))['shards']:
    for l in gzip.open('export2_2026-10-05/' + s['file'], 'rt'):
        r = json.loads(l); e2[r['inventory_row']] = ('export2', r['id'], r['centers'], r['radii'])
for l in gzip.open('export2_addendum_2026-10-06/addendum_0000.jsonl.gz', 'rt'):
    r = json.loads(l); e2[r['inventory_row']] = ('addendum', r['id'], r['centers'], r['radii'])
acc = {int(l.split('\t')[1]) for l in open('export2_update_2026-10-06/ACCEPTED_SINCE_EXPORT2.tsv') if not l.startswith('#')}
rows = []; i = 0; nbox = 0
with gzip.open('postE/inventory.txt.gz', 'rt') as f, gzip.open('postE/inventory_boxes.jsonl.gz', 'rt') as fb:
    for line in f:
        if not line.strip() or line.startswith('#'): continue
        b = fb.readline(); nbox += 1
        r = line.split(); ring = r[7] == '2,4,4,2' and float(r[8]) <= 0.07 - 1e-6
        if ring or (i in e2 and i not in acc):
            th = [float(x) for x in r[1:5]]; h = math.pi / 2 ** int(r[0]) + 2 ** -40
            need = min(max(circ(t - s) for t, s in zip(th, S)) for S in SEEDS) + h
            if need > R0 - 1e-6:
                bx = json.loads(b)
                assert all(abs(float(int(c.split('/')[0])) / int(c.split('/')[1]) - t) < 1e-15 if '/' in c else True for c, t in zip(bx['centers'], th))
                rec = dict(inventory_row=i, centers=bx['centers'], radii=bx['radii'], level=int(r[0]), cls=r[7], seed=r[6],
                           ball_radius_needed_rad=round(need, 6))
                if ring: rec['source'] = 'ring'
                else:
                    src, eid, c, rd = e2[i]; assert c == bx['centers'] and rd == bx['radii']; rec['source'] = src; rec['export2_id'] = eid
                rows.append(rec)
        i += 1
    assert fb.readline() == '' and nbox == i, ('inventory_boxes not row-aligned', nbox, i)
# ring ids by exact geometry
want = {(tuple(r['centers']), r['radii'][0]): r for r in rows if r['source'] == 'ring'}; found = 0
m = json.load(open('ball40/ring_export/FULL_RING_MANIFEST.json'))
for s in m['shards']:
    for l in gzip.open('ball40/ring_export/' + s['file'], 'rt'):
        x = json.loads(l); k = (tuple(x['centers']), x['radii'][0])
        if k in want: want[k]['ring_id'] = x['id']; found += 1
assert found == len(want), ('ring rows without ring id', len(want) - found)
rows.sort(key=lambda r: (r['ball_radius_needed_rad'], r['inventory_row']))
SH = 250000; man = []
for n, r in enumerate(rows): r['id'] = n
for k in range(0, len(rows), SH):
    fn = 'outside_r003_%04d.jsonl.gz' % (k // SH)
    with gzip.open(od + '/' + fn, 'wt', compresslevel=9) as f:
        for r in rows[k:k + SH]:
            f.write(json.dumps({key: r[key] for key in ('id', 'source', 'ring_id', 'export2_id', 'inventory_row', 'centers', 'radii', 'level', 'cls', 'seed', 'ball_radius_needed_rad') if key in r}, separators=(',', ':')) + '\n')
    man.append(dict(file=fn, first_id=k, records=len(rows[k:k + SH]), need_min=rows[k]['ball_radius_needed_rad'],
                    need_max=rows[min(k + SH, len(rows)) - 1]['ball_radius_needed_rad'], sha256=hashlib.sha256(open(od + '/' + fn, 'rb').read()).hexdigest()))
bands = collections.Counter()
for r in rows:
    v = r['ball_radius_needed_rad']; bands['%s' % ('>0.2' if v > 0.2 else '%.2f-%.2f' % (math.floor(v * 100) / 100, math.floor(v * 100) / 100 + 0.01))] += 1
summ = dict(records=len(rows), by_source=dict(collections.Counter(r['source'] for r in rows)), by_class=dict(collections.Counter(r['cls'] for r in rows)),
            by_needed_radius_band=dict(sorted(bands.items())), shards=man)
json.dump(summ, open(od + '/MANIFEST.json', 'w'), indent=1); print(json.dumps({k: summ[k] for k in ('records', 'by_source', 'by_class', 'by_needed_radius_band')}))

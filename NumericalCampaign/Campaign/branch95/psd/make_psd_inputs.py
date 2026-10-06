#!/usr/bin/env python3
"""Inputs for the brute-force inward/outward run of the factored signed-mean method (6 Oct 2026).
Target: every post-E row delegated to the collaborator for which we hold no certificate:
  ring rows (class 2,4,4,2, seed distance <= 0.07 - 1e-6) not accepted by the 1/40 ball (ball40/res_*.jsonl.gz),
  export2 + addendum rows of class 2,4,4,2 not in ACCEPTED_SINCE_EXPORT2 (class 0,0,2,4 is in postE/h0024).
Records: id = inventory row, exact centres/radii from postE/inventory_boxes.jsonl.gz (row-aligned), need = radius of
the smallest punctured sup-norm ball at the two seeds containing the box.  Priority: 1 = export2 with need <= 0.1
(no one else running), 2 = ring, 3 = export2 beyond 0.1 (collaborator running); ascending need within a priority.
Shards of SHARD rows: OUT/inputs/shard_NNNNN.jsonl and OUT/inputs/MANIFEST.json (sha256 per shard)."""
import gzip, json, math, glob, hashlib, os, sys
OUT = sys.argv[1]; SHARD = int(sys.argv[2]) if len(sys.argv) > 2 else 512
TWO = 2 * math.pi; SEEDS = [[k * math.pi / 3 for k in s] for s in ((2, 4, 4, 2), (4, 2, 2, 4))]
def circ(x): x = math.fmod(x, TWO); x = x + TWO if x < 0 else x; return min(x, TWO - x)
e2 = set()
for s in json.load(open('export2_2026-10-05/MANIFEST.json'))['shards']:
    for l in gzip.open('export2_2026-10-05/' + s['file'], 'rt'): e2.add(json.loads(l)['inventory_row'])
for l in gzip.open('export2_addendum_2026-10-06/addendum_0000.jsonl.gz', 'rt'): e2.add(json.loads(l)['inventory_row'])
acc = {int(l.split('\t')[1]) for l in open('export2_update_2026-10-06/ACCEPTED_SINCE_EXPORT2.tsv') if not l.startswith('#')}
ball = set()
for p in glob.glob('ball40/res_*.jsonl.gz'):
    assert json.load(open(p + '.verification.json'))['status'] == 'PASS_UNIFORM_BALL'
    for l in gzip.open(p, 'rt'):
        r = json.loads(l)
        if r['ok']: ball.add(r['input_record']['id'])
rows = []; i = 0
with gzip.open('postE/inventory.txt.gz', 'rt') as f, gzip.open('postE/inventory_boxes.jsonl.gz', 'rt') as fb:
    for line in f:
        if not line.strip() or line.startswith('#'): continue
        b = fb.readline(); r = line.split()
        if r[7] == '2,4,4,2':
            ring = float(r[8]) <= 0.07 - 1e-6
            if (ring and i not in ball) or (not ring and i in e2 and i not in acc):
                th = [float(x) for x in r[1:5]]; h = math.pi / 2 ** int(r[0]) + 2 ** -40
                need = min(max(circ(t - s) for t, s in zip(th, S)) for S in SEEDS) + h
                bx = json.loads(b)
                pri = 2 if ring else (1 if need <= 0.1 else 3)
                rows.append((pri, need, i, bx['centers'], bx['radii']))
        i += 1
rows.sort()
os.makedirs(OUT + '/inputs', exist_ok=True); man = []
for k in range(0, len(rows), SHARD):
    fn = 'shard_%05d.jsonl' % (k // SHARD)
    with open(OUT + '/inputs/' + fn, 'w') as f:
        for pri, need, i, c, rd in rows[k:k + SHARD]:
            f.write(json.dumps(dict(id=i, centers=c, radii=rd, need=round(need, 6), priority=pri), separators=(',', ':')) + '\n')
    man.append(dict(file=fn, rows=len(rows[k:k + SHARD]), priority=sorted({x[0] for x in rows[k:k + SHARD]}),
                    sha256=hashlib.sha256(open(OUT + '/inputs/' + fn, 'rb').read()).hexdigest()))
import collections
json.dump(dict(rows=len(rows), by_priority=dict(collections.Counter(x[0] for x in rows)), shard_rows=SHARD, shards=man),
          open(OUT + '/inputs/MANIFEST.json', 'w'), indent=1)
print(len(rows), dict(collections.Counter(x[0] for x in rows)), len(man), 'shards')

import gzip, json, glob, collections
from fractions import Fraction as Q
P = 'postE'
lev = []
with gzip.open(P + '/inventory.txt.gz', 'rt') as f:
    for line in f:
        if line.strip() and not line.startswith('#'): lev.append(int(line.split(None, 1)[0]))
w = lambda i: Q(1, 16 ** lev[i])
tot = sum(Q(c, 16 ** l) for l, c in collections.Counter(lev).items())
out = {}
for fn in sorted(glob.glob('ball40/outside_r003_2026-10-06/outside_r003_*.jsonl.gz')):
    for l in gzip.open(fn, 'rt'):
        r = json.loads(l); k = 'deleg_out03_' + r['cls']; out[k] = out.get(k, 0) + w(r['inventory_row'])
ball = set()
for fn in glob.glob('ball40/res_*.jsonl.gz'):
    for l in gzip.open(fn, 'rt'):
        r = json.loads(l)
        if r['ok']: ball.add(r['input_record']['id'])
out['ball40_closed'] = sum(w(i) for i in ball)
parts = collections.defaultdict(list)
for l in open(P + '/hard/map.tsv'):
    s, i, k, q, p = map(int, l.split()); parts[p].append(i)
seq = []
for p in range(10):
    bad = sorted(set(json.load(open(P + f'/hard/receipt_{p}.json'))['unresolved_indices'])); seq += [parts[p][j] for j in bad]
out['shoulder_hard2_170'] = sum(w(i) for i in seq); out['n_hard2'] = len(seq)
out['inventory_total'] = tot
print(json.dumps({k: (float(v) if isinstance(v, Q) else v) for k, v in out.items()}))
print('levels', dict(collections.Counter(lev)))

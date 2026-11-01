"""A random sample of whole-cell hits (leafmap.npz) into closed balls, 60 by the identity (T0) and 60 by a nontrivial
symmetry (T1 at a reordered seed corner), as ext_transfer.check specs for spot.py.  argv: none (reads status.json,
leafmap.npz, geom2.npz, leaves.tsv.gz in the working folder)."""
import gzip, json, numpy as np
from ops import ops
O = [o for o in ops() if o['s'] == 1]
st = {int(b): s for b, s in json.load(open('status.json')).items()}
D = np.load('leafmap.npz'); H = D['hits']
wind = {(int(r[0]), int(r[1]), int(r[2])): [int(x) for x in r[3:7]] for r in np.load('geom2.npz')['R']}
cells, cnt = {}, {}
for b, kind, lev, cell, nb in (l.rstrip('\n').split('\t') for l in list(gzip.open('leaves.tsv.gz', 'rt'))[1:]):
    b = int(b); i = cnt.get(b, 0); cnt[b] = i + 1; cells[(b, i)] = (int(lev), [int(x) for x in cell.split(',')])
rng = np.random.default_rng(1)
full = H[H[:, 4] == 1]; full = full[np.array([st[int(t)]['v'] == 'CLOSED' and t != s for s, _, t, _, _ in full])]
specs = []
for want_id in (True, False):
    sel = full[(full[:, 3] == 0) == want_id]
    for h in sel[rng.choice(len(sel), 60, replace=False)]:
        B, i, t, k = map(int, h[:4]); lev, cell = cells[(B, i)]; o = O[k]
        grp = dict(kind='T0', wind=wind[(B, t, k)]) if k == 0 else dict(kind='T1', rows=o['rows'], cols=o['cols'], g=o['g'], wind=wind[(B, t, k)])
        specs.append(dict(ball=B, level=lev, cell=cell, spec=dict(target=t, group=grp)))
json.dump(specs, open('spot_specs.json', 'w')); print(len(specs))

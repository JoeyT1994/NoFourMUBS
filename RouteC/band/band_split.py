"""Split the seed boxes that band_prod.py did not accept into 16 children (bisection in all four angles).

  python3 band_split.py BOXES.jsonl RESULTS_GLOB OUT.jsonl

Children centres must be binary64 (cert.theta_box), so each child is c_k = fl(c + s_k r/2) with half-width
r_k = r/2 + 2^-52 r (rational).  Containment is checked exactly: |c_k - (c + s_k r/2)| <= 2^-52 r, so
[c_k - r_k, c_k + r_k] contains [c + s_k r/2 - r/2, c + s_k r/2 + r/2], and these 16 boxes tile the parent.
Child rows carry "parent"; child id = 10^9 + 16 * parent_id + k.
"""
import sys, json, glob, itertools
from fractions import Fraction as F

BOXES, GLOB, OUT = sys.argv[1:4]
rows = {}
for l in open(BOXES):
    if l.strip():
        r = json.loads(l); rows[r['id']] = r
res = {}
for p in glob.glob(GLOB):
    for l in open(p):
        if l.strip():
            r = json.loads(l); res[r['id']] = r
fail = [i for i, r in res.items() if not r.get('accepted')]
n = 0
with open(OUT, 'w') as f:
    for pid in sorted(fail):
        row = rows[pid]
        c = [F(x) for x in row['centers']]; r = [F(x) for x in row['radii']]
        for k, sg in enumerate(itertools.product((-1, 1), repeat=4)):
            ex = [ci + s * ri / 2 for ci, s, ri in zip(c, sg, r)]
            ck = [F(float(x)) for x in ex]
            rk = [ri / 2 + ri / 2**52 for ri in r]
            assert all(abs(a - b) <= ri / 2**52 for a, b, ri in zip(ck, ex, r))
            f.write(json.dumps(dict(id=10**9 + 16 * pid + k, parent=pid, centers=[str(x) for x in ck],
                                    radii=[str(x) for x in rk])) + '\n')
            n += 1
print(json.dumps(dict(results=len(res), failed=len(fail), children=n)))

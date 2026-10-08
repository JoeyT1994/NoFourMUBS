# STUDY: existing SideTriplePrune.prune_box on level-11 leftover leaves, recursively to MAXLEV; open boxes are written out.
import sys, math, time, itertools, json
sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/ProvenResults/CornerBounds/SideTriplePrune')
from triple_prune import prune_box
from flint import arb
ENL = 2.0**-40
inp, maxlev, out = sys.argv[1], int(sys.argv[2]), sys.argv[3]
lines = [l.split() for l in open(inp) if l.strip()]
t0 = time.time(); per = {}; openf = open(out + '.open', 'w')
def attempt(cid, c, lev):
    h = math.pi/2**lev
    r = prune_box([arb(x) for x in c], [arb(h)+arb(ENL)]*4)
    d = per.setdefault(cid, dict(n11=0, ok=0.0, open=0.0, open_n=0))
    if r['ok']:
        d['ok'] += 16.0**-(lev-11); return
    if lev < maxlev:
        for signs in itertools.product((-1, 1), repeat=4):
            attempt(cid, [ci + s*h/2 for ci, s in zip(c, signs)], lev+1)
    else:
        d['open'] += 16.0**-(lev-11); d['open_n'] += 1
        openf.write(f"{cid} {' '.join(repr(x) for x in c)} {lev}\n")
for g in lines:
    cid, c = g[0], list(map(float, g[1:5]))
    per.setdefault(cid, dict(n11=0, ok=0.0, open=0.0, open_n=0))['n11'] += 1
    attempt(cid, c, 11)
openf.close()
json.dump(dict(seconds=time.time()-t0, per=per), open(out, 'w'))

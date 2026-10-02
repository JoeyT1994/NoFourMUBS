"""Stage B task: SideTriplePrune.prune_box on #layer leaves FIRST..LAST of layer_leaves.txt, recursively to MAXLEV.
   python triple_leaves.py FIRST LAST MAXLEV OUT
Output line per leaf: IDX LEVEL θ1..θ4 then path:code entries (path = child indices 0-15 below the leaf, '' = leaf
itself; T = certified outside D0 by prune_box, O = open at MAXLEV).  Children use the driver's centres θ ± ρ/2 with the
driver's child order (Iterators.product over (-1,1)^4, first index fastest)."""
import sys, os, math, itertools, time
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "code", "CornerBounds", "SideTriplePrune"))
from triple_prune import prune_box, arb
ENL = 2.0**-40
SIGNS = [s[::-1] for s in itertools.product((-1, 1), repeat=4)]   # first coordinate varies fastest, as in Julia
a, b, maxlev, out = int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]), sys.argv[4]
if os.path.exists(out): sys.exit(0)
lines = open(os.path.join(HERE, "layer_leaves.txt")).read().splitlines()[a-1:b]
def walk(c, lev, path, acc):
    h = math.pi / 2**lev
    r = prune_box([arb(x) for x in c], [arb(h) + arb(ENL)]*4)
    if r['ok']:
        acc.append(path + ":T"); return
    if lev >= maxlev:
        acc.append(path + ":O"); return
    for k, s in enumerate(SIGNS):
        walk([ci + si*h/2 for ci, si in zip(c, s)], lev + 1, path + format(k, 'x'), acc)
t0 = time.time()
with open(out + ".part", "w") as o:
    for l in lines:
        g = l.split(); idx, lev, c = g[0], int(g[1]), [float(x) for x in g[2:6]]
        acc = []; walk(c, lev, "", acc)
        o.write(f"{idx} {lev} {' '.join(g[2:6])} {' '.join(acc)}\n")
    o.write(f"#done {time.time()-t0:.1f}\n")
os.replace(out + ".part", out)

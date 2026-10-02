import sys, time, math, json, collections
from multiprocessing import Pool
import os; ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..'); sys.path.insert(0, os.path.join(ROOT, 'ProvenResults/CornerBounds/SideTriplePrune'))
sys.path.insert(0, os.path.join(ROOT, 'ProvenResults/CornerBounds/SideColumnPrune'))
from triple_prune import prune_box, arb
def run(line):
    f = line.split(); lev = int(f[2]); th = [float(x) for x in f[3:7]]
    rho = math.pi / 2**lev                      # the campaign cell: centre ± Float64(π/2^lev)
    radii = [arb(rho) + arb(2)**-40] * 4
    t = time.time()
    try:
        r = prune_box([arb(x) for x in th], radii)
    except Exception as e:
        r = dict(ok=False, reason='error:' + type(e).__name__)
    return dict(ok=r['ok'], reason=r.get('reason', ''), cap=r.get('R_cap'), t=time.time() - t, theta=th)
if __name__ == '__main__':
    lines = open(sys.argv[1]).read().splitlines()
    with Pool(8) as p:
        res = p.map(run, lines, chunksize=4)
    json.dump(res, open(sys.argv[2], 'w'))
    n = len(res); ok = sum(r['ok'] for r in res)
    print(f"{n} random branch-layer cells: excluded {ok} ({100*ok/n:.1f}%)")
    print("outcomes:", collections.Counter((r['ok'], r['reason']) for r in res).most_common())
    ts = sorted(r['t'] for r in res); print(f"time per cell: median {ts[n//2]:.3f} s, mean {sum(ts)/n:.3f} s, p99 {ts[int(.99*n)]:.2f} s, max {ts[-1]:.2f} s")
    caps = collections.Counter(r['cap'] for r in res if not r['ok']); print("R caps of unresolved cells:", sorted(caps.items())[:20])

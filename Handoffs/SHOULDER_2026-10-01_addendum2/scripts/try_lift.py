import sys, math, random, time, json
from fractions import Fraction as F
sys.path.insert(0, sys.argv[1]); sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/ProvenResults/FourierNeighbourhood/SeedLifting')
from frames import frame_maps, apply, wrap
from moving_reference_lift import certify_projected_box, parameter_images, reference_certificate, projected_parameters
def matrix(g, cj):
    cols = []
    base = apply([0, 0, 0, 0], g, cj)
    for k in range(4):
        e = [0.0] * 4; e[k] = 1e-3
        cols.append([round((x - y) / 1e-3) for x, y in zip(apply(e, g, cj), base)])
    return [[cols[k][i] for k in range(4)] for i in range(4)]
rows = [l.split() for l in open(sys.argv[2]) if not l.startswith('#')]
random.seed(int(sys.argv[3])); samp = random.sample(rows, int(sys.argv[4]))
for r in samp:
    lev = int(r[0]); th = list(map(float, r[1:5])); h = math.pi / 2 ** lev + 2 ** -40
    best = None
    for g in frame_maps():
        for cj in (False, True):
            t = apply(th, g, cj); d = max(abs(wrap(t[0] - 2 * math.pi / 3)), abs(wrap(t[2] + 2 * math.pi / 3)))
            key = (round(d, 3), sum(sum(abs(m) for m in row) for row in matrix(g, cj)))
            if best is None or key < best[0]: best = (key, g, cj, t, d)
    _, g, cj, t, d = best; M = matrix(g, cj)
    rad = [sum(abs(m) for m in row) * h * (1 + 1e-12) + 1e-15 for row in M]
    c_pi = [F(x / math.pi) for x in t]; r_pi = [F(x / math.pi) + F(1, 10 ** 15) for x in rad]
    a, b = projected_parameters(c_pi); cert = reference_certificate(a, b)
    t0 = time.process_time()
    try: res = certify_projected_box(c_pi, r_pi, maxlabels=int(sys.argv[5]), budget=int(sys.argv[6]), pair_budget=20000000, triple_budget=20000000)
    except Exception as e: res = dict(ok=False, reason='exc:' + repr(e)[:80])
    print(json.dumps(dict(code=r[5], seed=r[6], dist=r[-1], surf=round(d, 4), l1=[sum(abs(m) for m in row) for row in M],
          ab=[float(a), float(b)], tube=str(cert['radius']), ok=res['ok'], reason=res.get('reason'),
          L=res.get('column_distance'), cpu=round(time.process_time() - t0, 1))), flush=True)

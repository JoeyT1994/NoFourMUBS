"""Exploration: trace the 1-parameter continuum of completions at a curve point (non-rigorous)."""
import sys, json
from numlib import *
SP = '/Users/jtindall/Files/NoFourMUBS/RouteC/results/stuck_points_round2_2026-10-07.json'
pts = {p['id']: p for p in json.load(open(SP))}
bid = int(sys.argv[1]) if len(sys.argv) > 1 else 2083255
th = np.array(pts[bid]['theta']); print('curve point', th, 'R', Rraw(Emat(th)))
rng = np.random.default_rng(1)
sols = complete(th, rng, starts=60)
print('found', len(sols))
def Jf(x):
    h = 1e-7; return np.array([(Ff(x + h * e, th) - Ff(x - h * e, th)) / (2 * h) for e in np.eye(21)]).T
x = sols[0]; v_prev = None; path = []
step = 0.02
for it in range(4000):
    J = Jf(x); U, S, Vt = np.linalg.svd(J); v = Vt[-1]
    if v_prev is not None and v @ v_prev < 0: v = -v
    H = Hf(x, th); cs = corners(H); best = max(cs.items(), key=lambda kv: kv[1])
    path.append(dict(x=x.tolist(), smin=S[-1], s2=S[-2], maxR=best[1], arg=[list(best[0][0]), list(best[0][1])]))
    xn = x + step * v
    r = least_squares(lambda y: np.concatenate([Ff(y, th), [v @ (y - xn)]]), xn, xtol=1e-15, ftol=1e-15, gtol=1e-15, method='lm')
    x_new = r.x; v_prev = v
    if it > 10 and np.linalg.norm(np.angle(np.exp(1j * (x_new - sols[0])))) < 0.6 * step:
        print('closed loop after', it + 1, 'steps'); break
    x = x_new
mR = np.array([p['maxR'] for p in path]); print('steps', len(path), 'arclength', len(path) * step)
print('max-corner R along continuum: min %.3f median %.3f max %.3f' % (mR.min(), np.median(mR), mR.max()))
print('smin range', min(p['smin'] for p in path), max(p['smin'] for p in path), 's2 min', min(p['s2'] for p in path))
json.dump(dict(theta=th.tolist(), path=path), open('explore/cont_%d.json' % bid, 'w'))

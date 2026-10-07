"""Sanity: an actual (numerical) completion must never be excluded at its own point box."""
import numpy as np, json
from numlib import *
from cert import *
d = json.load(open('explore/cont_2083255.json')); th = np.array(d['theta'])
ok = 0
for k in range(0, len(d['path']), 97):
    x = np.array(d['path'][k]['x'])
    r = least_squares(lambda y: Ff(y, th), x, xtol=3e-16, ftol=3e-16, gtol=3e-16, method='lm'); x = r.x
    H = Hf(x, th)
    # WLOG normalisation: swap columns 4,5 / rows 4,5 so that x2 is the '+' root and p2 the '+' root
    for (cols, rows) in [(None, None)]:
        pass
    B = H[:3, 3:]; C = H[3:, :3]
    stat = []
    for perm in itertools.permutations(range(3)):
        for rperm in itertools.permutations(range(3)):
            Hp = H.copy(); Hp[:, 3:] = H[:, 3:][:, list(perm)]; Hp[3:, :] = Hp[3:, :][list(rperm), :]
            lab = [np.angle(Hp[1, 3]), np.angle(Hp[2, 3]), np.angle(Hp[3, 1]), np.angle(Hp[3, 2])]
            cen = np.array([lab + list(th)] * 4); rad = np.full((4, 8), 1e-9)
            sig = np.array([1, 1, -1, -1]); tau = np.array([1, -1, 1, -1])
            st, sc, blk, det = evaluate(cen, rad, sig, tau, q0=1e-3, want_detail=True)
            stat.append(tuple(st))
    print(k, 'res', np.abs(Ff(x, th)).max(), 'status sets', sorted(set(stat))[:6])

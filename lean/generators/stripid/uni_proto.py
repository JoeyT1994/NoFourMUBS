import common
from common import frac_data, QCTX
import gen_nonzero as G
Xp, Yp, k, _ = QCTX.gens()
h = 1 + k * k
ex = {}
for p in G.USED:
    for c, comp in enumerate((G.m[p].a, G.m[p].b)):
        D, e = frac_data(comp, G.TABLE)
        if not D: continue
        e = list(e)
        if c == 1:  # x1 part: multiply by zeta = zeta'/(h^2 Y)
            e[1] += 1; e[2] += 2
        ex[(p, c)] = (D, e)
DM = [max(v[1][i] for v in ex.values()) for i in range(10)]
print('DM', DM)
degsum = [0, 0, 0]
mx = [0, 0, 0]
tabdeg = [(1, 0, 0), (0, 1, 0), (0, 0, 2), (0, 0, 0), (1, 1, 3), (0, 1, 3), (1, 0, 3), (1, 1, 3), (0, 1, 3), (1, 0, 3)]
for key, (D, e) in ex.items():
    d = [max(t[i] for t in D) for i in range(3)]
    add = [sum((DM[j] - e[j]) * tabdeg[j][i] for j in range(10)) for i in range(3)]
    tot = [d[i] + add[i] for i in range(3)]
    mx = [max(mx[i], tot[i]) for i in range(3)]
    print(key, 'num deg', d, 'scaled deg', tot, 'terms', len(D))
print('max scaled', mx)

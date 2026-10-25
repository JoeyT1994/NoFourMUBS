"""Build summary from a driver state: balls by radius and label, status, transfer boxes by kind, nearest-neighbour
spacing.  Usage: summary.py RUN_DIR/atlas_state.pkl"""
import pickle, sys, warnings
from collections import Counter
import numpy as np
warnings.filterwarnings('ignore')
sys.path.insert(0, __file__.rsplit('/', 1)[0])
import seedgeom as SG
import driver


def summary(A):
    out = []
    n = len(A.balls)
    out.append('balls: %d, status %s' % (n, dict(Counter(A.status))))
    rs = Counter((b.r, b.label) for b in A.balls)
    out.append('by (radius, label radius): ' + ', '.join('%g/%g: %d' % (r, l, c) for (r, l), c in sorted(rs.items(), reverse=True)))
    kinds = Counter(); groups = Counter()
    for j, gl in A.groups.items():
        for g in gl:
            d = g['desc']
            k = d[0] if d[0] != 'T1' else ('T1lin' if set(d[3]) == {0, 1, 2} and set(d[4]) == {0, 1, 2} else 'T1')
            kinds[k] += len(g['boxes']); groups[k] += 1
    out.append('transfer boxes by kind: %s (groups %s)' % (dict(kinds), dict(groups)))
    if A.groups:
        nb = [sum(len(g['boxes']) for g in gl) for gl in A.groups.values()]
        out.append('boxes per closed ball: median %d, max %d' % (np.median(nb), max(nb)))
    if A.record is not None:
        out.append('record boundary: %d groups, %d boxes' % (len(A.record['groups']), sum(len(g['boxes']) for g in A.record['groups'])))
    th = np.array([b.theta0 for b in A.balls]); Mi = np.array([b.Minv for b in A.balls]); r = np.array([b.r for b in A.balls])
    if n > 1:
        nn = []
        for i in range(n):
            x = np.linalg.norm(SG.wrap(th - th[i]) @ Mi[i].T, axis=1); x[i] = 9
            nn.append(x.min() / r[i])
        out.append('nearest same-chart centre / r: quantiles 10/50/90%% = %s' % np.round(np.quantile(nn, [.1, .5, .9]), 2))
    out.append('edge distance of centres: quantiles 0/10/50%% = %s' % np.round(np.quantile([b.edge for b in A.balls], [0, .1, .5]), 3))
    out.append('stats: %s' % A.stats)
    return '\n'.join(out)


if __name__ == '__main__':
    A = pickle.load(open(sys.argv[1], 'rb'))
    print(summary(A))

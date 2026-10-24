"""Kernel data for one seed ball of the driver's certificate (FORMAT.md): the C1 boxes (dyadic level 2 of the kernel
radius) and, inside each, its T1 / T2 transfer boxes on the re-centred core models (`Seed/Full.lean`).  Exact mirrors
in seed_c1.py / seed_transfer.py decide what the kernel will accept; nothing here is trusted.

Feasibility (mirror only):  python3 kernel_atlas/generators/seed_ball.py SUBSET.json.gz J [--limit N]
"""
import argparse, gzip, json, math, os, sys, time
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import seed_c1 as S
import seed_transfer as ST
from seed_c1 import SC, PP, gz

C1_LEVEL = 2
MAX_LEVEL = 9


def fh(x): return float.fromhex(x) if isinstance(x, str) else float(x)


def kernel_radius(r):
    """The kernel's radius: r on the grid, rounded down to a multiple of 2^MAX_LEVEL units."""
    q = 1 << MAX_LEVEL
    return (gz(r) // q) * q


def target_ball(s):
    """The target data the T1 check needs (theta0 reduced and Mth on the grid, o, kernel radius)."""
    b = S.Ball.__new__(S.Ball)
    th0 = [fh(x) for x in s['theta0']]; Mth = [fh(x) for x in s['Mth']]
    red = lambda x: x - 2 * math.pi * round(x / (2 * math.pi))
    th0z = [gz(red(x)) for x in th0]
    shift = [round((x - red(x)) / (2 * math.pi)) for x in th0]       # theta0 = th0z + 2 pi shift
    return dict(th0=th0z, Mth=[gz(x) for x in Mth], o=int(s['o']), r=kernel_radius(fh(s['r'])), shift=shift)


def c1_boxes(rk):
    """The level-2 boxes: index -> (wc, hb) on the grid."""
    k = 1 << C1_LEVEL
    hb = rk // k
    out = {}
    import itertools
    for idx in itertools.product(range(k), repeat=4):
        out[idx] = ([(2 * i + 1 - k) * hb for i in idx], [hb] * 4)
    return out


def sub_of(rk, box, core_level=C1_LEVEL):
    """A FORMAT box [m, i0..i3] (m >= core_level) inside its ancestor at `core_level`: (ancestor index, offset c,
    half-widths h), all on the grid."""
    m, idx = box[0], box[1:]
    assert m >= core_level
    hs = rk >> m
    centre = [(2 * i + 1 - (1 << m)) * hs for i in idx]               # in w, grid
    k1 = 1 << (m - core_level)
    ci = tuple(i // k1 for i in idx)
    hb = rk >> core_level
    wc = [(2 * i + 1 - (1 << core_level)) * hb for i in ci]
    return ci, [centre[l] - wc[l] for l in range(4)], [hs] * 4


def core_box(rk, level, ci):
    hb = rk >> level
    return [(2 * i + 1 - (1 << level)) * hb for i in ci], [hb] * 4


def t1_data(T1g, tgt, qm_sub, km_sub, hsub):
    """T1D for a FORMAT T1 group on a sub-box, the least bound, and whether the mirror accepts."""
    rows = ST.full_perm(T1g['rows']); cols = ST.full_perm(T1g['cols'])
    g = ['id', 'conj', 'T', 'conjT'].index(T1g['g'])
    # the winding in the kernel's own gauge: y = theta' + 2 pi N - theta0_l small (theta0_l reduced on the grid)
    T = dict(g=g, rows=rows, cols=cols, N=[0] * 4, G=[], qg=0, m=0)
    thp = [ST.thpT(hsub, qm_sub, T, k).cg(0)[0] / SC for k in range(4)]
    N = [int(round((tgt['th0'][k] / SC - thp[k]) / (2 * math.pi))) for k in range(4)]
    Mq = np.array(tgt['Mth'], float).reshape(4, 4) / SC
    Gz = [gz(x) for x in np.linalg.inv(Mq).reshape(16)]
    T = dict(g=g, rows=rows, cols=cols, N=N, G=Gz, qg=ST.qMin(Gz, tgt['Mth']), m=0)
    Bl = dict(th0=tgt['th0'], Mth=tgt['Mth'], P=[], U=[], n=0, o=tgt['o'])
    T['m'] = ST.least_bound(hsub, ST.vT(hsub, qm_sub, T, Bl))
    ok, why = ST.t1OK(hsub, qm_sub, km_sub, T, Bl, tgt['r'], why=True)
    return T, Bl, ok, why


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('subset'); ap.add_argument('j')
    ap.add_argument('--limit', type=int, default=0)
    a = ap.parse_args()
    d = json.load(gzip.open(a.subset, 'rt'))
    s = d['seeds'][a.j]
    ball = S.Ball(s)
    rk = kernel_radius(ball.r)
    boxes = c1_boxes(rk)
    t1groups = [g for g in s['transfers'] if g['kind'] == 'T1' and not (set(g['rows']) == {0, 1, 2} and set(g['cols']) == {0, 1, 2})]
    subs = []
    for g in t1groups:
        for b in g['boxes']: subs.append((g, b))
    if a.limit: subs = subs[:a.limit]
    print('ball %s: r %.4g (kernel %d units), %d general-T1 boxes in %d groups' % (a.j, ball.r, rk, len(subs), len(t1groups)))
    B0 = ball.ball_dict(0)
    t0 = time.time()
    todo = [(g, b) for g, b in subs]
    level = C1_LEVEL
    ncore = {}; nsub = {}; failed = []
    cache = {}
    while todo and level <= MAX_LEVEL:
        groups = {}
        for g, b in todo:
            if b[0] < level: failed.append((g, b, 'level')); continue
            ci, c, h = sub_of(rk, b, level)
            groups.setdefault(ci, []).append((g, b, c, h))
        nxt = []
        for ci, lst in groups.items():
            wc, hb = core_box(rk, level, ci)
            D = S.prepare(ball, np.array(wc, float) / SC, np.array(hb, float) / SC)
            ok, qm, km, why = ST.core(B0, D)
            ncore[level] = ncore.get(level, 0) + 1
            if not ok:
                nxt += [(g, b) for g, b, c, h in lst]; continue
            for g, b, c, h in lst:
                tgt = target_ball(d['seeds'][str(g['target'])])
                T, Bl, okt, why = t1_data(g, tgt, ST.shiftL(c, h, qm), ST.shiftL(c, h, km), h)
                if okt: nsub[level] = nsub.get(level, 0) + 1
                else: nxt.append((g, b))
        todo = nxt; level += 1
    print('cores by level %s, transfer boxes passed by core level %s, failed %d (%.0f s)' % (
        ncore, nsub, len(todo) + len(failed), time.time() - t0))
    cost = sum(ncore.values()) * 10.2 + sum(nsub.values()) * 1.84
    print('kernel estimate (laptop): %.0f s = %d cores x 10.2 s + %d subs x 1.84 s; fresh per box: %.0f s' % (
        cost, sum(ncore.values()), sum(nsub.values()), len(subs) * 17.3))


if __name__ == '__main__':
    main()

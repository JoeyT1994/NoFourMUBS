"""Independent Arb verifier for a band-certificate tape (results/tapes/*.npz).

The float search in cert.py only *proposes* a tree.  This script re-derives the tree from the
seed box alone (same deterministic root and bisection code, which involves no decision), looks
up the action recorded for every node, and re-checks every leaf decision with Arb ball
arithmetic (arb_replay.py; outward rounding, no float padding):
  * label stage, both sides: every node is split, kept as a label, or excluded by T1/T2 (Arb);
  * pair stage: roots = all (B label, C label) pairs; every node is split or a leaf whose
    exclusion (T1/T2/T3) or acceptance (|Q| > q0 on the recorded block) is confirmed in Arb;
  * the target: 64 q0^2 >= M >= sup_Theta R(E) (Arb Taylor cap, recomputed here);
  * if the arc WLOG was used, its hypothesis sup|s|, sup|s_v| < 1 - 2cos(ARC) (Arb affine forms).
A node of the re-derived tree that is missing from the tape makes verification fail.
Usage: python3 verify.py TAPE.npz BOXINDEX [c0]
"""
import sys, json, time, itertools
import numpy as np
from fractions import Fraction as Q_
from flint import arb, acb
from cert import children, label_roots, theta_box, R_cap_arb, ARC
import arb_replay as AR

HB = '/Users/jtindall/Files/NoFourMUBS/RouteC/band/data/hard_boxes.jsonl'


def key(c, r, *extra):
    return tuple(c.tolist()) + tuple(r.tolist()) + tuple(int(x) for x in extra)


def verify(tape_path, k, c0=None, log=print):
    t0 = time.time()
    row = [json.loads(l) for l in open(HB)][k]
    T = np.load(tape_path)
    cq, rq, thc, thr = theta_box(row)          # asserts float box contains the exact box
    q0 = float(T['q0']); arc = bool(T['arc'])
    # ---- target
    if c0 is None:
        Mup, _ = R_cap_arb(cq, rq)              # Arb upper bound (Taylor, 16 children)
    else:
        Mup = float(c0)
    assert 64 * arb(q0) ** 2 >= arb(Mup), 'q0 too small for the target'
    # ---- arc hypothesis
    if arc:
        a, b, c, d = [AR.AA.expi(thc[i], thr[i], 4 + i) for i in range(4)]
        s = -(a + b + 1); sv = -(a + c + 1)
        bound = 1 - 2 * arb(ARC).cos()
        for f in (s, sv):
            assert abs(f.c) + f.rad() < bound, 'arc hypothesis fails'
    # ---- label stages
    labels = []
    nlab_nodes = 0
    for which, pre in ((0, 'lB'), (1, 'lC')):
        D = {key(c, r, bb): int(act) for c, r, bb, act in zip(T[pre + '_c'], T[pre + '_r'], T[pre + '_b'], T[pre + '_a'])}
        rc, rr = label_roots(arc)
        stack = [(rc[i], rr[i], br) for i in range(len(rc)) for br in (1, -1)]
        kept = []
        while stack:
            c, r, br = stack.pop(); nlab_nodes += 1
            act = D.get(key(c, r, br))
            if act is None:
                raise AssertionError('label node missing from tape')
            if act == 1:
                kept.append((c, r, br))
            elif act == 0:
                cen = np.zeros(8); rad = np.zeros(8); cen[4:] = thc; rad[4:] = thr
                cen[2 * which:2 * which + 2] = c; rad[2 * which:2 * which + 2] = r
                try:
                    ok = AR.replay(cen.tolist(), rad.tolist(), br, br, -1, 1 if which == 0 else 2, q0)
                except ValueError:
                    ok = False
                if not ok:
                    raise AssertionError('label exclusion not confirmed in Arb')
            else:
                cn, rn = children(c[None, :], r[None, :], np.array([act - 2]))
                stack += [(cn[0], rn[0], br), (cn[1], rn[1], br)]
        labels.append(kept)
    log('  labels B %d C %d (label nodes %d) %.0fs' % (len(labels[0]), len(labels[1]), nlab_nodes, time.time() - t0))
    # ---- pair stage
    D = {}
    for c, r, s_, t_, a_, k_ in zip(T['n_c'], T['n_r'], T['n_s'], T['n_t'], T['n_a'], T['n_k']):
        D[key(c, r, s_, t_)] = (int(a_), int(k_))
    stack = []
    for cb, rb, sb in labels[0]:
        for cc, rc_, sc in labels[1]:
            cen = np.concatenate([cb, cc, thc]); rad = np.concatenate([rb, rc_, thr])
            stack.append((cen, rad, sb, sc))
    counts = {1: 0, 2: 0, 3: 0, 4: 0, 'split': 0}
    while stack:
        cen, rad, sg, tu = stack.pop()
        v = D.get(key(cen, rad, sg, tu))
        if v is None:
            raise AssertionError('pair node missing from tape')
        act, blk = v
        if act >= 10:
            counts['split'] += 1
            cn, rn = children(cen[None, :], rad[None, :], np.array([act - 10]))
            stack += [(cn[0], rn[0], sg, tu), (cn[1], rn[1], sg, tu)]
        elif act in (1, 2, 3, 4):
            try:
                ok = AR.replay(cen.tolist(), rad.tolist(), sg, tu, blk, act, q0)
            except ValueError:
                ok = False
            if not ok:
                raise AssertionError('leaf decision %d not confirmed in Arb' % act)
            counts[act] += 1
        else:
            raise AssertionError('undecided node in tape')
    return dict(ok=True, id=row['id'], index=k, M=Mup, q0=q0, arc=arc, labels=(len(labels[0]), len(labels[1])),
                leaves=counts, time=time.time() - t0)


if __name__ == '__main__':
    k = int(sys.argv[2]); c0 = float(sys.argv[3]) if len(sys.argv) > 3 else None
    try:
        res = verify(sys.argv[1], k, c0, log=lambda *a: print(*a, flush=True))
    except AssertionError as e:
        res = dict(ok=False, index=k, error=str(e))
    print(json.dumps(res))

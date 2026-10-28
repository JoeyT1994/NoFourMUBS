"""Certified exclusion of MUB triples on the seed atlas, by adaptive subdivision (Arb; Stage C's one-clique variant).

Usage: python nothird.py REPO CERT OUT.jsonl [--max-level L] J1 J2 ...
Seed ball j has the certified enclosure Q = P + U w + nu (||w|| <= r, ||nu|| <= n; the certificate's C1, certified by
its Arb receipt).  Its parameter cube [-r, r]^4 is split into dyadic cells (level m >= 2: half-width h = r / 2^m, centre
w_c); a cell meeting the ball is tested by stagec.stage_c_triple on a sub-ball of radius 2h around an exact point:
the whole-ball model's certified centre jet Q(c), DQ(c) there, and the curvature remainder (cell_test).  (Re-centring
P + U w_c instead is valid but makes Stage C's tangent test ineffective: U is a fitted frame, not the tangent at c.)
ok = True for a cell certifies that no Hadamard matrix in its image extends to a MUB triple: a third basis would be six
orthonormal vectors unbiased to I and H/sqrt6, hence six distinct labels pairwise joined in the orthogonality graph,
and the complete search finds no 6-clique.  Failing cells are split down to --max-level (default 5: radius r/16); the
cells still failing there are recorded (the ball's triple neighbourhood, up to the test's resolution).
REPO is the repository root (proof/seed_atlas/cert, proof/atlas).
"""
TAG = 'nothird'
REFINE_CAP = 32                     # refine to the last level only balls with at most this many failing cells
import gzip, itertools, json, math, os, sys, time, traceback


def misses_ball(uc, h):
    """True exactly when the cell of half-width h centred at uc (in u = w / r) misses the closed unit ball: its
    nearest point to the origin has squared norm sum max(|uc_i| - h, 0)^2 > 1, decided in exact rationals (uc and h
    are dyadic)."""
    from fractions import Fraction as Fr
    return sum(max(abs(Fr(x)) - Fr(h), 0) ** 2 for x in uc) > 1


def expansion_point(r, uc, h):
    """A binary64 expansion point cp strictly inside the ball ||w|| < r (checked in Arb) and an outward bound rho on
    the distance from cp to every point of the cell {w : |w_i - r uc_i| <= h r}: the cell lies in the ball of radius
    2 h r around its exact centre r uc, so rho = 2 h r + ||cp - r uc|| (computed in Arb from the exact centre).  A
    centre outside the ball is first moved inside.  The model holds on the segment from cp to any point of the cell's
    part of the ball (convexity)."""
    from flint import arb
    wc = [r * x for x in uc]
    nc = math.sqrt(sum(x * x for x in wc))
    cp = [x * (r * (1 - 1e-9) / nc) for x in wc] if nc >= r * (1 - 1e-9) else wc
    if not sum((arb(x) * arb(x) for x in cp), arb(0)) < arb(r) * arb(r):
        raise ArithmeticError('expansion point not certified inside the ball')
    d = sqrt_up(sum(((arb(x) - arb(r) * arb(u)) * (arb(x) - arb(r) * arb(u)) for x, u in zip(cp, uc)), arb(0)))
    return cp, arb(float_up(arb(2 * h) * arb(r) + d))


def sqrt_up(s):
    """An Arb enclosure of a number >= sqrt(x) for every x >= 0 in the ball s (an interval about 0 has sqrt = NaN)."""
    from flint import arb
    u = s.upper()
    if not u.is_finite(): raise ArithmeticError('non-finite norm')
    return arb(0) if u <= 0 else u.sqrt()


def float_up(x):
    """The least binary64 >= every point of the Arb ball x."""
    from flint import arb
    u = x.upper()
    if not u.is_finite(): raise ArithmeticError('non-finite bound')
    f = float(u.mid())
    while not arb(f) >= u: f = math.nextafter(f, math.inf)
    return f


def main():
    args = sys.argv[1:]
    maxl = 5
    if '--max-level' in args:
        i = args.index('--max-level'); maxl = int(args[i + 1]); del args[i:i + 2]
    repo, cert, outp, idx = args[0], args[1], args[2], [int(x) for x in args[3:]]
    sys.path[:0] = [os.path.join(repo, 'proof/seed_atlas/cert'), os.path.join(repo, 'proof/atlas')]
    import numpy as np
    import seedcert as S, stagec as SC, patches as ZTP
    from flint import arb, arb_mat, ctx
    TP = S.TWO_PI_ARB
    seeds = json.load(gzip.open(cert, 'rt'))['seeds']
    done = {json.loads(l)['idx'] for l in open(outp) if l.strip()} if os.path.exists(outp) else set()

    def cell_test(b, model, curv, uc, h):
        """stage_c_triple on a sub-ball centred at an exact point: Q(w) = Q(c) + DQ(c)(w - c) + R, ||w - c|| <= rho, with
        Q(c), DQ(c) enclosed by the whole-ball model's centre jet (patches.centre_jet, the same contraction as C1) and
        ||R|| <= (||H2|| + ||X|| Z2) rho^2 / 2, with c and rho from expansion_point."""
        ctx.prec = 224
        cp, rr = expansion_point(b.r, uc, h)
        qc, dc, _ = ZTP.centre_jet(model, arb_mat([[arb(float(x))] for x in cp]))
        q = np.array([float(qc[i, 0].mid()) for i in range(36)])
        D = np.array([[float(dc[i, k].mid()) for k in range(4)] for i in range(36)])
        e0 = sqrt_up(sum(((qc[i, 0] - arb(q[i])) * (qc[i, 0] - arb(q[i])) for i in range(36)), arb(0)))
        e1 = sqrt_up(sum(((dc[i, k] - arb(D[i, k])) * (dc[i, k] - arb(D[i, k])) for i in range(36) for k in range(4)), arb(0)))
        n1 = e0 + e1 * rr + curv * rr * rr / 2
        tcol = max(S.opnorm_up(D.reshape(6, 6, 4)[:, i, :]) for i in range(6)); tF = S.opnorm_up(D)
        Pc = q / (2 * math.pi)
        d = sum(((arb(float(x)) - TP * arb(float(c))) * (arb(float(x)) - TP * arb(float(c))) for x, c in zip(q, Pc)), arb(0))   # rounding P/2pi
        n1 = n1 + sqrt_up(d)
        ctx.prec = 120
        return SC.stage_c_triple(Pc.reshape(6, 6), S.up((arb(tcol) * rr + n1) / TP), tang=(D, S.up(rr / TP), S.up(n1 / TP)),
                                 radius=b.label_radius, rF=S.up((arb(tF) * rr + n1) / TP))

    with open(outp, 'a') as f:
        for j in idx:
            if j in done: continue
            claims = os.environ.get('CLAIMS')                       # a shared work queue: first claimant does the ball
            if claims:
                try:
                    os.close(os.open(os.path.join(claims, '%s_%d' % (TAG, j)), os.O_CREAT | os.O_EXCL))
                except FileExistsError:
                    continue
            t0 = time.time()
            try:
                b = S.Ball(seeds[j])
                a = S.stage_c_args(b)
                ok0 = SC.stage_c_triple(a['P'], a['rcol'], tang=(a['T'], a['rH'], a['nN']), radius=a['radius'], rF=a['rF'])
                tests, failed, levels = 1, [], {}
                model = None if ok0.get('ok') else ZTP.model_for(b)
                if not ok0.get('ok') and model is None:
                    raise ArithmeticError('no whole-ball model for the sub-cells')
                if model is not None:
                    ctx.prec = 224
                    curv = ZTP.matrix_norm(model['H2']) + ZTP.matrix_norm(model['X']) * model['Z2']
                if not ok0.get('ok'):
                    # level 1 cells have radius r (no better than the whole ball): start at level 2 (radius r / 2), then
                    # level by level; the last level (max_level) only when at most REFINE_CAP cells failed before it
                    # (near the triple locus most cells fail, and refining them only confirms the tube, at 16x the cost)
                    todo = [c for c in itertools.product(range(4), repeat=4)]
                    m = 2
                    while todo:
                        fails = []
                        for c in todo:
                            h = 1.0 / 2 ** m                                 # in u = w / r
                            uc = [-1 + (2 * ci + 1) * h for ci in c]
                            if misses_ball(uc, h): continue
                            out = cell_test(b, model, curv, uc, h)
                            tests += 1
                            if out.get('ok'): levels[m] = levels.get(m, 0) + 1
                            else: fails.append(c)
                        stop = m >= maxl or (m + 1 == maxl and len(fails) > REFINE_CAP)
                        if stop:
                            failed += [[m] + list(c) for c in fails]; break
                        todo = [tuple(2 * ci + k for ci, k in zip(c, kk)) for c in fails for kk in itertools.product(range(2), repeat=4)]
                        m += 1
                row = dict(idx=j, r=b.r, n=b.n, ok=bool(ok0.get('ok')) or not failed, whole=bool(ok0.get('ok')),
                           tests=tests, certified_cells=levels, failed_cells=failed, max_level=maxl)
            except Exception as e:                                  # noqa: BLE001
                row = dict(idx=j, ok=False, error=repr(e), trace=traceback.format_exc()[-1500:])
            row['wall_s'] = round(time.time() - t0, 1)
            f.write(json.dumps(row) + '\n'); f.flush()


if __name__ == '__main__':
    main()

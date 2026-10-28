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

    def cell_test(b, model, curv, wc, rho):
        """stage_c_triple on a sub-ball centred at an exact point: Q(w) = Q(c) + DQ(c)(w - c) + R, ||w - c|| <= rho, with
        Q(c), DQ(c) enclosed by the whole-ball model's centre jet (patches.centre_jet, the same contraction as C1) and
        ||R|| <= (||H2|| + ||X|| Z2) rho^2 / 2.  A centre outside the ball is moved inside and rho enlarged to cover
        the cell's part of the ball (the segment to any such point stays in the ball, where the model holds)."""
        ctx.prec = 224
        nc = math.sqrt(sum(x * x for x in wc))
        if nc >= b.r * (1 - 1e-9):
            f = b.r * (1 - 1e-9) / nc; cp = [x * f for x in wc]; rho = rho + (nc - b.r * (1 - 1e-9)) * 1.000001
        else:
            cp = wc
        qc, dc, _ = ZTP.centre_jet(model, arb_mat([[arb(float(x))] for x in cp]))
        q = np.array([float(qc[i, 0].mid()) for i in range(36)])
        D = np.array([[float(dc[i, k].mid()) for k in range(4)] for i in range(36)])
        e0 = sum(((qc[i, 0] - arb(q[i])) ** 2 for i in range(36)), arb(0)).sqrt()
        e1 = sum(((dc[i, k] - arb(D[i, k])) ** 2 for i in range(36) for k in range(4)), arb(0)).sqrt()
        rr = arb(rho)
        n1 = e0 + e1 * rr + curv * rr * rr / 2
        tcol = max(S.opnorm_up(D.reshape(6, 6, 4)[:, i, :]) for i in range(6)); tF = S.opnorm_up(D)
        Pc = q / (2 * math.pi)
        d = sum(((arb(float(x)) - TP * arb(float(c))) ** 2 for x, c in zip(q, Pc)), arb(0))   # rounding P/2pi
        n1 = n1 + arb(S.up(d)).sqrt()
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
                            if math.sqrt(sum(x * x for x in uc)) - 2 * h > 1: continue      # the cell misses the ball
                            out = cell_test(b, model, curv, [b.r * x for x in uc], 2 * h * b.r)
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

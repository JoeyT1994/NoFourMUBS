#!/usr/bin/env python3
"""Export whole-ball H models of original seed balls, for work off the cluster (no proof role).

  python ball_model_export.py TC_TREE OUT_DIR BALL...

For each original seed ball: its atlas record, the frozen certifier's normal-form enclosure over the WHOLE ball
(H[a, c] = exp(i Q[6a + c]), Q = Q0 + U w + H2 (w kron w)/2 + X xi, |w| <= r, |xi| <= tau) as Arb strings, H's phases
at the centre (floats), and per entry a bound on its phase motion over the ball (r |U_row| + r^2/2 |H2_row| +
tau |X_row|).
"""
import gzip, json, os, sys


def main():
    tc, out, balls = os.path.abspath(sys.argv[1]), os.path.abspath(sys.argv[2]), [int(x) for x in sys.argv[3:]]
    fn = os.path.join(tc, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path.insert(0, fn); os.chdir(fn)
    import run as R, patches as P
    from flint import arb, ctx
    ctx.prec = 160
    seeds = json.load(gzip.open(os.path.join(tc, 'proof/seed_atlas/results/seed_atlas_certificate.json.gz'), 'rt'))['seeds']
    s = lambda x: x.str(radius=True, more=True)
    for i in balls:
        rec = seeds[i]
        try:
            m = P.normal_form(R.SC.Ball(rec), prec=160)
        except Exception as e:                                     # noqa: BLE001
            json.dump(dict(ball=i, record=rec, error='%s: %s' % (type(e).__name__, e)), open(os.path.join(out, 'b%d.json' % i), 'w')); continue
        rows = lambda M: [[s(M[a, j]) for j in range(M.ncols())] for a in range(M.nrows())]
        nrm = lambda M, a: sum((M[a, j] * M[a, j] for j in range(M.ncols())), arb(0)).sqrt()
        motion = [float((m['r'] * nrm(m['U'], a) + m['r'] ** 2 / 2 * nrm(m['H2'], a) + m['tau'] * nrm(m['X'], a)).upper())
                  for a in range(36)]
        doc = dict(ball=i, record=rec,
                   model=dict(convention='H[a, c] = exp(i Q[6a + c]); Q = Q0 + U w + H2 (w kron w)/2 + X xi, |w| <= r, |xi| <= tau',
                              Q0=[s(m['Q0'][a, 0]) for a in range(36)], U=rows(m['U']), H2=rows(m['H2']), X=rows(m['X']),
                              r=s(m['r']), tau=s(m['tau'])),
                   H_centre_phases=[[float(m['Q0'][6 * a + c, 0].mid()) for c in range(6)] for a in range(6)],
                   phase_motion_bound=[[motion[6 * a + c] for c in range(6)] for a in range(6)])
        json.dump(doc, open(os.path.join(out, 'b%d.json' % i), 'w'), indent=0)
        print(i, 'r', float(m['r'].mid()), 'max phase motion', round(max(motion), 4), flush=True)


if __name__ == '__main__': main()

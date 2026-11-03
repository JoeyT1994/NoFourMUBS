"""Stage C input preconditions for a native whole-ball certifier call (audit finding F2).

proof/atlas/RIGOUR.md proves Stage C's absolute binary64 error budget under input magnitude hypotheses: finite inputs,
frame entries |T| <= 1, the scalars rcol, rH, nN, rF and the label radius in [0, 1), and a centre operator norm below
1.01.  A fresh C1 and normal form do not imply them (the audit's rescaled seed 2200 passes both with max |T| = 1.476).
`check` recomputes the exact arguments the certifier passes to Stage C for one ball record (native_cover.
model_stage_c_args on patches.normal_form, as run.run_ball does) and checks every hypothesis in Arb, exactly as the
X-ball's model.stage_c_preconditions does.  It raises ArithmeticError on any failure; a failing ball is NOT
ESTABLISHED.  The bin-magnitude constants are those of the X-ball guard (largest coarse bin at M = 12, fine bins at
M = 96 with their closed mean-zero balls).

  python stagec_guard.py TC_TREE SUBATLAS... --out SIDECAR.jsonl [--only-closed] [--workers N]

writes one row per (sub-atlas, index): {atlas_sha256, index, seed_sha256, status PASS|FAIL, ...}, bound to this file's
SHA-256, for the sidecar that assemble.py requires before counting a split sub-ball as closed.
"""
import gzip, hashlib, json, math, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))


def setup(tc_tree):
    fn = os.path.join(tc_tree, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    if fn not in sys.path: sys.path.insert(0, fn)
    import run as R
    return R


def check(R, rec):
    import numpy as np
    from flint import arb, ctx
    ctx.prec = 160
    ball = R.SC.Ball(rec)
    model = R.P.normal_form(ball, prec=160)
    args, enclosure = R.NC.model_stage_c_args(ball, model)
    if args['T'].shape != (36, 4) or args['P'].shape != (6, 6):
        raise ArithmeticError('unexpected Stage C dimensions')
    if not np.isfinite(args['T']).all() or not np.isfinite(args['P']).all():
        raise ArithmeticError('nonfinite Stage C input')
    tmax = max(abs(arb(float(v))) for v in args['T'].ravel())
    if not tmax <= 1:
        raise ArithmeticError('Stage C frame entry exceeds RIGOUR.md bound')
    for key in ('rcol', 'rH', 'nN', 'rF', 'radius'):
        value = args[key]
        if not math.isfinite(value) or not (arb(0) <= arb(value) and arb(value) < 1):
            raise ArithmeticError('Stage C scalar outside RIGOUR.md bounds: ' + key)
    opnorm = R.NC.stagec.opnorm_bound(args['P'])
    if not math.isfinite(opnorm) or not arb(opnorm) < arb(101) / 100:
        raise ArithmeticError('Stage C centre operator norm not below 1.01')
    bins = dict(a=arb(1) / 24, X=arb(29).sqrt() / arb(6).sqrt() / 24, L=arb(5) / 24, I=arb(5) / 24)
    if not all(v < 1 for v in bins.values()):
        raise ArithmeticError('Stage C bin magnitude precondition failed')
    return dict(frame_entry_max=str(tmax), centre_opnorm_upper=opnorm,
                scalars={k: args[k] for k in ('rcol', 'rH', 'nN', 'rF', 'radius')},
                margin=R.NC.stagec.MARGIN, enclosure=enclosure)


def guard_sha256():
    return hashlib.sha256(open(os.path.abspath(__file__), 'rb').read()).hexdigest()


def _one(job):
    R = setup(job[0])
    sa, i, ash = job[1], job[2], job[3]
    rec = json.load(gzip.open(sa, 'rt'))['seeds'][i]
    row = dict(atlas_sha256=ash, index=i, guard_sha256=guard_sha256(),
               seed_sha256=hashlib.sha256(json.dumps(rec, sort_keys=True).encode()).hexdigest())
    try:
        row.update(status='PASS', **check(R, rec))
    except Exception as e:  # noqa: BLE001 -- any failure leaves the sub-ball open
        row.update(status='FAIL', reason='%s: %s' % (type(e).__name__, e))
    return row


def main():
    a = sys.argv[1:]
    out = a[a.index('--out') + 1]; del a[a.index('--out'):a.index('--out') + 2]
    w = 1
    if '--workers' in a:
        w = int(a[a.index('--workers') + 1]); del a[a.index('--workers'):a.index('--workers') + 2]
    only = '--only-closed' in a
    if only: a.remove('--only-closed')
    tc, sas = os.path.abspath(a[0]), [os.path.abspath(x) for x in a[1:]]
    done = set()
    if os.path.exists(out):
        for line in open(out):
            try:
                x = json.loads(line); done.add((x['atlas_sha256'], x['index']))
            except ValueError:
                pass
    jobs = []
    for sa in sas:
        ash = hashlib.sha256(open(sa, 'rb').read()).hexdigest()
        n = len(json.load(gzip.open(sa, 'rt'))['seeds'])
        want = range(n)
        if only:
            rows = sa[:-len('.json.gz')] + '.jsonl'
            ok = set()
            if os.path.exists(rows):
                for line in open(rows):
                    try:
                        x = json.loads(line)
                    except ValueError:
                        continue
                    if x.get('status') in ('CERTIFIED', 'CERTIFIED EMPTY'): ok.add(x['index'])
            want = sorted(ok)
        jobs += [(tc, sa, i, ash) for i in want if (ash, i) not in done]
    from concurrent.futures import ProcessPoolExecutor, as_completed
    ctxf = __import__('multiprocessing').get_context('fork')
    with open(out, 'a') as f, ProcessPoolExecutor(w, mp_context=ctxf) as pool:
        for fu in as_completed([pool.submit(_one, j) for j in jobs]):
            f.write(json.dumps(fu.result(), allow_nan=False) + '\n'); f.flush()


if __name__ == '__main__':
    main()

"""Split a seed ball into sub-balls that cover it, and run the whole-ball triple certifier on each (EXPERIMENTAL).

  python split.py build ATLAS INDEX LEVEL OUT.json.gz      the sub-ball records and their cover receipt
  python split.py run TC_TREE SUBATLAS... [--workers N] [--seconds T]   the frozen certifier's run_ball on every
                                                           sub-ball, each stopped after T s (NOT ESTABLISHED)
                                                           (rows in SUBATLAS's .jsonl; finished rows are skipped)

**Cover.** Level m cuts the parent's parameter cube [-r, r]^4 into cells of half-width h r (h = 2^-m); the cells that
meet the closed ball (decided exactly, nothird.misses_ball) cover it.  The cell with exact centre c = r uc lies in the
ball of radius 2 h r around c.  Its sub-ball keeps the parent's frame Mth and has a binary64 centre theta0' close to
theta0 + Mth c, and radius

    r' >= 2 h r + || Mth^-1 delta ||,   delta = theta0 + Mth c - theta0'   (reduced mod 2 pi),

checked in Arb from the exact data.  Then every parent point theta0 + Mth w, w in the cell, is theta0' + Mth w' with
||w'|| <= r' (mod 2 pi), so the sub-balls cover the parent's image.  Nothing else about the parent is used: each
sub-ball is an ordinary seed record (centre phases P, frame U = T Mth in the horizontal gauge, its own C1 constant n
from the whole-ball C1 of return Z), and the certifier recertifies its C1 from scratch before using it.

A sub-ball whose centre completion or C1 fails is recorded as such (NOT ESTABLISHED for that cell).
"""
import gzip, itertools, json, math, os, sys, time
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))


def build(atlas, index, level, out):
    sys.path[:0] = [os.path.join(ROOT, 'proof/seed_atlas/cert'), os.path.join(ROOT, 'proof/seed_atlas/driver'),
                    os.path.join(ROOT, 'proof/atlas'), HERE]
    import seedcert as SCt, wholeball as WB
    from c1 import Ball as DBall, hor_axis, hor36
    from nothird import misses_ball, sqrt_up, float_up
    from flint import arb, arb_mat, ctx
    ctx.prec = 224
    doc = json.load(gzip.open(atlas, 'rt'))
    rec = doc['seeds'][index]
    b = SCt.Ball(rec)
    phh, phv, ok = SCt.centre_sides(b)
    if not ok: raise ArithmeticError('parent centre sides failed')
    hx = lambda x: float(x).hex()
    Ma = arb_mat([[arb(float(b.Mth[i, j])) for j in range(4)] for i in range(4)])
    Minv = Ma.inv()
    TP = 2 * arb.pi()
    h = 1.0 / 2 ** level
    subs, cover = [], []
    for c in itertools.product(range(2 ** level), repeat=4):
        uc = [-1 + (2 * ci + 1) * h for ci in c]
        if misses_ball(uc, h): continue
        row = dict(cell=list(c))
        try:
            th = b.theta0 + b.Mth @ (b.r * np.array(uc))
            d = DBall(th, phh, phv, o=b.o)
            Uh = hor_axis(d.T, 0) @ b.Mth
            t0p = d.theta0
            # delta = theta0 + Mth (r uc) - theta0', exactly in Arb, reduced mod 2 pi componentwise
            ce = [sum((arb(float(b.Mth[i, j])) * arb(b.r) * arb(uc[j]) for j in range(4)), arb(float(b.theta0[i])))
                  for i in range(4)]
            dl = []
            for i in range(4):
                x = ce[i] - arb(float(t0p[i]))
                k = round(float((x / TP).mid()))
                dl.append(x - k * TP)
            v = Minv * arb_mat([[x] for x in dl])
            rp = float_up(arb(2 * h) * arb(b.r) + sqrt_up(sum((v[i, 0] * v[i, 0] for i in range(4)), arb(0))))
            sub = dict(theta0=[hx(x) for x in t0p], Mth=[hx(x) for x in b.Mth.ravel()], r=hx(rp), o=int(b.o),
                       k=int(b.k), P=[hx(x) for x in hor36(d.P)], U=[hx(x) for x in Uh.ravel()], gauge='hor',
                       n=hx(1.0), label_radius=rec['label_radius'], transfers=[])
            sb = SCt.Ball(sub)
            sh, sv, sok = SCt.centre_sides(sb)
            if not sok: raise ArithmeticError('sub-ball centre sides failed')
            o = WB.wholeball_c1(sb.theta0, sb.Mth, sb.r, sb.o, sb.P, sb.U, sh, sv)
            if not o['ok']: raise ArithmeticError('sub-ball whole-ball C1 failed')
            sub['n'] = hx(math.nextafter(float(o['n_record']) * (1 + 1e-6), math.inf))
            row.update(sub=len(subs), r=rp, n=float.fromhex(sub['n']))
            subs.append(sub)
        except Exception as e:                                     # noqa: BLE001
            row['error'] = '%s: %s' % (type(e).__name__, e)
        cover.append(row)
    import hashlib
    out_doc = dict(format=doc.get('format'), max_level=doc.get('max_level'), seeds=subs, records=[], edge=[],
                   tao=doc.get('tao'), info=dict(split=dict(parent=index, level=level, parent_r=rec['r'],
                                                           parent_sha256=hashlib.sha256(json.dumps(rec, sort_keys=True).encode()).hexdigest(),
                                                           atlas_sha256=hashlib.sha256(open(atlas, 'rb').read()).hexdigest(),
                                                           cover=cover)))
    with gzip.open(out, 'wt') as f: json.dump(out_doc, f)
    bad = [r for r in cover if 'error' in r]
    print('ball %d level %d: %d cells, %d sub-balls, %d failed to build' % (index, level, len(cover), len(subs), len(bad)))
    for r in bad[:5]: print(' ', r)


def run_ball_limited(run_ball, sa, i, bid, seconds):
    """run_ball with a wall-clock limit: SIGALRM raises inside the certifier, whose own handler then records the
    sub-ball as NOT ESTABLISHED (a timeout never closes anything; the sub-ball is split instead)."""
    import signal

    def expire(signum, frame):
        raise TimeoutError('sub-ball time limit of %d s reached' % seconds)
    if seconds:
        signal.signal(signal.SIGALRM, expire); signal.alarm(int(seconds))
    try:
        # Audit F2: the Stage C input preconditions of RIGOUR.md, checked on this sub-ball's actual arguments first.
        import stagec_guard as G
        R = sys.modules['run']
        rec = json.load(gzip.open(sa, 'rt'))['seeds'][i]
        try:
            pre = G.check(R, rec)
        except ArithmeticError as e:
            return dict(index=i, status='NOT ESTABLISHED', binding=bid, reason='Stage C precondition: %s' % e)
        row = run_ball(sa, i, bid)
        row['stage_c_preconditions'] = dict(pre, guard_sha256=G.guard_sha256())
        return row
    except TimeoutError as e:                       # raised outside the certifier's own handler
        return dict(index=i, status='NOT ESTABLISHED', binding=bid, reason='TimeoutError: %s' % e)
    finally:
        if seconds: signal.alarm(0)


def run(tc_tree, subatlases, workers, seconds=0, refined=None):
    """The frozen certifier on every sub-ball of every sub-atlas, in one process pool; rows go to the sub-atlas's
    .jsonl (completed rows are kept and skipped)."""
    fn = os.path.join(tc_tree, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path.insert(0, fn)
    os.chdir(fn)
    import run as R
    import hashlib
    from pathlib import Path
    from concurrent.futures import ProcessPoolExecutor, as_completed

    def binding(atlas):
        """run.binding for a sub-ball atlas: the same sources plus this file, the sub-atlas hash in place of the pinned
        original (whose hash and the parent cover are inside the sub-atlas), and a schema naming the split.  The frozen
        files are unchanged; worker processes inherit this by fork."""
        files = {str(p.relative_to(R.ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in R.source_paths()}
        files['split.py'] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
        files['stagec_guard.py'] = hashlib.sha256((Path(__file__).parent / 'stagec_guard.py').read_bytes()).hexdigest()
        if refined:
            files['moving_integrated.py'] = hashlib.sha256(Path(refined).read_bytes()).hexdigest()
        value = dict(schema='tc-native-allk-v1+split', atlas_sha256=hashlib.sha256(Path(atlas).read_bytes()).hexdigest(),
                     sources=files, precision=160)
        value['id'] = hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
        return value
    R.binding = binding
    if refined:
        # The sharper symmetry bound (moving_integrated.prove, signed quadratic and cubic remainder), exactly as the
        # collaborator's refined_batch.py: each of the weights 1.0 and 0.3 must pass the same strict Arb inequality.
        import importlib.util
        spec = importlib.util.spec_from_file_location('moving_refined', refined)
        module = importlib.util.module_from_spec(spec); spec.loader.exec_module(module)

        def try_weights(*args, **kwargs):
            errors = []
            for weight in (1.0, 0.3):
                try:
                    return module.prove(*args, mixed_weight=weight, **kwargs)
                except (ArithmeticError, ValueError, ZeroDivisionError) as e:
                    errors.append(str(e))
            raise ArithmeticError('all validated weights failed: ' + ' | '.join(errors))
        R.MS.prove = try_weights
    jobs, outs = [], {}
    for sa in subatlases:
        out = sa[:-len('.json.gz')] + '.jsonl'
        bid = binding(sa)['id']
        done = set()
        if os.path.exists(out):
            for line in open(out):
                try:
                    x = json.loads(line)
                except ValueError:
                    continue
                if x.get('binding') == bid: done.add(x['index'])
        n = len(json.load(gzip.open(sa, 'rt'))['seeds'])
        outs[sa] = open(out, 'a')
        jobs += [(sa, i, bid) for i in range(n) if i not in done]
    ctxf = __import__('multiprocessing').get_context('fork')
    with ProcessPoolExecutor(max_workers=workers, mp_context=ctxf) as pool:
        futs = {pool.submit(run_ball_limited, R.run_ball, sa, i, bid, seconds): sa for sa, i, bid in jobs}
        for fu in as_completed(futs):
            row = fu.result(); f = outs[futs[fu]]
            f.write(json.dumps(row, allow_nan=False) + '\n'); f.flush()
    for f in outs.values(): f.close()


if __name__ == '__main__':
    a = sys.argv[1:]
    if a[0] == 'build': build(a[1], int(a[2]), int(a[3]), a[4])
    elif a[0] == 'run':
        w, t = 1, 0
        if '--workers' in a:
            i = a.index('--workers'); w = int(a[i + 1]); del a[i:i + 2]
        if '--seconds' in a:
            i = a.index('--seconds'); t = int(a[i + 1]); del a[i:i + 2]
        rf = None
        if '--refined' in a:
            i = a.index('--refined'); rf = os.path.abspath(a[i + 1]); del a[i:i + 2]
        run(os.path.abspath(a[1]), [os.path.abspath(x) for x in a[2:]], w, t, rf)

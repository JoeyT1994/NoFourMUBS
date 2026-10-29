"""Refine an open layer of a seed-ball tree, skipping cells a labelled-score receipt closes (EXPERIMENTAL).

  python tree_build.py build ATLAS INDEX LEVEL OUT.json.gz     level LEVEL from layer LEVEL-1 in $TC_PARENT_DIR
  python tree_build.py run TC_TREE SUBATLAS... [--workers N] [--seconds T]

This is split_select.py with two changes.

1. **Targets.** The cells refined are the previous layer's NOT ESTABLISHED cells, *minus* those whose every open
   pattern is discharged by a pinned gamma_test.py receipt ($TC_GAMMA_FILES, $TC_GAMMA_SHA, $TC_GAMMA_RULES), matched
   to the parent record exactly as audit_select.py matches it: the sub-atlas hash, the record hash, the certifier row's
   binding, C1 ok and a certified normal form, the certifier-closed pattern set, and the pattern count.
   A closed cell needs no children (TREE_PROOF.md, Lemma 2). The skipped cells are recorded in
   `gamma_discharged_parent_cells`.
2. **Children directly.** The 16 children of each target cell are listed directly, instead of enumerating every
   level-L cell.

The cover, the sub-ball records, the containment bound and the run are those of split_select.py (see there).
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
    if level < 3: raise ValueError('tree_build refines an existing layer: level >= 3')
    import hashlib
    # Selective refinement to any depth (generalising the collaborator's split_mixed.py, which builds level 3 only):
    # level L refines the unresolved cells of the layer at level L - 1 (the full level-2 cover, or a selective layer).
    parent_path = os.path.join(os.environ['TC_PARENT_DIR'], 'b%d_l%d.json.gz' % (index, level - 1))
    parent_rows_path = parent_path[:-len('.json.gz')] + '.jsonl'
    with gzip.open(parent_path, 'rt') as pf: parent_doc = json.load(pf)
    parent_rows = []
    with open(parent_rows_path) as rf:
        for line in rf:
            try: parent_rows.append(json.loads(line))
            except ValueError: pass                          # an interrupted final write
    best = {}
    for r in parent_rows:                                    # one row per sub-ball, a closed one when there is one
        i = r['index']
        if i not in best or (best[i]['status'] == 'NOT ESTABLISHED' and r['status'] != 'NOT ESTABLISHED'): best[i] = r
    parent_rows = list(best.values())
    pinfo=parent_doc['info']['split']
    if pinfo['parent'] != index or pinfo['level'] != level - 1 or pinfo['atlas_sha256'] != hashlib.sha256(open(atlas,'rb').read()).hexdigest(): raise ValueError('wrong parent')
    pmap={r['index']:r for r in parent_rows}
    if len(pmap)!=len(parent_rows) or set(pmap)!=set(range(len(parent_doc['seeds']))): raise ValueError('missing or duplicate parent receipt')
    if any(r['status'] not in ('CERTIFIED','CERTIFIED EMPTY','NOT ESTABLISHED') for r in parent_rows): raise ValueError('parent has unknown status')
    if len(pinfo['cover'])!=len(parent_doc['seeds']) or any('error' in x for x in pinfo['cover']): raise ValueError('failed or incomplete parent construction')
    open_cells={tuple(x['cell']) for x in pinfo['cover'] if pmap[x['sub']]['status']=='NOT ESTABLISHED'}
    closed_by_gamma=set()
    rules={x for x in os.environ.get('TC_GAMMA_RULES','').split(',') if x}
    gsha=os.environ.get('TC_GAMMA_SHA')
    if rules and gsha:
        psha=hashlib.sha256(open(parent_path,'rb').read()).hexdigest()
        want={x['sub']:x for x in pinfo['cover'] if pmap[x['sub']]['status']=='NOT ESTABLISHED'}
        recs={}
        for gp in os.environ.get('TC_GAMMA_FILES','').split():
            if not os.path.exists(gp): continue              # a ball may have no receipts of one kind yet
            for line in open(gp):
                try: g=json.loads(line)
                except ValueError: continue
                if 'error' in g or g.get('gamma_sha256')!=gsha or g.get('subatlas_sha256')!=psha or g.get('sub') not in want: continue
                recs.setdefault(g['sub'],[]).append(g)
        for i,entry in want.items():
            row=pmap[i]; rec_sha=hashlib.sha256(json.dumps(parent_doc['seeds'][i],sort_keys=True).encode()).hexdigest()
            if not ((row.get('c1') or {}).get('ok') is True and (row.get('normal_form') or {}).get('status')=='CERTIFIED'): continue
            certified={x['number'] for x in row.get('patterns',[]) if x['status'] in ('CERTIFIED','EXCLUDED')}
            for g in recs.get(i,[]):
                if g.get('seed_sha256')!=rec_sha or g.get('receipt_binding')!=row['binding'] or set(g['closed_by_certifier'])!=certified: continue
                if 'patterns_after_column_filter' in row and row['patterns_after_column_filter']!=g['patterns_total']: continue
                openp=set(range(g['patterns_total']))-certified; got={x['pattern']:x for x in g['patterns']}
                if set(got)!=openp: continue
                if all((('fourier' in rules) and got[n]['fourier']) or (('ordering' in rules) and (got[n]['fourier'] or got[n]['ordering'])) for n in openp):
                    closed_by_gamma.add(tuple(entry['cell'])); break
    targets=open_cells-closed_by_gamma
    subs, cover = [], []
    for c in sorted({c for t in targets for c in itertools.product(*[(2*x,2*x+1) for x in t])}):
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
                   tao=doc.get('tao'), info=dict(split=dict(parent=index, level=level, targeted_parent_cells=sorted(targets), gamma_discharged_parent_cells=sorted(closed_by_gamma), gamma_sha256=gsha if closed_by_gamma else None, gamma_rules=sorted(rules) if closed_by_gamma else [], parent_subatlas_sha256=hashlib.sha256(open(parent_path,'rb').read()).hexdigest(), parent_receipts_sha256=hashlib.sha256(open(parent_rows_path,'rb').read()).hexdigest(), parent_r=rec['r'],
                                                           parent_sha256=hashlib.sha256(json.dumps(rec, sort_keys=True).encode()).hexdigest(),
                                                           atlas_sha256=hashlib.sha256(open(atlas, 'rb').read()).hexdigest(),
                                                           cover=cover)))
    with gzip.open(out, 'wt') as f: json.dump(out_doc, f)
    bad = [r for r in cover if 'error' in r]
    print('ball %d level %d: %d open parent cells, %d closed by gamma receipts; %d cells, %d sub-balls, %d failed to build' % (index, level, len(open_cells), len(closed_by_gamma), len(cover), len(subs), len(bad)))
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
        return run_ball(sa, i, bid)
    except TimeoutError as e:                       # raised outside the certifier's own handler
        return dict(index=i, status='NOT ESTABLISHED', binding=bid, reason='TimeoutError: %s' % e)
    finally:
        if seconds: signal.alarm(0)


def run(tc_tree, subatlases, workers, seconds=0):
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
        value = dict(schema='tc-native-allk-v1+split', atlas_sha256=hashlib.sha256(Path(atlas).read_bytes()).hexdigest(),
                     sources=files, precision=160)
        value['id'] = hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
        return value
    R.binding = binding
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
        run(os.path.abspath(a[1]), [os.path.abspath(x) for x in a[2:]], w, t)

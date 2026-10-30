#!/usr/bin/env python3
"""Run the collaborator's whole-cell graph exclusion (hardball/certify_graph.py) on the open patterns of many sub-balls.

  python graph_run.py TC_TREE HB_DIR LIST OUT.jsonl WORKERS [--seconds S] [--max-nodes N]

LIST has lines "SUBATLAS SUB PATTERN[,PATTERN...]" (patterns no certifier, score or anchored receipt closed). For each
sub-ball the frozen certifier's normal form, complete cover and pattern list are rebuilt once, exactly as
anchored_run.py (and run.run_ball) does. For each listed pattern a tc-pattern-snapshot-v1 file is written to a private
temporary directory, and:
1. certify_graph.certify(snapshot, engine='auto') runs with numerical proposals of its own (untrusted);
2. if that is not established, adaptive_capture.py (in a subprocess, at most S seconds) searches for capture regions,
   and its final proposals, columns and capture radius are replayed by certify_graph.certify, the authoritative check.
One JSON line per pattern: certify_graph's receipt (status PROVED_PATTERN_EXCLUSION or NOT_ESTABLISHED), with the
bindings audit_select.py checks (sub-atlas, sub-ball, record and snapshot hashes, the pattern's colours and count,
this runner's hash). Proposals are numerical and untrusted; every acceptance inequality is the checker's Arb test.
"""
import gzip, hashlib, json, os, subprocess, sys, tempfile
from concurrent.futures import ProcessPoolExecutor, as_completed

HERE = os.path.dirname(os.path.abspath(__file__))
M = {}


def a2s(x):
    return x.str(radius=True, more=True)


def mat(m):
    return [[a2s(m[i, j]) for j in range(m.ncols())] for i in range(m.nrows())]


def setup(tc, hb):
    fn = os.path.join(tc, 'proof/theorems/TC_triple_classification/family_neighbourhoods')
    sys.path[:0] = [fn, hb]; os.chdir(fn)
    import run as R, native_cover as NC, moving_symmetry as MS, patches as P
    import certify_graph as CG
    M.update(R=R, NC=NC, MS=MS, P=P, CG=CG, HB=hb)


def job(args):
    sa, sub, patterns, seconds, max_nodes = args
    R, NC, MS, P, CG = M['R'], M['NC'], M['MS'], M['P'], M['CG']
    import numpy as np
    from flint import ctx
    out = []
    try:
        ctx.prec = 160
        if M.get('sa') != sa:                                      # one sub-atlas read per worker and file
            raw = open(sa, 'rb').read()
            M.update(sa=sa, sa_sha=hashlib.sha256(raw).hexdigest(), seeds=json.loads(gzip.decompress(raw))['seeds'])
        rec = M['seeds'][sub]
        b = R.SC.Ball(rec); model = P.normal_form(b, prec=160)
        H = np.exp(1j * MS.numeric(model['Q0']).reshape(6, 6))
        roots = NC.propose_roots(H); cover = NC.complete_cover(b, model, roots)
        prepared, bounds, cliques, steps = NC.contract_patterns(model, roots, cover)
        base = dict(schema='tc-pattern-snapshot-v1', subatlas=os.path.basename(sa), sub=sub, record=rec,
                    record_sha256=hashlib.sha256(json.dumps(rec, sort_keys=True).encode()).hexdigest(), certifier_row=None,
                    model=dict(Q0=[a2s(model['Q0'][i, 0]) for i in range(36)], U=mat(model['U']), H2=mat(model['H2']),
                               X=mat(model['X']), r=a2s(model['r']), tau=a2s(model['tau'])))
        with tempfile.TemporaryDirectory() as tmp:
            for pat in patterns:
                cl = cliques[pat]
                cols = [dict(colour=int(c), v0=[a2s(prepared[c]['v0'][a, 0]) for a in range(6)], T=mat(prepared[c]['T']),
                             epsilon=a2s(bounds[c]['epsilon']), phase_radius=a2s(bounds[c]['phase_radius'])) for c in cl]
                path = os.path.join(tmp, 'b_%d_%d.json' % (sub, pat))
                with open(path, 'w') as f: json.dump(dict(base, pattern=pat, pattern_colours=[int(c) for c in cl], columns=cols), f)
                bind = dict(subatlas=os.path.basename(sa), subatlas_sha256=M['sa_sha'], sub=sub, pattern=pat,
                            runner_sha256=M['RUN_SHA'], patterns_total=len(cliques), pattern_colours=[int(c) for c in cl])
                try:
                    r = CG.certify(path, None, 160, max_nodes, 'auto'); r['route'] = 'auto'
                    if r['status'] != 'PROVED_PATTERN_EXCLUSION' and seconds > 0:
                        ad = os.path.join(tmp, 'ad_%d' % pat)
                        subprocess.run([sys.executable, '-W', 'ignore', os.path.join(M['HB'], 'adaptive_capture.py'), path,
                                        '--out-dir', ad, '--seconds', str(seconds), '--max-nodes', '10000'],
                                       capture_output=True, text=True, timeout=seconds + 120)
                        fr = os.path.join(ad, 'final_receipt.json'); fp = os.path.join(ad, 'final_proposals.json')
                        if os.path.exists(fr) and json.load(open(fr)).get('status') == 'PROVED_PATTERN_EXCLUSION' and os.path.exists(fp):
                            g = json.load(open(fr))['graph']
                            r2 = CG.certify(path, fp, 160, max_nodes, 'auto', str(g['capture_radius']), list(g['columns']))
                            r2['route'] = 'adaptive replay'
                            if r2['status'] == 'PROVED_PATTERN_EXCLUSION': r = r2
                except (ValueError, ArithmeticError, ZeroDivisionError, subprocess.TimeoutExpired) as e:
                    r = dict(status='NOT_ESTABLISHED', reason='%s: %s' % (type(e).__name__, str(e)[:120]))
                r.update(bind)
                out.append(r)
    except Exception as e:                                          # noqa: BLE001
        out.append(dict(subatlas=os.path.basename(sa), sub=sub, error='%s: %s' % (type(e).__name__, e)))
    return out


def main():
    a = sys.argv[1:]
    seconds, max_nodes = 180, 20000
    if '--seconds' in a:
        i = a.index('--seconds'); seconds = float(a[i + 1]); del a[i:i + 2]
    if '--max-nodes' in a:
        i = a.index('--max-nodes'); max_nodes = int(a[i + 1]); del a[i:i + 2]
    tc, hb, lst, outp, workers = os.path.abspath(a[0]), os.path.abspath(a[1]), a[2], os.path.abspath(a[3]), int(a[4])
    jobs = []
    for line in open(lst):
        if not line.strip(): continue
        sa, sub, pats = line.split()
        jobs.append((os.path.abspath(sa), int(sub), [int(x) for x in pats.split(',')], seconds, max_nodes))
    M['RUN_SHA'] = hashlib.sha256(open(os.path.abspath(__file__), 'rb').read()).hexdigest()
    setup(tc, hb)
    ctxf = __import__('multiprocessing').get_context('fork')
    with ProcessPoolExecutor(workers, mp_context=ctxf) as pool, open(outp, 'a') as f:
        for fu in as_completed([pool.submit(job, j) for j in jobs]):
            for r in fu.result(): f.write(json.dumps(r) + '\n')
            f.flush()


if __name__ == '__main__': main()

"""Certify ZC cap proposals for seed balls: build each sphere's exact coverage certificate (ZC's coverage.py, via
cert/cap_coverage.py) and check the whole sphere with the production Arb checker (seedcert.check_seed_transfers with
caps).  Writes CAPS_DIR/seed_<j>.json ({"caps", "coverage"}) for each ball that passes; one JSON line per ball.

Usage: python caps_check.py CERT PROPOSALS_DIR CAPS_DIR WORKERS [SEEDS]   (SEEDS: comma list; default: every proposal)
"""
import gzip, json, os, sys, time, multiprocessing as mp
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path[:0] = [os.path.join(HERE, '../cert'), os.path.join(HERE, '../../atlas')]
import seedcert as S, cap_coverage as COV


def init(path, prop, out):
    global D, BALLS, PROP, OUT
    D = json.load(gzip.open(path, 'rt')); BALLS = [S.Ball(s) for s in D['seeds']]; PROP, OUT = prop, out


def one(j):
    p = os.path.join(PROP, 'seed_%d.json' % j); t0 = time.time()
    if not os.path.exists(p): return dict(seed=j, status='no proposal')
    caps = json.load(open(p)).get('caps', [])
    if not caps: return dict(seed=j, status='no caps')
    try:
        cov = COV.construct_coverage_certificate(caps)
    except Exception as e:
        return dict(seed=j, status='no coverage certificate', caps=len(caps), reason=str(e)[:120])
    t1 = time.time(); cert = dict(caps=caps, coverage=cov)
    try:
        info, st = S.check_seed_transfers(BALLS[j], BALLS, [], D['seeds'][j]['transfers'], 9, caps=cert), 'PASS'
    except S.CertError as e:
        info, st = str(e)[:160], 'FAIL'
    if st == 'PASS':
        with open(os.path.join(OUT, 'seed_%d.json' % j), 'w') as f: json.dump(cert, f)
    return dict(seed=j, status=st, caps=len(caps), facets=len(cov['facets']), hull_s=round(t1 - t0, 2),
                check_s=round(time.time() - t1, 2), info=info)


if __name__ == '__main__':
    cert, prop, out, w = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4])
    seeds = ([int(x) for x in sys.argv[5].split(',')] if len(sys.argv) > 5 else
             sorted(int(f[5:-5]) for f in os.listdir(prop) if f.startswith('seed_') and f.endswith('.json')))
    os.makedirs(out, exist_ok=True)
    with mp.get_context('fork').Pool(w, initializer=init, initargs=(cert, prop, out)) as pool:
        for r in pool.imap_unordered(one, seeds): print(json.dumps(r, default=str), flush=True)

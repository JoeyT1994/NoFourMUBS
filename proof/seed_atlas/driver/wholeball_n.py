"""Per-ball remainder for whole-ball C1: for every seed ball, the certifier's own whole-ball bound (return Z,
cert/wholeball.py).  When it exceeds the stored n, n is raised to just above it, provided the certifier's Stage C still
passes there; otherwise n is kept (the certifier's box method then decides C1).  Never tightens n.  Untrusted: the
certifiers recheck everything.

Usage: python wholeball_n.py IN.json.gz OUT.json.gz [--workers N] [--log LOG.jsonl]
"""
import argparse, gzip, json, math, os, sys, time, warnings
warnings.filterwarnings('ignore')
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path[:0] = [os.path.join(HERE, '..', 'cert'), os.path.join(HERE, '..', '..', 'atlas')]
from multiprocessing import Pool

SLACK = 1 + 2 ** -20


def one(item):
    import seedcert as S, wholeball as WB
    j, seed = item
    t0 = time.time(); out = dict(j=j, n=seed['n'])
    try:
        ball = S.Ball(seed)
        phh, phv, ok = S.centre_sides(ball)
        o = WB.wholeball_c1(ball.theta0, ball.Mth, ball.r, ball.o, ball.P, ball.U, phh, phv) if ok else dict(ok=False)
        out.update(wb_ok=bool(o.get('ok')), n_record=o.get('n_record'))
        if o.get('ok') and o['n_record'] > ball.n:
            n1 = math.nextafter(o['n_record'] * SLACK, math.inf)
            ball.n = n1
            st = S.run_stage_c(ball)
            out['stagec'] = bool(st.get('ok'))
            if st.get('ok'): out['n'] = n1.hex()
    except Exception as e:
        out['error'] = repr(e)
    out['s'] = round(time.time() - t0, 1)
    return out


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('src'); ap.add_argument('dst')
    ap.add_argument('--workers', type=int, default=os.cpu_count()); ap.add_argument('--log')
    a = ap.parse_args()
    d = json.load(gzip.open(a.src, 'rt'))
    items = list(enumerate(d['seeds']))
    log = open(a.log, 'w') if a.log else None
    stats = dict(kept=0, raised=0, stagec_fail=0, wb_fail=0, error=0)
    with Pool(a.workers) as p:
        for k, o in enumerate(p.imap_unordered(one, items, chunksize=2)):
            s = d['seeds'][o['j']]
            if 'error' in o: stats['error'] += 1
            elif not o['wb_ok']: stats['wb_fail'] += 1
            elif o['n'] != s['n']: s['n'] = o['n']; stats['raised'] += 1
            elif 'stagec' in o: stats['stagec_fail'] += 1
            else: stats['kept'] += 1
            if log: log.write(json.dumps(o) + '\n'); log.flush()
            if (k + 1) % 200 == 0: print('%d / %d %s' % (k + 1, len(items), stats), flush=True)
    d.setdefault('info', {})['per_ball_n'] = dict(method='whole-ball (wholeball_n.py)', **stats)
    with gzip.open(a.dst, 'wt') as f: json.dump(d, f, separators=(',', ':'))
    print('wrote %s: %s' % (a.dst, stats), flush=True)


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""How long a successful whole-cell search takes, by level (no proof role): run fast_search.py on random cells of a
ball that meet it, with a long cap, and record each cell's outcome and time. Used to choose onetree.py's time caps.

  python search_timing.py ROOT BALL OUT_JSON --levels 3,4,5 --per-level N [--cap S] [--workers W] [--args '...']
"""
import argparse, json, os, random, subprocess, sys, tempfile, time, shutil
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

HERE = Path(__file__).resolve().parent
CODE = HERE if (HERE / 'fast_search.py').exists() else HERE.parent


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('root'); ap.add_argument('ball', type=int); ap.add_argument('out')
    ap.add_argument('--levels', default='3,4,5'); ap.add_argument('--per-level', type=int, default=64)
    ap.add_argument('--cap', type=int, default=1800); ap.add_argument('--workers', type=int, default=128)
    ap.add_argument('--args', default='--gamma --projector --depth 8 --column-nodes 30000 --scalar-cap 20000')
    a = ap.parse_args(); root = Path(a.root).resolve()
    sys.path.insert(0, str(root / 'TripleClassification/code')); import plane_tree_certificate as T
    rng = random.Random(a.ball); jobs = []
    for L in (int(x) for x in a.levels.split(',')):
        got = set()
        while len(got) < a.per_level:
            c = tuple(rng.randrange(2 ** L) for _ in range(4))
            if not T.misses_ball(L, list(c)): got.add(c)
        jobs += [(L, list(c)) for c in sorted(got)]
    env = dict(os.environ, OMP_NUM_THREADS='1', OPENBLAS_NUM_THREADS='1')
    def one(job):
        L, c = job; d = Path(tempfile.mkdtemp(prefix='timing.')); t = time.time()
        try:
            json.dump(dict(ball=a.ball, level=L, cell=c, subatlas='none', sub=0, record_sha256='none'), open(d / 'e.json', 'w'))
            try:
                subprocess.run([sys.executable, '-W', 'ignore', str(CODE / 'fast_search.py'), str(root), str(d / 'e.json'),
                                '--out', str(d / 'f.json')] + a.args.split(), cwd=root, env=env, capture_output=True, timeout=a.cap)
                r = json.load(open(d / 'f.json')); st = r.get('status'); why = str(r.get('reason', ''))[:80]
                pz = (d / 'f.proposal.json.gz').stat().st_size if (d / 'f.proposal.json.gz').exists() else None
            except subprocess.TimeoutExpired: st, why, pz = 'TIMEOUT', '', None
            except (OSError, ValueError): st, why, pz = 'ERROR', '', None
            return dict(level=L, cell=c, status=st, seconds=round(time.time() - t, 1), reason=why, proposal_bytes=pz)
        finally: shutil.rmtree(d, ignore_errors=True)
    with ThreadPoolExecutor(a.workers) as pool: res = list(pool.map(one, jobs))
    summ = {}
    for L in sorted({r['level'] for r in res}):
        rs = [r for r in res if r['level'] == L]; ok = sorted(r['seconds'] for r in rs if r['status'] == 'PROPOSED')
        q = lambda f: ok[min(len(ok) - 1, int(f * len(ok)))] if ok else None
        summ[L] = dict(cells=len(rs), proposed=len(ok), timeouts=sum(r['status'] == 'TIMEOUT' for r in rs),
                       success_seconds_p50=q(.5), p90=q(.9), max=ok[-1] if ok else None,
                       proposal_kb_mean=round(sum(r['proposal_bytes'] for r in rs if r.get('proposal_bytes')) / 1000 / max(1, len(ok)), 1),
                       failure_seconds_mean=round(sum(r['seconds'] for r in rs if r['status'] != 'PROPOSED') / max(1, len(rs) - len(ok)), 1))
        print(L, summ[L], flush=True)
    json.dump(dict(ball=a.ball, summary=summ, cells=res), open(a.out, 'w'), indent=1)


if __name__ == '__main__': main()

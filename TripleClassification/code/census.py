"""MUB-triple census at the seed-atlas centres (NUMERICAL; not part of the proof).

Usage: python census.py CERT OUT.jsonl J1 J2 ...
For each seed ball j, the Hadamard matrix at its centre (phases P of the certificate, horizontal gauge) is the start
of triples.py's search: unbiased vectors, near-orthonormal six-sets, Levenberg-Marquardt on
the full triple equations, and the classification of every triple found (isolated Fourier, continuous, unexplained).
"""
TAG = 'census'
import gzip, json, os, sys, time, traceback
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)                                     # triples.py, which finds proof/atlas/stagec.py itself
import triples as T


def one_seed(seed, j):
    P = np.array([float.fromhex(x) for x in seed['P']]).reshape(6, 6)
    H = T.dephase(np.exp(1j * P))
    out = dict(idx=j, r=float.fromhex(seed['r']), theta0=[float.fromhex(x) for x in seed['theta0']], o=seed['o'])
    X = T.unbiased_vectors(H)
    out['n_unbiased'] = len(X)
    cands, out['delta3'] = T.candidate_sets(X)
    out['n_candidates'] = len(cands)
    found, fails = [], []
    for c in cands:
        K0 = X[list(c)].T
        Hs, Ks, res = T.solve_triple(H, K0)
        if res > 1e-11:
            fails.append(res); continue
        found.append(dict(H=Hs, dist=float(np.linalg.norm(Hs - H)), res=res, **T.classify(Hs, Ks)))
    uniq = []
    for f in found:
        if not any(np.linalg.norm(f['H'] - g['H']) < 1e-6 and abs(f['f6'][1] - g['f6'][1]) < 1e-6 for g in uniq):
            uniq.append(f)
    out['n_converged'], out['n_failed'] = len(found), len(fails)
    out['triples'] = [{k: v for k, v in f.items() if k != 'H'} for f in uniq]
    out['classes'] = sorted({f['class'] for f in uniq})
    out['min_dist'] = min((f['dist'] for f in uniq), default=None)
    return out


def main():
    cert, outp, idx = sys.argv[1], sys.argv[2], [int(x) for x in sys.argv[3:]]
    seeds = json.load(gzip.open(cert, 'rt'))['seeds']
    done = {json.loads(l)['idx'] for l in open(outp) if l.strip()} if os.path.exists(outp) else set()
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
                row = one_seed(seeds[j], j)
            except Exception as e:                                  # noqa: BLE001
                row = dict(idx=j, error=repr(e), trace=traceback.format_exc()[-1500:])
            row['wall_s'] = round(time.time() - t0, 1)
            f.write(json.dumps(row, default=float) + '\n'); f.flush()


if __name__ == '__main__':
    main()

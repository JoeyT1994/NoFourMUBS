"""Export an atlas pickle to the compact certificate atlas_certificate.json.gz (what certify.py needs, nothing else).

Per Record: centre phases (36 floats, exact binary64 via float.hex), R, label radius, the tangent frame (36 x 4 integers,
units 2^-30, projected exactly onto the horizontal space by the certifier), and its boundary-transfer targets
[t, sign, transpose, rowperm(6), colperm(6)] with the alignment X -> sign * (X or X^T)[rowperm][:, colperm].
The certifier recomputes the frame, sigma, normal bound, Stage C and the boundary tree from these.
Usage: python3 export.py atlas.pkl atlas_certificate.json.gz
"""
import gzip, json, sys
import numpy as np
import atlas as AT


def split(sign, pi):
    pi = np.asarray(pi).reshape(6, 6)
    for tr in (0, 1):
        idx = np.arange(36).reshape(6, 6); Y = idx.T if tr else idx
        r = [int(np.where((Y == pi[i, 0]).any(1))[0][0]) for i in range(6)]
        c = [int(np.where((Y == pi[0, j]).any(0))[0][0]) for j in range(6)]
        if np.array_equal(Y[r][:, c], pi): return [int(sign), tr, r, c]
    raise ValueError('not a row/column permutation')


def export(A):
    recs = []
    for i, r in enumerate(A.recs):
        tg = [[t] + split(sg, pi) for (t, sg, pi) in A.transfers.get(i, {}).get('targets', [])]
        recs.append(dict(phi=[float(x).hex() for x in r['phi'].reshape(36)], R=r['R'], label_radius=r['label_radius'],
                         Tint=np.asarray(r['Tint']).reshape(-1).tolist(), closed=i in A.closed, targets=tg))
    return dict(format='nofour-atlas-v1', records=recs, failed={str(k): v for k, v in A.failed.items()})


def load_certificate(path):
    """An Atlas-like object from the compact certificate."""
    d = json.load(gzip.open(path, 'rt'))
    A = AT.Atlas(); A.failed = d.get('failed', {})
    for i, r in enumerate(d['records']):
        P = np.array([float.fromhex(x) for x in r['phi']]).reshape(6, 6)
        A.add(dict(phi=P, R=r['R'], label_radius=r['label_radius'], R400=AT.corner_census(np.exp(1j * P))[0],
                   Tint=np.array(r['Tint'], dtype=np.int64).reshape(36, 4) if r.get('Tint') else None))
        if r['closed']:
            A.closed.add(i)
            A.transfers[i] = dict(targets=[(t, sg, list(AT.to_sp('tr' if tr else 'id', np.array(rp), np.array(cp))[1]))
                                           for (t, sg, tr, rp, cp) in r['targets']])
    return A


if __name__ == '__main__':
    A = AT.load(sys.argv[1]); d = export(A)
    with gzip.open(sys.argv[2], 'wt') as f: json.dump(d, f, separators=(',', ':'))
    B = load_certificate(sys.argv[2])
    for i in range(len(A.recs)):
        assert np.array_equal(A.recs[i]['phi'], B.recs[i]['phi'])
        for (t, sg, pi), (t2, sg2, pi2) in zip(A.transfers.get(i, {}).get('targets', []), B.transfers.get(i, {}).get('targets', [])):
            assert t == t2 and sg == sg2 and list(pi) == list(pi2)
    print('exported %d records (%d closed) to %s, round trip exact' % (len(A.recs), len(A.closed), sys.argv[2]))

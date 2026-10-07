import tarfile, json, gzip, sys, time
from fractions import Fraction as Q
from itertools import product
from multiprocessing import Pool
sys.path.insert(0, '/mnt/ceph/users/jtindall/nofour_psd/psdtest')
from ProvenResults.SignedCornerPSDPrune.predicate import predicate
def pred(args):
    c, h = args; return predicate(c, h).get('ok') is True
if __name__ == '__main__':
    t = tarfile.open('/mnt/ceph/users/jtindall/nofour_psd/packed/hyb-00001.tar.gz'); s = None
    for m in t:
        if '/states/' in m.name and m.name.endswith('.json.gz'):
            x = json.loads(gzip.decompress(t.extractfile(m).read()))
            if x.get('stuck'): s = x; break
            del x
    row = s['input']; p0 = s['stuck'][0]
    c = list(map(Q, row['centers'])); r = list(map(Q, row['radii']))
    for k, bit in enumerate(p0):
        a = s['splits'][p0[:k]]; r[a] /= 2; c[a] += (1 if bit == '1' else -1) * r[a]
    print('box', row['id'], 'stuck node depth', len(p0), 'radii', [float(x) for x in r], 'stuck nodes in box', len(s['stuck']), flush=True)
    front = [(c, r)]
    with Pool(128) as pool:
        for lev in range(1, 5):
            kids = []
            for cc, rr in front:
                h = [x / 2 for x in rr]
                kids += [([cc[i] + sg[i] * h[i] for i in range(4)], h) for sg in product((-1, 1), repeat=4)]
            t0 = time.time(); oks = pool.map(pred, kids)
            nxt = [k for k, ok in zip(kids, oks) if not ok]
            print('extra level', lev, 'children', len(kids), 'closed', sum(oks), 'open', len(nxt), '%.0fs' % (time.time() - t0), flush=True)
            front = nxt
            if not front or len(front) > 512: break

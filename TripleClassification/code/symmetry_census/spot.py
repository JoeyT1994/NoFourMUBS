import json, sys, time
from multiprocessing import Pool
sys.path.insert(0, '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/symmetry_census')
ROOT = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/pr4_914919b'
def one(s):
    import ext_transfer as X
    t = time.time()
    try: X.check(ROOT, s['ball'], s['level'], s['cell'], s['spec']); ok = 'OK'
    except Exception as e: ok = 'FAIL %s' % str(e)[:120]
    return dict(s, verdict=ok, seconds=round(time.time() - t, 1))
specs = json.load(open(sys.argv[1]))
with Pool(16) as p: res = p.map(one, specs, chunksize=1)
json.dump(res, open(sys.argv[2], 'w'))
print(sum(r['verdict'] == 'OK' for r in res), 'of', len(res), 'certified')

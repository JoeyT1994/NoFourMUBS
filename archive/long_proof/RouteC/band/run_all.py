"""Run the band certificate on all 12 hard boxes (parallel). Usage: python3 run_all.py TAG [json-kwargs]"""
import sys, json, time
from multiprocessing import Pool
from cert import certify
HB = '/Users/jtindall/Files/NoFourMUBS/RouteC/band/data/hard_boxes.jsonl'
rows = [json.loads(l) for l in open(HB)]
tag = sys.argv[1]; kw = json.loads(sys.argv[2]) if len(sys.argv) > 2 else {}
def one(k):
    logf = open('results/%s_box%02d.log' % (tag, k), 'w')
    def log(*a): print(*a, file=logf, flush=True)
    kk = dict(kw)
    if kk.get('tape'):
        kk['tape'] = 'results/tapes/%s_box%02d.npz' % (tag, k)
    r = certify(rows[k], log=log, **kk); r['id'] = rows[k]['id']; r['index'] = k
    log(json.dumps(r)); return r
if __name__ == '__main__':
    with Pool(int(kw.pop('procs', 6)) if False else 6) as p:
        out = p.map(one, range(len(rows)), chunksize=1)
    json.dump(dict(tag=tag, kwargs=kw, results=out), open('results/%s.json' % tag, 'w'), indent=1)
    for r in out:
        print(r['index'], r['id'], r['ok'], r['reason'], 'nodes', r['nodes'], 'acc', r['acc'], 't %.0f' % r['time'],
              'labB/C', r.get('acc_labels_B'), r.get('acc_labels_C'), 'minr', r.get('acc_min_label_halfwidth'))

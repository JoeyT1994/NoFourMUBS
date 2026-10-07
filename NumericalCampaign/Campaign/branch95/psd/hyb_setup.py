#!/usr/bin/env python3
"""Set up hybrid units: every box not accepted by any finished unit, with its newest saved state.
  [STUCK_ONLY=1] python3 hyb_setup.py R UNITSIZE [LIMIT_UNITS]
Newest state = the unit at the deepest tail level whose 'unresolved' list contains the id.  States are copied
unchanged from packed/<unit>.tar.gz (in parallel over source archives) into R/hybrid/_stage/; with STUCK_ONLY=1 only
boxes whose newest state has a pending node at depth >= 48 are used.  Writes R/tail_inputs/hyb-NNNNN.jsonl (input
lines verbatim), R/hybrid/hyb-NNNNN.input.sha256 and R/hybrid/hyb-NNNNN/start/<id>.json.gz."""
import json, glob, os, sys, tarfile, hashlib, collections, gzip
from multiprocessing import Pool
R, SZ = sys.argv[1], int(sys.argv[2]); LIM = int(sys.argv[3]) if len(sys.argv) > 3 else 10**9
STAGE = f'{R}/hybrid/_stage'
def level(u):
    if u.startswith('hyb'): return 100 + (int(u[3:u.index('-')]) if u[3] != '-' else 1)
    return 0 if u.startswith('shard_') else u.index('tail') + 1
def infile(u):
    return (f'{R}/inputs/{u}.jsonl' if u.startswith('shard_') else
            f'{R}/tail_inputs/{u[5:]}.jsonl' if u.startswith('tail-') else f'{R}/tail_inputs/{u}.jsonl')
def extract(job):
    su, sids = job; out = []; want = {f'states-{su}/{i}.json.gz': i for i in sids}
    lines = {}
    for l in open(infile(su)):
        i = json.loads(l)['id']
        if i in sids: lines[i] = l
    with tarfile.open(f'{R}/packed/{su}.tar.gz') as t:
        for m in t:
            if m.name in want:
                b = t.extractfile(m).read(); i = want[m.name]
                st = max([len(p) for p in json.loads(gzip.decompress(b))['pending']] or [0]) >= 48
                open(f'{STAGE}/{i}.json.gz', 'wb').write(b); out.append((i, st, lines[i]))
    return out
if __name__ == '__main__':
    os.makedirs(STAGE, exist_ok=True)
    acc = set(); newest = {}
    for p in glob.glob(f'{R}/done/*.json'):
        u = os.path.basename(p)[:-5]; d = json.load(open(p)); acc |= set(d['accepted'])
        for i in d['unresolved']:
            if i not in newest or level(u) > level(newest[i]): newest[i] = u
    RND = os.environ.get('HYB_ROUND', '')      # '' = round 1 units hyb-NNNNN; '2' = hyb2-NNNNN, ...
    PFX = 'hyb%s-' % RND
    taken = set()
    for p in glob.glob(f'{R}/tail_inputs/{PFX}*.jsonl'):
        taken |= {json.loads(l)['id'] for l in open(p)}
    # an id still being worked by an unfinished unit of an earlier round is not ready yet
    for p in glob.glob(f'{R}/tail_inputs/hyb*-*.jsonl'):
        u = os.path.basename(p)[:-6]
        if not os.path.exists(f'{R}/done/{u}.json'): taken |= {json.loads(l)['id'] for l in open(p)}
    open_ids = sorted(i for i in newest if i not in acc and i not in taken)
    byunit = collections.defaultdict(set)
    for i in open_ids: byunit[newest[i]].add(i)
    rec = {}
    with Pool(120) as pool:
        for out in pool.imap_unordered(extract, list(byunit.items())):
            for i, st, l in out: rec[i] = (st, l)
    sel = [i for i in open_ids if i in rec and (os.environ.get('STUCK_ONLY') != '1' or rec[i][0])]
    k0 = len(glob.glob(f'{R}/hybrid/{PFX}*.input.sha256')); made = 0
    for n in range(0, len(sel), SZ):
        if made >= LIM: break
        ids = sel[n:n + SZ]; u = PFX + '%05d' % (k0 + made); made += 1
        os.makedirs(f'{R}/hybrid/{u}/start', exist_ok=True)
        with open(f'{R}/tail_inputs/{u}.jsonl', 'w') as f:
            for i in ids: f.write(rec[i][1])
        open(f'{R}/hybrid/{u}.input.sha256', 'w').write(hashlib.sha256(open(f'{R}/tail_inputs/{u}.jsonl', 'rb').read()).hexdigest() + '\n')
        for i in ids: os.replace(f'{STAGE}/{i}.json.gz', f'{R}/hybrid/{u}/start/{i}.json.gz')
    print(json.dumps(dict(open=len(open_ids), stuck=sum(1 for v in rec.values() if v[0]), selected=len(sel),
                          new_units=made, unit_size=SZ, already_in_hybrid=len(taken))))

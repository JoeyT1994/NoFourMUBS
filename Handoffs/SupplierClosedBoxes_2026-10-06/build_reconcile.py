#!/usr/bin/env python3
"""Supplier reconciliation snapshot for the collaborator (schema answer to mub6-cross-campaign-reconciliation-v1).
Run from the branch95 directory on a compute node:  python3 build_reconcile.py OUTDIR
  UNITS.jsonl          one record per signed-mean unit: unit, input sha256, packed archive sha256, accepted/unresolved
                       counts, and receipts_digest = sha256 of the sorted lines "id<TAB>sha256(receipt bytes)" of every
                       PASS_WHOLE_BOX_REPLAY receipt in the archive (each receipt also checked: status PASS, id in unit)
  CLOSED.tsv.gz        inventory_row, source (ring|export2|addendum|class0024), ring_id or export2_id (or -), method,
                       unit (signed_mean) or receipt file (frontier, ball40)
  ACTIVE.tsv.gz        rows still open on our side and being worked by our signed-mean tail (same id columns)
  CLASS0024_FRONTIER.tsv.gz  the 2,179 frontier closures: inventory_row, receipt file, its sha256
"""
import gzip, json, glob, hashlib, os, sys, tarfile, collections
from multiprocessing import Pool
OUT = sys.argv[1]; os.makedirs(OUT, exist_ok=True); PSD = '/mnt/ceph/users/jtindall/nofour_psd'
def sha(p):
    h = hashlib.sha256()
    with open(p, 'rb') as f:
        for b in iter(lambda: f.read(1 << 22), b''): h.update(b)
    return h.hexdigest()
def infile(u):
    return (f'{PSD}/inputs/{u}.jsonl' if u.startswith('shard_') else
            f'{PSD}/tail_inputs/{u[5:]}.jsonl' if u.startswith('tail-') else f'{PSD}/tail_inputs/{u}.jsonl')
def unit(p):
    u = os.path.basename(p)[:-5]; d = json.load(open(p)); ids = {json.loads(l)['id'] for l in open(infile(u))}
    tp = f'{PSD}/packed/{u}.tar.gz'; dig = []
    with tarfile.open(tp) as t:
        for m in t:
            if m.isfile() and m.name.startswith('replay/') and m.name.endswith('.json'):
                b = t.extractfile(m).read(); r = json.loads(b)
                if r['status'] == 'PASS_WHOLE_BOX_REPLAY':
                    assert r['id'] in ids; dig.append(f"{r['id']}\t{hashlib.sha256(b).hexdigest()}")
    dig.sort(); acc = sorted(int(x.split('\t')[0]) for x in dig)
    assert acc == sorted(d['accepted']), u
    return dict(unit=u, input_sha256=sha(infile(u)), archive_sha256=sha(tp), accepted=len(acc), unresolved=len(d['unresolved']),
                receipts_digest=hashlib.sha256(('\n'.join(dig) + '\n').encode()).hexdigest()), acc, d['unresolved']
# namespaces: ring ids from the outside-r003 release map, export2/addendum ids from their manifests
src = {}
for p in sorted(glob.glob('ball40/outside_r003_2026-10-06/outside_r003_*.jsonl.gz')):
    for l in gzip.open(p, 'rt'):
        r = json.loads(l); src[r['inventory_row']] = (r['source'] if r['cls'] == '2,4,4,2' else 'class0024', r.get('ring_id', r.get('export2_id')))
ringball = {}
for p in glob.glob('ball40/res_*.jsonl.gz'):
    for l in gzip.open(p, 'rt'):
        r = json.loads(l)
        if r['ok']: ringball[r['input_record']['id']] = p
units = sorted(glob.glob(PSD + '/done/*.json'))
closed = {}; unres = set()
with Pool(120) as pool, open(OUT + '/UNITS.jsonl', 'w') as fu:
    for rec, acc, un in pool.imap_unordered(unit, units, chunksize=4):
        fu.write(json.dumps(rec) + '\n')
        for i in acc: closed.setdefault(i, ('signed_mean', rec['unit']))
        unres |= set(un)
active = sorted(unres - set(closed))
# class (0,0,2,4) frontier closures
fr = []
H = 'postE/h0024'; parts = collections.defaultdict(list)
for l in open(H + '/map.tsv'):
    s, i, p = map(int, l.split()); parts[p].append(i)
for p, rows in parts.items():
    rp = f'{H}/receipt_{p}.json'; r = json.load(open(rp)); bad = set(r['unresolved_indices']); h = sha(rp)
    for j, i in enumerate(rows):
        if j not in bad: fr.append((i, rp, h)); closed.setdefault(i, ('frontier_1800s', rp))
with gzip.open(OUT + '/CLASS0024_FRONTIER.tsv.gz', 'wt') as f:
    f.write('# inventory_row\treceipt\treceipt_sha256\n')
    for x in sorted(fr): f.write('%d\t%s\t%s\n' % x)
for i, p in ringball.items(): closed.setdefault(i, ('ball40_1over40', p))
def ns(i):
    s, k = src.get(i, ('ring', None))
    return s, ('-' if k is None else str(k))
with gzip.open(OUT + '/CLOSED.tsv.gz', 'wt') as f:
    f.write('# inventory_row\tsource\tring_id_or_export2_id\tmethod\tunit_or_receipt\n')
    for i in sorted(closed): s, k = ns(i); f.write(f'{i}\t{s}\t{k}\t{closed[i][0]}\t{closed[i][1]}\n')
with gzip.open(OUT + '/ACTIVE.tsv.gz', 'wt') as f:
    f.write('# inventory_row\tsource\tring_id_or_export2_id\n')
    for i in active: s, k = ns(i); f.write(f'{i}\t{s}\t{k}\n')
summ = dict(closed=len(closed), by_method=dict(collections.Counter(v[0] for v in closed.values())),
            closed_by_source=dict(collections.Counter(ns(i)[0] for i in closed)), active=len(active),
            active_by_source=dict(collections.Counter(ns(i)[0] for i in active)), units=len(units), class0024_frontier=len(fr))
json.dump(summ, open(OUT + '/SUMMARY.json', 'w'), indent=1); print(json.dumps(summ))

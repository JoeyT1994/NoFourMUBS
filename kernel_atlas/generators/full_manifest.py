"""The full run's manifest (`docs/KERNEL_ASSEMBLY.md` §9): what goes to git instead of the generated data.

Usage (on rusty, where the archive is; light, but reads the tarballs of chunks whose rows carry no hashes):
  python3 kernel_atlas/generators/full_manifest.py --archive ADIR --out OUT

Writes into OUT (kernel_atlas/results/full/ in the repository):
  records.jsonl.gz  one row per atlas Record: idx, status, axioms of `cert` and `boundaryT`, CPU s, peak GB, generation
                    s, and the SHA-256 of its olean tarball and of its source tarball, each also as a content hash of
                    the files inside (`chunk_run.tar_hashes`; the generated `.lean` sources, resp. the `.olean`s), which
                    does not depend on tar metadata: regenerating a Record from atlas_certificate.json.gz with
                    atlas_run.py's generate() must reproduce its source content hash;
  chunks.jsonl      the chunk rows (without the per-Record hashes, which are in records.jsonl.gz);
  final.json        the final job's report, with the output of `#print axioms no_four_mubs_kernel`;
  summary.json      counts, CPU totals, failures.
"""
import argparse, glob, gzip, json, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from chunk_run import N, tar_hashes

RUN_COMMIT = '31c6d9d2'      # Phase 1 rows without gen_commit: generators as at fcea9c1a (unchanged up to 31c6d9d2)
KEEP = ('idx', 'status', 'gen_commit', 'axioms_cert', 'axioms_boundaryT', 'axioms', 'cpu_s', 'peak_gb', 'gen_s', 'wall_s',
        'olean_tar_bytes', 'labels', 'variant', 'module', 'error')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--archive', required=True)
    ap.add_argument('--out', required=True)
    a = ap.parse_args()
    os.makedirs(a.out, exist_ok=True)
    rows = {}
    for f in sorted(glob.glob(os.path.join(a.archive, 'rows', '*.jsonl'))):
        for l in open(f):
            try:
                r = json.loads(l)
            except ValueError:
                continue
            if r['idx'] not in rows or rows[r['idx']]['status'] != 'ok':     # an `ok` row wins over failures
                rows[r['idx']] = dict(r, row_file=os.path.basename(f))
    chunks, hashes = {}, {}
    for f in sorted(glob.glob(os.path.join(a.archive, 'chunks', 'rows', '*.jsonl'))):
        for l in open(f):
            r = json.loads(l)
            if r['status'] == 'ok' or r['chunk'] not in chunks:
                chunks[r['chunk']] = r
    for r in chunks.values():
        for n, h in (r.pop('records', None) or {}).items():
            hashes[int(n)] = h
    out = []
    for n in range(N):
        r = rows.get(n)
        if r is None:
            out.append(dict(idx=n, status='not_run'))
            continue
        m = {k: r[k] for k in KEEP if k in r}
        m.setdefault('gen_commit', RUN_COMMIT)
        if r['status'] == 'ok':
            h = hashes.get(n)
            if h is None:                                   # chunk rows from before the hashes (chunk 0 of the smoke)
                ot = os.path.join(a.archive, 'oleans', 'Rec%d.tar' % n)
                st = os.path.join(a.archive, 'src', 'Rec%d.tar.gz' % n)
                h = dict(olean=tar_hashes(ot) if os.path.exists(ot) else None,
                         src=tar_hashes(st, None, '.lean', n) if os.path.exists(st) else None)
            m.update(olean=h['olean'], src=h['src'])
        else:
            m['log_tail'] = (r.get('log') or '')[-600:]
        m['row_file'] = r['row_file']
        out.append(m)
    with gzip.open(os.path.join(a.out, 'records.jsonl.gz'), 'wt') as f:
        for m in out:
            f.write(json.dumps(m, sort_keys=True) + '\n')
    with open(os.path.join(a.out, 'chunks.jsonl'), 'w') as f:
        for k in sorted(chunks):
            f.write(json.dumps(chunks[k], sort_keys=True) + '\n')
    fin = os.path.join(a.archive, 'final', 'final.json')
    if os.path.exists(fin):
        with open(fin) as f, open(os.path.join(a.out, 'final.json'), 'w') as g:
            g.write(f.read())
    st = {}
    for m in out:
        st[m['status']] = st.get(m['status'], 0) + 1
    ok = [m for m in out if m['status'] == 'ok']
    summ = dict(records=N, status=st, chunks_ok=sum(1 for r in chunks.values() if r['status'] == 'ok'),
                cpu_hours_records=round(sum(m.get('cpu_s') or 0 for m in ok) / 3600, 1),
                cpu_min_per_record=round(sum(m.get('cpu_s') or 0 for m in ok) / 60 / max(1, len(ok)), 1),
                peak_gb_max=max([m.get('peak_gb') or 0 for m in ok] or [0]),
                axioms_ok=sorted({a for m in ok for a in m.get('axioms') or []}),
                missing_hashes=[m['idx'] for m in ok if not (m.get('olean') and m.get('src'))],
                failures=[dict(idx=m['idx'], status=m['status'], module=m.get('module'),
                               error=(m.get('error') or '')[-300:]) for m in out if m['status'] not in ('ok', 'not_run')])
    with open(os.path.join(a.out, 'summary.json'), 'w') as f:
        json.dump(summ, f, indent=1)
    print(json.dumps({k: v for k, v in summ.items() if k != 'failures'}, indent=1), '\nfailures:', len(summ['failures']))


if __name__ == '__main__':
    main()

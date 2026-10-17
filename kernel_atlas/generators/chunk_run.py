"""Phase 2 of the full run (`docs/KERNEL_ASSEMBLY.md`): compile the assembly chunks from the per-Record tarballs.

Usage (repository root, in a staged copy on node-local disk; see run_katlas_chunks.sh):
  python3 kernel_atlas/generators/chunk_run.py --archive ADIR --chunks K1 K2 ... [--jobs 8] [--name NAME]

For chunk k (atlas Records 100k … 100k + 99, fewer in the last): every Record must be settled `ok` in ADIR (rows and
olean tarballs of atlas_run.py --archive).  Their olean tarballs are unpacked into the local build directory,
`Atlas/Chunk<k>.lean` is generated (export_assembly.py) and compiled with `lean -o`, and one tarball
ADIR/chunks/Chunk<k>.tar of the chunk's Record oleans and the chunk olean is written (renamed into place when
complete), then a row to ADIR/chunks/rows/<name>.jsonl.  Chunks with a complete tarball and an `ok` row are skipped.
After this step the per-Record olean tarballs are no longer needed (the final step reads the chunk tarballs).
"""
import argparse, concurrent.futures as CF, glob, gzip, json, os, re, shutil, subprocess, sys, tarfile, time

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path.insert(0, HERE)
import export_assembly as EA
from atlas_run import LEAN, OLEAN, SRC, archived, lean_env, parse_time, timed

N = 12021
CHUNK = 100


def chunk_done(adir):
    done = set()
    for f in glob.glob(os.path.join(adir, 'chunks', 'rows', '*.jsonl')):
        for l in open(f):
            try:
                r = json.loads(l)
            except ValueError:
                continue
            t = os.path.join(adir, 'chunks', 'Chunk%d.tar' % r['chunk'])
            if r['status'] == 'ok' and os.path.exists(t) and os.path.getsize(t) == r.get('tar_bytes'):
                done.add(r['chunk'])
    return done


def one(k, adir, ok, env, lean, threads):
    t0 = time.time()
    idx = list(range(k * CHUNK, min(N, (k + 1) * CHUNK)))
    missing = [n for n in idx if n not in ok]
    if missing:
        return dict(chunk=k, status='records_missing', missing=missing)
    for n in idx:
        with tarfile.open(os.path.join(adir, 'oleans', 'Rec%d.tar' % n)) as t:
            t.extractall(OLEAN)
    src = os.path.join(SRC, 'KernelAtlas', 'Atlas', 'Chunk%d.lean' % k)
    os.makedirs(os.path.dirname(src), exist_ok=True)
    with open(src, 'w') as f:
        f.write(EA.chunk_file(k, N))
    ob = os.path.join(OLEAN, 'KernelAtlas', 'Atlas', 'Chunk%d' % k)
    os.makedirs(os.path.dirname(ob), exist_ok=True)
    cmd = [lean, '-R', SRC, '-o', ob + '.olean'] + (['-j', str(threads)] if threads else []) + [src]
    r = subprocess.run(timed(cmd), cwd=LEAN, env=env, capture_output=True, text=True)
    cpu, rss = parse_time(r.stdout + r.stderr)
    row = dict(chunk=k, cpu_s=cpu, peak_gb=rss and round(rss, 2), compile_wall_s=round(time.time() - t0, 1))
    if r.returncode:
        return dict(row, status='compile_failed', log=(r.stdout + r.stderr)[-3000:])
    dst = os.path.join(adir, 'chunks', 'Chunk%d.tar' % k)
    with tarfile.open(dst + '.tmp', 'w') as t:
        for n in idx:
            t.add(os.path.join(OLEAN, 'KernelAtlas', 'Rec%d' % n), arcname='KernelAtlas/Rec%d' % n)
        t.add(ob + '.olean', arcname='KernelAtlas/Atlas/Chunk%d.olean' % k)
    os.replace(dst + '.tmp', dst)
    for n in idx:                                       # keep the node's disk small; the tarball has them
        shutil.rmtree(os.path.join(OLEAN, 'KernelAtlas', 'Rec%d' % n), ignore_errors=True)
    return dict(row, status='ok', tar_bytes=os.path.getsize(dst), wall_s=round(time.time() - t0, 1))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--archive', required=True)
    ap.add_argument('--chunks', type=int, nargs='+', required=True)
    ap.add_argument('--jobs', type=int, default=8)
    ap.add_argument('--name', default='chunks')
    ap.add_argument('--lean-threads', type=int, default=1)
    a = ap.parse_args()
    os.makedirs(os.path.join(a.archive, 'chunks', 'rows'), exist_ok=True)
    done = chunk_done(a.archive)
    todo = [k for k in a.chunks if k not in done]
    ok = archived(a.archive, retry_failed=True)
    print('%d chunks to do (%d done); %d Records archived ok' % (len(todo), len(done), len(ok)), flush=True)
    env, lean = lean_env()
    rows = open(os.path.join(a.archive, 'chunks', 'rows', a.name + '.jsonl'), 'a')
    with CF.ThreadPoolExecutor(a.jobs) as ex:
        futs = {ex.submit(one, k, a.archive, ok, env, lean, a.lean_threads): k for k in todo}
        for fu in CF.as_completed(futs):
            try:
                row = fu.result()
            except Exception as e:                      # noqa: BLE001
                row = dict(chunk=futs[fu], status='error', error=repr(e)[-2000:])
            rows.write(json.dumps(row) + '\n'); rows.flush()
            print('%s chunk %d %s %s' % (time.strftime('%H:%M:%S'), row['chunk'], row['status'],
                                         {k: v for k, v in row.items() if k in ('cpu_s', 'peak_gb', 'wall_s', 'missing')}),
                  flush=True)


if __name__ == '__main__':
    main()

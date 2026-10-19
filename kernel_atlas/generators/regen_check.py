"""Regenerate atlas Records from the certificate and compare with the full run's manifest (`docs/KERNEL_ASSEMBLY.md` §9).

Usage (repository root, at the generator commit of results/full/RUN.md, with the Python environment of the run):
  python3 kernel_atlas/generators/regen_check.py [--manifest kernel_atlas/results/full/records.jsonl.gz] IDX ...

For each Record: copy the repository's sources (without builds or other Records) into a temporary directory, run
atlas_run.py's generate() there (the five generators and kpack.seal) from proof/atlas/results/atlas_certificate.json.gz,
and compare the content hash of the generated modules (`chunk_run.tar_hashes`: the import closure of Record2 and
BoundaryCover) with the manifest's `src.content_sha256`.  Prints one line per Record and exits non-zero on a mismatch.
"""
import argparse, gzip, hashlib, json, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))


def closure_hash(d, idx):
    files = {f: open(os.path.join(d, f), 'rb').read() for f in os.listdir(d) if f.endswith('.lean')}
    pre = 'import KernelAtlas.Rec%d.' % idx
    need, todo = set(), ['Record2.lean', 'BoundaryCover.lean']
    while todo:
        f = todo.pop()
        if f not in need and f in files:
            need.add(f)
            todo += [l.split()[1].rsplit('.', 1)[1] + '.lean' for l in files[f].decode().splitlines() if l.startswith(pre)]
    lines = sorted('%s %s\n' % (f, hashlib.sha256(files[f]).hexdigest()) for f in need)
    return hashlib.sha256(''.join(lines).encode()).hexdigest(), len(lines)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('idx', nargs='+', type=int)
    ap.add_argument('--manifest', default=os.path.join(ROOT, 'kernel_atlas', 'results', 'full', 'records.jsonl.gz'))
    a = ap.parse_args()
    man = {}
    for l in gzip.open(a.manifest, 'rt'):
        r = json.loads(l)
        man[r['idx']] = r
    bad = 0
    with tempfile.TemporaryDirectory() as tmp:
        repo = os.path.join(tmp, 'repo')
        shutil.copytree(ROOT, repo, ignore=lambda d, names: [n for n in names if n in ('.git', '.lake', '.venv') or
                                                               (n.startswith('Rec') and n[3:].isdigit())])
        for idx in a.idx:
            code = ('import sys; sys.path.insert(0, "kernel_atlas/generators"); import atlas_run; '
                    'atlas_run.generate(%d, %r)' % (idx, os.path.join(tmp, 'gen%d.log' % idx)))
            r = subprocess.run([sys.executable, '-c', code], cwd=repo, capture_output=True, text=True,
                               env=dict(os.environ, OMP_NUM_THREADS='1', OPENBLAS_NUM_THREADS='1', MKL_NUM_THREADS='1'))
            want = ((man.get(idx) or {}).get('src') or {}).get('content_sha256')
            if r.returncode:
                print('Rec%d generate failed: %s' % (idx, (r.stdout + r.stderr)[-500:])); bad += 1
                continue
            d = os.path.join(repo, 'kernel_atlas', 'lean', 'KernelAtlas', 'Rec%d' % idx)
            got, n = closure_hash(d, idx)
            ok = got == want
            bad += not ok
            print('Rec%d %s (%d modules; %s, manifest %s)' % (idx, 'same' if ok else 'DIFFERENT', n, got[:16],
                                                               (want or 'none')[:16]), flush=True)
            shutil.rmtree(d)
    sys.exit(1 if bad else 0)


if __name__ == '__main__':
    main()

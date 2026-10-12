"""Lossless APFS compression of existing task build artifacts, never sources.

Every replacement is gated by identical readable bytes, size, permissions and
mtime. The verified pilot and cache-only Lake rebuild are required. macOS must
allow UF_COMPRESSED; the sandbox does not, so an unsuccessful copy is discarded.
No proof is generated, removed, re-certified or substituted by this utility.
"""
from pathlib import Path
import argparse
import datetime
import fcntl
import hashlib
import json
import os
import stat
import subprocess
import time

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--include-logs', action='store_true',
                        help='Also compress build logs while both compiler lanes are idle.')
    args = parser.parse_args()
    assert json.loads((AUDIT / 'LOSSLESS_COMPRESSION_CACHE_TEST.json').read_text())['status'] == 'PASS'
    locks = [(AUDIT / name).open('a') for name in
             ['CRITICAL_ALGEBRA_QUEUE.lock', 'SEMANTIC_ALGEBRA_QUEUE.lock']]
    for lock in locks:
        fcntl.flock(lock, fcntl.LOCK_EX)
    root = ROOT / 'lean/.lake/build'
    candidates = list(root.rglob('*'))
    if args.include_logs:
        candidates += [p for directory in AUDIT.glob('*_build_status_logs')
                       for p in directory.glob('*.log')]
    suffixes = {'.olean', '.c', '.ilean'} | ({'.log'} if args.include_logs else set())
    paths = sorted((p for p in candidates
                    if p.is_file() and not p.is_symlink() and p.suffix in suffixes
                    and p.stat().st_size >= 256 * 1024 and not p.stat().st_flags & 32),
                   key=lambda p: -p.stat().st_size)
    started = time.monotonic()
    freed = 0
    done = 0
    log = AUDIT / 'LOSSLESS_BUILD_COMPRESSION_RECORDS.jsonl'
    status_path = AUDIT / 'LOSSLESS_BUILD_COMPRESSION_STATUS.json'
    status = {'status': 'RUNNING', 'completed': 0, 'candidates': len(paths),
              'freed_bytes': 0, 'proofs_regenerated': False, 'atlas_certification': False}
    for path in paths:
        before = path.stat()
        original_digest = digest(path)
        tmp = path.with_name('.' + path.name + '.lossless-compression')
        assert not tmp.exists(), tmp
        proc = subprocess.run(['/usr/bin/ditto', '--hfsCompression', str(path), str(tmp)],
                              capture_output=True, text=True)
        after = tmp.stat() if tmp.exists() else None
        good = (proc.returncode == 0 and after is not None
                and after.st_size == before.st_size and after.st_flags & 32
                and stat.S_IMODE(after.st_mode) == stat.S_IMODE(before.st_mode)
                and digest(tmp) == original_digest)
        if not good:
            if tmp.exists():
                tmp.unlink()
            status_path.write_text(json.dumps({'status': 'STOPPED_COPY_VERIFICATION_FAILED',
                'path': str(path.relative_to(ROOT)), 'completed': done,
                'freed_bytes': freed, 'source_at_failure_unchanged': True,
                'stderr': proc.stderr[:1000], 'atlas_certification': False}, indent=2) + '\n')
            raise RuntimeError('Compression copy did not preserve readable bytes and metadata: ' + str(path))
        if after.st_blocks >= before.st_blocks:
            tmp.unlink()
            continue
        # Preserve the source mtime exactly, hence Lake's build-cache identity.
        os.utime(tmp, ns=(before.st_atime_ns, before.st_mtime_ns))
        assert tmp.stat().st_mtime_ns == before.st_mtime_ns
        assert digest(path) == original_digest, 'Source changed during compression; do not replace it.'
        os.replace(tmp, path)
        assert digest(path) == original_digest
        saved = (before.st_blocks - path.stat().st_blocks) * 512
        freed += saved
        done += 1
        record = {'checked_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
                  'path': str(path.relative_to(ROOT)), 'sha256_before_and_after': original_digest,
                  'logical_bytes': before.st_size, 'saved_bytes': saved,
                  'mtime_ns_before_and_after': before.st_mtime_ns}
        with log.open('a') as out:
            out.write(json.dumps(record) + '\n')
        status = {'status': 'RUNNING', 'completed': done, 'candidates': len(paths),
                  'freed_bytes': freed, 'elapsed_seconds': time.monotonic() - started,
                  'current': str(path.relative_to(ROOT)), 'proofs_regenerated': False,
                  'atlas_certification': False}
        status_path.write_text(json.dumps(status, indent=2) + '\n')
        if done % 200 == 0:
            print(json.dumps({'compressed': done, 'candidates': len(paths),
                              'freed_GiB': round(freed / 1024**3, 2)}), flush=True)
    status.update(status='PASS', elapsed_seconds=time.monotonic() - started)
    status_path.write_text(json.dumps(status, indent=2) + '\n')
    print(json.dumps(status), flush=True)


if __name__ == '__main__':
    main()

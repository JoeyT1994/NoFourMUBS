#!/usr/bin/env python3
"""Check the sealed P return, then replay its exact gates in a temporary copy.

No network, shell, third-party modules, or original workspace inputs are used.
The mathematical input theorems remain the written dependencies of REPORT.md.
"""
import hashlib
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile


def main():
    if not __debug__:
        raise SystemExit("Run without -O: assertions are certificate checks.")
    root = Path(__file__).resolve().parent
    manifest = root/'SHA256SUMS'
    if not manifest.is_file():
        raise SystemExit("Missing SHA256SUMS")
    checked = set()
    for line in manifest.read_text().splitlines():
        digest, name = line.split('  ', 1)
        relative = Path(name)
        if relative.is_absolute() or '..' in relative.parts:
            raise SystemExit("Unsafe checksum path")
        p = root/relative
        if p.is_symlink() or not p.is_file():
            raise SystemExit("Missing or nonregular file: "+name)
        actual = hashlib.sha256(p.read_bytes()).hexdigest()
        if actual != digest:
            raise SystemExit("Checksum mismatch: "+name)
        if name in checked:
            raise SystemExit("Repeated checksum path: "+name)
        checked.add(name)
    files = {p.relative_to(root).as_posix() for p in root.rglob('*')
             if p.is_file() and '__pycache__' not in p.parts
             and p.name != 'SHA256SUMS'}
    # Nested source manifests have their own names but are sealed by the root one.
    files |= {p.relative_to(root).as_posix() for p in root.rglob('SHA256SUMS')
              if p != manifest}
    if files != checked:
        raise SystemExit("Manifest does not exactly cover package files: "+
                         repr(sorted(files.symmetric_difference(checked))))
    print(f"PASS: all {len(checked)} sealed files match SHA256SUMS", flush=True)
    gates = [('local', 'verify_isolated.py'),
             ('fourier', 'verify_fourier_fibre.py'),
             ('algebra', 'verify_degree_and_predicate.py'),
             ('global', 'verify.py')]
    receipts = {
        'local': ['isolated_receipt.json', 'isolated_inverse.json'],
        'fourier': ['FOURIER_FIBRE_RECEIPT.json'],
        'algebra': ['DEGREE_RECEIPT.json'],
        'global': ['RECEIPT.json'],
    }
    with tempfile.TemporaryDirectory(prefix='P_atlas_free_replay_') as temp:
        copy = Path(temp)/'return_P'
        shutil.copytree(root, copy, ignore=shutil.ignore_patterns('__pycache__','*.pyc'))
        for directory, script in gates:
            print(f"RUN: {directory}/{script}", flush=True)
            result = subprocess.run([sys.executable, '-B', '-S', script],
                                    cwd=copy/directory, text=True,
                                    stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
            print(result.stdout, end='', flush=True)
            if result.returncode:
                raise SystemExit(f"FAIL: {directory}/{script}, exit {result.returncode}")
            for name in receipts[directory]:
                if (copy/directory/name).read_bytes() != (root/directory/name).read_bytes():
                    raise SystemExit(f"FAIL: recomputed certificate differs: {directory}/{name}")
            print(f"PASS: {directory} certificates reproduce byte for byte", flush=True)
    print("PASS: all four exact gates. Written theorems retain their stated dependencies.")
    print("Scope: A globally, C, F, and Fprime are NOT ESTABLISHED.")


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Native exhaustive all-K classifier with independently bound algebraic tests.

Uses the frozen driver's CLI, including --indices, --output and --resume.
The original native source and all its old receipt bindings stay intact.
"""
import hashlib
import json
from pathlib import Path
from bootstrap import HERE, ROOT, native_run as R
import scalar_support


def extension_sources():
    return [HERE/name for name in (
        'bootstrap.py', 'intervals.py', 'scalar_support.py',
        'run_algebraic.py', 'SCALAR_PROOF.txt')]


def binding(atlas):
    atlas_hash = hashlib.sha256(Path(atlas).read_bytes()).hexdigest()
    if atlas_hash != R.PINNED_ATLAS:
        raise ValueError('original atlas checksum mismatch')
    files = {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
             for p in sorted(set(R.source_paths()+extension_sources()))}
    value = dict(schema='tc-algebraic-allk-v1', atlas_sha256=atlas_hash,
                 sources=files, precision=160,
                 extensions=['signed joint quadratic residual support'])
    value['id'] = hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
    return value


def install():
    R.binding = binding
    R.BE.exclude = scalar_support.exclude


# Spawned workers re-import this module as __mp_main__. Install the same
# source-bound extension there too; inheriting a parent's monkeypatch is
# not portable across multiprocessing start methods.
install()


if __name__ == '__main__':
    raise SystemExit(R.main())


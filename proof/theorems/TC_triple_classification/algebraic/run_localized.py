#!/usr/bin/env python3
"""Opt-in all-K driver with necessary seed-cap localization.

This has its own binding and does not invalidate the scalar-only release.
"""
import hashlib
import json
from pathlib import Path
import run_algebraic as scalar
from bootstrap import HERE, ROOT, native_run as R
import patterns


def binding(atlas):
    value = scalar.binding(atlas)
    for name in ('localization.py', 'patterns.py', 'run_localized.py', 'CAP_PROOF.txt'):
        p = HERE/name
        value['sources'][str(p.relative_to(ROOT))] = hashlib.sha256(p.read_bytes()).hexdigest()
    value['schema'] = 'tc-algebraic-localized-allk-v1'
    value['extensions'] = value['extensions']+['necessary seed-cap localization']
    value.pop('id')
    value['id'] = hashlib.sha256(json.dumps(value, sort_keys=True).encode()).hexdigest()
    return value


patterns.install()
R.binding = binding


if __name__ == '__main__':
    raise SystemExit(R.main())

#!/usr/bin/env python3
"""Recover interrupted proposal caches before restarting their workers.

Run only while no worker is writing the selected files. These are optional
proposals, not proof receipts. Every reused proposal is verified afresh.
"""
import argparse
import hashlib
import json
from pathlib import Path


def recover(path):
    raw=path.read_bytes();lines=raw.splitlines(keepends=True);kept=[]
    discarded=0
    for i,line in enumerate(lines):
        if not line.strip():
            kept.append(line)
            continue
        try:json.loads(line)
        except (json.JSONDecodeError,UnicodeDecodeError):
            if i!=len(lines)-1:raise ValueError('corrupt interior cache record: '+str(path))
            discarded=len(line)
            break
        kept.append(line)
    repaired=b''.join(kept)
    if repaired and not repaired.endswith(b'\n'):repaired+=b'\n'
    if repaired!=raw:
        # Retain the exact interrupted bytes for diagnosis and use an
        # atomic replacement, so this operation cannot create a torn line.
        backup=path.with_name(path.name+'.interrupted-'+hashlib.sha256(raw).hexdigest()[:16])
        if not backup.exists():backup.write_bytes(raw)
        temporary=path.with_name(path.name+'.recovered')
        temporary.write_bytes(repaired);temporary.replace(path)
    return dict(path=str(path),changed=repaired!=raw,discarded_bytes=discarded)


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('files',type=Path,nargs='+');args=parser.parse_args()
    for path in args.files:print(json.dumps(recover(path)))

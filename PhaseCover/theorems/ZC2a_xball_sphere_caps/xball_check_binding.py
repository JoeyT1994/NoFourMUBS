"""Check a completed ZC2a receipt against the current source and certificate bytes.

This checks receipt binding only; xball_replay.py reruns the mathematics.
"""
import argparse
import json
from pathlib import Path
import xball_replay as R


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--input',type=Path,default=R.ROOT/'data/xball_headers.json.gz')
    p.add_argument('--caps',type=Path,default=R.ROOT/'results/xball_caps_certificate.json')
    p.add_argument('--receipt',type=Path,default=R.ROOT/'results/xball_replay.json')
    a=p.parse_args();receipt=json.loads(a.receipt.read_text())
    now=R.binding(a.input,a.caps)
    mismatches=[]
    if receipt.get('binding')!=now:
        old=receipt.get('binding',{})
        for key in ('input_sha256','certificate_sha256'):
            if old.get(key)!=now.get(key):mismatches.append(key)
        previous=old.get('sources',{})
        for key in sorted(set(previous)|set(now['sources'])):
            if previous.get(key)!=now['sources'].get(key):mismatches.append(key)
    summary=receipt.get('summary',{})
    ok=not mismatches and summary.get('status')=='CERTIFIED' and not summary.get('failures')
    print(json.dumps(dict(status='PASS' if ok else 'FAIL',mismatches=mismatches,
                          recorded_status=summary.get('status'),caps=summary.get('caps'),
                          certificate_sha256=now['certificate_sha256'],
                          input_sha256=now['input_sha256'],bound_sources=len(now['sources']))))
    return 0 if ok else 1


if __name__=='__main__':raise SystemExit(main())

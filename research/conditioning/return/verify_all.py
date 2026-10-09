#!/usr/bin/env python3
"""Run every exact certificate and write a complete local replay receipt.

This does not run the numerical survey and does not certify the imported
MC1--MC4 reconstruction hypotheses or an absent atlas certificate.
"""
from pathlib import Path
import datetime
import hashlib
import json
import subprocess
import sys
import time

CHECKS = [
    'verify_side_identity.py',
    'verify_gauge_and_fourier.py',
    'verify_fourier_family.py',
    'verify_tao.py',
    'verify_operator_bounds.py',
    'verify_sharp_hessian.py',
    'verify_dita_family.py',
    'verify_transpose_equality.py',
    'verify_bjorck.py',
]

def main():
    if sys.flags.optimize:
        raise RuntimeError('Use ordinary Python, without -O: certificates use assertions.')
    root=Path(__file__).resolve().parent
    records=[]
    failed=False
    for name in CHECKS:
        path=root/name
        start=time.perf_counter()
        result=subprocess.run([sys.executable,str(path)],cwd=root,
                              text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
        elapsed=time.perf_counter()-start
        record={
            'script':name,'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
            'returncode':result.returncode,'seconds':round(elapsed,6),
            'output':result.stdout,
        }
        records.append(record)
        print(('PASS' if result.returncode==0 else 'FAIL')+': '+name,flush=True)
        if result.returncode:
            failed=True
            print(result.stdout,flush=True)
    receipt={
        'status':'FAIL' if failed else 'PASS',
        'generated_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'python':sys.version,
        'acceptance_arithmetic':'Exact unbounded integers, rational arithmetic, and formal Laurent/algebraic fields.',
        'scope':'Finite exact checks supporting CONDITIONING.md; MC1--MC4 are imported hypotheses; no atlas or numerical coverage certified.',
        'checks':records,
        'total_seconds':round(sum(r['seconds'] for r in records),6),
    }
    (root/'verification_receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    text=['Verification status: '+receipt['status'],receipt['scope'],'']
    for r in records:
        text.extend([r['script']+' (exit '+str(r['returncode'])+')',r['output'].rstrip(),''])
    (root/'verification_receipt.txt').write_text('\n'.join(text)+'\n')
    if failed:
        raise SystemExit(1)
    print('PASS: all '+str(len(CHECKS))+' exact verification programs.',flush=True)
    print('Global rank/manifold conclusions retain the explicit MC1--MC4 dependency.',flush=True)

if __name__=='__main__':main()

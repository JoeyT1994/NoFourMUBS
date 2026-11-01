#!/usr/bin/env python3
"""Regenerate every new exact certificate; reject any failed stage.

The analytical proof is in PRM.md. Imported theorem statements remain
explicit proof inputs; this runner does not pretend to formalize them.
"""
from __future__ import annotations
from pathlib import Path
import argparse
import hashlib
import json
import os
import platform
import subprocess
import sys
import time

ROOT=Path(__file__).resolve().parent

def main():
    if not __debug__:
        raise SystemExit('Refusing -O: exact acceptance assertions must be enabled.')
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--report',type=Path,default=ROOT/'reports'/'verification.json')
    args=parser.parse_args()
    start=time.perf_counter();records=[]
    report={'status':'RUNNING','python':platform.python_version(),
            'arithmetic':'Integer and exact rational/Eisenstein/Laurent arithmetic only.',
            'scope':'New algebraic identities, finite exhaustions, and the retained I3 structural verifier. Paper lemmas and the other imported theorems are not mechanically formalized by this replay.',
            'stages':records}
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
    env.pop('PYTHONOPTIMIZE',None)
    try:
        manifest=json.loads((ROOT/'FILE_HASHES.json').read_text())
        for name,want in manifest['files'].items():
            path=ROOT/name
            if not path.is_file():raise AssertionError(f'Missing retained file: {name}')
            got=hashlib.sha256(path.read_bytes()).hexdigest()
            if got!=want:raise AssertionError(f'SHA256 mismatch: {name}')
        records.append({'stage':'retained_file_integrity','status':'PASS','files':len(manifest['files'])})
        print('PASS retained file integrity',flush=True)
        for name in ['verify_fourier.py','verify_bridge.py','verify_cubic_guards.py','vendor/verify_structural.py']:
            t=time.perf_counter()
            proc=subprocess.run([sys.executable,str(ROOT/name)],cwd=ROOT,env=env,
                                text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
            if proc.returncode!=0:raise RuntimeError(f'{name} exited {proc.returncode}:\n{proc.stdout}')
            details=json.loads(proc.stdout)
            records.append({'stage':name,'status':'PASS','elapsed_seconds':time.perf_counter()-t,'results':details})
            print('PASS '+name,flush=True)
        report['status']='PASS_EXACT_PRM_RETURN'
    except Exception as exc:
        report['status']='FAIL';report['error']=str(exc)
        print('FAIL: '+str(exc),file=sys.stderr,flush=True)
    finally:
        report['elapsed_seconds']=time.perf_counter()-start
        args.report.parent.mkdir(parents=True,exist_ok=True)
        args.report.write_text(json.dumps(report,indent=2)+'\n')
    if report['status']!='PASS_EXACT_PRM_RETURN':raise SystemExit(1)
    print(json.dumps({'status':report['status'],'stages':len(records),'elapsed_seconds':report['elapsed_seconds'],'report':str(args.report)},indent=2))

if __name__=='__main__':main()

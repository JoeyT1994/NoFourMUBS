#!/usr/bin/env python3
"""Negative tests: make certificates wrong and require nonzero exit status."""
import json
import shutil
import subprocess
import sys
import tempfile
from fractions import Fraction
from pathlib import Path
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT))
import verify


def run(directory):
    return subprocess.run([sys.executable,'-I',str(ROOT/'verify.py'),
                           '--certificate-dir',str(directory)],
                          capture_output=True,text=True,check=False)


def main():
    baseline=run(ROOT/'certificates')
    if baseline.returncode:raise AssertionError('baseline failed: '+baseline.stderr)
    print('PASS: unmodified certificates accepted')
    for kind in ('R orthogonality sign','R moment sign','scalar identity sign','Fourier anchor expectation'):
        with tempfile.TemporaryDirectory(prefix='moment_certificate_audit_') as td:
            d=Path(td)/'certificates';shutil.copytree(ROOT/'certificates',d)
            if kind.startswith('R'):
                f=d/'rational_moment_R.json';obj=json.loads(f.read_text())
                k='orthogonality_cofactors' if 'orthogonality' in kind else 'moment_cofactors'
                e=obj[k][0];e['coefficient']=str(-Fraction(e['coefficient']))
                # Keep metadata internally consistent: rejection must reach the algebra check.
                e.update(verify.metadata(e,'orth' if k.startswith('orth') else 'moment')[2])
            elif kind=='scalar identity sign':
                f=d/'scalar_identities.json';obj=json.loads(f.read_text())
                e=obj['universal_S']['orthogonality_cofactors'][0]
                e['coefficient']=str(-Fraction(e['coefficient']));e.update(verify.metadata(e,'orth')[2])
            else:
                f=d/'anchor_expectations.json';obj=json.loads(f.read_text());obj['F6']['S'][0]='1/9'
            f.write_text(json.dumps(obj,indent=2)+'\n')
            result=run(d)
            if result.returncode==0:raise AssertionError('bad certificate was accepted: '+kind)
            reason=(result.stderr or result.stdout).strip().splitlines()[-1]
            print('PASS: '+kind+' rejected (exit '+str(result.returncode)+'): '+reason)
    print('ALL NEGATIVE TESTS PASSED')

if __name__=='__main__':
    try:main()
    except Exception as exc:
        print('FAIL: '+str(exc),file=sys.stderr);raise SystemExit(1)

#!/usr/bin/env python3
"""Replay every finite certificate, save complete receipts, fail on any error."""
from pathlib import Path
import subprocess
import sys
import json

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
RECEIPTS=ROOT/'receipts'
CHECKS=[
    ('verify_fold_f6.py','fold_f6.txt'),
    ('verify_f6_chart.py','f6_chart.json'),
    ('verify_fold_bounds.py','fold_bounds.txt'),
    ('verify_parameter_cube.py','parameter_cube.txt'),
    ('verify_R_monotone_box.py','R_monotone_box.txt'),
    ('verify_fourier_no_regular_edge.py','fourier_no_regular_edge.txt'),
]

def main():
    RECEIPTS.mkdir(exist_ok=True)
    statuses=[]
    for script,receipt in CHECKS:
        done=subprocess.run([sys.executable,str(HERE/script)],cwd=HERE,text=True,capture_output=True)
        (RECEIPTS/receipt).write_text(done.stdout+done.stderr)
        ok=done.returncode==0
        statuses.append({'script':script,'status':'PASS' if ok else 'FAIL','receipt':receipt})
        print(('PASS' if ok else 'FAIL')+': '+script,flush=True)
        if not ok:
            print(done.stdout+done.stderr)
            raise SystemExit(done.returncode)
    (RECEIPTS/'verification_summary.json').write_text(json.dumps({'status':'PASS','checks':statuses},indent=2)+'\n')
    print('ALL SIX CERTIFICATES PASS. Exact arithmetic; Python standard library only.')

if __name__=='__main__':main()

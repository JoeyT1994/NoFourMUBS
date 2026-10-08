#!/usr/bin/env python3
"""Replay exact/interval certificates of the partial results, not global confinement."""
import json
from pathlib import Path
import subprocess
import sys
import time

ROOT=Path(__file__).resolve().parent
SCRIPTS=(
    'fourier/verify_fourier.py',
    'verify_fourier_block_locus.py',
    'critical/verify_auxiliary.py',
    'critical/verify_chart_seed.py',
    'mc1/verify_general_identities.py',
)

def main():
    results=[]
    for relative in SCRIPTS:
        script=ROOT/relative
        start=time.monotonic()
        run=subprocess.run([sys.executable,'-B',str(script)],cwd=ROOT,
                           text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
        rec=dict(script=relative,passed=run.returncode==0,returncode=run.returncode,
                 seconds=time.monotonic()-start,output=run.stdout)
        results.append(rec)
        print(relative+': '+('PASS' if rec['passed'] else 'FAIL'),flush=True)
        print(run.stdout,end='' if run.stdout.endswith('\n') else '\n',flush=True)
    success=all(r['passed'] for r in results)
    report=dict(scope='Exact/interval replays of the stated PARTIAL results only',
                unrestricted_global_confinement='NOT PROVED',all_passed=success,
                python=sys.version,results=results)
    (ROOT/'verification_results.json').write_text(json.dumps(report,indent=2)+'\n')
    if not success:
        print('PARTIAL-RESULT VERIFICATION FAILED',flush=True)
        raise SystemExit(1)
    print('ALL PARTIAL-RESULT VERIFICATIONS PASS',flush=True)
    print('UNRESTRICTED GLOBAL CONFINEMENT REMAINS UNPROVED',flush=True)

if __name__=='__main__':main()

#!/usr/bin/env python3
"""Run the complete exact certificate replay. No network or reference tree needed.

Default: verify existing files and print a receipt, without regenerating them.
--record: also save the receipt and subprocess outputs for the handoff.
"""
from datetime import datetime, timezone
from hashlib import sha256
from importlib.metadata import version
from pathlib import Path
import argparse
import json
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
CHECKS = [
    ('strict_domain', 'domain/verify_domain.py'),
    ('arbitrary_gram', 'core/verify_gram.py'),
    ('constructor_and_y_reduction', 'algebra/verify_y.py'),
    ('fourier_and_signature', 'assembly/verify_assembly.py'),
    ('independent_module_linkage', 'domain/verify_core_review.py'),
]

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--record', action='store_true')
    options = parser.parse_args()
    started = time.perf_counter()
    reports = []
    for name, relative_path in CHECKS:
        path = ROOT/relative_path
        if not path.is_file():
            raise RuntimeError('Missing verifier: '+relative_path)
        t = time.perf_counter()
        # -B prevents interpreter cache artifacts. Optimizations do not disable
        # any certificate check: verifiers use explicit conditionals/raises.
        result = subprocess.run([sys.executable, '-B', str(path)], cwd=ROOT,
                                capture_output=True, text=True)
        elapsed = time.perf_counter()-t
        output = result.stdout+result.stderr
        if result.returncode:
            print(output, end='', file=sys.stderr)
            raise RuntimeError(name+' failed with exit '+str(result.returncode))
        if not result.stdout.strip():
            raise RuntimeError(name+' returned no verification receipt')
        report = {'name':name, 'verifier':relative_path, 'status':'PASS',
                  'wall_seconds':round(elapsed,6),
                  'verifier_sha256':sha256(path.read_bytes()).hexdigest(),
                  'output_sha256':sha256(output.encode()).hexdigest()}
        reports.append(report)
        print(name+': PASS ('+format(elapsed,'.3f')+' s)',flush=True)
        if options.record:
            log_dir = ROOT/'verification_logs'
            log_dir.mkdir(exist_ok=True)
            (log_dir/(name+'.log')).write_text(output)
    receipt = {
        'status':'PASS_ALL_EXACT_CERTIFICATES',
        'utc':datetime.now(timezone.utc).isoformat(),
        'python':sys.version.split()[0], 'sympy':version('sympy'),
        'arithmetic':'All acceptance decisions use exact integer/rational polynomial arithmetic. Floating point is used only for timing.',
        'scope':'The polynomial identities and their inter-module linkage. The elementary positivity/root/assembly proof is in SIDE_EXISTENCE.md. No claim of a compiled full Lean theorem.',
        'checks':reports,'total_wall_seconds':round(time.perf_counter()-started,6),
    }
    if options.record:
        (ROOT/'verification.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps(receipt,indent=2))

if __name__=='__main__':
    try:
        main()
    except Exception as error:
        print('FAIL: '+str(error),file=sys.stderr)
        sys.exit(1)

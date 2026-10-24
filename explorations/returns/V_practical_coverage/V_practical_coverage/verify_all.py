#!/usr/bin/env python3
"""Replay every finite certificate in this return. Python 3 + NumPy."""
from pathlib import Path
import json
import subprocess
import sys

ROOT = Path(__file__).resolve().parent
SCRIPTS = [
    'verify_side_identity.py',
    'verify_local_fourier.py',
    'verify_practical_annulus.py',
    'verify_fourier_coverage.py',
    'verify_p_variance.py',
    'verify_near_f3_routing.py',
    'derive_strip_moments.py',
    'verify_small_p_strip.py',
]

def main():
    receipt_dir = ROOT / 'verification'
    receipt_dir.mkdir(exist_ok=True)
    results = []
    for script in SCRIPTS:
        result = subprocess.run([sys.executable, str(ROOT / script)],
                                cwd=ROOT, text=True, capture_output=True)
        (receipt_dir / (Path(script).stem + '.txt')).write_text(
            result.stdout + result.stderr, encoding='utf-8')
        ok = result.returncode == 0 and 'PASS' in result.stdout
        results.append({'script': script, 'status': 'PASS' if ok else 'FAIL',
                        'exit_code': result.returncode})
        print(f"{script}: {'PASS' if ok else 'FAIL'}", flush=True)
        if not ok:
            print(result.stdout + result.stderr)
            (receipt_dir / 'RESULTS.json').write_text(
                json.dumps({'status': 'FAIL', 'checks': results}, indent=2)+'\n')
            return 1
    receipt = {
        'status': 'PASS',
        'checks': results,
        'scope': 'Finite certificates only; written deductions remain part of the proof.',
        'global_practical_outer_margin': 'NOT ESTABLISHED',
        'certified_annular_margin': {'distance_interval': ['1/10', '4/7'],
                                     'max_corner_R_lower_bound': '1/25'},
        'atlas_or_Stage_C_input_used': False,
        'floating_point_proof_arithmetic_used': False,
    }
    (receipt_dir / 'RESULTS.json').write_text(json.dumps(receipt, indent=2)+'\n')
    print('ALL EXACT CERTIFICATES PASS')
    return 0

if __name__ == '__main__':
    sys.exit(main())

"""Replay sharp capacity and cover-acceleration correctness controls (not timings)."""
from pathlib import Path
import os
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[3]

def main():
    julia = os.environ.get('JULIA_BIN') or shutil.which('julia')
    if not julia:
        raise SystemExit('Julia is required; set JULIA_BIN to its executable.')
    cert = ROOT / 'NumericalCampaign/Certification'
    return subprocess.run([
        julia, '--startup-file=no', '--compiled-modules=existing',
        f'--project={cert / "jlenv_cluster"}', str(cert / 'review/test_cartesian.jl'),
    ], check=False).returncode

if __name__ == '__main__':
    raise SystemExit(main())

"""Replay the frozen cluster cover using the pinned campaign Julia environment."""
from pathlib import Path
import os
import shutil
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]


def main():
    julia = os.environ.get('JULIA_BIN') or shutil.which('julia')
    if not julia:
        raise SystemExit('Julia is required; set JULIA_BIN to its executable. See README.md.')
    project = ROOT / 'NumericalCampaign/Certification/jlenv_cluster'
    return subprocess.run([
        julia, '--startup-file=no', f'--project={project}',
        str(HERE / 'verify_cell.jl'),
    ], check=False).returncode


if __name__ == '__main__':
    raise SystemExit(main())

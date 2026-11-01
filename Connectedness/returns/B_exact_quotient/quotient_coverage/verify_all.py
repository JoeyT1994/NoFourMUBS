#!/usr/bin/env python3
"""Run exact analytic-support checks; no actual atlas data are bundled."""
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
for script, args in (
    ("verify_quotient.py", []),
    ("verify_all_equal_pole.py", []),
    ("verify_boundary_records.py", ["--selftest"]),
):
    subprocess.run([sys.executable, str(HERE/script), *args], check=True)
print("PASS: analytic-support verifiers. Global Claim A and an actual atlas are separate inputs.")

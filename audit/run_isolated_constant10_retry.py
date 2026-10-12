"""Finish retained Product026, then run the reviewed entry check alone.

No coefficients or proofs are generated here. The existing audited runners
and their locks perform every check. Failure stops this bounded sequence.
"""
from pathlib import Path
import datetime
import hashlib
import json
import os
import subprocess
import sys

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'


def main():
    manifest = AUDIT / 'MATCHED_THIRD_CONSTANT_BINDING10_MANIFEST.json'
    pinned_manifest = hashlib.sha256(manifest.read_bytes()).hexdigest()
    path = AUDIT / 'ISOLATED_CONSTANT10_SEQUENCE_STATUS.json'
    state = dict(status='RUNNING', pid=os.getpid(), phase='FINISH_PRODUCT026',
                 entry_manifest_sha256=pinned_manifest,
                 started_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
                 atlas_certification=False)
    path.write_text(json.dumps(state, indent=2) + '\n')
    commands = [
        ('FINISH_PRODUCT026', [sys.executable, '-u', 'audit/run_third_moment_products.py',
                              '--start', '26', '--through', '26', '--lane', 'critical']),
        ('ISOLATED_CONSTANT10', [sys.executable, '-u', 'audit/run_third_moment_adapter.py',
                                'MATCHED_THIRD_CONSTANT_BINDING10', '--exclusive',
                                '--wait-for-lane']),
    ]
    for phase, command in commands:
        assert hashlib.sha256(manifest.read_bytes()).hexdigest() == pinned_manifest
        state['phase'] = phase
        path.write_text(json.dumps(state, indent=2) + '\n')
        result = subprocess.run(command, cwd=ROOT)
        if result.returncode:
            state.update(status='FAILED', returncode=result.returncode)
            path.write_text(json.dumps(state, indent=2) + '\n')
            raise SystemExit(result.returncode)
        if phase == 'FINISH_PRODUCT026':
            from run_third_moment_products import passed
            if not passed(26):
                state['status'] = 'YIELDED_BEFORE_ENTRY'
                path.write_text(json.dumps(state, indent=2) + '\n')
                return
        else:
            outcome = json.loads((AUDIT / 'MATCHED_THIRD_CONSTANT_BINDING10_RUN_STATUS.json').read_text())
            if outcome['status'] != 'PASS':
                state['status'] = 'YIELDED_DURING_ENTRY'
                path.write_text(json.dumps(state, indent=2) + '\n')
                return
    state.update(status='PASS', completed_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
    path.write_text(json.dumps(state, indent=2) + '\n')


if __name__ == '__main__':
    main()

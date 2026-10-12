"""Resume the existing stage manifest, then audit its exact current endpoints.

The two existing compiler-lane locks prevent overlapping proof queues.
Completed, unchanged modules are retained by build_archive_reuse.py.
This runner does not generate any mathematical data or certify an atlas.
"""
from contextlib import ExitStack
from pathlib import Path
import argparse
import datetime
import fcntl
import hashlib
import json
import os
import subprocess
import sys

from audit_nonzero_staged import main as audit

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
MANIFEST = 'CRITICAL_NONZERO_SUM_REMAINING_MANIFEST.json'
BUILD = 'CRITICAL_NONZERO_SUM_REMAINING_BUILD_STATUS.json'
STEM = 'KERNEL_AUDIT_CRITICAL_NONZERO_SUM_REMAINING'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--jobs', type=int, choices=[1, 2], default=2)
    args = parser.parse_args()
    with ExitStack() as stack:
        lane_names = ['CRITICAL_ALGEBRA_QUEUE.lock']
        if args.jobs == 2:
            lane_names.append('SEMANTIC_ALGEBRA_QUEUE.lock')
        for name in lane_names:
            handle = stack.enter_context((AUDIT / name).open('a'))
            fcntl.flock(handle, fcntl.LOCK_EX | fcntl.LOCK_NB)
        raw_manifest = (AUDIT / MANIFEST).read_bytes()
        manifest = json.loads(raw_manifest)
        through = max(manifest['prepared_checkpoints'])
        state_path = AUDIT / 'CRITICAL_NONZERO_SUM_REMAINING_RUN_STATUS.json'
        state = {'status': 'BUILDING', 'pid': os.getpid(), 'through': through,
                 'workers': args.jobs,
                 'started_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
                 'manifest_sha256': hashlib.sha256(raw_manifest).hexdigest(),
                 'atlas_certification': False}
        state_path.write_text(json.dumps(state, indent=2) + '\n')
        result = subprocess.run([sys.executable, str(AUDIT / 'build_archive_reuse.py'),
                                 '--manifest', MANIFEST, '--status', BUILD, '--jobs', str(args.jobs)], cwd=ROOT)
        if result.returncode:
            state.update(status='BUILD_FAILED', returncode=result.returncode)
            state_path.write_text(json.dumps(state, indent=2) + '\n')
            raise SystemExit(result.returncode)
        build_state = json.loads((AUDIT / BUILD).read_text())
        if not build_state.get('complete'):
            # The existing builder can yield after its active modules finish.
            # An incomplete batch must never reach the full-batch audit.
            assert (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists()
            state.update(status='YIELDED_BETWEEN_MODULES',
                         completed_modules=build_state.get('completed_files'),
                         yielded_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
            state_path.write_text(json.dumps(state, indent=2) + '\n')
            return
        assert (AUDIT / MANIFEST).read_bytes() == raw_manifest
        audit_path = AUDIT / (STEM + '_STATUS.json')
        previous = json.loads(audit_path.read_text()) if audit_path.exists() else {}
        def matches(path, expected):
            return path.exists() and hashlib.sha256(path.read_bytes()).hexdigest() == expected
        reused = (previous.get('status') == 'PASS'
                  and previous.get('manifest_sha256') == state['manifest_sha256']
                  and matches(AUDIT / (STEM + '.log'), previous.get('audit_log_sha256'))
                  and all(matches(ROOT / 'lean' / p, h) for p, h in
                          (previous.get('source_hashes', {}) | previous.get('dependency_source_hashes', {})).items())
                  and all(matches(AUDIT / p, h) for p, h in previous.get('dependency_audits', {}).items()))
        if not reused:
            audit(manifest_name=MANIFEST, build_name=BUILD, audit_stem=STEM,
                  dependency_audits=manifest['dependency_audits'],
                  entry_module=manifest['last_entry_module'], checked_endpoint=manifest['last_endpoint'],
                  scope=f'Original nonzero sum DAG through checkpoint {through}. '
                        'Full raw-numerator equality remains open. No atlas certification.')
        else:
            print('Reused unchanged, source-pinned PASS audit; no proof checks repeated.', flush=True)
        # Preserve bounded-batch receipts without repeating or regenerating proofs.
        for name in [MANIFEST, BUILD, STEM + '_STATUS.json', STEM + '.log']:
            source = AUDIT / name
            target = source.with_name(source.stem + f'_THROUGH{through:04d}' + source.suffix)
            if target.exists():
                assert target.read_bytes() == source.read_bytes(), target
            else:
                target.write_bytes(source.read_bytes())
        state.update(status='PASS', audit_reused=reused,
                     completed_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
        state_path.write_text(json.dumps(state, indent=2) + '\n')


if __name__ == '__main__':
    main()

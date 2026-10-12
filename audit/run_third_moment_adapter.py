"""Build and audit one pinned third-moment adapter on one compiler lane.

This consumes a reviewed manifest; it neither updates hashes nor generates
mathematical data. The second compiler lane may continue critical algebra.
"""
from pathlib import Path
from contextlib import ExitStack
import argparse
import datetime
import fcntl
import json
import os
import subprocess
import sys

from audit_nonzero_staged import main as audit
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('name')
    parser.add_argument('--max-modules', type=int)
    parser.add_argument('--lane', choices=['semantic', 'critical'], default='semantic',
                        help='Select one of the two existing compiler lanes.')
    parser.add_argument('--wait-for-lane', action='store_true',
                        help='Queue behind the current lane holder; never start a third compiler.')
    parser.add_argument('--exclusive', action='store_true',
                        help='Hold both existing lanes but run only one compiler for a large check.')
    args = parser.parse_args()
    name = args.name
    manifest_name = name + '_MANIFEST.json'
    manifest_path = AUDIT / manifest_name
    manifest_bytes = manifest_path.read_bytes()
    manifest = json.loads(manifest_bytes)
    assert manifest['scope'] in {'matched_third_flatness', 'matched_third_arithmetic'}
    require_reuse_review(manifest['scope'])
    lane_lock = 'SEMANTIC_ALGEBRA_QUEUE.lock' if args.lane == 'semantic' else 'CRITICAL_ALGEBRA_QUEUE.lock'
    with ExitStack() as stack:
        lane_names = (['CRITICAL_ALGEBRA_QUEUE.lock', 'SEMANTIC_ALGEBRA_QUEUE.lock']
                      if args.exclusive else [lane_lock])
        for lane_name in lane_names:
            lock = stack.enter_context((AUDIT / lane_name).open('a'))
            fcntl.flock(lock, fcntl.LOCK_EX | (0 if args.wait_for_lane else fcntl.LOCK_NB))
        state_path = AUDIT / (name + '_RUN_STATUS.json')
        state = dict(status='BUILDING', pid=os.getpid(), lane=args.lane,
                     exclusive=args.exclusive, atlas_certification=False,
                     started_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
        state_path.write_text(json.dumps(state, indent=2) + '\n')
        command = [sys.executable, str(AUDIT / 'build_archive_reuse.py'),
                                 '--manifest', manifest_name,
                                 '--status', name + '_BUILD_STATUS.json', '--jobs', '1']
        if args.max_modules is not None:
            command += ['--max-modules', str(args.max_modules)]
        result = subprocess.run(command, cwd=ROOT)
        state.update(status='BUILD_FAILED' if result.returncode else 'AUDITING',
                     returncode=result.returncode)
        state_path.write_text(json.dumps(state, indent=2) + '\n')
        if result.returncode:
            raise SystemExit(result.returncode)
        assert manifest_path.read_bytes() == manifest_bytes
        build_path = AUDIT / (name + '_BUILD_STATUS.json')
        if not build_path.exists() and (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists():
            state.update(status='YIELDED_BEFORE_FIRST_MODULE',
                         completed_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
            state_path.write_text(json.dumps(state, indent=2) + '\n')
            return
        build = json.loads(build_path.read_text())
        if not build['complete']:
            state['status'] = 'YIELDED_BETWEEN_MODULES'
        else:
            audit(manifest_name=manifest_name, build_name=name + '_BUILD_STATUS.json',
                  audit_stem='KERNEL_AUDIT_' + name,
                  dependency_audits=manifest.get('dependency_audits', ()),
                  entry_module=manifest['records'][-1]['module'],
                  checked_endpoint=manifest['axiom_endpoints'][-1],
                  scope=manifest.get('scope_note', 'Third-moment adapter; no atlas certification.'))
            state['status'] = 'PASS'
        state['completed_utc'] = datetime.datetime.now(datetime.timezone.utc).isoformat()
        state_path.write_text(json.dumps(state, indent=2) + '\n')


if __name__ == '__main__':
    main()

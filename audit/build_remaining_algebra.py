"""Share one compiler slot between side reuse, SOS rows and critical algebra.

The normalization worker owns the other slot. Existing bounded builders retain
all source-hash checks, repository-update guards and successful build receipts.
Heavy final physical assemblies are deliberately not started by this driver.
"""
from pathlib import Path
import argparse
import fcntl
import json
import os
import subprocess
import sys
import time
from datetime import datetime, timezone

AUDIT = Path(__file__).resolve().parent
ROOT = AUDIT.parent
parser = argparse.ArgumentParser()
parser.add_argument('--lane', choices=['mixed', 'semantic', 'critical'], default='mixed',
                    help='Split the two existing streams only after normalization stops.')
args = parser.parse_args()
queue_name = 'REMAINING_ALGEBRA' if args.lane == 'mixed' else args.lane.upper() + '_ALGEBRA'
lock = (AUDIT / (queue_name + '_QUEUE.lock')).open('w')
fcntl.flock(lock.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
lock.write(str(os.getpid()) + '\n')
lock.flush()

status_names = [f'SOS_{f}_ROW_BUILD_STATUS.json' for f in ['TARGET', 'PSI', 'FOURIER', 'BOUNDARY']]
status_names.append('CRITICAL_ZERO_GROUP00_BUILD_STATUS.json')
status_names.append('MATCHED_SIDE_BUILD_STATUS.json')
status_names.append('CRITICAL_ZERO_GROUP01_BUILD_STATUS.json')
status_names.append('CRITICAL_ZERO_REMAINING_GROUPS_BUILD_STATUS.json')
status_names.append('CRITICAL_ZERO_PHYSICAL_BUILD_STATUS.json')


def states():
    return [json.loads((AUDIT / n).read_text()) if (AUDIT / n).exists() else {}
            for n in status_names]


commands = [
    [sys.executable, '-u', str(AUDIT / 'build_archive_reuse.py'),
     '--manifest', 'MATCHED_SIDE_REUSE_MANIFEST.json',
     '--status', 'MATCHED_SIDE_BUILD_STATUS.json', '--max-modules', '3'],
    [sys.executable, '-u', str(AUDIT / 'build_archive_reuse.py'),
     '--manifest', 'CRITICAL_ZERO_GROUP01_MANIFEST.json',
     '--status', 'CRITICAL_ZERO_GROUP01_BUILD_STATUS.json', '--max-modules', '1'],
    [sys.executable, '-u', str(AUDIT / 'build_archive_reuse.py'),
     '--manifest', 'CRITICAL_ZERO_REMAINING_GROUPS_MANIFEST.json',
     '--status', 'CRITICAL_ZERO_REMAINING_GROUPS_BUILD_STATUS.json', '--max-modules', '3'],
    [sys.executable, '-u', str(AUDIT / 'build_archive_reuse.py'),
     '--manifest', 'CRITICAL_ZERO_PHYSICAL_REUSE_MANIFEST.json',
     '--status', 'CRITICAL_ZERO_PHYSICAL_BUILD_STATUS.json', '--max-modules', '3'],
    [sys.executable, '-u', str(AUDIT / 'build_sos_boundary_rows.py'),
     '--family', 'auto', '--ready-only', '--max-batches', '1'],
    [sys.executable, '-u', str(AUDIT / 'build_archive_reuse.py'),
     '--manifest', 'CRITICAL_ZERO_GROUP00_MANIFEST.json',
     '--status', 'CRITICAL_ZERO_GROUP00_BUILD_STATUS.json', '--max-modules', '1'],
]
if args.lane == 'semantic':
    commands = [commands[0], commands[4]]
    status_names = status_names[:4] + ['MATCHED_SIDE_BUILD_STATUS.json']
elif args.lane == 'critical':
    commands = [commands[1], commands[2], commands[3], commands[5]]
    status_names = ['CRITICAL_ZERO_GROUP01_BUILD_STATUS.json',
                    'CRITICAL_ZERO_REMAINING_GROUPS_BUILD_STATUS.json',
                    'CRITICAL_ZERO_PHYSICAL_BUILD_STATUS.json',
                    'CRITICAL_ZERO_GROUP00_BUILD_STATUS.json']
round_number = 0
while not (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists():
    before = sum(s.get('completed_files', 0) for s in states())
    for command in commands:
        if (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists():
            break
        result = subprocess.run(command, cwd=ROOT)
        receipt = {'pid': os.getpid(), 'round': round_number,
                   'lane': args.lane,
                   'checked_at': datetime.now(timezone.utc).isoformat(),
                   'last_driver': Path(command[2]).name,
                   'returncode': result.returncode,
                   'status_files': status_names,
                   'atlas_certification': False}
        (AUDIT / (queue_name + '_QUEUE_STATUS.json')).write_text(json.dumps(receipt, indent=2) + '\n')
        if result.returncode:
            raise SystemExit(result.returncode)
    current = states()
    if all(s.get('complete', False) for s in current):
        print('All scheduled algebra modules checked; heavy final assemblies remain manual.', flush=True)
        break
    round_number += 1
    if sum(s.get('completed_files', 0) for s in current) == before:
        time.sleep(5)

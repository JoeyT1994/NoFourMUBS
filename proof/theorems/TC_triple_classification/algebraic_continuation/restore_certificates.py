#!/usr/bin/env python3
"""Restore only the published checkpoint's required evidence from Git history."""
import hashlib
import json
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
TC = Path('proof/theorems/TC_triple_classification')
A = TC / 'algebraic_continuation'
ARCHIVE = '5ae32d5aab0567f316f8fc9f8eaad5ff6ffac2e5'


def archived(path):
    result = subprocess.run(['git', 'show', f'{ARCHIVE}:{path.as_posix()}'],
                            cwd=ROOT, capture_output=True)
    if result.returncode:
        raise RuntimeError(f'Cannot read archived {path}. In a shallow clone, run '
                           f'git fetch origin {ARCHIVE} first.\n' + result.stderr.decode())
    return result.stdout


def producer(receipt):
    if receipt.parent.name == 'replay_eager':
        return receipt.parent.parent / 'scan_eager' / receipt.name
    if receipt.parent.name == 'replay_cubic_first':
        return receipt.parent.parent / 'scan_cubic_first' / receipt.name
    names = {
        'replay_eager_126.jsonl': 'eager_bins_126.jsonl',
        'replay_tight_604.jsonl': 'tight_bins_604.jsonl',
        'replay_1073.jsonl': 'optimized_serial.jsonl',
        'replay_1296.jsonl': 'optimized_1296_cert.jsonl',
        'replay_partition_2573.jsonl': 'partition_full_2573.jsonl',
        'replay_2169_final.jsonl': 'algebraic_pilot.jsonl',
    }
    return receipt.with_name(names[receipt.name])


def main():
    payload = {}

    def add(path):
        if path not in payload:
            payload[path] = archived(path)
        return payload[path]

    ledger = json.loads(add(A / 'results/progress_replayed.json'))
    add(TC / 'algebraic/results/remaining_indices.json')
    receipts = [A / entry['receipt'] for entry in ledger['evidence']]
    receipts.append(TC / 'algebraic/results/replay_2169_final.jsonl')
    for path in receipts:
        row = json.loads(add(path))
        manifest = json.loads(add(path.with_suffix(path.suffix + '.manifest.json')))
        body = {k: v for k, v in manifest.items() if k != 'id'}
        identity = hashlib.sha256(json.dumps(body, sort_keys=True).encode()).hexdigest()
        if identity != manifest['id'] or row['binding'] != identity:
            raise ArithmeticError(f'Invalid replay binding: {path}')
        for source, expected in manifest['sources'].items():
            if hashlib.sha256((ROOT / source).read_bytes()).hexdigest() != expected:
                raise ArithmeticError(f'Bound source differs: {source}')
        origin = producer(path)
        inputs = [json.loads(line) for line in add(origin).splitlines() if line.strip()]
        matches = [value for value in inputs if value.get('index') == row['index']]
        if len(matches) != 1:
            raise ArithmeticError(f'Expected exactly one input for {path}')
        digest = hashlib.sha256(json.dumps(matches[0], sort_keys=True).encode()).hexdigest()
        if digest != manifest['input_row_sha256']:
            raise ArithmeticError(f'Input hash mismatch: {origin}')
        add(origin.with_suffix(origin.suffix + '.manifest.json'))

    # Validate the whole set before writing. Never replace different local work.
    for path, data in payload.items():
        target = ROOT / path
        if target.exists() and target.read_bytes() != data:
            raise FileExistsError(f'Different local file already exists: {path}')
    for path, data in payload.items():
        target = ROOT / path
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
    print(f'Restored {len(payload)} ignored files for {len(receipts)} original-ball replays. '
          'This restores evidence; run the replay programs to repeat the proof checks.')


if __name__ == '__main__':
    main()

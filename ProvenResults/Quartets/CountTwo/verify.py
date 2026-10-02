#!/usr/bin/env python3
"""Replay every check of ProvenResults/Quartets/CountTwo.

Run as `python3 verify.py` from this folder. Each module's calculate()
recomputes its algebra and raises on any failed identity. Its complete
output is then compared with data/expected_results.json. Prints one PASS
line per module and exits nonzero on any failure.

`python3 verify.py --write-expected` regenerates the expected-results file.
Only files in this folder are read; no archive file is used.
"""
from pathlib import Path
import importlib
import json
import sys
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
EXPECTED = HERE/'data'/'expected_results.json'

MODULES = [
    ('residual_setup', 'ResidualSetup.md', 'setup_checks'),
    ('reducible_exclusion', 'ReducibleExclusion.md', 'reducible_checks'),
    ('collisions_and_five_value', 'Collisions.md, FiveValue.md', 'collisions_five_checks'),
    ('ternary_and_four_value', 'TernaryDirection.md, FourValue.md', 'ternary_four_checks'),
    ('six_value', 'SixValue.md', 'six_value_checks'),
]


def strip_timings(obj):
    """Drop wall-clock fields, which are not part of the pinned output."""
    if isinstance(obj, dict):
        return {k: strip_timings(v) for k, v in obj.items() if not any(w in k for w in ('timing', 'runtime', 'seconds'))}
    if isinstance(obj, list):
        return [strip_timings(v) for v in obj]
    return obj


def main():
    write = '--write-expected' in sys.argv
    expected = {} if write else json.loads(EXPECTED.read_text())
    produced, failures = {}, []
    start = time.monotonic()
    for name, proof, module in MODULES:
        t = time.monotonic()
        try:
            result = strip_timings(json.loads(json.dumps(importlib.import_module(module).calculate(), sort_keys=True)))
            produced[name] = result
            if not write and result != expected.get(name):
                raise ValueError('output differs from data/expected_results.json')
            print(f'PASS {name} ({proof}) {time.monotonic()-t:.1f}s', flush=True)
        except Exception as exc:  # report every failure, then exit nonzero
            failures.append(name)
            print(f'FAIL {name} ({proof}): {type(exc).__name__}: {exc}', flush=True)
    if write and not failures:
        EXPECTED.parent.mkdir(exist_ok=True)
        EXPECTED.write_text(json.dumps(produced, indent=1, sort_keys=True)+'\n')
        print('wrote', EXPECTED.name)
    print(f'total {time.monotonic()-start:.1f}s')
    if failures:
        print('FAILED:', ', '.join(failures))
        sys.exit(1)
    print(f'ALL {len(MODULES)} CHECK MODULES PASS')


if __name__ == '__main__':
    main()

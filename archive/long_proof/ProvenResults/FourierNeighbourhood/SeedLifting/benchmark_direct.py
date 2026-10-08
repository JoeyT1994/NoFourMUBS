"""Apply DirectLift to all 53 retained production-layer sample boxes.

This measures usefulness, separately from the theorem's positive controls.
It makes no production edits. A rejected box remains unresolved.
"""
from pathlib import Path
import argparse
import hashlib
import json
import time

from direct_lift import arb, certify_any_frame

ROOT = Path(__file__).resolve().parents[3]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    source = ROOT/'WhatWeWanttoProve/evidence/layer_bench_600.json'
    data = json.loads(source.read_text())
    boxes = [item for item in data['unresolved_retry'] if item['how'] == 'unresolved']
    assert len(boxes) == 53
    start = time.monotonic()
    records = []
    for item in boxes:
        result = certify_any_frame(item['theta'], [arb.pi()/512]*4)
        records.append(dict(center_binary_float=item['theta'], result=result))
    out = dict(source=str(source.relative_to(ROOT)),
               source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),
               half_width='pi/512 radians', frames_per_box=72,
               tested=len(records), excluded=sum(r['result']['ok'] for r in records),
               elapsed_seconds=time.monotonic()-start, records=records)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(out, indent=2)+'\n')
    print(json.dumps({k: v for k, v in out.items() if k != 'records'}, indent=2))


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Check the published inventory; this does not rerun numerical certificates."""
from collections import Counter
from pathlib import Path
import argparse
import gzip
import hashlib
import json

HERE = Path(__file__).resolve().parent
SETTLED = {1, 2, 3, 4, 5, 8, 9}


def verify():
    manifest = json.loads((HERE / "MANIFEST.json").read_text())
    for relative, expected in manifest["files"].items():
        path = (HERE / relative).resolve(strict=True)
        if not path.is_relative_to(HERE.resolve()):
            raise ValueError("Manifest path escapes packet")
        with path.open("rb") as f:
            actual = hashlib.file_digest(f, "sha256").hexdigest()
        if actual != expected:
            raise ValueError("Hash differs: " + relative)
    census = json.loads((HERE / "receipts/ring_CENSUS.json").read_text())
    status = gzip.decompress((HERE / "data/OUTSIDE003_STATUS.u8.gz").read_bytes())
    if len(status) != census["original_records"]:
        raise ValueError("Ring status length differs")
    if hashlib.sha256(status).hexdigest() != census["status_vector"]["logical_sha256"]:
        raise ValueError("Ring status logical digest differs")
    counts = Counter(status)
    if set(counts) - set(range(10)):
        raise ValueError("Unknown ring status")
    expected = census["strictly_outside003_counts_by_status"]
    labels = census["status_codes"]
    if any(counts[k] != expected.get(labels[str(k)], 0) for k in range(1, 10)):
        raise ValueError("Ring status census differs")
    if counts[0] != census["not_strictly_outside003_records"]:
        raise ValueError("Outside-radius complement differs")
    seen = Counter()
    end = -1
    with gzip.open(HERE / "data/OUTSIDE003_RANGES.jsonl.gz", "rt") as f:
        for line in f:
            row = json.loads(line)
            a, b, code = row["start"], row["end"], row["status_code"]
            if not (end < a <= b < len(status) and code in range(1, 10)):
                raise ValueError("Invalid or overlapping range")
            if row["count"] != b - a + 1 or row["status"] != labels[str(code)]:
                raise ValueError("Range count/label differs")
            if status[a:b + 1] != bytes([code]) * (b - a + 1):
                raise ValueError("Range/vector disagreement")
            seen[code] += b - a + 1
            end = b
    if any(seen[k] != counts[k] for k in range(1, 10)):
        raise ValueError("Ranges do not cover the full classified set")
    pilots = [json.loads(s) for s in (HERE / "data/export2_pilot_closed.jsonl").read_text().splitlines()]
    if len(pilots) != 8:
        raise ValueError("Pilot census differs")
    summary = {"status": "INVENTORY_HASHES_AND_ENUMERATION_PASS",
               "ring_numerical_or_conditional_settlements_outside003": sum(counts[k] for k in SETTLED),
               "ring_unresolved_outside003": counts[6] + counts[7],
               "pilot_freshly_replayed_export2_boxes": len(pilots),
               "physical_lean_admissions": 0,
               "certificate_replay_performed": False}
    return status, labels, summary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ring-id", type=int)
    args = parser.parse_args()
    status, labels, summary = verify()
    if args.ring_id is not None:
        if not 0 <= args.ring_id < len(status):
            raise ValueError("Ring ID out of range")
        code = status[args.ring_id]
        summary["lookup"] = {"namespace": "full_ring_original_id", "id": args.ring_id,
                             "status_code": code, "status": labels[str(code)],
                             "recorded_settlement": code in SETTLED}
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Prove that compact replay data retain every supplied seed and descriptor."""
import argparse
import gzip
import hashlib
import json
from pathlib import Path


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("original")
    parser.add_argument("compact")
    parser.add_argument("--output")
    args = parser.parse_args()
    original = json.load(gzip.open(args.original, "rt"))
    original.pop("edge", None)
    original.pop("records", None)
    samples = []
    descriptor_count = 0
    for i, seed in enumerate(original["seeds"]):
        groups = seed.get("transfers", [])
        if groups:
            samples.append({"seed": i, "boxes": sum(len(g.get("boxes", [])) for g in groups),
                            "descriptors": len(groups)})
        descriptor_count += len(groups)
        for group in groups:
            group.pop("boxes", None)
    compact = json.load(gzip.open(args.compact, "rt"))
    compact.pop("edge", None)
    compact.pop("records", None)
    for seed in compact["seeds"]:
        for group in seed.get("transfers", []):
            group.pop("boxes", None)
    passed = original["seeds"] == compact["seeds"]
    result = {"status": "PASS" if passed else "FAIL",
              "original_sha256": digest(args.original), "compact_sha256": digest(args.compact),
              "seed_records": len(original["seeds"]), "sample_sources": len(samples),
              "descriptors": descriptor_count,
              "sample_original_boxes": sum(s["boxes"] for s in samples),
              "seed_headers_and_ordered_descriptors_exactly_equal": passed,
              "sample_counts": samples}
    if args.output:
        Path(args.output).write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({k:v for k,v in result.items() if k != "sample_counts"}, indent=2))
    return 0 if passed else 1


if __name__ == "__main__":
    raise SystemExit(main())

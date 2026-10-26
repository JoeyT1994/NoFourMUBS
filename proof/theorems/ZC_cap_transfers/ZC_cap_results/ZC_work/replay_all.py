#!/usr/bin/env python3
"""Sequentially replay every delivered complete spherical-cap certificate."""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import time

import cap_verify as CV

HERE = Path(__file__).resolve().parent


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=HERE / "transfer_input.json.gz")
    parser.add_argument("--certificates", type=Path, default=HERE / "certificates")
    parser.add_argument("--summary", type=Path, default=HERE / "coverage_summary.json")
    parser.add_argument("--output", type=Path, default=HERE / "replay_results")
    parser.add_argument("--seeds", type=int, nargs="*")
    args = parser.parse_args()
    data = CV.load_input(args.input)
    ids = args.seeds if args.seeds is not None else json.loads(args.summary.read_text())["certified_seed_ids"]
    args.output.mkdir(parents=True, exist_ok=True)
    began = time.perf_counter()
    records = []
    for seed in ids:
        file = args.certificates / f"seed_{seed}.json"
        try:
            result = CV.replay(data, json.loads(file.read_text()))
        except Exception as exc:
            result = {"seed": seed, "status": "NOT ESTABLISHED", "full_sphere": False,
                      "error": f"{type(exc).__name__}: {exc}"}
        result["input_sha256"] = CV.sha256(args.input)
        result["proposal_sha256"] = CV.sha256(file)
        result["checker_sha256"] = CV.sha256(Path(CV.__file__))
        (args.output / f"seed_{seed}.json").write_text(json.dumps(result, indent=2) + "\n")
        small = {k:result.get(k) for k in ("seed", "status", "caps", "certified_caps", "seconds", "error")}
        records.append(small)
        print(json.dumps(small), flush=True)
    ok = all(r["status"] == "CERTIFIED full sphere" for r in records)
    summary = {"status": "PASS" if ok else "FAIL", "requested": len(ids),
               "certified": sum(r["status"] == "CERTIFIED full sphere" for r in records),
               "seconds": time.perf_counter() - began, "records": records}
    (args.output / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())

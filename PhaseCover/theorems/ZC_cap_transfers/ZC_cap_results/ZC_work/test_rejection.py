#!/usr/bin/env python3
"""Meaningful negative controls for the mathematical certificate checker."""
from __future__ import annotations
import argparse
from copy import deepcopy
import gzip
import json
from pathlib import Path
import time

import cap_verify as C
from coverage import verify_coverage, self_test


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input")
    parser.add_argument("certificate")
    parser.add_argument("--output")
    args = parser.parse_args()
    start = time.perf_counter()
    data = C.load_input(args.input)
    proposal = json.loads(Path(args.certificate).read_text())
    row = data["seeds"][proposal["seed"]]
    model = C.P.normal_form(C.SC.Ball(row))
    cap = next(c for c in proposal["caps"] if row["transfers"][c["group_index"]]["kind"] == "T1")
    group = row["transfers"][cap["group_index"]]
    target = C.SC.Ball(data["seeds"][group["target"]])
    tr = C.P.Transfer(model, target, group)
    tests = []

    def record(name, passed):
        tests.append({"test": name, "passed": bool(passed)})

    record("untampered real cap accepts", C.check_cap(model, tr, cap)["ok"])
    bad = deepcopy(cap)
    bad["mu"] = (-1.0).hex()
    record("negative cap multiplier rejects", not C.check_cap(model, tr, bad)["ok"])
    bad = deepcopy(cap)
    bad["s"] = (0.0).hex()
    record("false zero affine bound rejects", not C.check_cap(model, tr, bad)["ok"])
    bad = deepcopy(group)
    bad["wind"][0] += 1
    wrong_transfer = C.P.Transfer(model, target, bad)
    record("changed phase winding rejects", not C.check_cap(model, wrong_transfer, cap)["ok"])
    bad = deepcopy(cap)
    bad["h"] = (float.fromhex(cap["h"]) / 2).hex()
    record("unsupported enlarged cap rejects", not C.check_cap(model, tr, bad)["ok"])
    bad = deepcopy(cap)
    bad["v"] = [0, 0, 0, 0]
    try:
        C.check_cap(model, tr, bad)
        rejected = False
    except ValueError:
        rejected = True
    record("zero cap normal rejects", rejected)
    bad = deepcopy(proposal["coverage"])
    bad["facets"].pop()
    record("missing polar facet rejects", not verify_coverage(proposal["caps"], bad)["passed"])
    bad = deepcopy(proposal["coverage"])
    bad["facets"][0]["numerator"][0] += 1
    record("changed dual vertex rejects", not verify_coverage(proposal["caps"], bad)["passed"])
    bad = deepcopy(cap)
    bad["multiplier_vec"] = [(float.fromhex(cap["mu"]) + 1).hex(), 0, 0, 0]
    record("invalid affine multiplier SOC rejects", not C.check_cap(model, tr, bad)["ok"])
    # The combined replay sanitizes aliases, so they cannot change its cover.
    aliased = deepcopy(proposal)
    for item in aliased["caps"]:
        item["normal"] = [1, 0, 0, 0]
        item["threshold"] = 1000
    result = C.replay(data, aliased, model=model)
    record("untrusted cap aliases cannot override v and h", result["full_sphere"])
    result = {"status": "PASS" if all(t["passed"] for t in tests) else "FAIL",
              "tests": tests, "seconds": time.perf_counter() - start,
              "checker_sha256": C.sha256(Path(C.__file__))}
    if args.output:
        Path(args.output).write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))
    return 0 if result["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())

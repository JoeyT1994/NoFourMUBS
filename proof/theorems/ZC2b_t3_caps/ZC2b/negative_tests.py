"""Tampering regressions on an actual certified mixed-sphere certificate.

Only genuinely invalid modifications are required to fail.  A winding in a
pure row/column gauge, or a replacement by an equivalent descriptor, need not
be invalid.  The tests explicitly distinguish binding and arithmetic failures.
"""
from __future__ import annotations

import argparse
import copy
import gzip
import hashlib
import json
from pathlib import Path
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sys.path[:0] = [str(ROOT / "cert"), str(ROOT / "atlas")]

from flint import ctx
import cap_coverage as COV
import cap_t3 as T3
import caps as CAPS
import edgecert as EC
import patches as P
import seedcert as SC


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("proposal", type=Path)
    ap.add_argument("--input", type=Path, default=ROOT / "data/zc2b_t3.json.gz")
    ap.add_argument("--output", type=Path, default=HERE / "negative_tests_receipt.json")
    ap.add_argument("--precision", type=int, default=224)
    args = ap.parse_args()
    start = time.perf_counter()
    input_bytes, proposal_bytes = args.input.read_bytes(), args.proposal.read_bytes()
    input_sha256 = hashlib.sha256(input_bytes).hexdigest()
    proposal_sha256 = hashlib.sha256(proposal_bytes).hexdigest()
    data = json.loads(gzip.decompress(input_bytes))
    proposal = json.loads(proposal_bytes)
    del input_bytes, proposal_bytes
    seed = proposal["seed"]
    row = data["t3_seeds"][str(seed)]
    groups = row["transfers"]
    ctx.prec = args.precision
    model = P.normal_form(SC.Ball(row), args.precision)
    baseline = T3.replay(data, proposal, args.precision, model=model)
    if not baseline["full_sphere"]:
        raise RuntimeError("Negative-test baseline is not a certified full sphere")
    t3_caps = [(i, cap) for i, cap in enumerate(proposal["caps"])
               if groups[cap["group_index"]]["kind"] == "T3"]
    if not t3_caps:
        raise RuntimeError("Choose a mixed sphere with an actual T3 cap")
    tests = []

    def check(cap, group=None):
        try:
            gi = cap["group_index"]
            g = groups[gi] if group is None else group
            if g["kind"] == "T3":
                tr = T3.Transfer(model, EC.EdgeBall(data["edge"][g["target"]]), g, gi)
                return T3.check_cap(model, tr, cap)
            if g["kind"] in ("T0", "T1"):
                tr = P.Transfer(model, SC.Ball(data["seed_headers"][g["target"]]), g)
                return CAPS.check_cap(model, tr, cap)
            raise ValueError("unsupported transfer kind")
        except Exception as exc:
            return {"ok": False, "reason": f"{type(exc).__name__}: {exc}"}

    def record(name, result, **extra):
        entry = dict(name=name, expected="REJECT", rejected=not result.get("ok", False),
                     result=result, **extra)
        tests.append(entry)
        print(json.dumps({k: v for k, v in entry.items() if k != "result"}
                         | {"reason": result.get("reason", result.get("error"))}), flush=True)

    index, cap = t3_caps[0]
    clean = check(cap)
    if not clean["ok"]:
        raise RuntimeError("Selected T3 cap baseline failed")

    # Keep the cap geometry nondegenerate and the old witnesses unchanged.
    enlarged = None
    for ci, original in t3_caps:
        for factor in (2, 10, 1000):
            changed = copy.deepcopy(original)
            changed["h"] = (float.fromhex(changed["h"]) / factor).hex()
            result = check(changed)
            if not result["ok"]:
                enlarged = (ci, factor, result)
                break
        if enlarged:
            break
    if enlarged:
        record("enlarged_cap_same_witnesses", enlarged[2], cap=enlarged[0],
               threshold_divisor=enlarged[1])
    else:
        record("enlarged_cap_same_witnesses", {"ok": True,
               "reason": "These enlargements remained valid; no false rejection claimed."})

    # Delete one actual cap. Renumber the surviving facets, remove facets
    # incident to the deleted vertex, and update cap_count, so a stale count
    # alone does not explain rejection. The exact completeness/norm test must
    # reject the resulting alleged full cover.
    active_indices = {i for facet in proposal["coverage"]["facets"] for i in facet["vertices"]}
    ci = next((i for i, _ in t3_caps if i in active_indices), min(active_indices))
    remaining = copy.deepcopy(proposal["caps"])
    remaining.pop(ci)
    coverage = copy.deepcopy(proposal["coverage"])
    coverage["cap_count"] = len(remaining)
    facets = []
    for facet in coverage["facets"]:
        if ci in facet["vertices"]:
            continue
        facet["vertices"] = [v - (v > ci) for v in facet["vertices"]]
        facets.append(facet)
    coverage["facets"] = facets
    dropped = COV.verify_coverage([{"v": c["v"], "h": c["h"]} for c in remaining], coverage)
    record("dropped_cap_adjusted_indices_and_count", dict(dropped, ok=dropped["passed"] and dropped["covers"]),
           dropped_cap=ci,
           interpretation="The retained facet certificate is invalid/incomplete after deletion. This alone does not claim the remaining caps cannot admit a different valid cover certificate.")

    # Make the first extracted corner coordinate differ by one full turn.
    # Refresh the hash deliberately: rejection must arise from the actual
    # ellipsoid calculation, rather than merely descriptor binding.
    changed_group = copy.deepcopy(groups[cap["group_index"]])
    changed_group["wind"][0] += 1
    changed = copy.deepcopy(cap)
    changed["t3_group_sha256"] = T3.group_digest(changed_group)
    record("wrong_parameter_winding_binding_refreshed", check(changed, changed_group),
           cap=index, coordinate=0, added_turns=1)

    # A single interior matrix entry has a nonzero horizontal projection.
    changed = copy.deepcopy(cap)
    changed["t3_alignment"]["wind"][7] += 1
    record("wrong_distance_winding", check(changed), cap=index,
           phase_entry=7, added_turns=1)

    # Choose another real T3 descriptor if one is present; otherwise any
    # different valid group index. A bound descriptor cannot be substituted.
    candidates = [i for i, g in enumerate(groups) if i != cap["group_index"]
                  and g["kind"] == "T3"]
    candidates += [i for i in range(len(groups)) if i != cap["group_index"]]
    changed = copy.deepcopy(cap)
    changed["group_index"] = candidates[0]
    record("wrong_existing_group_index", check(changed), cap=index,
           old_group_index=cap["group_index"], new_group_index=candidates[0])

    # Tamper each of the two matrix witnesses separately. Nonnegative but
    # zero s with these nonzero outputs cannot pass a positive-definite proof.
    for key in ("t3_parameter", "t3_distance"):
        changed = copy.deepcopy(cap)
        changed[key]["s"] = 0
        record("tampered_" + key + "_witness", check(changed), cap=index,
               changed_field="s", new_value=0)

    # Coverage aliases cannot cause a different cap to be checked: the mixed
    # replay always projects the actual v,h fields into the coverage checker.
    changed_proposal = copy.deepcopy(proposal)
    changed_proposal["caps"][index]["normal"] = [1, 0, 0, 0]
    changed_proposal["caps"][index]["threshold"] = 1000000
    alias_result = T3.replay(data, changed_proposal, args.precision, model=model)
    aliases_ignored = alias_result["full_sphere"]

    output = dict(
        status="CERTIFIED" if all(t["rejected"] for t in tests) and aliases_ignored else "FAILED",
        source_seed=seed, selected_t3_cap=index, precision_bits=args.precision,
        baseline_full_sphere=baseline["full_sphere"], baseline_cap=clean,
        negative_test_count=len(tests), rejected_count=sum(t["rejected"] for t in tests),
        tests=tests, nonauthoritative_coverage_aliases_ignored=aliases_ignored,
        elapsed_seconds=time.perf_counter() - start,
        input_sha256=input_sha256, proposal_sha256=proposal_sha256,
        code_sha256={str(p.relative_to(ROOT)): sha(p) for p in
                     [Path(__file__), ROOT/"cert/cap_t3.py", ROOT/"cert/caps.py",
                      ROOT/"cert/cap_coverage.py", ROOT/"cert/seedcert.py"]},
        scope="Rejection of the listed invalid changes, plus a passing unchanged baseline. Does not claim every possible byte change is mathematically invalid.",
    )
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(output, indent=2, allow_nan=False) + "\n")
    print(json.dumps({k: v for k, v in output.items() if k not in ("tests", "baseline_cap", "code_sha256")}), flush=True)
    return 0 if output["status"] == "CERTIFIED" else 1


if __name__ == "__main__":
    raise SystemExit(main())

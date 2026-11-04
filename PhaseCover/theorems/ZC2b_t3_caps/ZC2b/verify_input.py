"""Exact inventory and header-binding audit of the supplied T3 extract."""
from collections import Counter
import gzip
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def main():
    path = ROOT / "data/zc2b_t3.json.gz"
    data = json.load(gzip.open(path, "rt"))
    indices = data["t3_seed_indices"]
    if len(indices) != 82 or len(set(indices)) != 82:
        raise ValueError("Expected 82 distinct source indices")
    if set(data["t3_seeds"]) != {str(i) for i in indices}:
        raise ValueError("Source-index list and source-record dictionary differ")
    fields = ("theta0", "Mth", "r", "o", "k", "P", "U", "gauge", "n", "label_radius")
    boxes, groups = Counter(), Counter()
    per_source = []
    for i in indices:
        source = data["t3_seeds"][str(i)]
        header = data["seed_headers"][i]
        for key in fields:
            if source.get(key) != header.get(key):
                raise ValueError(f"Source {i} does not match target-header field {key}")
        counts = Counter()
        for group in source["transfers"]:
            kind = group["kind"]
            if kind not in ("T0", "T1", "T3"):
                raise ValueError("Unsupported group kind in supplied extract")
            target = group["target"]
            limit = len(data["edge"]) if kind == "T3" else len(data["seed_headers"])
            if type(target) is not int or not 0 <= target < limit:
                raise ValueError("Bad target index")
            groups[kind] += 1
            boxes[kind] += len(group["boxes"])
            counts[kind] += len(group["boxes"])
        if not counts["T3"]:
            raise ValueError("A listed source has no T3 boxes")
        per_source.append({"seed": i, "boxes": dict(counts), "total_boxes": sum(counts.values())})
    if sum(boxes.values()) != 569854 or boxes["T3"] != 159836:
        raise ValueError("Supplied box counts differ from the brief")
    result = dict(status="CERTIFIED", arithmetic="exact input comparison and integer counting",
                  input_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                  seed_headers=len(data["seed_headers"]), source_spheres=len(indices),
                  edge_targets=len(data["edge"]), compared_header_fields=list(fields),
                  groups=dict(groups), boxes=dict(boxes), total_boxes=sum(boxes.values()),
                  source=data.get("source"), sources=per_source)
    destination = ROOT / "ZC2b/input_receipt.json"
    destination.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({k: v for k, v in result.items() if k != "sources"}, indent=2))


if __name__ == "__main__":
    main()

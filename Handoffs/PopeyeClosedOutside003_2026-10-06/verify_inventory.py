"""Integrity, receipt binding, and exact geometry only; not native/Lean replay."""
from pathlib import Path
from fractions import Fraction as Q
import gzip
import hashlib
import json

HERE = Path(__file__).resolve().parent


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False).encode()


def atan_bounds(n):
    lo = sum((Q((-1)**k, (2*k+1)*n**(2*k+1)) for k in range(64)), Q(0))
    return lo, lo + Q(1, 129*n**129)


def radius_bounds(box):
    a, b = atan_bounds(5), atan_bounds(239)
    pi = 16*a[0]-4*b[1], 16*a[1]-4*b[0]
    denominator = 1 << 160
    metrics = []
    for seed in ((1,-1,-1,1), (-1,1,1,-1)):
        lower, upper = [], []
        for center, radius, sign in zip(box["centers"], box["radii"], seed):
            center, radius = Q(center), Q(radius)
            assert 0 < radius <= 1 and -4 < center < 4
            lo, hi = center-radius, center+radius
            aliases = []
            for k in range(-3, 4):
                x, y = sorted(((Q(2*sign,3)+2*k)*pi[0], (Q(2*sign,3)+2*k)*pi[1]))
                x = Q(x.numerator*denominator//x.denominator, denominator)
                y = Q(-((-y.numerator*denominator)//y.denominator), denominator)
                aliases.append((x,y))
            assert aliases[0][1] < lo <= hi < aliases[-1][0]
            lower.append(min(max(Q(0), x-hi, lo-y) for x,y in aliases))
            upper.append(min(max(abs(lo-x),abs(lo-y),abs(hi-x),abs(hi-y)) for x,y in aliases))
        metrics.append((max(lower),max(upper)))
    return min(x for x,y in metrics), min(y for x,y in metrics)


def main():
    if not __debug__:
        raise RuntimeError("Assertions must be enabled")
    for line in (HERE/"MANIFEST.sha256").read_text().splitlines():
        digest, relative = line.split("  ",1)
        path = HERE/relative
        assert not path.is_symlink() and path.is_file()
        assert sha(path.read_bytes()) == digest, relative
    p = HERE/"export2_pilot"
    original = (p/"original_replay_results.jsonl.gz").read_bytes()
    receipt = json.loads((p/"original_replay_receipt.json").read_text())
    assert receipt["status"] == "PASS_ACCEPTED_SUBSET"
    assert receipt["output_sha256"] == sha(original)
    results = [json.loads(x) for x in gzip.decompress(original).splitlines()]
    accepted = {r["binding"]["id"]:r for r in results if r["status"] == "FRESH_NUMERICAL_PASS"}
    assert len(accepted) == 8
    boxes = {r["id"]:r for r in map(json.loads,gzip.decompress((p/"original_pilot_boxes.jsonl.gz").read_bytes()).splitlines())}
    inventory = [json.loads(x) for x in (p/"closed_outside003.jsonl").read_text().splitlines()]
    assert len(inventory) == 8 and {r["id"] for r in inventory} == set(accepted)
    for item in inventory:
        result = accepted[item["id"]]
        binding, replay, recipe = result["binding"], result["fresh_replay"], result["recipe"]
        assert sha(canonical(binding)) == item["binding_sha256"] == result["binding_sha256"]
        assert sha(canonical(boxes[item["id"]])) == binding["source_record_sha256"]
        assert binding["namespace"] == item["namespace"] == "export2_serial"
        assert binding["input"] == recipe["input"] == item["input"]
        assert replay["ok"] is True and replay["status"] == "PASS"
        assert replay["provider_hashes"] == recipe["provider_hashes"]
        assert replay["evidence_sha256"] == recipe["replay"]["evidence_sha256"] == item["evidence_sha256"]
        lo, hi = radius_bounds(item["input"])
        assert lo == Q(item["whole_box_nearest_seed_radius_lower"])
        assert hi == Q(item["whole_box_nearest_seed_radius_upper"])
        assert lo > Q(3,100) and item["outside003"] is True
        assert item["outside01"] == (lo > Q(1,10))
        assert item["physical_lean_admissions"] == 0
    print("PASS: packet hashes; 8 bound numerical pilot records; exact whole-box radius >0.03. Native providers and Lean theorem NOT replayed.")


if __name__ == "__main__":
    main()

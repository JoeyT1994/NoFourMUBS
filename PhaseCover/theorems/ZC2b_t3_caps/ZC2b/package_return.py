"""Package the complete certified return, with immutable byte bindings."""
import argparse
import hashlib
import json
from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--output", type=Path, required=True)
    args = ap.parse_args()
    summary = json.loads((HERE / "receipts/summary.json").read_text())
    if summary["verdict"] != "PASS" or summary["certified_spheres"] != 82:
        raise ValueError("Full fresh replay must pass before packaging")
    for name, expected in summary["code_sha256"].items():
        if sha(ROOT / name) != expected:
            raise ValueError(f"Bound checker changed: {name}")
    if sha(ROOT / "data/zc2b_t3.json.gz") != summary["input_sha256"]:
        raise ValueError("Input changed after replay")
    for item in summary["sources"]:
        p = HERE / f"results/seed_{item['seed']}.json"
        if sha(p) != item["proposal_sha256"]:
            raise ValueError(f"Certificate changed after replay: {p.name}")
    negative = json.loads((HERE / "negative_tests_receipt.json").read_text())
    if sha(HERE / "negative_test_fixture.json") != negative["proposal_sha256"]:
        raise ValueError("Negative-test fixture binding mismatch")
    for name, expected in negative["code_sha256"].items():
        if sha(ROOT / name) != expected:
            raise ValueError(f"Negative-test code changed: {name}")
    mode = json.loads((HERE / "mode_verification_receipt.json").read_text())
    for name, expected in mode["binding"]["sources"].items():
        if sha(ROOT / name) != expected:
            raise ValueError(f"Mode-test code changed: {name}")
    for name in ("REPORT.md", "SUMMARY.json", "sphere_counts.csv",
                 "T3_THEOREM.md", "CAP_FORMAT.md", "README.md"):
        if not (HERE / name).is_file():
            raise ValueError(f"Missing deliverable: {name}")
    excluded = {"__pycache__", "pilot", "weighted_pilot", "pilot_receipts",
                "baseline_checkpoints", "easy_probe"}
    files = []
    for p in sorted(ROOT.rglob("*")):
        rel = p.relative_to(ROOT)
        if not p.is_file() or any(part in excluded for part in rel.parts):
            continue
        if p.name == "MANIFEST.json" or p.suffix in (".pyc", ".tmp"):
            continue
        if p.name.startswith(("pilot_", "weighted_pilot_")):
            continue
        files.append(p)
    manifest = dict(
        format="zc2b-return-manifest-v1",
        scope="Complete proof, exact cap records, checkers and replay receipts for the supplied 82-source extract.",
        input_sha256=summary["input_sha256"],
        files={str(p.relative_to(ROOT)): sha(p) for p in files},
    )
    manifest_path = ROOT / "MANIFEST.json"
    manifest_path.write_text(json.dumps(manifest, indent=2)+"\n")
    files.append(manifest_path)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with ZipFile(args.output, "w", compression=ZIP_DEFLATED, compresslevel=9) as archive:
        for p in files:
            archive.write(p, "ZC2b_T3_caps_return/" + str(p.relative_to(ROOT)))
    with ZipFile(args.output) as archive:
        bad = archive.testzip()
        if bad is not None:
            raise ValueError(f"ZIP integrity failed for {bad}")
    print(json.dumps(dict(output=str(args.output.resolve()),
                          files=len(files), bytes=args.output.stat().st_size,
                          sha256=sha(args.output), status="PACKAGED"), indent=2))


if __name__ == "__main__":
    main()

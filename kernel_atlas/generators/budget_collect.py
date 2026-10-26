#!/usr/bin/env python3
"""Collect completed ZK2 Step 1 shards and audit every advertised fit/margin."""
import argparse
from collections import Counter
import gzip
import hashlib
import json
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT/"kernel_atlas/lean/KernelAtlas/WholeBall/CheapConstants"


def rows(path):
    opener = gzip.open if str(path).endswith(".gz") else open
    with opener(path, "rt") as f:
        result = [json.loads(line) for line in f if line.strip()]
    assert len(result) == len({r["j"] for r in result}), f"duplicates in {path}"
    return {r["j"]: r for r in result}


def write_gzip(path, data):
    # A deterministic compressed payload makes a repeated collection identical.
    raw = "".join(json.dumps(r, separators=(",", ":"), allow_nan=False)+"\n" for r in data).encode()
    path.write_bytes(gzip.compress(raw, mtime=0))


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("fine", type=Path, nargs="+")
    p.add_argument("--out", type=Path, default=OUT)
    p.add_argument("--archive", type=Path, default=ROOT/"explorations/handoffs/ZK_cheap_z_constants.zip")
    args = p.parse_args()
    with zipfile.ZipFile(args.archive) as z:
        seeds = json.loads(gzip.decompress(z.read("ZK_cheap_z_constants/context/seed_balls.json.gz")))["seeds"]
    before = rows(OUT/"budget_fit.jsonl")
    c1 = {rank: rows(OUT/f"certified_rank{rank}.jsonl.gz") for rank in [0, 4]}
    expected = {j for j, r in before.items() if r["choice"] not in ["cheap_rank0", "cheap_rank4"]}
    fine = {}
    for path in args.fine:
        chunk = rows(path)
        assert not set(fine) & set(chunk), "duplicate fine-budget shards"
        fine.update(chunk)
    assert set(fine) == expected, ("missing/extra budgets", sorted(expected-set(fine)), sorted(set(fine)-expected))
    for j, f in fine.items():
        assert f["status"] == "CERTIFIED"
        assert f["r"] == float.fromhex(seeds[j]["r"])
        c = f["confirmation"]
        assert c["ok"] and c["check"] == "certifier" and c["n"] == f["n"] and c["label"] == f["label"]
        assert c.get("r", f["r"]) == f["r"]
        assert f["cap_reached"] or 0 <= f["relative_bracket"] <= .02000000001
        for rank in [0, 4]:
            r = c1[rank][j]
            expected_fit = r["status"] == "CERTIFIED" and r["n_record"] <= f["n"]
            assert f[f"rank{rank}"]["fit"] == expected_fit
            if expected_fit:
                assert f[f"rank{rank}"]["margin"] == f["n"]-r["n_record"]
    fits = []
    for j in sorted(before):
        budget = fine[j]["n"] if j in fine else before[j]["budget"]
        row = dict(j=j, budget=budget, budget_kind="fine_certifier" if j in fine else "original_coarse",
                   previous_choice=before[j]["choice"], choice="needs_shrink")
        for rank in [0, 4]:
            r = c1[rank][j]
            n = r.get("n_record") if r["status"] == "CERTIFIED" else None
            fit = n is not None and budget is not None and n <= budget
            row[f"rank{rank}"] = dict(status=r["status"], n=n, fit=fit,
                margin=None if n is None or budget is None else budget-n,
                relative_margin=None if n is None or budget is None else budget/n-1)
            if fit and row["choice"] == "needs_shrink":
                row["choice"] = f"cheap_rank{rank}"
        fits.append(row)
    args.out.mkdir(parents=True, exist_ok=True)
    write_gzip(args.out/"ZK2_fine_budgets.jsonl.gz", [fine[j] for j in sorted(fine)])
    write_gzip(args.out/"ZK2_step1_fit.jsonl.gz", fits)
    summary = dict(status="CERTIFIED fine Stage C receipts; coarse budgets are inherited inputs",
                   balls=len(fits), refined=len(fine),
                   choices=dict(Counter(r["choice"] for r in fits)),
                   newly_cheap=sum(r["j"] in fine and r["choice"] != "needs_shrink" for r in fits),
                   capped=sum(r["cap_reached"] for r in fine.values()),
                   max_relative_bracket=max(r["relative_bracket"] or 0 for r in fine.values()),
                   failed_rank4_contractions=sum(c1[4][j]["status"] != "CERTIFIED" for j in fine),
                   input_sha256={str(f): hashlib.sha256(f.read_bytes()).hexdigest() for f in args.fine})
    (args.out/"ZK2_step1_summary.json").write_text(json.dumps(summary, indent=2)+"\n")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()

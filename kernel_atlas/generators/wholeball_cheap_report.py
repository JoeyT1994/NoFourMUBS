#!/usr/bin/env python3
"""Audit the ZK replay receipts and write compact per-ball budget decisions."""
import argparse
from collections import Counter
import gzip
import hashlib
import json
from fractions import Fraction
from pathlib import Path
import statistics
import zipfile

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "kernel_atlas/lean/KernelAtlas/WholeBall/CheapConstants"


def load(path):
    with gzip.open(path, "rt") as f:
        rows = [json.loads(v) for v in f]
    assert len({r["j"] for r in rows}) == len(rows)
    return {r["j"]: r for r in rows}


def quantiles(values):
    values = sorted(values)
    def at(p):
        x = (len(values)-1)*p
        i = int(x)
        return values[i] if i == len(values)-1 else values[i]+(x-i)*(values[i+1]-values[i])
    return dict(p10=at(.1), p50=at(.5), p90=at(.9), max=values[-1])


def audit_scalars(row, radius):
    """Independent exact rational replay of each saved contraction witness."""
    h = {k: Fraction(v) for k, v in row["shared"].items()}
    c = {k: Fraction(v) for k, v in row["constants"].items()}
    assert all(v >= 0 for v in [*h.values(), *c.values()])
    r, tau = Fraction(radius), Fraction(row["tau"])
    assert r > 0 and tau > 0
    b0 = c["t3"]*r**3/6+c["t4"]*r**4/24+h["L5"]*r**5/120
    base = h["u"]*r+h["beta"]*r*r/2
    qb = c["c"]*r+c["a2"]*r*r/2+h["L3a"]*r**3/6
    q = qb+(c["d"]+h["L3"]*h["x"]**2*base)*tau+h["L3"]*h["x"]**3*tau*tau/2
    margin = tau-b0-q*tau
    n = h["beta"]*r*r/2+h["x"]*tau+h["ep"]+r*h["eu"]
    assert q < 1 and margin > 0
    assert Fraction(row["q"]) >= q
    assert Fraction(row["contraction_margin"]) <= margin
    assert Fraction(row["n_record"]) >= n


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=OUT)
    parser.add_argument("--archive", type=Path, default=ROOT/"explorations/handoffs/ZK_cheap_z_constants.zip")
    args = parser.parse_args()
    out = args.out
    with zipfile.ZipFile(args.archive) as z:
        packed_seeds = z.read("ZK_cheap_z_constants/context/seed_balls.json.gz")
    seeds = json.loads(gzip.decompress(packed_seeds))["seeds"]
    numeric = load(out/"sensitivity.jsonl.gz")
    results = {r: load(out/f"certified_rank{r}.jsonl.gz") for r in [0, 4]}
    manifests = {r: json.loads((out/f"certified_rank{r}_manifest.json").read_text()) for r in [0, 4]}
    sensitivity = json.loads((out/"sensitivity_summary.json").read_text())
    assert hashlib.sha256(packed_seeds).hexdigest() == sensitivity["input_sha256"]["seed_balls.json.gz"]
    assert hashlib.sha256((out/"sensitivity.jsonl.gz").read_bytes()).hexdigest() == sensitivity["results_sha256"]
    assert set(numeric) == set(range(2350))
    decisions = Counter()
    rows = []
    for r in results:
        assert set(results[r]) == set(numeric)
        assert manifests[r]["input_sha256"] == sensitivity["input_sha256"]
        assert hashlib.sha256((out/f"certified_rank{r}.jsonl.gz").read_bytes()).hexdigest() == manifests[r]["results_sha256"]
        for name, digest in manifests[r]["source_sha256"].items():
            assert hashlib.sha256((ROOT/"kernel_atlas/generators"/name).read_bytes()).hexdigest() == digest
    for j in sorted(numeric):
        n, p, r = numeric[j], results[0][j], results[4][j]
        assert (n["reference_n"] is not None) == (n["cases"]["baseline"] is not None)
        assert n["budget"] == p["budget"] == r["budget"]
        original_fit = bool(n["reference_n"] is not None and n["budget"] is not None and n["reference_n"] <= n["budget"])
        choice = "cheap_rank0" if p["budget_fit"] else "cheap_rank4" if r["budget_fit"] else "original_Z" if original_fit else "no_verified_fit"
        decisions[choice] += 1
        for v in [p, r]:
            if v["status"] == "CERTIFIED":
                audit_scalars(v, float.fromhex(seeds[j]["r"]))
                assert v["q"] < 1 and v["contraction_margin"] > 0 and v["strict_R_lower"] > 0
                assert all(x["ok"] and x["margin_lower"] > 0 for x in v["orientation"].values())
                assert float.fromhex(v["tau_hex"]) == v["tau"]
            assert v["budget_fit"] == bool(v["status"] == "CERTIFIED" and v["budget"] is not None and v["n_record"] <= v["budget"])
        row = dict(j=j, budget=n["budget"], budget_status=n["budget_status"], reference_n=n["reference_n"],
                   reference_fits=original_fit, rank0_status=p["status"], rank0_n=p.get("n_record"), rank0_fits=p["budget_fit"],
                   rank4_status=r["status"], rank4_n=r.get("n_record"), rank4_fits=r["budget_fit"], choice=choice)
        rows.append(row)
    with (out/"budget_fit.jsonl").open("w") as f:
        for row in rows:
            f.write(json.dumps(row, separators=(",", ":"))+"\n")
    ratios = [r["budget"]/r["reference_n"] for r in numeric.values() if r["budget"] is not None and r["reference_n"] is not None]
    shares = [r["shared"]["x"]*r["cases"]["baseline"]["tau"]/r["cases"]["baseline"]["n"]
              for r in numeric.values() if r["cases"]["baseline"]]
    summary = dict(status="CERTIFIED interval counts; supplied budgets and original Z receipts are external inputs",
                   exact_rational_scalar_audits=sum(v["status"] == "CERTIFIED" for data in results.values() for v in data.values()),
                   balls=len(rows), budget_status=dict(Counter(r["budget_status"] for r in rows)),
                   budget_to_reference_ratio=quantiles(ratios),
                   reference_ratio_ge_2=sum(v >= 2 for v in ratios), reference_ratio_ge_3=sum(v >= 3 for v in ratios),
                   baseline_x_tau_share_NUMERICAL=quantiles(shares), recommended_choices=dict(decisions), methods={})
    for rank, data in results.items():
        certified = [v for v in data.values() if v["status"] == "CERTIFIED"]
        fits = [v for v in certified if v["budget_fit"]]
        numerical_case = "pair.all" if rank == 0 else f"rank{rank}.all"
        comparison = [abs(v["n_record"]/numeric[v["j"]]["cases"][numerical_case]["n"]-1) for v in certified]
        assert len(certified) == sensitivity["cases"][numerical_case]["contractions"]
        assert len(fits) == sensitivity["cases"][numerical_case]["budget_fits"]
        summary["methods"][f"rank{rank}"] = dict(certified=len(certified), budget_fits=len(fits),
            fit_share_all=len(fits)/len(rows), fit_share_provided=len(fits)/sum(v["budget"] is not None for v in rows),
            n_to_reference_ratio=quantiles([v["n_record"]/v["reference_n"] for v in certified if v["reference_n"]]),
            arb_numerical_relative_difference_max=max(comparison),
            seconds=manifests[rank]["seconds"], per_ball_seconds=quantiles([v["seconds"]["total"] for v in data.values()]),
            centre_seconds_mean=statistics.mean(v["seconds"]["centre"] for v in data.values()),
            constants_seconds_mean=statistics.mean(v["seconds"]["constants"] for v in data.values()),
            failures=dict(Counter(v.get("reason") for v in data.values() if v["status"] != "CERTIFIED")))
    summary["ball2299"] = {k: results[4][2299][k] for k in
                            ["n_record", "reference_n", "budget", "q", "tau", "contraction_margin", "strict_R_lower", "seconds"]}
    (out/"results_summary.json").write_text(json.dumps(summary, indent=2)+"\n")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()

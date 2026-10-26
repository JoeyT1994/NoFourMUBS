#!/usr/bin/env python3
"""Collect closed-run ZK2 audits and Slurm accounting without numeric dependencies.

This checks saved evidence, not the atlas transfers. The latter still require
the separate export and independent Arb/Julia certification.
"""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import statistics

from budget_collect import rows, write_gzip
from wholeball_cheap_report import audit_scalars


def check_row(row):
    assert row["status"] == "CERTIFIED", row["j"]
    c1 = row["c1"]
    assert row["rank"] in [0, 4] and c1["status"] == "CERTIFIED"
    if row["rank"] == 4:
        assert c1["majorant_witness"]["rank"] == 4
    else:
        assert "majorant_witness" not in c1
    audit_scalars(c1, row["r"])
    assert float.fromhex(c1["tau_hex"]) == c1["tau"]
    assert c1["strict_R_lower"] > 0
    assert all(v["ok"] and v["margin_lower"] > 0 for v in c1["orientation"].values())
    assert 0 < c1["n_record"] <= row["n"] <= row["budget"]
    stage = row["stagec"]
    assert stage["ok"] and stage["check"] == "certifier"
    assert all(stage[k] == row[k] for k in ["n", "r", "label"])
    fine = row.get("fine_budget")
    if fine is not None:
        assert row["budget_kind"] == "fine" and fine["status"] == "CERTIFIED"
        assert fine["n"] == row["budget"]
        c = fine["confirmation"]
        assert c["ok"] and c["check"] == "certifier"
        assert c["n"] == fine["n"] and c["label"] == fine["label"]
        assert c.get("r", row["r"]) == row["r"]
        assert fine["cap_reached"] or 0 <= fine["relative_bracket"] <= .02000000001
    else:
        assert not row["changed"]
        assert row["budget_kind"] == "certifier-confirmed stored enclosure"
        assert row["budget"] == row["n"]
    assert row["margin"] == row["budget"]-c1["n_record"]
    assert row["stored_margin"] == row["n"]-c1["n_record"]
    return dict(j=row["j"], r=row["r"], n=row["n"], label=row["label"],
                rank=row["rank"], bound=c1["n_record"], budget=row["budget"],
                budget_kind=row["budget_kind"], margin=row["margin"],
                relative_margin=row["budget"]/c1["n_record"]-1,
                stored_margin=row["stored_margin"], changed=row["changed"],
                geometry_sha256=row["geometry_sha256"], status="CERTIFIED")


def collect(paths, sources):
    data, manifests, inputs, source = {}, [], None, None
    for path in paths:
        m = json.loads(path.with_suffix(".manifest.json").read_text())
        start = json.loads(path.with_suffix(".inputs.json").read_text())
        assert all(m[k] == v for k, v in start.items())
        assert m["results_sha256"] == hashlib.sha256(path.read_bytes()).hexdigest()
        assert m["driver_closed"] and m["original_frames_preserved"]
        assert m["statuses"] == {"closed": m["balls"]} and m["edges"] > 0
        assert m["refine_changed"]
        chunk = rows(path)
        assert m["total"] == m["certified"] == len(chunk) == len(m["selected"])
        assert set(chunk) == set(m["selected"])
        assert not set(data) & set(chunk), "overlapping audit shards"
        if inputs is None:
            inputs, source = m["input_sha256"], m["source_sha256"]
        assert inputs == m["input_sha256"] and source == m["source_sha256"]
        assert any(all(snapshot.get(k) == v for k, v in source.items())
                   for snapshot in sources.values()), "unarchived audit sources"
        data.update(chunk)
        manifests.append(m)
    count = manifests[0]["balls"]
    assert all(m["balls"] == count and m["edges"] == manifests[0]["edges"] for m in manifests)
    assert set(data) == set(range(count)), "missing/extra ball audits"
    fits = [check_row(data[j]) for j in range(count)]
    summary = dict(status="CERTIFIED per-ball C1 and Stage C; NUMERICAL atlas closure",
                   balls=count, edges=manifests[0]["edges"], ranks=dict(Counter(r["rank"] for r in fits)),
                   budget_kinds=dict(Counter(r["budget_kind"] for r in fits)),
                   changed=sum(r["changed"] for r in fits),
                   minimum_stored_margin=min(r["stored_margin"] for r in fits),
                   minimum_budget_margin=min(r["margin"] for r in fits),
                   minimum_relative_budget_margin=min(r["relative_margin"] for r in fits),
                   median_relative_budget_margin=statistics.median(r["relative_margin"] for r in fits),
                   fine_cap_reached=sum(r.get("fine_budget", {}).get("cap_reached", False) for r in data.values()),
                   driver_closed=True, original_frames_preserved=True,
                   exact_rational_scalar_audits=count, input_sha256=inputs,
                   source_sha256=source, audit_jobs=[m["job_id"] for m in manifests],
                   audit_wall_seconds=[m["seconds"] for m in manifests],
                   audit_sha256={str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in paths})
    return [data[j] for j in range(count)], fits, summary


def cpu_seconds(value):
    days, clock = value.split("-", 1) if "-" in value else (0, value)
    parts = list(map(float, clock.split(":")))
    assert 1 <= len(parts) <= 3
    return int(days)*86400 + sum(v*60**i for i, v in enumerate(reversed(parts)))


def accounting(path, ledger):
    events = [json.loads(line) for line in ledger.read_text().splitlines() if line.strip()]
    ids = {str(e["job_id"]) for e in events}
    result, seen = [], set()
    for line in path.read_text().splitlines():
        job, state, elapsed, cpus, total, allocated = line.strip().split("|")[:6]
        if "." in job:
            continue  # parent/task already includes the steps' CPU usage
        assert job.split("_")[0] in ids, ("unrelated job", job)
        assert job not in seen, ("duplicate accounting", job)
        assert state.split()[0] in ["COMPLETED", "CANCELLED", "FAILED", "TIMEOUT", "OUT_OF_MEMORY", "NODE_FAIL"]
        seen.add(job)
        result.append(dict(job_id=job, state=state, elapsed_seconds=int(elapsed),
                           allocated_cpus=int(cpus), allocated_cpu_seconds=int(allocated),
                           used_cpu_seconds=cpu_seconds(total)))
    assert {j.split("_")[0] for j in seen} == ids, "missing job accounting"
    for event in events:
        if "array" in event:
            assert all(str(event["job_id"])+"_"+str(i) in seen for i in event["array"]), "missing array tasks"
    return dict(allocated_core_hours=sum(r["allocated_cpu_seconds"] for r in result)/3600,
                used_cpu_hours=sum(r["used_cpu_seconds"] for r in result)/3600,
                jobs=result, includes_cancelled=True, excludes_step_double_counting=True)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("audits", type=Path, nargs="+")
    p.add_argument("--sources", type=Path, required=True)
    p.add_argument("--accounting", type=Path, required=True,
                   help="sacct --array -n -P fields JobID,State,ElapsedRaw,AllocCPUS,TotalCPU,CPUTimeRAW")
    p.add_argument("--jobs", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    args = p.parse_args()
    data, fits, summary = collect(args.audits, json.loads(args.sources.read_text()))
    summary["accounting"] = accounting(args.accounting, args.jobs)
    args.out.mkdir(parents=True, exist_ok=True)
    write_gzip(args.out/"ZK2_final_audits.jsonl.gz", data)
    write_gzip(args.out/"ZK2_final_fit.jsonl.gz", fits)
    (args.out/"ZK2_final_summary.json").write_text(json.dumps(summary, indent=2)+"\n")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()

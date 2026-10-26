#!/usr/bin/env python3
"""ZK2 numerical radius sensitivity, with independent Arb replay on a sample."""
import argparse
import gzip
import json
import math
from pathlib import Path
import time

import numpy as np
import wholeball_cheap_sensitivity as N
import wholeball_cheap_arb as A


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--archive", type=Path, default=N.DEFAULT_ZIP)
    p.add_argument("--out", type=Path, default=N.DEFAULT_OUT/"ZK2_radius_scan.jsonl")
    p.add_argument("--fine", type=Path)
    p.add_argument("--sample", type=int, default=24)
    args = p.parse_args()
    seeds, basis, coarse, _, _ = N.inputs(args.archive)
    choices = {v["j"]: v for v in map(json.loads, (N.DEFAULT_OUT/"budget_fit.jsonl").open())}
    fine = {v["j"]: v for v in map(json.loads, args.fine.open())} if args.fine else {}
    original = {v["j"]: v for v in map(json.loads, gzip.open(N.DEFAULT_OUT/"certified_rank4.jsonl.gz", "rt"))}
    geom = N.geometry(basis)
    started = time.perf_counter()
    rows = []
    for j, seed in enumerate(seeds):
        if choices[j]["choice"] not in ["original_Z", "no_verified_fit"]:
            continue
        oldr = N.decode(seed["r"])
        target = fine[j]["n"] if fine.get(j, {}).get("status") == "CERTIFIED" else choices[j]["budget"]
        source = "fine certified budget" if fine.get(j, {}).get("status") == "CERTIFIED" else "coarse supplied budget"
        if target is None:
            target, source = N.decode(seed["n"]), "stored certificate remainder (planning proxy)"
        g = N.centre(seed, *geom)
        shared, modes = N.constants(g, oldr)
        sn = np.linalg.norm(g["s"], axis=1)
        tn = np.linalg.norm(g["T"], ord=2, axis=(1, 2))
        dn = np.linalg.norm(g["d"], axis=1)
        cn = np.repeat([np.linalg.norm(g["W"][:, [p, p+15]], 2) for p in range(15)], 6)
        curve, selected = [], None
        for factor in [1., .975, .95, .925, .9, .875, .85, .825, .8, .775, .75, .7, .65, .6,
                       .55, .5, .45, .4, .35, .3, .25, .2, .15, .1]:
            r = oldr if factor == 1 else math.nextafter(oldr*factor, 0.)
            an = sn+r*tn
            h = shared | dict(L5=float(cn@(an**5+10*tn*an**3+15*tn*tn*an)),
                              L3a=float((cn*dn)@(an**3+3*tn*an)))
            c = N.contraction(h, modes["rank4"], r)
            curve.append(dict(factor=factor, r=r, contraction=c))
            if c and c["n"] <= target*.99 and selected is None:
                selected = dict(factor=factor, r=r, n=c["n"])
        rows.append(dict(j=j, status="NUMERICAL", old_r=oldr, original_status=original[j]["status"],
                         target=target, target_source=source, selected=selected, curve=curve))
    # Spread the sample across successful/failed old contractions and shrink factors.
    ordered = sorted(rows, key=lambda v: (v["original_status"], v["selected"]["factor"] if v["selected"] else -1, v["j"]))
    sample = set(int(i) for i in np.linspace(0, len(ordered)-1, min(args.sample, len(ordered))))
    A.ctx.prec = 224
    arb_geom = A.geometry(basis)
    for i in sorted(sample):
        row = ordered[i]
        if row["selected"] is None:
            continue
        seed = dict(seeds[row["j"]], r=row["selected"]["r"].hex())
        result = A.certify(seed, arb_geom, rank=4)
        row["arb_sample"] = result
        assert result["status"] == "CERTIFIED", row["j"]
        assert result["n_record"] <= row["target"], row["j"]
    args.out.parent.mkdir(parents=True, exist_ok=True)
    with args.out.open("w") as f:
        for row in rows:
            f.write(json.dumps(row, separators=(",", ":"), allow_nan=False)+"\n")
    from collections import Counter
    summary = dict(status="NUMERICAL planning; sampled C1 checks CERTIFIED; Stage C at new radii NOT ESTABLISHED here",
                   balls=len(rows), selected_factors=dict(Counter(str(v["selected"]["factor"]) if v["selected"] else "none" for v in rows)),
                   certified_samples=sum("arb_sample" in v for v in rows), seconds=time.perf_counter()-started)
    args.out.with_suffix(".summary.json").write_text(json.dumps(summary, indent=2)+"\n")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()

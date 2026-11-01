#!/usr/bin/env python3
"""Smoke replay of all twelve T3 cap mode combinations on actual source data.

The numerical dual search only proposes exact binary-rational witnesses;
cap_t3.check_cap decides every positive case in Arb.  The exact same actual
source, corner and tiny cap exercise polynomial/local/local_sphere anchors,
global/local_hessian Psi bounds, and ordinary/output-weighted normal bounds.
Two additional checks verify target inclusion in W and rejection by the
production dispatcher when the target lacks an accepted C1e object.
"""
from __future__ import annotations

import argparse
import gzip
import hashlib
import importlib.metadata
import itertools
import json
import math
import os
from pathlib import Path
import platform
import sys
import time

for _name in ("OPENBLAS_NUM_THREADS", "OMP_NUM_THREADS", "MKL_NUM_THREADS"):
    os.environ.setdefault(_name, "1")

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "cert"))
sys.path.insert(0, str(ROOT / "atlas"))

import numpy as np
from scipy.optimize import minimize_scalar
from flint import ctx

import cap_t3 as T3
import edgecert as E
import patches as P
import seedcert as SC
import wholeball as Z


def sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def binding(input_path):
    names = ["ZC2b/verify_modes.py", "cert/cap_t3.py", "cert/caps.py",
             "cert/cap_weighted.py", "cert/cap_coverage.py", "cert/patches.py",
             "cert/wholeball.py", "cert/wholeball_basis.json", "cert/seedcert.py",
             "cert/edgecert.py", "cert/tmarb.py"]
    return dict(input_sha256=sha256(input_path),
                sources={name: sha256(ROOT / name) for name in names},
                python=platform.python_version(),
                packages={name: importlib.metadata.version(name)
                          for name in ("python-flint", "numpy", "scipy")})


def propose_witness(d, F, e, t):
    """Untrusted scalar S-lemma search, independent of construction.py."""
    gram, cross = F.T @ F, F.T @ d
    values, vectors = np.linalg.eigh(gram)
    b, en = vectors.T @ cross, vectors.T @ e
    scale = max(1.0, float(values[-1]), float(np.linalg.norm(cross)))

    def objective(loggap, details=False):
        lam = float(values[-1]) + scale * math.exp(float(loggap))
        inverse = 1.0 / (lam - values)
        mu = max(0.0, 2.0 * (t - np.sum(en * b * inverse)) /
                 np.sum(en * en * inverse))
        q = b + 0.5 * mu * en
        sval = float(d @ d + lam - mu * t + np.sum(q * q * inverse))
        return (sval, lam, mu) if details else sval

    optimum = minimize_scalar(objective, bounds=(-22.0, 8.0), method="bounded")
    sval, lam, mu = min(objective(optimum.x, True), objective(-22.0, True),
                       objective(8.0, True))
    # Strict margin makes the reconstructed Schur complement positive.
    return dict(lambda_=float(lam).hex(), mu=float(mu).hex(),
                s=float(max(0.0, sval) + 1e-8).hex())


def run(input_path, precision=224):
    before = binding(input_path)
    started = time.perf_counter()
    with gzip.open(input_path, "rt") as stream:
        data = json.load(stream)
    seed = 2346
    row = data["t3_seeds"][str(seed)]
    gi, group = next((i, g) for i, g in enumerate(row["transfers"])
                     if g["kind"] == "T3")
    ball = SC.Ball(row)
    model = P.normal_form(ball, precision)
    ctx.prec = precision
    edge = E.EdgeBall(data["edge"][group["target"]])
    in_w = bool(E.edge_in_W(edge))
    tr = T3.Transfer(model, edge, group, gi)

    # An actual source box centre proposes a direction; proof uses the
    # resulting exact integer v and hexadecimal h rather than the box.
    box = group["boxes"][0]
    direction = np.asarray([2*i+1-2**box[0] for i in box[1:]], dtype=float)
    direction /= np.linalg.norm(direction)
    v = [int(x) for x in np.rint(direction * 2**30)]
    norm = float(np.linalg.norm(np.asarray(v, dtype=float)))
    h = float(0.99999 * norm).hex()
    local = T3.prepare_local_data(tr, v)
    cases = []
    for mode, psi, weighted in itertools.product(
            ("polynomial", "local", "local_sphere"),
            ("global", "local_hessian"), (False, True)):
        case_started = time.perf_counter()
        cap = dict(group_index=gi, mode=mode, psi_remainder=psi,
                   weighted_target=weighted, v=v, h=h,
                   t3_alignment=local["alignment"],
                   t3_group_sha256=T3.group_digest(group))
        prepared = T3.prepare_cap(model, tr, cap)
        e = Z.mid_np(prepared["e"]).ravel()
        t = float(prepared["t"].mid())
        for name in ("parameter", "distance"):
            cap["t3_"+name] = propose_witness(
                Z.mid_np(prepared[name+"_d"]).ravel(),
                Z.mid_np(prepared[name+"_F"]), e, t)
        verdict = T3.check_cap(model, tr, cap)
        cases.append(dict(mode=mode, psi_remainder=psi,
                          weighted_target=weighted, cap=cap, result=verdict,
                          seconds=time.perf_counter()-case_started))
        print(json.dumps(dict(mode=mode, psi=psi, weighted=weighted,
                              ok=verdict["ok"], reason=verdict["reason"])), flush=True)

    # The source model is already genuinely certified and uses this same
    # Ball object; populate only the production routine's internal cache.
    # The deliberately missing target C1e must fail before coverage checks.
    P._MODELS[id(ball)] = model
    missing_c1e = dict(passed=False, expected="target edge ball lacks accepted C1e")
    try:
        SC.check_seed_caps(ball, [], row["transfers"],
                           {"caps": [cases[-1]["cap"]], "coverage": {}},
                           edges=[(edge, None)])
        missing_c1e["actual"] = "unexpected acceptance"
    except SC.CertError as exc:
        missing_c1e["actual"] = str(exc)
        missing_c1e["passed"] = missing_c1e["expected"] in str(exc)
    finally:
        P._MODELS.pop(id(ball), None)

    unchanged = before == binding(input_path)
    passed = all(case["result"]["ok"] for case in cases) and in_w and missing_c1e["passed"] and unchanged
    return dict(format="zc2b-mode-replay-v1", status="CERTIFIED" if passed else "NOT ESTABLISHED",
                passed=passed, seed=seed, group_index=gi, precision_bits=precision,
                positive_cap_cases=len(cases), certified_cap_cases=sum(case["result"]["ok"] for case in cases),
                target_in_W=dict(passed=in_w, method="edgecert.edge_in_W, Arb LDL"),
                production_missing_C1e=missing_c1e, binding=before,
                binding_unchanged_during_run=unchanged, cases=cases,
                source_model=model["summary"], seconds=time.perf_counter()-started,
                scope="Twelve actual T3 cap replay branches, target ellipsoid inclusion, and production prerequisite rejection; no sphere coverage or global atlas assertion.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, default=ROOT / "data/zc2b_t3.json.gz")
    parser.add_argument("--output", type=Path, default=ROOT / "ZC2b/mode_verification_receipt.json")
    parser.add_argument("--precision", type=int, default=224)
    args = parser.parse_args()
    receipt = run(args.input, args.precision)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(receipt, indent=2, allow_nan=False) + "\n")
    print(json.dumps({k: receipt[k] for k in ("status", "positive_cap_cases", "certified_cap_cases", "seconds")}))
    return 0 if receipt["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())

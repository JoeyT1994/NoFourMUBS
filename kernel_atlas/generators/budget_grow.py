#!/usr/bin/env python3
"""Run the existing driver with new balls accepted only by cheap C1 and Stage C.

No existing driver file is changed. The forked Linux workers inherit this
replacement for driver.make_ball; all cover and scheduling logic is unchanged.
"""
import json
import math
import os
from pathlib import Path
import pickle
import sys
import time
import zipfile

for name in ["OMP_NUM_THREADS", "OPENBLAS_NUM_THREADS", "MKL_NUM_THREADS"]:
    os.environ[name] = "1"
os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
os.environ["SEED_NO_RECORD"] = "1"
ROOT = Path(__file__).resolve().parents[2]
sys.path[:0] = [str(ROOT/"proof/seed_atlas/driver"), str(ROOT/"proof/seed_atlas/cert"), str(ROOT/"proof/atlas")]
import driver as D
import makeball as M
from c1 import Ball
from seed_export import seed_json
import wholeball_cheap_arb as A
from wholeball_cheap_sensitivity import DEFAULT_ZIP
import budget_fine as B

GEOM = None


def geometry():
    global GEOM
    if GEOM is None:
        with zipfile.ZipFile(DEFAULT_ZIP) as z:
            basis = json.loads(z.read("ZK_cheap_z_constants/context/wholeball_basis.json"))
        A.ctx.prec = 224
        GEOM = A.geometry(basis)
    return GEOM


def cheap_make_ball(theta0, phih0, phiv0, rmax=M.LADDER[0], rmin=M.LADDER[-1], hint=None, log=None):
    started = time.perf_counter()
    try:
        b = Ball(theta0, phih0, phiv0)
    except (ValueError, ArithmeticError) as e:
        if log is not None:
            log.append("cheap centre: "+repr(e))
        return None
    history = []
    geom = geometry()
    for r in [r for r in M.LADDER if rmin-1e-12 <= r <= rmax+1e-12]:
        b.r, b.n, b.label, b.k = r, 0., M.LABELS[0], M.k_for(r)
        seed = seed_json(b, [])
        A.ctx.prec = 224
        try:
            c1 = A.certify(seed, geom, rank=4)
        except ArithmeticError as e:
            history.append(dict(r=r, c1_error=str(e)))
            continue
        if c1["status"] != "CERTIFIED":
            history.append(dict(r=r, c1_status=c1["status"]))
            continue
        n = math.nextafter(c1["n_record"]*(1+2**-20), math.inf)
        for label in M.LABELS:
            screen = M.stage_c_capped(b, r, n, label)
            if not screen.get("ok"):
                history.append(dict(r=r, n=n, label=label, screen=screen))
                continue
            checked = B.stage(seed, n, label, True)
            history.append(dict(r=r, n=n, label=label, stagec=checked))
            if not checked["ok"]:
                continue
            b.n, b.label, b.nsafe = n, label, M.N_SAFETY
            b.info = dict(edge=b.edge, R=b.R, S=[float(v) for v in b.S],
                          stagec={k: checked.get(k) for k in ["bins", "labels", "steps"]},
                          zk2=dict(rank=4, c1_bound=c1["n_record"], c1=c1,
                                   stagec=checked, method="cheap growth"),
                          tries=history, t=round(time.perf_counter()-started, 3))
            return b
    if log is not None:
        log.append("cheap radius ladder failed: "+json.dumps(history, default=B.json_default)[-1500:])
    return None


def main():
    if not sys.platform.startswith("linux"):
        raise RuntimeError("this wrapper relies on the existing driver's Linux fork workers")
    if len(sys.argv) < 2:
        raise SystemExit("usage: budget_grow.py RUN [existing driver.py options]")
    run = Path(sys.argv[1]).resolve()
    if run.name == "run5":
        raise ValueError("refusing to grow run5")
    if not (run/"zk2_preparation.json").exists():
        raise ValueError("run needs shrink_balls.py preparation")
    with (run/"atlas_state.pkl").open("rb") as f:
        atlas = pickle.load(f)
    if any(b.info.get("zk2", {}).get("rank") not in [0, 4] or
           getattr(b, "nsafe", 0) < M.N_SAFETY for b in atlas.balls):
        raise ValueError("every input ball needs a cheap plan and must bypass legacy TM restaging")
    del atlas
    D.make_ball = cheap_make_ball
    geometry()
    D.main()


if __name__ == "__main__":
    main()

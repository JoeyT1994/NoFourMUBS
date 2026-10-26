#!/usr/bin/env python3
"""ZK2 search and state-invalidation regression tests; mocked proofs are test-only."""
import copy
import json
from pathlib import Path
import pickle
import sys
import tempfile
from types import SimpleNamespace as Obj

import numpy as np
import budget_fine as B
from wholeball_cheap_sensitivity import inputs, DEFAULT_ZIP, DEFAULT_OUT, decode

sys.path.insert(0, str(Path(__file__).resolve().parents[2]/"proof/seed_atlas/driver"))
import shrink_balls as S


def search_checks():
    seed = dict(n=(.4).hex(), r=(.1).hex(), label_radius=(.03).hex())
    saved = B.stage
    try:
        for screen_limit, certified_limit in [(2.75, 2.75), (9., 9.), (.9, .88)]:
            def fake(seed, n, label, certified=False):
                return dict(ok=n <= (certified_limit if certified else screen_limit), n=n, label=label,
                            check="certifier" if certified else "screen", seconds=0.)
            B.stage = fake
            r = B.fine_budget(seed, 1/1.05, 2 if screen_limit > 2 else None)
            assert r["status"] == "CERTIFIED" and r["n"] <= certified_limit
            assert r["cap_reached"] or r["relative_bracket"] <= .0200000001
        B.stage = lambda seed, n, label, certified=False: dict(ok=False, n=n, label=label, seconds=0.)
        assert B.fine_budget(seed, 1.)["status"] == "NOT ESTABLISHED"
        known = dict(ok=True, n=.4, r=.1, label=.03, check="certifier", seconds=0.)
        r = B.fine_budget(seed, 1., known=known)
        assert r["status"] == "CERTIFIED" and r["n"] == known["n"]
        assert r["relative_bracket"] <= .02
        try:
            B.fine_budget(seed, 1., known=dict(known, r=.2))
        except ValueError:
            pass
        else:
            raise AssertionError("known lower endpoint from a different radius accepted")
    finally:
        B.stage = saved


def state_checks():
    seed = inputs(DEFAULT_ZIP)[0][0]
    b = Obj(theta0=decode(seed["theta0"]), Mth=decode(seed["Mth"]).reshape(4, 4),
            Ph=decode(seed["P"]), Uh=decode(seed["U"]).reshape(36, 4), r=decode(seed["r"]),
            n=decode(seed["n"]), label=decode(seed["label_radius"]), k=seed["k"], o=seed["o"],
            edge=seed["info"]["edge"], R=seed["info"]["R"], S=np.array(seed["info"]["S"]), info={})
    def group(kind, target):
        return dict(desc=(kind, target, "id", (0, 1, 2), (0, 1, 2)), wind=[0]*4, boxes=[])
    a = Obj(balls=[copy.deepcopy(b) for _ in range(4)], status=["closed"]*4,
            groups={0: [group("T0", 3)], 1: [group("T1", 0)], 2: [group("T3", 0)], 3: [group("T0", 1)]},
            ncover=[10]*4, log_fail={0: "old"}, tries={0: {"x": 1}, 3: {"y": 2}, (0, "old-key"): 1},
            record=dict(groups=[group("T1", 0)]), record_rounds=5, stats={})
    def plan(j, radius, n):
        return dict(j=j, status="CERTIFIED", geometry_sha256=S.geometry_hash(S.seed_json(a.balls[j], [])),
                    r=radius, n=n, label=b.label, rank=4,
                    c1=dict(status="CERTIFIED", n_record=n*.9),
                    stagec=dict(ok=True, n=n, r=radius, label=b.label, check="certifier"))
    plans = {0: plan(0, b.r*.8, b.n), 2: plan(2, b.r, b.n*1.1)}
    edge = dict(ball=Obj(r=.13), groups=[group("T1", 0)], failed=[])
    impact = S.affected(a, plans, [edge])
    assert impact["shrunk"] == [0] and impact["incoming"] == [1]
    assert impact["raised_t3"] == [2] and impact["reopen"] == [0, 1, 2]
    assert impact["dirty_edges"] == [0] and impact["dirty_record"]
    for bad in [dict(plans[0], geometry_sha256="wrong"), dict(plans[0], r=b.r*1.1),
                dict(plans[0], status="NUMERICAL"), dict(plans[0], n=0.),
                dict(plans[0], stagec=dict(plans[0]["stagec"], check="screen"))]:
        try:
            S.affected(a, {0: bad})
        except ValueError:
            pass
        else:
            raise AssertionError("invalid plan accepted")
    with tempfile.TemporaryDirectory(prefix="zk2_state_test_", dir=DEFAULT_OUT) as tmp:
        root = Path(tmp); source = root/"run5"; source.mkdir()
        src = source/"atlas_state.pkl"; src.write_bytes(pickle.dumps(a))
        ea = copy.deepcopy(a); ea.edges = [edge]
        ep = source/"atlas_state_edge.pkl"; ep.write_bytes(pickle.dumps(ea))
        pp = root/"plans.jsonl"; pp.write_text("".join(json.dumps(v)+"\n" for v in plans.values()))
        before = src.read_bytes()
        S.apply(src, pp, root/"run6", ep)
        assert src.read_bytes() == before
        new = pickle.loads((root/"run6/atlas_state.pkl").read_bytes())
        assert new.status == ["open", "open", "open", "closed"] and set(new.groups) == {3}
        assert new.record is None and new.tries == {3: {"y": 2}}
        for old, cur in zip(a.balls, new.balls):
            assert np.array_equal(old.theta0, cur.theta0) and np.array_equal(old.Mth, cur.Mth)
            assert np.array_equal(old.Ph, cur.Ph) and np.array_equal(old.Uh, cur.Uh)
        try:
            S.apply(src, pp, root/"run6", ep)
        except FileExistsError:
            pass
        else:
            raise AssertionError("existing run overwritten")


if __name__ == "__main__":
    search_checks()
    state_checks()
    print("PASS: bracket/cap/certifier fallback searches; geometry, incoming, T3, edge and record invalidation; source preservation; overwrite rejection")

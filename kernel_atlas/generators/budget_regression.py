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
        # Even if every screen above the known point passes spuriously, the
        # certifier fallback must be able to reach that point from the cap.
        B.stage = lambda seed, n, label, certified=False: dict(
            ok=not certified, n=n, r=.1, label=label,
            check="certifier" if certified else "screen", seconds=0.)
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
        try:
            S.apply(src, pp, source/"nested-run", ep)
        except ValueError:
            pass
        else:
            raise AssertionError("destination inside source run accepted")
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


def nonmonotone_plan_check():
    import budget_plan as P
    seed = inputs(DEFAULT_ZIP)[0][0]
    radius = float.fromhex(seed["r"])
    fine = dict(status="CERTIFIED", r=radius, n=.01, label=.03,
                confirmation=dict(ok=True, check="certifier", n=.01, label=.03, r=radius))
    bound = dict(status="CERTIFIED", n_record=.005)
    saved_g, saved_stage = dict(P.G), B.stage
    try:
        P.G.clear()
        P.G.update(seeds=[seed], fine={0: fine}, coarse={}, rank0={0: bound}, rank4={0: bound},
                   shrink=True, refine=False)
        B.stage = lambda seed, n, label, certified=False: dict(ok=False, check="certifier", n=n, r=radius, label=label)
        result = P.one(0)
        assert result["status"] == "CERTIFIED" and result["r"] == radius
        assert result["n"] == fine["n"] and result["reused_fine_endpoint"]
        assert result["stagec"] == fine["confirmation"]
    finally:
        P.G.clear(); P.G.update(saved_g)
        B.stage = saved_stage


def edge_reuse_checks():
    from budget_edge import unchanged_targets
    data = dict(theta0=np.array([[.1, .2], [.3, .4]]),
                Minv=np.array([np.eye(2), 2*np.eye(2)]),
                Mth=np.array([np.eye(2), .5*np.eye(2)]), r=np.array([.1, .2]))
    def atlas(d):
        return Obj(balls=[None]*len(d["r"]), snap=lambda: d)
    appended = {k: np.concatenate([v, v[-1:]]) for k, v in data.items()}
    unchanged_targets(atlas(data), atlas(appended))
    for field in data:
        bad = copy.deepcopy(appended)
        bad[field].flat[0] += .001
        try:
            unchanged_targets(atlas(data), atlas(bad))
        except AssertionError:
            pass
        else:
            raise AssertionError(f"edge groups reused after changing {field}")
    for bad in [{k: v[::-1].copy() for k, v in data.items()},
                {k: v[:1] for k, v in data.items()}]:
        try:
            unchanged_targets(atlas(data), atlas(bad))
        except AssertionError:
            pass
        else:
            raise AssertionError("edge groups reused after reordering/removing targets")


def compaction_checks():
    import multiprocessing as mp
    from collections import Counter
    import budget_edge_compact as C
    raw = [dict(desc=("T1", j % 2, "id", (0, 1, 2), (0, 1, 2)), wind=[0]*9,
                boxes=[[3, j % 8, 0, 1, 2]]) for j in range(31)]
    raw[6]["wind"][0] = 1
    raw[11]["boxes"].append([4, 2, 3, 4, 5])
    def entries(groups):
        return Counter((C.key(g), tuple(map(int, b))) for g in groups for b in g["boxes"])
    merged, stats = C.compact(raw)
    assert entries(raw) == entries(merged) and len(merged) == 3 and stats["leaves"] == 32
    C.GROUPS = raw
    with mp.get_context("fork").Pool(2) as pool:
        parts = pool.map(C.compact_slice, [(0, 15), (15, 31)])
    C.GROUPS = None
    parallel, pstats = C.compact([g for groups, _ in parts for g in groups])
    assert entries(raw) == entries(parallel)
    assert pstats["metadata_and_ordered_boxes_sha256"] == stats["metadata_and_ordered_boxes_sha256"]
    for row in [[3, 8, 0, 1, 2], [3, .5, 0, 1, 2], [9, 1, 0, 1, 2]]:
        bad = copy.deepcopy(raw[:1]); bad[0]["boxes"] = [row]
        try:
            C.compact(bad)
        except AssertionError:
            pass
        else:
            raise AssertionError("invalid box accepted during compaction")


def final_receipt_checks():
    import budget_finish as F
    with tempfile.TemporaryDirectory() as directory:
        root = Path(directory)
        source = {"boundary.py": "source-hash"}
        edge = dict(status="NUMERICAL", failed=0, balls=3, edges=1,
                    state_edge_sha256="raw-state", groups=4, source_sha256=source,
                    shards=2, total=4, state_sha256="seed-state", edges_sha256="edge-ball",
                    jobs_sha256="partition", shard_jobs=["123_0", "123_1"],
                    reused_start_boxes=0)
        compact = dict(balls=3, edges=[dict(groups_before=4, groups_after=1, leaves=4)],
                       input_sha256="raw-state", output_sha256="compact-state",
                       source_sha256=source, input_bytes=1000, output_bytes=500, seconds=2)
        summary = dict(balls=3, edges=1, input_sha256=dict(state="compact-state"))
        ep, cp = root/"collected.json", root/"compaction.json"
        ep.write_text(json.dumps(edge)); cp.write_text(json.dumps(compact))
        for shard in range(2):
            folder = root/f"shard_{shard}"; folder.mkdir()
            m = {k: edge[k] for k in ["source_sha256", "shards", "total", "state_sha256",
                                      "edges_sha256", "jobs_sha256", "balls"]}
            m["selected"] = list(range(shard, 4, 2))
            (folder/"inputs.json").write_text(json.dumps(m))
            m.update(results_sha256={f"{j}.pkl": "result-hash" for j in m["selected"]},
                     job_id=f"123_{shard}")
            (folder/"manifest.json").write_text(json.dumps(m))
        sources = {"snapshot": source}
        result = F.closure_evidence(summary, ep, cp, sources)
        assert result["leaves"] == 4 and result["compact_groups"] == 1
        for field, value in [("failed", 1), ("state_edge_sha256", "different-state"),
                             ("total", 5), ("groups", 5)]:
            changed = dict(edge, **{field: value}); ep.write_text(json.dumps(changed))
            try:
                F.closure_evidence(summary, ep, cp, sources)
            except AssertionError:
                pass
            else:
                raise AssertionError(f"inconsistent closure receipt accepted: {field}")
        ledger, usage = root/"jobs.jsonl", root/"jobs.sacct"
        ledger.write_text(json.dumps(dict(job_id="123", array=[0, 1]))+"\n")
        usage.write_text("123_0|COMPLETED|10|128|00:20|1280|\n"
                         "123_0.batch|COMPLETED|10|128|00:19|1280|\n"
                         "123_1|CANCELLED by 1|0|128|00:00|0|\n")
        account = F.accounting(usage, ledger)
        assert account["allocated_core_hours"] == 1280/3600
        assert account["used_cpu_hours"] == 20/3600
        usage.write_text("123_0|COMPLETED|10|128|00:20|1280|\n")
        try:
            F.accounting(usage, ledger)
        except AssertionError:
            pass
        else:
            raise AssertionError("missing cancelled array task accepted")


if __name__ == "__main__":
    search_checks()
    state_checks()
    nonmonotone_plan_check()
    edge_reuse_checks()
    compaction_checks()
    final_receipt_checks()
    print("PASS: bracket/cap/certifier fallback searches and nonmonotone endpoint reuse; geometry, incoming, T3, edge and record invalidation; source preservation; overwrite rejection; safe appended-target edge reuse; lossless serial/parallel edge compaction; final state/partition binding and accounting")

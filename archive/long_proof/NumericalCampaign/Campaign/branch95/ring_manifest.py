"""Write FULL_RING_MANIFEST.json for an export_ring.py output directory."""
import json, sys, hashlib, os, datetime
d = sys.argv[1]; s = json.load(open(os.path.join(d, "export_summary.json")))
h = lambda p: hashlib.sha256(open(p, "rb").read()).hexdigest()
m = dict(
    title="NoFourMUBS full-run (2,4,4,2) ring: open boxes for whole-box certification",
    frozen=datetime.datetime.now().isoformat(timespec="seconds"),
    campaign=dict(run_of_record="nofourmubs_rescaled_2026-09-30", branch_layer="nofourmubs_branch95_full_2026-10-01",
                  approved_code_sha256="577018ebd9e3b0cee1134680a3d0302f3d972ff3211c3cf0cbacc5a6c09f961d",
                  source_stage="stage D outputs results/stageD/d_*.txt (frozen; complete, 1,292 of 1,292)",
                  exporter="NumericalCampaign/Campaign/branch95/export_ring.py", exporter_sha256=h("export_ring.py")),
    selection=("every box left open (code P or S) after stage D whose own nearest seed, by sup circular distance over "
               "f6_seeds.txt, has class (2,4,4,2) at distance <= 0.07 rad; lines are prefiltered by their leaf-centre "
               "nearest-seed field (leaf distance <= 0.075 rad, boxes lie within 0.0016 rad of their leaf centre)"),
    status=("COMPLETE for this selection rule. This is the pre-stage-E population: our signed-corner PSD stage (E) has "
            "not been applied and on the pilot it excluded 68% of the ring, so this list is a superset of what our "
            "pipeline would leave. Boxes of the same seed class farther than 0.07 rad exist and are handled by the "
            "general pipeline; they are not part of this export. Nothing in this list is being processed elsewhere."),
    conventions=dict(
        centres="exact rational strings equal to the binary64 centres given by the driver's child rule; every centre is in [-pi, pi]",
        radii="radius(level) = an outward rational bound of pi/2^level + 2^-40, less than 2^-80 above it (the guard is included)",
        box="the closed box centre +- radius in each of the four seed angles (radians)",
        seeds="seed field: the nearest seed of the class in pi/3 units, (2,4,4,2) or its conjugate (4,2,2,4) = theta -> -theta",
        ids="unique integers 0..records-1 in (stage-D file, line, entry) order; source = stage-D file, line, leaf index, child path",
        pilot_id="present when the exact box equals a box of pilot_ring_all_2354.jsonl.gz (index into the pilot inventory)"),
    records=s["records"], seeds=s["seeds"], levels=s["levels"], pilot_matches=s["pilot_matches"], shards=s["shards"])
json.dump(m, open(os.path.join(d, "FULL_RING_MANIFEST.json"), "w"), indent=1)
print(json.dumps({k: m[k] for k in ("records", "seeds", "levels", "pilot_matches")}), len(m["shards"]), "shards")

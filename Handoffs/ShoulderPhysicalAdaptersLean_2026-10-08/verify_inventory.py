#!/usr/bin/env python3
"""Offline integrity/closure check, not a substitute for Lean kernel replay."""
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
EXTERNAL = {"Mathlib", "Lean", "Std", "Init", "Batteries", "Qq", "Aesop"}


def read_json(name):
    return json.loads((ROOT / name).read_text())


manifest = read_json("MANIFEST.json")
assert manifest["manifest_self_excluded"] and manifest["hashes_are_integrity_not_proof"]
listed = set()
for item in manifest["files"]:
    name = item["file"]
    assert name not in listed and not Path(name).is_absolute() and ".." not in Path(name).parts
    listed.add(name)
    data = (ROOT / name).read_bytes()
    assert len(data) == item["bytes"] and hashlib.sha256(data).hexdigest() == item["sha256"]
    assert (bytes([47]) + b"Users" + bytes([47])) not in data and (bytes([47]) + b"private" + bytes([47])) not in data
    assert Path(name).suffix not in {".olean", ".ilean", ".o", ".so", ".dylib", ".pyc"}
actual = {str(p.relative_to(ROOT)) for p in ROOT.rglob("*") if p.is_file()}
assert actual == listed | {"MANIFEST.json"}
entries = read_json("SOURCE_INVENTORY.json")["modules"]
inventory = {m["module"]: m for m in entries}
assert len(inventory) == len(entries)
selected = [m for m in entries if m["selected"]]
assert len(selected) == 11 and sum(len(m["selected_roots"]) for m in selected) == 35
names = [r["declaration"] for m in selected for r in m["selected_roots"]]
assert len(names) == len(set(names))
for item in entries:
    data = (ROOT / item["file"]).read_bytes()
    assert len(data) == item["bytes"] and hashlib.sha256(data).hexdigest() == item["source_sha256"]
    assert item["dynamic_imports"] == []
    for dep in item["static_imports"]:
        assert dep in inventory or dep.split(".")[0] in EXTERNAL
    edges = item["original_check_custom_import_object_bindings"]
    assert set(edges) == {d for d in item["static_imports"] if d.split(".")[0] not in EXTERNAL}
    for dep, digest in edges.items():
        assert inventory[dep]["checked_object"]["sha256"] == digest
    check = read_json("checks/" + item["module"] + ".json")
    assert check["success"] and check["exit_code"] == 0
    for key in ["module", "source_sha256", "checked_object", "original_receipt", "selected", "selected_roots", "source_binding_kind"]:
        assert check[key] == item[key]
    if "original_axiom_log" in item:
        assert check["original_axiom_log"] == item["original_axiom_log"]
    if item["source_binding_kind"] == "existing-reviewed-portable-source-binding":
        assert not item["selected"]
        for key in ["reused_packet_manifest_sha256", "reused_packet_inventory_sha256", "receipt_binding_limitation"]:
            assert check[key] == item[key] and item[key]
    if item["selected"]:
        review = read_json(item["independent_review"])
        assert review["original_status"].startswith("PASS") and review["independent_author_and_reviewer"]
        assert item["module"] in review["reviewed_modules"]
        members = [a for a in review["reviewed_artifacts"] if a["module"] == item["module"]]
        assert len(members) == 1
        for key in ["module", "file", "source_sha256", "bytes", "checked_object", "original_receipt", "original_axiom_log", "selected_roots"]:
            assert members[0][key] == item[key]
    else:
        assert item["selected_roots"] == []
    for root in item["selected_roots"]:
        assert set(root["axioms"]) <= ALLOWED
replay = read_json("REPLAY_PLAN.json")
order = replay["serial_custom_module_order"]
assert len(order) == len(set(order)) == len(inventory) and set(order) == set(inventory)
for module, item in inventory.items():
    assert all(order.index(dep) < order.index(module) for dep in item["static_imports"] if dep in inventory)
assert replay["dynamic_imports"] == []
assert replay["limits"] == {"heap_mib": 2304, "rss_stop_mib": 2816, "seconds_per_job": 180,
                             "minimum_free_disk_bytes": 2147483648, "parallel_local_lean_jobs": 1}
status = read_json("STATUS.json")
assert status["selected_modules"] == 11 and status["selected_printed_roots"] == 35
assert status["custom_source_modules"] == len(inventory)
assert status["complete_custom_import_closure"] and status["source_only_no_compiled_objects"]
assert set(status["allowed_axioms"]) == ALLOWED
assert status["physical_box_closures"] == status["global_rows_closed"] == 0
for key in ["shoulder_forest_closed", "phase_forest_closed", "no_four_mubs_proved",
            "interval_witnesses_supplied", "exhaustive_label_cover_supplied"]:
    assert status[key] is False
print(json.dumps({"status": "PASS_INTEGRITY_AND_SOURCE_CLOSURE_ONLY", "files": len(actual),
                  "custom_modules": len(inventory), "selected_modules": 11, "selected_roots": 35}))

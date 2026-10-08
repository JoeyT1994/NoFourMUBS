#!/usr/bin/env python3
"""Portable inventory verification only. Does not invoke Lean or a native checker."""
from pathlib import Path
import hashlib
import json
import re
import tomllib

HERE = Path(__file__).resolve().parent
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
STANDARD = {"Mathlib", "Std", "Init", "Lean", "Batteries", "Aesop", "Qq"}
MATHLIB = "51e6992efd06126df61a496bebf8f49482a4e129"

def data(path):
    assert not path.is_symlink(), path
    assert not getattr(path.stat(), "st_flags", 0) & 0x40000000, "Dataless input"
    return path.read_bytes()

def digest(path):
    return hashlib.sha256(data(path)).hexdigest()

def load(path):
    return json.loads(data(path))

def verify_manifest(base):
    manifest = load(base / "MANIFEST.json")
    seen = set()
    for row in manifest["files"]:
        name = row.get("file", row.get("path"))
        assert name not in seen
        assert not Path(name).is_absolute() and ".." not in Path(name).parts
        path = base / name
        assert path.resolve().is_relative_to(base.resolve())
        assert digest(path) == row["sha256"], name
        assert "bytes" not in row or len(data(path)) == row["bytes"]
        seen.add(name)
    actual = {str(path.relative_to(base)) for path in base.rglob("*") if path.is_file()}
    assert actual == seen | {"MANIFEST.json"}, (actual-seen, seen-actual)
    for path in base.rglob("*"):
        assert not path.is_symlink()
    return len(actual)

def imports(path):
    return [word for line in re.findall(r"^(?:(?:public|private)\s+)?import\s+([^\n]+)", data(path).decode(), re.M)
            for word in line.split("--")[0].split()]

def closure(base, entries, roots):
    modules = {row["module"]: row for row in entries}
    assert len(modules) == len(entries)
    actual_sources = {str(p.relative_to(base)) for p in (base/"lean").rglob("*.lean")}
    assert actual_sources == {row["file"] for row in entries}
    graph = {}
    for name, row in modules.items():
        assert digest(base/row["file"]) == row["source_sha256"]
        actual = imports(base/row["file"])
        assert actual == row["imports"], name
        custom = [dep for dep in actual if dep.split(".")[0] not in STANDARD]
        assert all(dep in modules for dep in custom)
        graph[name] = custom
    seen, active, order = set(), set(), []
    def visit(name):
        assert name not in active, "Import cycle"
        if name in seen:
            return
        active.add(name)
        for dep in graph[name]:
            visit(dep)
        active.remove(name)
        seen.add(name)
        order.append(name)
    for name in roots:
        visit(name)
    assert seen == set(modules)
    return len(modules), sum(map(len, graph.values())), order

def axioms_from_stdout(text):
    result = {name: [v.strip() for v in values.split(",") if v.strip()]
              for name, values in re.findall(r"'([^']+)' depends on axioms:\s*\[([^\]]*)\]", text)}
    result.update({name: [] for name in re.findall(r"'([^']+)' does not depend on any axioms", text)})
    assert "sorryAx" not in text and "error:" not in text
    assert all(set(values) <= ALLOWED for values in result.values())
    return result

def source_requests_match(source, axioms):
    requested = re.findall(r"^#print axioms ([\w.]+)\s*$", source, re.M)
    assert len(requested) == len(axioms)
    matched = set()
    for request in requested:
        choices = [name for name in axioms if name == request or name.endswith("."+request)]
        assert len(choices) == 1
        matched.add(choices[0])
    assert matched == set(axioms)
    assert not re.search(r"^\s*(?:axiom|unsafe|sorry|admit)\b", source, re.M)
    assert "native_decide" not in source and "ofReduceBool" not in source

total = verify_manifest(HERE)
components = load(HERE/"COMPONENTS.json")
results = []
for component in components["components"]:
    base = HERE/component["directory"]
    assert digest(base/"MANIFEST.json") == component["manifest_sha256"]
    files = verify_manifest(base)
    assert files == component["files_including_manifest"]
    lake = tomllib.loads(data(base/"lakefile.toml").decode())
    assert lake["require"][0]["rev"] == MATHLIB
    assert data(base/"lean-toolchain").decode().strip() == "leanprover/lean4:v4.33.0-rc2"
    assert lake["lean_lib"][0]["srcDir"] == "lean"
    roots = lake["lean_lib"][0]["roots"]
    record = load(base/"FORMALIZATION_RECORD.json")
    if component["directory"] == "data-table":
        entries = record["custom_import_closure"]
        declarations = {}
        for selected in record["new_modules"]:
            module = selected["module"]
            receipt = load(base/"receipts"/(module+".json"))
            assert receipt == selected["result"] and receipt["success"] and receipt["exit_code"] == 0
            assert receipt["source_sha256"] == digest(base/"lean"/(module+".lean"))
            axioms = axioms_from_stdout(data(base/"receipts"/(module+".stdout.txt")).decode())
            assert set(axioms) == set(selected["theorems"])
            source_requests_match(data(base/"lean"/(module+".lean")).decode(), axioms)
            declarations.update(axioms)
        assert declarations == record["axiom_outputs"] and len(declarations) == 57
        assert digest(base/"DATA_TABLE_INDEPENDENT_REVIEW.json") == component["semantic_review_sha256"]
        assert record["new_lean_closed_boxes"] == 0 and not record["complete_forest_accepted"]
        assert not record["full_no_four_mub_theorem_proved"]
    elif component["directory"] == "typed-tape":
        entries = load(base/"SOURCE_INVENTORY.json")["modules"]
        receipt = load(base/"receipts/WitnessTapeRefinement.json")
        assert receipt["result"]["success"] and receipt["result"]["exit_code"] == 0
        assert record["source_sha256"] == digest(base/"lean/WitnessTapeRefinement.lean")
        declarations = record["axioms_by_theorem"]
        assert declarations == receipt["axioms"]
        assert receipt["source_sha256"] == receipt["result"]["source_sha256"] == record["source_sha256"]
        assert receipt["original_result_sha256"] == record["receipt_sha256"]
        assert receipt["original_object_sha256"] == record["object_sha256"]
        source_requests_match(data(base/"lean/WitnessTapeRefinement.lean").decode(), declarations)
        assert all(set(values) <= ALLOWED for values in declarations.values())
        assert len(declarations) == 11
        assert not record["full_forest_claim"] and record["new_actual_tapes_accepted"] == 0
        assert record["new_physical_roots_or_boxes_closed"] == 0
        review = load(base/"reviews/ROOT_INDEPENDENT_REVIEW.json")
        assert digest(base/"reviews/ROOT_INDEPENDENT_REVIEW.json") == component["semantic_review_sha256"]
        assert review["original_review_sha256"] == component["original_semantic_review_sha256"]
    else:
        assert component["directory"] == "scalar-label"
        inventory = load(base/"SOURCE_INVENTORY.json")
        entries = inventory["modules"]
        declarations = {}
        for module in ["CoreScalarBridge", "CoreLabelBridge"]:
            selected = record["selected_modules"][module]
            receipt = load(base/"receipts"/(module+".json"))
            assert receipt["success"] and receipt["exit_code"] == 0
            assert receipt["source_sha256"] == digest(base/"lean"/(module+".lean"))
            assert receipt["original_receipt_sha256"] == selected["original_receipt_sha256"]
            axioms = axioms_from_stdout(data(base/"receipts"/(module+".stdout.txt")).decode())
            assert axioms == selected["axioms"]
            source_requests_match(data(base/"lean"/(module+".lean")).decode(), axioms)
            declarations.update(axioms)
        assert len(declarations) == 13
        for entry in entries:
            receipt = load(base/"receipts"/(entry["module"]+".json"))
            assert receipt["success"] and receipt["exit_code"] == 0
            assert receipt["source_sha256"] == entry["source_sha256"]
            assert receipt["object_sha256"] == entry["object_sha256"]
            assert receipt["original_receipt_sha256"] == entry["original_receipt_sha256"]
        assert record["actual_tapes_or_roots_accepted"] == 0 and record["physical_boxes_closed"] == 0
        assert not record["complete_forest_acceptance"] and not record["no_four_mubs_theorem"]
        review = load(base/"reviews/SEMANTIC_REVIEW.json")
        assert digest(base/"reviews/SEMANTIC_REVIEW.json") == component["semantic_review_sha256"]
        assert review["original_review_sha256"] == component["original_semantic_review_sha256"]
    modules, edges, order = closure(base, entries, roots)
    assert modules == component["source_modules"] and edges == component["custom_import_edges"]
    assert len(declarations) == component["selected_declarations"]
    if component["directory"] == "scalar-label":
        assert order == inventory["topological_order"]
    results.append({"component": component["directory"], "files": files, "modules": modules,
                    "selected_declarations": len(declarations), "custom_import_edges": edges})
for path in HERE.rglob("*"):
    if path.is_file():
        assert path.suffix not in {".olean", ".ilean", ".o", ".so", ".dylib", ".a", ".exe", ".pyc"}
        payload = data(path)
        assert b"\x00" not in payload
        forbidden = ["/"+"Users/", "/"+"home/", "/"+"private/tmp/"]
        assert not any(prefix.encode() in payload for prefix in forbidden), str(path.relative_to(HERE))
assert components["physical_boxes_closed"] == 0 and not components["complete_forest_acceptance"]
print(json.dumps({"status": "PASS_PORTABLE_INVENTORY", "files_including_manifest": total,
                  "components": results, "selected_declarations_total": sum(r["selected_declarations"] for r in results),
                  "lean_compiler_invoked": False, "new_physical_closures": 0,
                  "clean_cache_rebuild_claimed": False}, indent=2))

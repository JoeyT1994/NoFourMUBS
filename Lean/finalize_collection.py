#!/usr/bin/env python3
"""Finish source-gap accounting and archive documentation without compiling."""
import argparse
import collections
import json
from pathlib import Path
import re
from collect_sources import DATALESS, ROOTS, rg_files, digest, json_out, jsonl_out

def main():
    parser = argparse.ArgumentParser(); parser.add_argument("--workspace", type=Path, required=True)
    args = parser.parse_args(); workspace = args.workspace.resolve(); out = Path(__file__).resolve().parent
    records = {r["source_path"]: r for r in map(json.loads, (out / "SOURCE_INDEX.jsonl").read_text().splitlines())}
    blobs = {r["sha256"]: r for r in map(json.loads, (out / "BLOB_INDEX.jsonl").read_text().splitlines())}
    recovery = json.loads((out / "SOURCE_RECOVERY.json").read_text())
    for rel in rg_files(workspace, ["mub6-numerical/worker"], ["*.lean"]):
        if rel in records: continue
        stat = (workspace / rel).stat()
        if not stat.st_flags & DATALESS:
            raise ValueError("New resident worker source requires initial collector rerun")
        records[rel] = {"source_path": rel, "bytes": stat.st_size, "snapshot_status": "archival_source_not_admitted",
                        "availability": "unavailable_dataless", "sha256": None, "blob": None,
                        "inventory_origin": "exact dependency pin identified authored worker source root"}
    # Source/hash pairs in this compact reviewed-source family bind the additional
    # worker dependency root. No filename, mtime, or file-size match is proof of identity.
    pins = collections.defaultdict(list)
    exact_root = "mub6-numerical/runs/full-proof-integration-2026-10-03"
    def walk(value, metadata, metadata_sha, location=()):
        if isinstance(value, list):
            for i, child in enumerate(value): walk(child, metadata, metadata_sha, location + (i,))
        elif isinstance(value, dict):
            for key in ["source", "path", "source_path", "source_file", "file"]:
                path = value.get(key)
                if not isinstance(path, str) or not path.endswith(".lean"): continue
                try: rel = Path(path).relative_to(workspace).as_posix()
                except ValueError: continue
                if rel not in records or not rel.startswith("mub6-numerical/worker/"): continue
                sha = value.get("source_sha256", value.get("sha256"))
                if isinstance(sha, str) and re.fullmatch("[a-f0-9]{64}", sha):
                    pins[rel].append({"sha256": sha, "metadata_path": metadata, "metadata_sha256": metadata_sha,
                                      "json_location_components": list(location), "source_field": key})
            for key, child in value.items():
                if isinstance(child, (dict, list)): walk(child, metadata, metadata_sha, location + (key,))
    for rel in rg_files(workspace, [exact_root], ["*.json"]):
        path = workspace / rel; stat = path.stat()
        if stat.st_flags & DATALESS or stat.st_size > 8 * 1024 * 1024: continue
        data = path.read_bytes()
        if b"mub6-numerical/worker/" not in data: continue
        try: value = json.loads(data)
        except ValueError: continue
        walk(value, rel, digest(data))
    by_hash = collections.defaultdict(list)
    for rec in records.values():
        if rec.get("sha256"): by_hash[rec["sha256"]].append(rec["source_path"])
    for rel, evidence in pins.items():
        hashes = {p["sha256"] for p in evidence}; rec = records[rel]
        if len(hashes) == 1:
            sha = next(iter(hashes))
            if sha in blobs and blobs[sha]["bytes"] == rec["bytes"] and not rec.get("sha256"):
                rec.update(sha256=sha, blob=blobs[sha]["blob"], availability="dataless_recovered_by_exact_pin")
                recovery.append({"source_path": rel, "sha256": sha, "resident_copy_paths": by_hash[sha], "pin_evidence": evidence})
    # The original 17 recoveries were independently checked against all 44 exact
    # source/hash references. Old json_pointer strings are breadcrumbs, not RFC6901.
    for item in recovery:
        for evidence in item["pin_evidence"]:
            if "json_pointer" in evidence:
                evidence["json_location_breadcrumb"] = evidence.pop("json_pointer")
    jsonl_out(out / "SOURCE_INDEX.jsonl", (records[p] for p in sorted(records)))
    json_out(out / "SOURCE_RECOVERY.json", recovery)
    git = [json.loads(s) for s in (out / "GIT_SOURCE_INDEX.jsonl").read_text().splitlines()]
    git_by_path = {r["git_path"]: r for r in git}
    inventories = []
    for item in json.loads((out / "GIT_PROVENANCE_INDEX.json").read_text()):
        if Path(item["git_path"]).name != "SOURCE_INVENTORY.json": continue
        value = json.loads((out / item["file"]).read_text())
        if not isinstance(value, dict) or not isinstance(value.get("modules"), list): continue
        module_names = {r.get("module") for r in value["modules"]}
        missing, mismatches, unresolved = [], [], []
        prefix = str(Path(item["git_path"]).parent)
        for mod in value["modules"]:
            relative = mod.get("file")
            expected = mod.get("source_sha256")
            if not isinstance(relative, str) or not expected: continue
            source = git_by_path.get(prefix + "/" + relative)
            if not source: missing.append(relative)
            elif source["sha256"] != expected: mismatches.append(relative)
            for imported in mod.get("static_imports", []) + mod.get("dynamic_imports", []):
                if imported.split(".")[0] not in {"Mathlib", "Lean", "Init", "Std", "Batteries", "Aesop", "Qq", "Lake", "Plausible", "ProofWidgets", "Cli", "LeanSearchClient", "ImportGraph", "Cache"} and imported not in module_names:
                    unresolved.append({"module": mod.get("module"), "import": imported})
        inventories.append({"git_inventory": item["git_path"], "module_count": len(value["modules"]),
                            "missing_exact_source_files": missing, "source_hash_mismatches": mismatches,
                            "custom_imports_not_named_in_this_inventory": unresolved,
                            "scope": "Static source/hash completeness only; not compilation or physical-proof admission"})
    basename_available = collections.defaultdict(set)
    for rec in list(records.values()) + git:
        if rec.get("sha256"):
            basename_available[Path(rec.get("source_path", rec.get("git_path"))).name].add(rec["sha256"])
    gaps = [r for r in records.values() if not r.get("sha256")]
    groups = collections.Counter("/".join(r["source_path"].split("/")[:3]) for r in gaps)
    same_name = [r for r in gaps if Path(r["source_path"]).name in basename_available]
    compile_path = re.compile(r"(?:^|/)(?:[^/]*(?:attempt|replay|check-|audit|probe|control)[^/]*)(?:/|$)", re.I)
    type_counts = collections.Counter("historical_check_or_attempt_path_heuristic" if compile_path.search(r["source_path"]) else "canonical_or_generated_source_path_not_resolved" for r in gaps)
    unresolved_imports = json.loads((out / "IMPORT_INDEX.json").read_text())
    for rec in unresolved_imports:
        if rec["classification"] == "external_pinned_dependency": rec["classification"] = "external_dependency_not_bundled"
    json_out(out / "IMPORT_INDEX.json", unresolved_imports)
    unresolved_names = [r["module"] for r in unresolved_imports if r["classification"] == "authored_source_not_resolved_in_snapshot"]
    import_gaps = []
    for module in unresolved_names:
        uses = [b["sha256"] for b in blobs.values() if module in b["static_imports_heuristic"]]
        import_gaps.append({"module": module, "referencing_blob_sha256": uses,
                           "example_workspace_sources": [r["source_path"] for r in records.values() if r.get("sha256") in uses][:4],
                           "occurs_in_prior_git_sources": any(r["sha256"] in uses for r in git)})
    report = {"unavailable_workspace_paths": len(gaps), "unavailable_by_source_group": dict(groups),
              "path_kind_counts_are_heuristic": dict(type_counts),
              "unavailable_unique_basenames": len({Path(r["source_path"]).name for r in gaps}),
              "unavailable_paths_with_resident_same_basename": len(same_name),
              "same_basename_is_not_exact_byte_identity_and_does_not_authorize_recovery": True,
              "unavailable_unique_basenames_with_no_resident_namesake": len({Path(r["source_path"]).name for r in gaps if Path(r["source_path"]).name not in basename_available}),
              "unresolved_imports_across_all_historical_sources": import_gaps,
              "prior_published_source_inventory_checks": inventories,
              "current_published_source_claim": "Every one of the 1116 prior Git Lean paths is archived with exact Git object and SHA256. Inventory checks below are source checks only. Unavailable canonical historical workspace files remain a real gap; they are not all asserted redundant.",
              "paper_only_roots_checked_no_lean_files": ["HadamardClassification-14_work", "HadamardClassification-2", "HadamardClassification-3-review", "HadamardClassification-4-github-review"],
              "directory_exclusions_are_policy_not_duplicate_proof": True}
    json_out(out / "GAP_REPORT.json", report)
    summary = json.loads((out / "SUMMARY.json").read_text())
    summary.update(source_roots=ROOTS, lean_source_paths=len(records), availability=dict(collections.Counter(r["availability"] for r in records.values())), recovered_paths=len(recovery))
    summary["publication_completeness"] = "All resident authored sources in the bounded roots plus all prior published Lean Git sources; historical dataless workspace gaps explicitly remain. Not an all-history byte-complete archive."
    json_out(out / "SUMMARY.json", summary)
    readme = f'''# Lean source snapshot — 8 October 2026

This archive preserves **{len(blobs):,} distinct Lean source files ({sum(r['bytes'] for r in blobs.values()):,} bytes)** from the no-four-MUB research program and classification pipeline. It maps **{len(records):,} workspace paths**, and separately preserves all **{len(git):,} Lean paths** at prior publication commit `ed8470c7d77e76121610492b3bed98b98a5f1b3b`.

**This is a source archive, not a completed no-four-MUB proof or a new Lean admission.** No compiler was run during collection. Historical drafts, unsuccessful experiments, probes, generated modules, and successful compile-source copies coexist. Every path is explicitly marked archival; a historical receipt does not confer new proof credit.

There are **{len(gaps):,} unavailable cloud-only workspace paths**. Their names and sizes are retained; their bytes were not read or hydrated. {len(recovery):,} paths were reconstructed from an exact historical path/hash pin and identical resident bytes. Such reconstruction preserves the pinned historical version; it does not inspect or certify the current cloud placeholder. Canonical historical source gaps remain real and are not all asserted to be duplicate compile copies. See `GAP_REPORT.json` before describing completeness.

## Verify and restore

Requires Python 3.9 or later, with only its standard library. These commands are offline and do not invoke Lean, Git, downloads, or package installation:

```sh
python3 verify_restore.py
python3 verify_restore.py --restore /path/to/empty/restored-workspace --dry-run
python3 verify_restore.py --restore /path/to/empty/restored-workspace
python3 verify_restore.py --restore /path/to/empty/restored-workspace --include-prior-git
```

The restorer preserves each original workspace-relative source path, skips unavailable bytes, and refuses to overwrite differing files. `--prefix research_factory/classification_extensions/` selects a subtree. `--require-complete` fails when the selected subtree has missing bytes. Prior Git sources restore under `prior-publication/<commit>/`, keeping that historical layout separate from workspace paths.

## Contents and scope

- `SOURCE_INDEX.jsonl`: every discovered workspace Lean path, source availability, SHA256 and blob mapping.
- `BLOB_INDEX.jsonl` and `blobs/<prefix>/<sha256>/<filename>.lean`: one exact-byte copy per SHA256, retaining a Lean filename.
- `GIT_SOURCE_INDEX.jsonl`: all prior published Lean paths with Git blob IDs and SHA256 bindings.
- `SOURCE_RECOVERY.json`: exact path/hash evidence for recovered placeholders. Older `json_location_breadcrumb` values are human-readable locations, not RFC6901 pointers.
- `IMPORT_INDEX.json`: heuristic import-name candidates across historical versions; ambiguity is explicit. It is not a context-resolved build graph.
- `GAP_REPORT.json`: missing-path groups, unresolved historical import names, and exact-source checks against prior published inventories.
- `provenance/`: selected mathematical source, review, status, dependency and replay records from portable Lean packets. Their original claims retain their original limited scope; no arbitrary cluster logs or access files are included.
- `SUMMARY.json`: exact roots, exclusions, counts and admission limitations. `FILE_MANIFEST.json` binds the final archive files.

The bounded source roots include `mub6-numerical` prerequisites, evidence, importer, worker sources and runs; the classification-cover port; `research_factory/lean`; the interval/graph kernels and formal core; and `research_factory/classification_extensions`. No whole-project inventory was attempted. Compiler, mathlib/vendor trees, build/cache directories and the publication checkout were excluded from the workspace traversal. These are directory-policy exclusions, not a claim that every omitted authored byte was proved redundant.

## Dependencies, replay and licensing

Sources span historical Lean versions. Prior portable packets retain their `lean-toolchain`, mathlib revision/dependency manifests, source inventories and serial replay plans where published. The modern classification/physical packets use Lean `v4.33.0-rc2` and mathlib commit `51e6992efd06126df61a496bebf8f49482a4e129`; older source versions may require their own pinned environment. `LICENSE.mathlib` is reused for upstream material and does not assign a new license to authored research sources.

There is deliberately no universal `lake build`: modules with the same name have different historical source hashes, and many snapshots lack an exact selected import/object binding. Use a selected portable packet's inventory and replay order, preserving its source/cache authenticity caveat. The archive carries source only: no `.olean`, `.ilean`, compiler binaries or large numerical datasets.

Formal admission still requires guarded kernel checking, exact source/object/import/receipt pins, an explicit axiom audit, and independent statement/hypothesis review. Allowed standard axioms are `propext`, `Classical.choice`, and `Quot.sound`; sorry, custom research axioms and native decision shortcuts do not receive proof credit. Generated proof replay must preserve the trust-level and kernel-check restrictions. Local compilation, if later authorized, remains serialized through the unchanged resource guard (180 seconds/job, 2304 MiB heap, 2816 MiB RSS, 2 GiB free disk, `-j1`). This snapshot closes no physical sector; closure requires complete, correctly scoped Lean obligations to be admitted.
'''
    (out / "README.md").write_text(readme)
    print(json.dumps({"paths": len(records), "availability": summary["availability"],
                      "inventory_checks": [{"inventory":r["git_inventory"],"missing":len(r["missing_exact_source_files"]),"mismatches":len(r["source_hash_mismatches"]),"external_custom_names":len(r["custom_imports_not_named_in_this_inventory"])} for r in inventories],
                      "unresolved_historical_imports": unresolved_names}, indent=2))

if __name__ == "__main__": main()

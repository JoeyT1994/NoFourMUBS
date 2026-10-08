#!/usr/bin/env python3
"""Collect a bounded, byte-deduplicated Lean source archive; never invoke Lean.

Filesystem placeholders are detected before reads. Recovery requires an exact
path/hash pair in resident JSON metadata and a resident source with that hash.
No network, Git mutation, compiler, or hydration commands are used.
"""
import argparse
import collections
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess

BASE = "research_factory/numerical/2026-09-20_no_four_mub6.nosync"
COVER = BASE + "/milestones/local_certificate_v1/classification_cover"
ROOTS = [
    "mub6-numerical/prerequisites", "mub6-numerical/evidence",
    "mub6-numerical/cluster_importer", "mub6-numerical/runs", COVER,
    "research_factory/lean", BASE + "/milestones/local_certificate_v1/interval_kernel",
    BASE + "/milestones/local_certificate_v1/graph_kernel", BASE + "/workers/formal_core",
    "research_factory/classification_extensions",
    "mub6-numerical/worker",
]
EXCLUDE = [".git", ".lake", "mathlib*", "Mathlib", "lean-4*", "runtime", "compiler",
           "vendor", "cache", "caches", "build", "build_*", "port_4_19_build",
           "github-publication-2026-10-06", "lean-complete-snapshot-20261008"]
PUBLIC = "mub6-numerical/runs/popeye-ring-2026-10-04.nosync/work/github-publication-2026-10-06/Handoffs"
PACKETS = ["ClusterTubeLean_2026-10-07", "PrescribedMatrixPhaseGatesLean_2026-10-08",
           "ShoulderPhysicalAdaptersLean_2026-10-08", "StrictSideClassificationLean_2026-10-08",
           "StrictPhysicalReconstructionLean_2026-10-08"]
PROOF_FILES = {"SOURCE_INVENTORY.json", "COMPONENT_SOURCE_MANIFEST.json", "REPLAY_PLAN.json",
               "DEPENDENCY_REUSE.json", "STATUS.json", "FORMALIZATION_RECORD.json",
               "INDEPENDENT_REVIEW_PORTABLE.json", "REPRODUCING.md", "README.md",
               "lean-toolchain", "mathlib-lake-manifest.json", "lakefile.toml", "LICENSE.mathlib"}
HEX = re.compile(r"^[a-fA-F0-9]{64}$")
DATALESS = 0x40000000

def digest(data):
    return hashlib.sha256(data).hexdigest()

def resident(path):
    return path.is_file() and not (path.stat().st_flags & DATALESS)

def rg_files(workspace, roots, globs, excludes=EXCLUDE):
    args = ["rg", "--files", "--hidden", "--no-ignore"]
    for glob in globs:
        args += ["-g", glob]
    for excluded in excludes:
        args += ["-g", "!" + excluded]
    existing = [root for root in roots if (workspace / root).exists()]
    result = subprocess.run(args + existing, cwd=workspace, capture_output=True, text=True, timeout=60)
    if result.returncode not in (0, 1):
        raise RuntimeError(result.stderr)
    return sorted(set(result.stdout.splitlines()))

def json_out(path, value):
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n")

def jsonl_out(path, values):
    with path.open("w") as stream:
        for value in values:
            stream.write(json.dumps(value, sort_keys=True, separators=(",", ":")) + "\n")

def strip_comments(text):
    # Nested Lean block comments are handled; strings are left untouched.
    text = re.sub(r"--[^\n]*", "", text)
    out, i, depth = [], 0, 0
    while i < len(text):
        pair = text[i:i+2]
        if pair == "/-": depth += 1; i += 2
        elif pair == "-/" and depth: depth -= 1; i += 2
        else:
            if not depth: out.append(text[i])
            elif text[i] == "\n": out.append("\n")
            i += 1
    return "".join(out)

def source_features(data):
    clean = strip_comments(data.decode("utf-8", errors="replace"))
    imports = []
    for match in re.finditer(r"(?m)^\s*(?:public\s+|private\s+)?(?:meta\s+)?import\s+([^\n]+)", clean):
        imports += re.findall(r"[A-Za-z_][\w'.]*(?:\.[\w']+)*", match.group(1))
    return {"static_imports_heuristic": sorted(set(imports)),
            "lexical_markers_heuristic": sorted({term for term in
                ["sorry", "admit", "native_decide", "axiom", "unsafe", "skipKernelTC", "importModules"]
                if re.search(r"\b" + term + r"\b", clean)})}

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--workspace", type=Path, required=True)
    args = parser.parse_args()
    workspace = args.workspace.resolve()
    output = Path(__file__).resolve().parent
    paths = rg_files(workspace, ROOTS, ["*.lean"])
    records = {}
    blobs = {}
    by_hash = collections.defaultdict(list)
    total_resident = 0
    for rel in paths:
        path = workspace / rel
        stat = path.stat()
        record = {"source_path": rel, "bytes": stat.st_size,
                  "snapshot_status": "archival_source_not_admitted",
                  "availability": "unavailable_dataless" if stat.st_flags & DATALESS else "resident",
                  "sha256": None, "blob": None}
        records[rel] = record
        if stat.st_flags & DATALESS:
            continue
        if not path.resolve().is_relative_to(workspace):
            record["availability"] = "unavailable_external_symlink"
            continue
        data = path.read_bytes()
        sha = digest(data)
        total_resident += len(data)
        by_hash[sha].append(rel)
        if sha not in blobs:
            blob = "blobs/" + sha[:2] + "/" + sha + "/" + path.name
            dest = output / blob
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(data)
            blobs[sha] = {"sha256": sha, "blob": blob, "bytes": len(data), **source_features(data)}
        record.update(sha256=sha, blob=blobs[sha]["blob"])

    # Portable packets provide additional exact bytes and proof-only evidence.
    portable_sources = []
    portable_files = []
    portable_evidence = collections.defaultdict(list)
    for packet in PACKETS:
        root = workspace / PUBLIC / packet
        if not root.exists():
            continue
        for path in sorted(root.rglob("*")):
            if not path.is_file() or not resident(path):
                continue
            inside = path.relative_to(root).as_posix()
            rel = path.relative_to(workspace).as_posix()
            if path.suffix == ".lean":
                data = path.read_bytes(); sha = digest(data)
                by_hash[sha].append(rel)
                portable_sources.append({"source_path": rel, "sha256": sha, "bytes": len(data)})
                if sha not in blobs:
                    blob = "blobs/" + sha[:2] + "/" + sha + "/" + path.name
                    dest = output / blob; dest.parent.mkdir(parents=True, exist_ok=True); dest.write_bytes(data)
                    blobs[sha] = {"sha256": sha, "blob": blob, "bytes": len(data), **source_features(data)}
            elif inside in PROOF_FILES or (inside.startswith(("checks/", "reviews/")) and path.suffix == ".json"):
                data = path.read_bytes()
                destrel = "provenance/portable/" + packet + "/" + inside
                dest = output / destrel; dest.parent.mkdir(parents=True, exist_ok=True); dest.write_bytes(data)
                portable_files.append({"source_path": rel, "file": destrel, "sha256": digest(data), "bytes": len(data)})
                if path.name == "SOURCE_INVENTORY.json":
                    for module in json.loads(data).get("modules", []):
                        sha = module.get("source_sha256")
                        if sha:
                            portable_evidence[sha].append({"file": destrel, "module": module.get("module"),
                                "selected_in_prior_packet": module.get("selected", False),
                                "historical_evidence_only": True})

    # Extract exact source/hash pairs from resident metadata, never raw operations.
    metadata_paths = rg_files(workspace, ROOTS, ["*.json"])
    pins = collections.defaultdict(list)
    metadata_stats = collections.Counter()

    def resolve_source(value, metadata):
        if not isinstance(value, str) or not value.endswith(".lean"):
            return []
        path = Path(value)
        choices = []
        if path.is_absolute():
            try: choices.append(path.relative_to(workspace).as_posix())
            except ValueError: pass
        else:
            choices.append(value)
            choices.append((Path(metadata).parent / path).as_posix())
        matches = sorted({choice for choice in choices if choice in records})
        # A relative path with two possible bases is not an exact path pin.
        return matches if len(matches) == 1 else []

    def walk(value, metadata, metadata_sha, pointer=""):
        if isinstance(value, list):
            for i, child in enumerate(value): walk(child, metadata, metadata_sha, pointer + "/" + str(i))
        elif isinstance(value, dict):
            for key, val in value.items():
                if isinstance(val, str) and HEX.fullmatch(val) and str(key).endswith(".lean"):
                    for rel in resolve_source(key, metadata):
                        pins[rel].append({"sha256": val.lower(), "metadata_path": metadata,
                                         "metadata_sha256": metadata_sha, "json_location_breadcrumb": pointer + "/" + key})
            for key in ["source", "source_path", "source_file", "path", "file", "original", "original_source"]:
                source = value.get(key)
                rels = resolve_source(source, metadata)
                if not rels: continue
                hashkeys = (["source_sha256", "original_sha256", "sha256"] if key.startswith("source") or key.startswith("original")
                            else ["source_sha256", "sha256"])
                chosen = next((value.get(h) for h in hashkeys if isinstance(value.get(h), str) and HEX.fullmatch(value[h])), None)
                if chosen:
                    for rel in rels:
                        pins[rel].append({"sha256": chosen.lower(), "metadata_path": metadata,
                                         "metadata_sha256": metadata_sha, "json_location_breadcrumb": pointer,
                                         "source_field": key})
            for key, child in value.items():
                if isinstance(child, (dict, list)): walk(child, metadata, metadata_sha, pointer + "/" + str(key))

    for rel in metadata_paths:
        path = workspace / rel
        stat = path.stat()
        if stat.st_flags & DATALESS:
            metadata_stats["dataless_skipped"] += 1; continue
        if stat.st_size > 8 * 1024 * 1024:
            metadata_stats["over_8MiB_skipped"] += 1; continue
        data = path.read_bytes()
        if b".lean" not in data:
            metadata_stats["no_source_path_skipped"] += 1; continue
        try: value = json.loads(data)
        except (ValueError, UnicodeError): metadata_stats["invalid_json_skipped"] += 1; continue
        metadata_stats["parsed_for_exact_source_pins"] += 1
        walk(value, rel, digest(data))

    recovery_evidence = []
    for rel, record in records.items():
        sha = record["sha256"]
        if not sha:
            candidate_hashes = {p["sha256"] for p in pins[rel] if p["sha256"] in blobs and blobs[p["sha256"]]["bytes"] == record["bytes"]}
            # Conflicting historical path pins are never silently resolved.
            all_pinned_hashes = {p["sha256"] for p in pins[rel]}
            if len(candidate_hashes) == 1 and len(all_pinned_hashes) == 1:
                sha = next(iter(candidate_hashes))
                record.update(sha256=sha, blob=blobs[sha]["blob"], availability="dataless_recovered_by_exact_pin")
                recovery = {"source_path": rel, "sha256": sha, "resident_copy_paths": by_hash[sha], "pin_evidence": pins[rel]}
                recovery_evidence.append(recovery)
            elif pins[rel]:
                record["unresolved_pinned_hashes"] = sorted(all_pinned_hashes)
                record["pin_conflict"] = len(all_pinned_hashes) > 1
        if sha and portable_evidence[sha]: record["historical_portable_evidence"] = portable_evidence[sha]

    # Record import lookup candidates, not a fabricated universal historical build.
    modules = collections.defaultdict(set)
    for rel, rec in records.items():
        if not rec["sha256"]: continue
        parts = Path(rel).with_suffix("").parts
        for length in range(1, min(len(parts), 5) + 1):
            module = ".".join(parts[-length:])
            if re.fullmatch(r"[A-Za-z_][\w']*(?:\.[A-Za-z_][\w']*)*", module): modules[module].add(rec["sha256"])
    all_imports = sorted({i for b in blobs.values() for i in b["static_imports_heuristic"]})
    import_index = []
    for module in all_imports:
        external = module.split(".")[0] in {"Mathlib", "Lean", "Init", "Std", "Batteries", "Aesop", "Qq", "Plausible", "ProofWidgets", "Lake", "Cli", "LeanSearchClient", "ImportGraph"}
        candidates = sorted(modules.get(module, []))
        import_index.append({"module": module, "classification": "external_dependency_not_bundled" if external else
            ("authored_candidates_available" if candidates else "authored_source_not_resolved_in_snapshot"),
            "candidate_source_sha256": candidates,
            "resolution_is_context_dependent": len(candidates) != 1})

    jsonl_out(output / "SOURCE_INDEX.jsonl", records.values())
    jsonl_out(output / "BLOB_INDEX.jsonl", (blobs[s] for s in sorted(blobs)))
    json_out(output / "SOURCE_RECOVERY.json", recovery_evidence)
    json_out(output / "IMPORT_INDEX.json", import_index)
    json_out(output / "PORTABLE_PROVENANCE_INDEX.json", portable_files)
    json_out(output / "PORTABLE_SOURCE_POOL.json", portable_sources)
    availability = dict(collections.Counter(r["availability"] for r in records.values()))
    summary = {"schema": "authored-lean-source-archive-v1", "snapshot_date": "2026-10-08",
        "source_roots": ROOTS, "excluded_directory_globs": EXCLUDE,
        "additional_roots_selection": "Manually selected after reading " + COVER + "/LOCAL_CORE_SOURCE_PINS.json and GENERIC_NUMERICAL_PORT_PINS_v2.json; classification_extensions explicitly requested by director",
        "lean_source_paths": len(records), "availability": availability,
        "unique_source_blobs": len(blobs), "unique_blob_bytes": sum(b["bytes"] for b in blobs.values()),
        "resident_source_logical_bytes_before_dedup": total_resident,
        "portable_recovery_pool_sources": len(portable_sources), "proof_provenance_files": len(portable_files),
        "metadata_scan": dict(metadata_stats), "recovered_paths": len(recovery_evidence),
        "unresolved_import_module_names": [r["module"] for r in import_index if r["classification"] == "authored_source_not_resolved_in_snapshot"],
        "formal_admission": "NONE: source archival and historical evidence reuse only; no compiler run",
        "complete_no_four_MUBs_proof": False,
        "completeness_boundary": "Every .lean filename in listed source roots, except explicit dependency/cache/publication directories. Dataless files are listed, not hydrated. This is not a whole-workspace inventory.",
        "dependency_policy": "Historical sources span toolchains; portable packet pins and replay orders are retained. No single build target is asserted for all historical versions."}
    json_out(output / "SUMMARY.json", summary)
    print(json.dumps({k: summary[k] for k in ["lean_source_paths", "availability", "unique_source_blobs", "unique_blob_bytes", "recovered_paths", "proof_provenance_files"]}, indent=2))

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Add exact prior published Lean Git blobs without checking out files or fetching."""
import argparse
import collections
import json
import os
from pathlib import Path
import subprocess
from collect_sources import digest, source_features, json_out, jsonl_out

REVISION = "ed8470c7d77e76121610492b3bed98b98a5f1b3b"
SAFE_METADATA = {"SOURCE_INVENTORY.json", "COMPONENT_SOURCE_MANIFEST.json", "REPLAY_PLAN.json",
                 "DEPENDENCY_REUSE.json", "STATUS.json", "lean-toolchain", "mathlib-lake-manifest.json",
                 "lakefile.toml", "LICENSE.mathlib", "REPRODUCING.md"}
GIT = ["git", "-c", "protocol.allow=never", "-c", "protocol.https.allow=never",
       "-c", "protocol.http.allow=never", "-c", "protocol.ssh.allow=never",
       "-c", "protocol.git.allow=never", "-c", "protocol.file.allow=never",
       "-c", "protocol.ext.allow=never"]

def main():
    parser = argparse.ArgumentParser(); parser.add_argument("--repo", type=Path, required=True)
    args = parser.parse_args(); output = Path(__file__).resolve().parent
    env = dict(os.environ, GIT_NO_LAZY_FETCH="1", GIT_TERMINAL_PROMPT="0")
    raw = subprocess.check_output(GIT + ["ls-tree", "-r", "-z", REVISION], cwd=args.repo, env=env)
    entries = []
    for entry in raw.split(b"\0"):
        if not entry: continue
        head, name = entry.split(b"\t", 1); mode, kind, oid = head.decode().split()
        name = name.decode()
        if Path(name).is_absolute() or ".." in Path(name).parts or "\\" in name:
            raise ValueError("Unsafe Git path")
        if kind == "blob" and mode in {"100644", "100755"}: entries.append((name, oid))
    lean = [(name, oid) for name, oid in entries if name.endswith(".lean")]
    packets = {"/".join(name.split("/")[:2]) for name, _ in lean}
    selected = [(name, oid) for name, oid in entries if name.endswith(".lean") or
                ("/".join(name.split("/")[:2]) in packets and Path(name).name in SAFE_METADATA)]
    # cat-file batch contains only selected authored sources and proof metadata.
    request = "".join(oid + "\n" for _, oid in selected).encode()
    result = subprocess.run(GIT + ["cat-file", "--batch"], cwd=args.repo, env=env, input=request,
                            capture_output=True, timeout=60, check=True)
    offset = 0; blobs = {r["sha256"]: r for r in map(json.loads, (output / "BLOB_INDEX.jsonl").read_text().splitlines())}
    sources, metadata, missing = [], [], []
    for (name, oid) in selected:
        end = result.stdout.index(b"\n", offset); header = result.stdout[offset:end].decode(); offset = end + 1
        if header.endswith(" missing"):
            missing.append({"git_path": name, "git_blob": oid}); continue
        returned_oid, kind, length = header.split(); length = int(length)
        data = result.stdout[offset:offset+length]; offset += length + 1
        if returned_oid != oid or kind != "blob" or len(data) != length: raise ValueError("Invalid Git batch result")
        sha = digest(data)
        if name.endswith(".lean"):
            if sha not in blobs:
                blob = "blobs/" + sha[:2] + "/" + sha + "/" + Path(name).name
                dest = output / blob; dest.parent.mkdir(parents=True, exist_ok=True); dest.write_bytes(data)
                blobs[sha] = {"sha256": sha, "blob": blob, "bytes": len(data), **source_features(data)}
            sources.append({"git_revision": REVISION, "git_path": name, "git_blob": oid,
                "restoration_path": "prior-publication/" + REVISION + "/" + name,
                "blob": blobs[sha]["blob"], "sha256": sha, "bytes": len(data),
                "snapshot_status": "prior_published_source_not_newly_admitted"})
        else:
            destrel = "provenance/prior-git/" + name
            dest = output / destrel; dest.parent.mkdir(parents=True, exist_ok=True); dest.write_bytes(data)
            metadata.append({"git_revision": REVISION, "git_path": name, "git_blob": oid,
                             "file": destrel, "sha256": sha, "bytes": len(data)})
    jsonl_out(output / "BLOB_INDEX.jsonl", (blobs[s] for s in sorted(blobs)))
    jsonl_out(output / "GIT_SOURCE_INDEX.jsonl", sources)
    json_out(output / "GIT_PROVENANCE_INDEX.json", metadata)
    json_out(output / "GIT_SOURCE_GAPS.json", missing)
    # Recompute global import-name candidates, including recovery-only source pools.
    records = [json.loads(line) for line in (output / "SOURCE_INDEX.jsonl").read_text().splitlines()]
    pool = json.loads((output / "PORTABLE_SOURCE_POOL.json").read_text())
    modules = collections.defaultdict(set)
    for record in records + pool + sources:
        if not record.get("sha256"): continue
        rel = record.get("source_path", record.get("git_path"))
        parts = Path(rel).with_suffix("").parts
        for length in range(1, min(len(parts), 5) + 1):
            modules[".".join(parts[-length:])].add(record["sha256"])
    external_names = {"Mathlib", "Lean", "Init", "Std", "Batteries", "Aesop", "Qq", "Plausible", "ProofWidgets", "Lake", "Cli", "LeanSearchClient", "ImportGraph", "Cache"}
    imports = []
    for module in sorted({i for b in blobs.values() for i in b["static_imports_heuristic"] if i != "all"}):
        candidates = sorted(modules.get(module, [])); external = module.split(".")[0] in external_names
        imports.append({"module": module, "classification": "external_dependency_not_bundled" if external else
            ("authored_candidates_available" if candidates else "authored_source_not_resolved_in_snapshot"),
            "candidate_source_sha256": candidates, "resolution_is_context_dependent": len(candidates) != 1})
    json_out(output / "IMPORT_INDEX.json", imports)
    summary = json.loads((output / "SUMMARY.json").read_text())
    summary.pop("additional_roots_discovered_from", None)
    summary["additional_roots_selection"] = "Manually selected after reading classification_cover/LOCAL_CORE_SOURCE_PINS.json and GENERIC_NUMERICAL_PORT_PINS_v2.json; classification_extensions explicitly requested by director"
    summary.update(prior_git_revision=REVISION, prior_git_lean_source_paths=len(sources),
                   prior_git_unavailable_blobs=len(missing), prior_git_provenance_files=len(metadata),
                   unique_source_blobs=len(blobs), unique_blob_bytes=sum(b["bytes"] for b in blobs.values()),
                   unresolved_import_module_names=[r["module"] for r in imports if r["classification"] == "authored_source_not_resolved_in_snapshot"])
    json_out(output / "SUMMARY.json", summary)
    print(json.dumps({"prior_git_lean_sources": len(sources), "prior_git_metadata": len(metadata),
                      "missing": missing, "unique_blobs": len(blobs), "unique_blob_bytes": summary["unique_blob_bytes"]}, indent=2))

if __name__ == "__main__": main()

#!/usr/bin/env python3
"""Offline source-byte verifier and non-overwriting path restorer. Never runs Lean."""
import argparse
import collections
import hashlib
import json
from pathlib import Path, PurePosixPath

HERE = Path(__file__).resolve().parent

def safe_path(base, relative):
    path = PurePosixPath(relative)
    if not relative or path.is_absolute() or any(p in {"", ".", ".."} for p in relative.split("/")) or "\\" in relative:
        raise ValueError("Unsafe relative path: " + relative)
    target = base.joinpath(*path.parts)
    if not target.resolve().is_relative_to(base.resolve()):
        raise ValueError("Path escapes destination (possibly through a symlink): " + relative)
    return target

def sha(path):
    return hashlib.sha256(read(path)).hexdigest()

def read(path):
    if getattr(path.stat(), "st_flags", 0) & 0x40000000:
        raise ValueError("Refusing to hydrate dataless file: " + str(path))
    return path.read_bytes()

def rows(name):
    path = HERE / name
    return [json.loads(s) for s in read(path).decode().splitlines()]

def verify():
    blobs = rows("BLOB_INDEX.jsonl")
    by_sha = {}
    for rec in blobs:
        if rec["sha256"] in by_sha: raise ValueError("Duplicate blob hash")
        path = safe_path(HERE, rec["blob"])
        if path.is_symlink() or path.suffix != ".lean": raise ValueError("Blob is not plain Lean source")
        if path.stat().st_size != rec["bytes"] or sha(path) != rec["sha256"]:
            raise ValueError("Blob mismatch: " + rec["blob"])
        by_sha[rec["sha256"]] = rec
    source_rows = rows("SOURCE_INDEX.jsonl"); git_rows = rows("GIT_SOURCE_INDEX.jsonl")
    seen = set()
    for rec in source_rows + git_rows:
        path = rec.get("source_path", rec.get("restoration_path"))
        safe_path(Path("/offline-restoration-root"), path)
        if path in seen: raise ValueError("Duplicate restoration path: " + path)
        seen.add(path)
        if rec.get("sha256"):
            blob = by_sha[rec["sha256"]]
            if rec["blob"] != blob["blob"] or rec["bytes"] != blob["bytes"]:
                raise ValueError("Source/blob binding mismatch: " + path)
        elif rec.get("blob") is not None:
            raise ValueError("Unhashed source has a blob")
    for name in ["PORTABLE_PROVENANCE_INDEX.json", "GIT_PROVENANCE_INDEX.json"]:
        for rec in json.loads(read(HERE / name)):
            path = safe_path(HERE, rec["file"])
            if path.stat().st_size != rec["bytes"] or sha(path) != rec["sha256"]:
                raise ValueError("Provenance mismatch: " + rec["file"])
    manifest_path = HERE / "FILE_MANIFEST.json"
    manifest = json.loads(read(manifest_path))
    listed = set()
    for rec in manifest["files"]:
        if rec["file"] in listed: raise ValueError("Duplicate archive manifest path")
        listed.add(rec["file"])
        path = safe_path(HERE, rec["file"])
        if path.stat().st_size != rec["bytes"] or sha(path) != rec["sha256"]:
            raise ValueError("Archive manifest mismatch: " + rec["file"])
    required = {"SOURCE_INDEX.jsonl", "BLOB_INDEX.jsonl", "GIT_SOURCE_INDEX.jsonl", "SUMMARY.json", "GAP_REPORT.json", "README.md", "verify_restore.py", "PORTABLE_PROVENANCE_INDEX.json", "GIT_PROVENANCE_INDEX.json"}
    if not required.issubset(listed): raise ValueError("Required archive file missing from manifest")
    for rec in blobs:
        if rec["blob"] not in listed: raise ValueError("Source blob missing from archive manifest")
    return {"verification": "SOURCE_BYTES_AND_PATH_BINDINGS_ONLY_NOT_LEAN_PROOF",
            "unique_blobs_verified": len(blobs), "unique_blob_bytes": sum(r["bytes"] for r in blobs),
            "workspace_source_paths": len(source_rows), "git_source_paths": len(git_rows),
            "unavailable_workspace_paths": sum(not r.get("sha256") for r in source_rows)}, source_rows, git_rows

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--restore", type=Path, help="Restore available workspace source paths beneath a chosen directory")
    parser.add_argument("--prefix", default="", help="Restore only workspace paths starting with this prefix")
    parser.add_argument("--include-prior-git", action="store_true", help="Also restore historical Git sources under prior-publication/<commit>")
    parser.add_argument("--dry-run", action="store_true", help="Verify and report restore counts without writing files")
    parser.add_argument("--require-complete", action="store_true", help="Fail if selected workspace paths are unavailable")
    args = parser.parse_args(); result, source_rows, git_rows = verify()
    selected = [r for r in source_rows if r["source_path"].startswith(args.prefix)]
    if args.include_prior_git: selected += git_rows
    gaps = [r for r in selected if not r.get("sha256")]
    if args.require_complete and gaps: raise SystemExit("Incomplete selected source scope: " + str(len(gaps)) + " unavailable paths")
    result["selected_available_paths"] = len(selected) - len(gaps)
    result["selected_unavailable_paths"] = len(gaps)
    if args.restore:
        destination = args.restore.resolve()
        if destination == HERE or HERE.is_relative_to(destination) or destination.is_relative_to(HERE):
            raise ValueError("Restore destination must not contain the archive itself")
        # Validate every target before writing any file.
        bindings = []
        for rec in selected:
            if not rec.get("sha256"): continue
            relative = rec.get("source_path", rec.get("restoration_path"))
            target = safe_path(destination, relative)
            if target.exists() and (not target.is_file() or sha(target) != rec["sha256"]):
                raise ValueError("Refusing to overwrite differing existing path: " + str(target))
            bindings.append((rec, target))
        if not args.dry_run:
            for rec, target in bindings:
                if target.exists(): continue
                target.parent.mkdir(parents=True, exist_ok=True)
                # Exclusive creation prevents races from overwriting a new file.
                with target.open("xb") as stream:
                    stream.write(read(safe_path(HERE, rec["blob"])))
        result["restore"] = "dry_run" if args.dry_run else "available_source_paths_restored"
        result["restore_destination"] = str(destination)
    print(json.dumps(result, indent=2))

if __name__ == "__main__": main()

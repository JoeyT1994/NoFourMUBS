#!/usr/bin/env python3
"""Reconstruct the exact guard-repaired module; do not run its verifier."""
import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import zipfile


def require_hash(data, expected, label):
    if hashlib.sha256(data).hexdigest() != expected:
        raise ValueError(f"Hash mismatch: {label}")
    return data


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("destination", type=Path)
    args = parser.parse_args()
    root = Path(__file__).resolve().parent
    pins = json.loads((root / "SOURCE_PINS.json").read_text())
    archive = root / "ORIGINAL_INPUT.zip"
    require_hash(archive.read_bytes(), pins["original_zip"]["sha256"], "original ZIP")
    prefix = "ProvenResults/Patch2442Local/Radius050Complete/"
    contents = {}
    with zipfile.ZipFile(archive) as z:
        if len(z.namelist()) != len(set(z.namelist())):
            raise ValueError("Duplicate archive members")
        for name, digest in pins["complete_repaired_package_manifest"].items():
            path = PurePosixPath(name)
            if path.is_absolute() or ".." in path.parts:
                raise ValueError(f"Unsafe module path: {name}")
            source = z.read(prefix + name)
            original_digest = (pins["original_package"]["interval_model_sha256"]
                               if name == "interval_model.hpp" else digest)
            require_hash(source, original_digest, name)
            if name == "interval_model.hpp":
                source = (root / "guard-overlay" / name).read_bytes()
            contents[name] = require_hash(source, digest, name)
        require_hash(z.read(prefix + "MANIFEST.sha256"),
                     pins["original_package"]["manifest_sha256"], "original manifest")
    contents["MANIFEST.sha256"] = require_hash(
        (root / "guard-overlay/MANIFEST.sha256").read_bytes(),
        pins["guard_repaired_derivative"]["manifest_sha256"], "repaired manifest")
    # All input checks finish before creating any output. Refuse to overwrite.
    args.destination.mkdir(parents=True, exist_ok=False)
    for name, data in contents.items():
        dest = args.destination / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(data)
    print(f"Prepared {len(contents)} exact files. Mathematical replay has NOT run.")


if __name__ == "__main__":
    main()

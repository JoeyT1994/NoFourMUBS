#!/usr/bin/env python3
"""Check published file identity, not mathematical correctness."""
import hashlib
from pathlib import Path, PurePosixPath


def main():
    root = Path(__file__).resolve().parent
    seen = set()
    for line in (root / "MANIFEST.sha256").read_text().splitlines():
        expected, name = line.split("  ", 1)
        path = PurePosixPath(name)
        if path.is_absolute() or ".." in path.parts or name in seen:
            raise ValueError(f"Unsafe or repeated name: {name}")
        seen.add(name)
        if hashlib.sha256((root / name).read_bytes()).hexdigest() != expected:
            raise ValueError(f"Hash mismatch: {name}")
    actual = {str(p.relative_to(root)) for p in root.rglob("*") if p.is_file()}
    if actual != seen | {"MANIFEST.sha256"}:
        raise ValueError("Unexpected or missing files")
    print(f"PASS: {len(seen)} file hashes. No mathematical replay performed.")


if __name__ == "__main__":
    main()

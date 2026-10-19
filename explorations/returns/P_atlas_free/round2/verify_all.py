#!/usr/bin/env python3
"""Replay the six exact gates in a temporary copy of the hashed package."""

from pathlib import Path, PurePosixPath
import hashlib
import json
import shutil
import subprocess
import sys
import tempfile


ROOT = Path(__file__).resolve().parent
GATES = (
    ("verify_support_obstruction.py", "SUPPORT_RECEIPT.json"),
    ("verify_clock_collision.py", "CLOCK_COLLISION_RECEIPT.json"),
    ("verify_five_columns.py", "FIVE_COLUMNS_RECEIPT.json"),
    ("verify_four_by_four_cross.py", "FOUR_BY_FOUR_CROSS_RECEIPT.json"),
    ("verify_four_ray.py", "FOUR_RAY_RECEIPT.json"),
    ("verify_minor_pullback.py", "MINOR_PULLBACK_RECEIPT.json"),
)


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def file_inventory(root):
    return {
        path.relative_to(root).as_posix()
        for path in root.rglob("*")
        if path.is_file()
        and "__pycache__" not in path.relative_to(root).parts
        and path.relative_to(root).as_posix() != "SHA256SUMS"
    }


def verify_hashes(root):
    recorded = {}
    for line in (root / "SHA256SUMS").read_text(encoding="utf-8").splitlines():
        digest, separator, name = line.partition("  ")
        relative = PurePosixPath(name)
        require(
            separator and len(digest) == 64
            and all(c in "0123456789abcdef" for c in digest)
            and bool(name) and not relative.is_absolute()
            and ".." not in relative.parts and name != "SHA256SUMS",
            "Invalid SHA256SUMS entry: " + line,
        )
        require(name not in recorded, "Duplicate manifest path: " + name)
        recorded[name] = digest
    actual = file_inventory(root)
    require(
        set(recorded) == actual,
        "File inventory mismatch; missing=" + repr(sorted(set(recorded) - actual))
        + ", unlisted=" + repr(sorted(actual - set(recorded))),
    )
    for name, expected in recorded.items():
        path = root / name
        require(not path.is_symlink(), "Symlink is not a delivered proof file: " + name)
        observed = hashlib.sha256(path.read_bytes()).hexdigest()
        require(observed == expected, "SHA256 mismatch: " + name)
    return len(recorded)


def main():
    require(sys.version_info >= (3, 10), "Python 3.10 or later is required.")
    require(not sys.flags.optimize, "Run without -O or -OO; assertions are required.")
    count = verify_hashes(ROOT)
    print("PASS: complete inventory and " + str(count) + " SHA256 file hashes.", flush=True)
    expected = {
        receipt: (ROOT / "certificates" / receipt).read_bytes()
        for _, receipt in GATES
    }
    with tempfile.TemporaryDirectory(prefix="p_atlas_free_replay_") as directory:
        replay = Path(directory) / ROOT.name
        shutil.copytree(ROOT, replay, ignore=shutil.ignore_patterns("__pycache__"))
        for _, receipt in GATES:
            (replay / "certificates" / receipt).unlink()
        for script, receipt in GATES:
            completed = subprocess.run(
                [sys.executable, "-E", "-B", "-S", str(replay / "verifiers" / script)],
                cwd=replay,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True,
                check=False,
            )
            require(
                completed.returncode == 0,
                script + " failed:\n" + completed.stdout,
            )
            result = replay / "certificates" / receipt
            require(result.is_file(), script + " did not create its receipt.")
            observed = result.read_bytes()
            require(
                observed == expected[receipt],
                "Receipt differs byte for byte: " + receipt + "\n" + completed.stdout,
            )
            require(json.loads(observed)["status"] == "PASS", "Non-PASS receipt: " + receipt)
            print("PASS: " + script + "; deterministic receipt matches.", flush=True)
        require(verify_hashes(replay) == count, "Replay inventory changed.")
    print(
        "PASS: all six exact gates and receipts. Global A/C/F/F-prime remain unproved.",
        flush=True,
    )


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        raise SystemExit("FAIL: " + str(error)) from error

# PR-M return — 2026-10-14

Start with **PRM.md** for the proof and **STATUS.md** for the exact scope.

## Replay

Unzip this return, enter its `output` directory, and run:

```sh
python3 verify_all.py
```

Python 3.10 or newer and its standard library are sufficient. Do not use `-O`; optimized execution is rejected. No external package, original reference directory or network access is needed. All mathematical acceptance checks use exact arithmetic; floating-point clock values are used only for timing metadata.

The replay checks source integrity, regenerates all new certificate data, compares it with the retained JSON files, and also replays the supplied structural identity verifier. It writes `reports/verification.json` and exits nonzero on failure. The individual `verify_*.py` scripts also run separately. Their `--write` option is for regenerating certificates, not for bypassing exact reconstruction.

## Contents

`PRM.md` contains the complete new paper argument and the explicit derivation of G1, G2 and G3. `STATUS.md` separates paper proofs, exact computations, numerics, and unperformed formalization/import work.

`exact_algebra.py` implements rational Eisenstein-field arithmetic and Laurent polynomials. `verify_fourier.py`, `verify_bridge.py` and `verify_cubic_guards.py` implement the new checks. `certificates/` contains all finite witnesses and expanded polynomial data.

`vendor/verify_structural.py` is the supplied I3 verifier, unchanged. `imports.json` identifies and hashes each mathematical input; `imports/` retains the cited theorem documents for convenient review. Those excerpts do not replace the full upstream proof assets. The replay does not re-prove the whole imported corpus.

`FILE_HASHES.json` pins the returned proof, code, certificates and imported documents. Reports are deliberately excluded from that manifest so that replay can update them.

The new geometric proof has not been formalized in Lean. A successful replay checks the stated algebra and finite exhaustions; it is not a claim of a full proof-assistant check of this note or of the complete no-four-MUBs project.

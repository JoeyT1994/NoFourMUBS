# NoFourMUBS independent review — additive patches, 1 October 2026

The reviewed input is `NoFourMUBS_2026-09-30_night(2).zip`, SHA-256
`ca46674c52bab0fc61b3c3d65fa6b15ab98abca0ff3eb0db2e591b2e27abaa91`.

No original file was replaced. A final comparison of **all 64,314 original files** against the ZIP found no changed or missing files and no new files inside the original repository tree. See `logs/source_integrity.json`.

## Contents and fixes

`REVIEW_2026-10-01.md` contains the mathematical and implementation verdicts, dependencies, additional findings, and execution limitations.

`SideChartCover/verify.py` is an additive replacement *entry point*. It reads the original repository's proof implementation, certificate data, and input manifests. It imports the backend by its fully qualified package name and explicitly initializes every worker. It defaults to the `spawn` multiprocessing context. This fixes the collision between the two different files named `predicate.py`; merely adding an unqualified import of the missing function does not address that collision. The five original replay/source-audit functions are AST-identical to their counterparts in this copy. No interval check or acceptance criterion was weakened. Running with `-O` is rejected because these checks use assertions.

`SideChartCover/test_regular.jl` is an additive copy with `global accepted` in the top-level loop. Its test body exactly matches the archived `test_regular_with_global_fix.jl`. The only other executable addition locates the original provider using `NOFOURMUBS_ROOT`. The corresponding `.diff` files are for inspection; **do not apply them over the pinned originals**.

`review_checks.py` checks the FastTM source-identity reconstruction, exact tail controls and JPT constants, preservation of the Python verification functions, two invalid-certificate controls, and the Julia test-body identity. It does not execute Julia.

## Run the patched Python verifier

Set the paths to the existing repository and this new folder. They need not be nested:

```sh
export NOFOURMUBS_ROOT=/absolute/path/to/NoFourMUBS
export REVIEW_PATCH=/absolute/path/to/ReviewPatch_2026-10-01
export PYTHONDONTWRITEBYTECODE=1

python -B "$REVIEW_PATCH/SideChartCover/verify.py" \
  --project-root "$NOFOURMUBS_ROOT" --all --workers 4 --start-method spawn

python -B "$REVIEW_PATCH/review_checks.py" \
  --project-root "$NOFOURMUBS_ROOT"
```

Dependencies used for the successful fresh run: Python 3.13.5, mpmath 1.3.0, NumPy 2.3.5. SymPy 1.14.0 was used by the signed-corner verifier. See `logs/environment.json`.

**Fresh full patched result: PASS, exit code 0.** All 1,000 source records were audited. All **617** stored four-orbit H-enclosure certificates were revalidated; the other **383** are inconclusive. Runtime reported by the verifier: **57.330 seconds**, four spawned workers. The supervisor measured 58.788 seconds including process startup. The negative zero-preconditioner control was retained. Additional duplicate-orbit and zero-completion-error controls also reject.

This is a construction-certificate replay, **not** 617 quartet exclusions. The result explicitly reports `production_cover_tests_run: 0`.

`logs/sidechart_original_spawn_failure.log` reproduces the original `NameError` under an explicitly selected spawn context; its sibling status JSON includes the exact command and exit code. `logs/sidechart_patched_spawn_full.log` and its status JSON record the successful patched run.

## Other fresh checks

```sh
python -B "$NOFOURMUBS_ROOT/ProvenResults/SymmetricSignedCornerPrune/verify.py" \
  --project-root "$NOFOURMUBS_ROOT" --all --workers 4

python -B "$NOFOURMUBS_ROOT/ProvenResults/FastTMInvariant/verify.py"

python -B "$NOFOURMUBS_ROOT/ProvenResults/EffectiveConfinement/verify.py"
```

The signed-corner full replay passed, reproducing **511/1,000** strict-D0 exclusions. The FastTM exact-rational invariant verifier passed. The EffectiveConfinement finite-algebra replay passed.

**Do not misread the last result as a successful provenance audit.** The separate run with `--repository "$NOFOURMUBS_ROOT"` fails: 4 of 16 pinned files differ from this night snapshot. All four are marked `context` in the existing manifest; the other 12 match. `logs/effective_confinement_all_source_pins.json` records every expected and actual hash. The original manifest was not modified, and its failure was not suppressed.

## Julia commands — not freshly executed here

There is no Julia executable in this review environment. The unmodified `guarded_replay.py` was invoked and stopped with `Julia required; set JULIA_BIN`, exit code 1. Attempts to obtain the runtime failed; see the logs. **Neither the patched Julia test nor the guarded Julia replay has a fresh PASS from this review.** Historical Julia receipts in the input archive are not represented as fresh executions.

On an environment with Julia 1.12 and the pinned project dependencies installed:

```sh
export JULIA_BIN=/absolute/path/to/julia-1.12/bin/julia

"$JULIA_BIN" --startup-file=no \
  --project="$NOFOURMUBS_ROOT/NumericalCampaign/Certification/jlenv_cluster" \
  "$REVIEW_PATCH/SideChartCover/test_regular.jl"

python -B "$NOFOURMUBS_ROOT/ProvenResults/FastTMInvariant/guarded_replay.py" \
  --output-dir "$REVIEW_PATCH/julia_guarded_replay"
```

The second command uses `JULIA_BIN` and `jlenv_cluster` internally. The output directory is new; do not point it at an existing receipt directory.

## Findings intentionally not patched

The review identifies an exception-return contract gap in `certify_cell_sidechart` and stale EffectiveConfinement context pins. Neither the original provider nor any original manifest was altered. The report gives suggested resolutions. No module was registered in the campaign, no production acceptance was added, and no campaign was launched.

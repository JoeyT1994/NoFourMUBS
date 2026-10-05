# Patch2442Region_v3 on rusty (2–3 October 2026)

Run from the repository snapshot `nofourmubs_shoulder_v2_2026-10-02`, with Python 3.11.11, mpmath 1.3.0 and
gcc 13.3.0. The release files match `MANIFEST.sha256`, and all 11 pinned upstream files match `PINNED_UPSTREAM.json`.

## Fresh replays: PASS
Each accepted partition is rebuilt from the exact input and its accepting inequalities are recomputed.

| Receipt | Accepted inputs | Partition leaves replayed | Status |
|---|---:|---:|---|
| `leaves_replay` (3 s profile) | 2,903 of 4,174 | 26,770 | PASS_ACCEPTED_SUBSET |
| `leaves_fast_replay` (0.3 s profile) | 1,404 of 4,174 | 3,144 | PASS_ACCEPTED_SUBSET |
| `parents_replay` | 46 of 497 | 1,368 | PASS_ACCEPTED_SUBSET |

## Controls: PASS (5 October, `controls_gcc13.log`)
The first attempt (`controls.log`) failed to build: `controls.py` calls `c++`, which on rusty is the system compiler.
Rerun with gcc 13.3.0 first on `PATH`, all controls PASS:
- 43,750 tensor Bernstein weights;
- 5 polynomial coefficient controls;
- 3,125 exact remainder checks;
- 33 independent mean coefficients;
- the physical Fourier-family census.

All six strict-D0 physical controls, and the R = 0 control, are rejected (reason `cpu_budget`).

## Calibration (`calibration/`)
The input is the post-E rehearsal on the pilot data: 1,069 open (2,4,4,2) rows, each split into 16 exact children
(17,104 boxes).

| Pass | Boxes | Accepted | CPU-s per box |
|---|---:|---:|---:|
| Fast, 0.3 s | 17,104 | 1,453 | 0.28 |
| 3 s, on the remainder | 15,651 | 5,762 | 2.41 |

In total 7,215 children were accepted. A row counts as closed only when all 16 of its children are accepted; 250 of
the 1,069 rows meet this. The cost is about 40 CPU-s per row. Every rejection was `cpu_budget`.

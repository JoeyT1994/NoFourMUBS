# Patch2442Region_v3 at its largest budget (4 October 2026)

`verify.py` was run with `--cpu-per-box 60 --max-depth 24 --max-nodes 65535` on the inputs it had left unresolved
at 3 s per box. The run used one rusty node (120 workers), with Python 3.11.11 and gcc 13.3.0.

| Input | Boxes | Accepted | CPU-h |
|---|---:|---:|---:|
| Leaves unresolved at 3 s | 1,271 | 618 | 15.5 |
| Parents unresolved at 3 s | 451 | 125 | 6.4 |

**Running totals.** Leaves: 3,521 of 4,174 accepted (2,903 at 3 s, plus 618 here). Parents accepted directly:
171 of 497. Every remaining failure is `cpu_budget`.

The collaborator has since reported whole-box certificates, with a fresh replay, for all 1,271 of these leaves.
Their packet is to be received and replayed; see `STATUS_2026-10-04.md`.

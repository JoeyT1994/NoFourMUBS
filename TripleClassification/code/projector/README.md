# Vendored: the TC_joint_kw response (30 October 2026)

From `handoffs/TC_joint_kw_response_20261030/` (REPORT.md, PROJECTOR_REPORT.md). Only import paths were changed, and
`moving_secant_certificate.py`'s `propose` and `check` were split into `propose_columns` and `check_columns` (same
arithmetic, taking the H model and the six phase balls directly). The interval helpers come from the pinned checker
tree (`TC_ROOT`): its `anchored_column_certificate.py` differs from the response's copy only in how it finds the root.
The six 825 secant receipts replay with identical margins through this copy.

| File | SHA-256 of the response's original |
|---|---|
| projector_joint_certificate.py | b23a5a981895cea142ac95dba96044f33c70ae8a33804772e2f6035f74c8d572 |
| projector_union_hook.py | 0e3755490c809373e51f7cde81dbc1bc5306a6459bc2df16f9ad62bff063c9cf |
| projector_joint_probe.py | bdc1bb8b49643622c199313a3da698be302f3bcbdd2b4e23ce355f7aefb1e161 |
| row_separator_probe.py | 512536842fd4c022cc223848d71e89834b30e4cdbc7227084983699ac972e03d |
| tube_graph_probe.py | b8165a647ecae4d371df9ce0d3000ff9cbd122633381ec765e4c0dc7aa0f4547 |
| moving_secant_certificate.py | c464bb86e80f5377f7f816e9e977117bcbbf42f1b1c6cc6ecfcc5445891e708d |

Acceptance path (bound by every extended receipt): `projector_joint_certificate.py`, `projector_union_hook.py`,
`moving_secant_certificate.py`, and `../ext_cell_certificate.py`. The probes only propose numbers.

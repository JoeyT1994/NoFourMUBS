**Superseded:** the full 227-leaf certificate is now complete in
[the final receipt](../T2_production_seed_lift_2026-09-29/README.md).
The snapshot below is retained as historical partial evidence.

# Production-width seed search: partial evidence only

The fixed parent is centred at (4π/3,5π/3,0,π), with half-width π/512.
The adaptive search uses the new completion-error estimate and expanded
F6 radius 1/30. `search_snapshot.json` is explicitly incomplete. It is
NOT a parent-cell theorem. Every leaf must pass and the exact closed
partition must be audited before such a theorem can be claimed.

`production.py` is the proposal generator; `stream_audit.py` independently
replays accepted leaves at 160 bits using rational-multiple-of-π cells.
The reusable project verifier is
`ProvenResults/FourierNeighbourhood/SeedLifting/verify_production_partition.py`.
It rejects missing, duplicate and ancestor/descendant leaves before replay.
Its complete-partition run has not yet finished.

The 53-box benchmark tries the three nearest exact F6 seed references
from an exhaustive finite seed catalogue, with a depth-16 phase cover.
It certifies four domain exclusions (indices 6,20,23,37), already known
from previous pruning, and ZERO additional quartet exclusions. Reference
selection uses floats only as a heuristic; all actual acceptances are
outward complete-cover tests. This is not a complete Fourier-family search.

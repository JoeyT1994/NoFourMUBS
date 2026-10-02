# Complete zero-neighbourhood certificates: PASS

The proof is [ZERO_NEIGHBOURHOOD.md](../../ProvenResults/FourierNeighbourhood/SeedLifting/ZERO_NEIGHBOURHOOD.md).

- **740 boxes** cover all twelve trimmed parameter intervals, for both
  zero-corner prototypes. Every coordinate perturbation up to pi/8192
  is excluded from physical D0. All frames inherit the stated transformed
  region; pi/32768 is a uniform maximum-norm radius around their union.
- **13 additional cubes** extend a continuous genuine maximal Fourier
  curve to delta=pi/128, with transverse radius pi/4096 in its displayed
  frame. The entire tube has R<1/2 and is excluded as a quartet edge.
- **3 complete production-width cubes**, half-width pi/512, are excluded
  from D0 around non-F6 zero-corner seeds.

`precision96.jsonl` contains all discovery certificates. `precision96.json`
records their complete exact partition audit, extension cubes and controls.
This is the discovery pass, not a second independent 96-bit search.

`precision160.jsonl` independently replays every arc from exact rational
parameter endpoints; `precision160.json` records all extension cubes,
controls, full coverage and unchanged proof-source hashes. Partial trailing
JSONL records are ignored until complete, and the final key set is compared
with the entire finished partition. No completion-race recovery was needed.

Both runs reject strict-R-only domain discards. They audit repeated labels,
side-cover forest counts, missing/duplicate leaves, 72 frames, periodic
shifts, malformed inputs, outward radian conversion and resource failures.
The exact CornerBounds curve gives nonvacuity beyond the old cube; the
whole Fourier atlas and its zero-factor identities are replayed exactly.

`production_benchmark.json` tests fast containment on the 53 retained
binary64 work cells, with the original half-width plus a 2^-40 guard.
**No cell is newly accepted by this containment test.** No campaign-wide
speedup or production-driver change is claimed.

`research/` preserves proposals and failed resource-limited searches,
clearly separated from the accepted complete partition. The narrower
pi/48 trim search was incomplete; the proved trim is pi/24. Remaining
near-F6 shoulders and uniform whole-family seed lifting remain open.

The registered replay is `fourier_zero_neighbourhood`. These are complete
standalone receipts, not a combined all-66-check root run.

Replay:

    python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify_zero_neighbourhood.py

The companion exact Fourier maximum formula has its own receipt in
`../T2_fourier_max_R_2026-09-29/`.

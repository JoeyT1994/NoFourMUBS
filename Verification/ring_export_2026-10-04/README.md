# Full-run (2,4,4,2) ring: exact boxes for whole-box certification

- **12,291,152** level-13 boxes in 50 shards `full_ring_remaining_NNNN.jsonl.gz`.
  - 6,217,640 lie around the (2,4,4,2) seed and 6,073,512 around its conjugate (4,2,2,4). Conjugation maps θ to −θ.
- **Source:** the frozen stage-D outputs of `nofourmubs_branch95_full_2026-10-01`. The run of record is
  `nofourmubs_rescaled_2026-09-30`, approved code `577018eb…`.
- **Selection rule:** every box left open after stage D whose own nearest seed has class (2,4,4,2), at sup
  circular distance ≤ 0.07 rad. The pilot ring lay at 0.041–0.047 rad. The list is **complete for this rule**.
- **The list is a superset.** It was taken *before* our PSD stage, which removed 68% of the ring on the pilot.
  Running on all of it is correct, just more work than strictly necessary.
- **Schema** (as requested):
  - `id`: unique integers 0..N−1;
  - `centers`: exact rational strings of the binary64 centres, all in [−π, π];
  - `radii`: outward rational bounds of π/2^13 + 2^-40, less than 2^-80 above the exact value;
  - also `level`, `code`, `seed`, `seed_distance_rad` and `source` (stage-D file, line, leaf, child path).
- **Pilot reuse:** all 2,354 pilot ring boxes occur here exactly, carrying a `pilot_id` (their index in the pilot
  inventory). Every other box is new.
- **Work elsewhere:** nothing in this list is being processed by anyone else. Boxes of the same class farther
  than 0.07 rad exist and are handled by our general pipeline.
- `FULL_RING_MANIFEST.json` gives the conventions, counts and the SHA-256 of every shard.
- The coverage ledger tying this list back to the full search domain will follow once every piece is closed.
- v3's accepting forests and replay receipts are in the repository under `ProvenResults/Patch2442Region_v3/`.

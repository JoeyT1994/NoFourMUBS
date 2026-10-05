# Second export: the (2,4,4,2) class beyond the ring, and class (0,0,2,4)

**805,602 level-13 boxes** in 4 shards, `remaining_NNNN.jsonl.gz`:
- **800,806** of class (2,4,4,2), with seed distance above 0.07 rad. This is the same seed class as the ring, just
  outside it.
- **4,796** of class (0,0,2,4), a seed class that did not occur in the pilot.

**Same schema and conventions as the ring export** (`ring-2026-10-04`):
- `id`: unique integers;
- `centers`: exact rational strings of the binary64 centres, in [-π, π];
- `radii`: outward rational bounds of π/2^13 + 2^-40;
- also `level`, `code`, `class`, `seed`, `seed_distance_rad`, and `inventory_row` (our post-E inventory index).

**What was removed.** These are the boxes still open after stage E (our PSD prune) and after everything else we
have run on them:
- frontier pass 1 (and pass 2 where it has finished);
- Patch2442Region_v3 (fast and 3 s profiles);
- the residual-lift side cover.

**Superset.** The 10 frontier shards that had not finished when this was exported are counted as fully open
(listed in `MANIFEST.json`).

**We keep working on these boxes overnight,** with v3 on the (2,4,4,2) class. We will send a list of the ids we
close, so you can skip them. Anything you certify, we will count by exact geometry.

`MANIFEST.json` gives the selection rule, counts and SHA-256 of every shard.

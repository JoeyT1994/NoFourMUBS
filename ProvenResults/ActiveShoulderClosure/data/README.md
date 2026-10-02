# Data roles

- `region.json`, `index.json`, and `certificates/shard_*.jsonl.gz` define
  the exact region and its complete, partly open partition.
- `box_certificates.jsonl.gz` contains independently replayed guarded
  boxes inside S. They are supplemental certified subsets, not closure
  of the open partition leaves.
- `extra_tubes.json` is the exact five-cell new radius-1/36 manifest.
  Every clean replay repeats its complete integer covers and graphs.
- `shoulder_boxes_pilot_full.txt.gz` is a byte-for-byte copy of the
  supplied pilot list. The public all-input results are in the receipt
  directory's `pilot.jsonl.gz` and `uncovered.jsonl.gz`.
- `pilot_benchmark.jsonl.gz` and `point_benchmark.jsonl.gz` are the final
  134-record diagnostic selection, respectively at full guarded width
  and width zero. `benchmark_summary.json` distinguishes these from
  earlier experiments. Center successes are not whole-box certificates.
- `region_final_benchmark.jsonl.gz` records the final bounded regional
  search. The earlier `region_depth_benchmark.jsonl.gz` reused parent
  proposals; `region_breadth_benchmark.jsonl.gz` used fresh proposals but
  preceded the new tubes. Discovery is untrusted; every selected accepting
  leaf is recomputed by the current kernel in the clean replay.
- Files with `initial` or `before_new_tubes` in their names document
  superseded reference searches. Their distance bounds concern only
  those specific reference/gauge choices, not the distance to the whole
  Fourier family. The final `point_obstructions.json` is empty after the
  five new regional tubes were proved.
- `extra_tubes_discovery.json` retains both five successful improvements
  and the inconclusive (10,2) trial. Only successful cells enter the new
  theorem. Failed searches are not accepted by count or by proximity.

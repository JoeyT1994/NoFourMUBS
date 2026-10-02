# Production representative (1,5,5,1): rusty runs, 2 October 2026

Platform: Rocky 9 (rusty), Julia 1.12.7 production profile, Python 3.11.11, python-flint 0.9.0. Run from the
sealed `ActiveShoulderClosure_v2`. Pins and the environment check passed.

- `prod7_continued.jsonl.gz`: `driver.py --region data/production_region.json --root-ids 7
  --resume data/production_continuation.jsonl.gz --minimax-gauge --cpu-per-root 14400 --max-nodes 1048575
  --max-depth 80 --max-tau-depth 16`.
  - Result: INCOMPLETE, 5,500 new nodes in 14,400 CPU-s (0.38 nodes/CPU-s), 11,805 inherited pairing skips.
- `prod7_rootfree.jsonl.gz`: `side_cover_driver.py --shards 9 --shard 7 --cpu-per-root 14400 --min-depth 8
  --max-depth 14 --phase-depth 18`.
  - Result: INCOMPLETE, 22,720 nodes in 8,585 CPU-s (2.6 nodes/CPU-s).
- `prod7.out`: the job log.

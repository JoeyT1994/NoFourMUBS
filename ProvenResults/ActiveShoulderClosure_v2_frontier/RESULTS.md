# Results of the frontier extension

This is a throughput and exact-frontier update. It does not spend further
compute closing S's unused padding. The sealed v2 pilot and production
certificates are unchanged. In particular, the integrator reports that all
active-class pilot boxes already lie in that certified subset. Its remaining
2,354 F3 boxes and 36 (4,5,0,3) boxes belong to the integrator's separate stages.

## Measured local calibration

The 256-box list selects evenly spaced source indices within the 77,137
active-class pilot rows. Indices, exact guarded boxes, region and complete
output forest are included. This is a deterministic calibration sample, not
a random sample or a measurement of rusty performance.

| Run | Closed boxes | New nodes | Worker CPU seconds | Nodes/CPU-second |
|---|---:|---:|---:|---:|
| 32 boxes, cover width 0.0006 | 31/32 | 40 | 29.681 | 1.35 |
| Same 32 boxes, cover deferred to 0.0001 | 32/32 | 42 | 2.239 | 18.76 |
| 256 boxes, new default cover width | 256/256 | 304 | 12.535 | 24.25 |

All runs used four spawned Python workers with the requested Python package
versions. The 256-box run took 4.87 wall seconds after scheduling began.
It closed 182 leaves through FT and the remaining boxes through the shoulder
kernel. It made 12 unsuccessful PSD attempts, using 0.754 CPU seconds. No
cover was needed in that run. This is consistent with preferring refinement
over immediate expensive cover calls on these particular small input boxes.

Fresh replay of all 256 boxes passed at 160-bit shoulder precision and
192-bit FT applicability precision; a measured replay used 7.028 audit CPU
seconds and 5.86 wall seconds. `receipts/CALIBRATION_REPLAY.json` is the final
fresh receipt against the release pins. The compact arithmetic/scheduling
controls, exact streaming round trip, and partial-padding replay also pass.
`receipts/PADDING_REPLAY.json` certifies its one target with zero whole roots
closed and an unrelated root entirely omitted.

Worker and audit CPU counters do not include all interpreter startup,
compiler subprocess, orchestration, or I/O costs. They are not a replacement
for scheduler CPU accounting on rusty. Changes after the timing run are
recorded by the source hashes in its header; the final implementation freshly
replays its accepting forest rather than trusting the earlier search output.

The 256 queried boxes have multiplicity-weighted seed volume
8.8593053040e-11 rad^4 (sum of their individual closed-box volumes, not the
volume of their union). Search costs 0.048964 CPU seconds per supplied box,
or 1.4149e11 CPU seconds per rad^4 under that convention. Tau slabs contribute
no additional seed volume. For overlapping full-run boxes, retain both the
box count and this volume convention when comparing costs.

Multiplying this small sample's cost by 600 times 80,613 gives a **naive
projection of about 658 search CPU-hours plus 369 replay CPU-hours**, before
overheads. The approximate 1,000-hour target is therefore plausible but
**not demonstrated**, and this extrapolation is not a confidence bound.
The real frontier distribution, upstream FT removals, deduplicated boxes and
rusty hardware can change it substantially. Calibrate 4–8 bounded real-frontier
chunks before allocating the remaining budget. The supplied driver enforces
inconclusive outcomes at budget stops; it does not promise full-run closure.

## PSD and cover diagnosis

PSD now stops after its first failure on a branch by default, and failed PSD
CPU has a 10% per-root allocation gate. These are scheduling gates only.
Controls verify failure propagation, CPU gating independently of propagation,
and refusal to turn skipped work into acceptance. A configurable seed-depth
backoff is available if later measurements justify retries.

Using Julia 1.12.7 and the pinned production profile, the retained F3 full-box
probe raises:

```
sqrt: model range reaches 0 (H/c0 = 2.5117727202214613)
```

The trace enters `FastTM.sqrt`, then `hplus_tm`, then `hcell`. Its refined
sub-box passes this construction and reaches the deliberately small
1,024-node cover budget instead. The 32-box active-class calibration also
captured the same exception type and mechanism at H/c0 values 1.2712945 and
1.4410029. Thus this failure is not confined to the F3 patch.

These are concrete local reproductions of an enclosure reaching zero. They
do not establish a physical root collision or a tube-radius obstruction.
They also cannot identify every rusty failure: the old cluster records lack
messages and the exact failing leaf inputs have not been supplied here.
The new records preserve complete messages, stack traces, exact rational
boxes and their outward binary64 enclosures. After eight exceptions, further
cover calls in that root are disabled and remain inconclusive. The Julia
production kernel and its guards have not been changed.

A deterministic production positive control and its fresh cover replay also
pass with the new seven-field protocol; see
`receipts/cover_positive_replay.json`. Both the success and failure protocol
paths were exercised, rather than merely mocking the new message fields.

## Scope, dependencies and compute

The extension uses exact box-level roots by default and supports a finer
rational grid. Real-frontier filtering skips unrelated roots before replay
and leaves disjoint descendants explicitly open. Streaming sharding retains
every source row, its complete radii and its order, with pinned shard bytes.
The 256-box streaming control produces counts 100, 100 and 56 and reconstructs
the exact normalized source list without a dropped boundary or guard.

No new production-cube closure is claimed: sealed v2 remains at 88/90, with
the two (1,5,5,1)/(5,1,1,5) cubes open. Existing production-region files keep
their `production_cubes` scope. New direct cube lists must use the builder's
`--production-cubes` flag; no uncertified frame reduction is introduced.

The FT mathematical files and theorem replay receipts match the supplied
manifest. Its unused `receipts/MEASUREMENT_REPLAY.json` differs from that
manifest: listed SHA starts `25d65e15`, current SHA starts `6112dc62`.
This extension neither edits that other-agent file nor uses it as a dependency
or proof. The file is expressly omitted from this extension's pins. All
adopted mathematical dependencies are pinned, including the FT manifest
itself and the complete sealed-v2 input inventory.

The compiler requirement is documented and checked before clean replay:
on rusty load gcc/13.3.0, including its UBSan runtime, with its g++ on PATH.
The cover requires production Julia 1.12.7, not the previous local 1.12.1.

This update uses bounded local controls and small calibrations, well under
one additional CPU-hour. It does not repeat the 39-CPU-hour cluster run or
the old full-directory replay. The prior local accounting remains below the
approximately 100-CPU-hour limit. Larger continuation is left to the sharded
driver and the integrator's cluster after calibration.

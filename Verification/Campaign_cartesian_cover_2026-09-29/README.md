# Cover acceleration: paired campaign-cell benchmark

**Completed: all 12 retained difficult cells certify in both modes.**
The accelerated cover uses **131.96 rather than 647.15 local CPU-seconds
(4.90×)** and **3,860,037 rather than 14,710,108 search nodes (3.81×)**.
Every individual retained-cell comparison uses less CPU time and fewer nodes.
The [per-cell table](RESULTS.md) is generated from the [raw summary](summary.json).

Both larger reference cubes also certify without external seed subdivision:

| Reference | Nominal radius | Original result | Accelerated result |
|---|---:|---|---|
| g3, centre `(-1.003,0.511,-1.487,2.875)` | 0.005 | 300-second timeout, 3,870,889 nodes | Certified: 792,864 nodes, 26.56 CPU-s, 94 labels |
| X₆, exact centre from `test_cover.jl` | Float64(π/512) | 4,000,001-node budget exit | Certified: 1,122,151 nodes, 31.95 CPU-s, 85 labels |

All radii are enlarged by `2^-40`, including the two references. Baseline
reference runs did not finish successfully, so their timing ratios are not
ratios of two completed certificates. The g3 result additionally passes
[replay with the original interval verifier and a separate 256-bit graph](g3_replay.log).

## What changed

- [Cartesian exclusion](../../ProvenResults/CommonRays/ClusterCover/CARTESIAN_EXCLUSION.md):
  a cheaper outward-interval rectangle, with the original verifier as fallback.
- [Sharp capacity](../../ProvenResults/CommonRays/ClusterCover/SHARP_CAPACITY.md):
  exact sixteen-vertex criterion for radii below π/4, with a general real-part
  sufficient bound. The cubic threshold is `½ arccos(1/4)`.
- [Label refinement](../../ProvenResults/CommonRays/ClusterCover/LABEL_REFINEMENT.md):
  split a connected component into bounded labels without refining its phase
  boxes, and intersect direct-arc pair bounds with the previous pair bounds.

The measured `partition` mode uses Cartesian exclusion, the tighter pair
bounds, and median-partitioned labels with half-width at most 0.3 (256-label
limit). Its successful labels therefore satisfy even the old capacity bound;
the new 0.659 threshold is not needed to justify those runs. The `tight` pilot
uses the new anisotropic capacity test without partitioning instead.

The pre-existing cap increase to 0.59, refinement widths through 1/256, and
packed-address connected-component code belong to the baseline. Their savings
are not credited to this change.

## Use

From the repository root, with the pinned Julia environment:

```julia
include("NumericalCampaign/Certification/cover_accelerated.jl")
r = certify_cell_cover_accelerated(theta, rho; partition=true,
    budget=4_000_000, deadline=time()+300)
```

Pass the same enlarged seed radius used by the campaign. `r.ok` means the
whole seed cell is excluded, with the same accepted reconstruction and Taylor
model assumptions as the original cover method. A resource cap or failed
graph test is inconclusive. No cluster job has been launched.

The campaign driver and bundle builder now support `CERT_COVER_ACCELERATED=1`
(default off). This selects the measured partitioned method, records
`method="cover_accelerated"` on certified leaves, and records the flag in batch
headers. The audit replay recognises that method. Existing ray-first scheduling
is unchanged. To benchmark the cover stage directly, additionally set
`CERT_FASTMAX=0 CERT_CHILD_FASTMAX=0 CERT_COVER_MINDEPTH=0`; these are existing
driver controls. Compare a representative sample before changing campaign
policy. The benchmark below measures the cover stage, not preceding ray work.

## Reproduce

`source/Certification` freezes the exact benchmark sources and pinned package
environment. `source_hashes.json` hashes every frozen file. The two fixtures
have six cells each. Their listed Float64 radius is enlarged by `2^-40`, as
in the existing retained-cell experiment. `reference_cells.txt` contains g3
and the campaign-size X₆ cell; those radii are also enlarged by `2^-40`.

```sh
export MODES=original,partition
julia --startup-file=no --compiled-modules=existing \
  --project=Verification/Campaign_cartesian_cover_2026-09-29/source/Certification/jlenv_cluster \
  Verification/Campaign_cartesian_cover_2026-09-29/source/Certification/review/bench_cartesian.jl \
  Verification/Campaign_cartesian_cover_2026-09-29/source/Certification/data/cover_failed_depth1_2026-09-29.txt
```

Repeat for `cover_failed_depth2_2026-09-29.txt` and `reference_cells.txt`.
Raw logs are `depth1.log`, `depth2.log`, and `references.log`; regenerate the
summary with `python3 Verification/Campaign_cartesian_cover_2026-09-29/summarize.py --complete`.
Each process uses one Julia thread and one BLAS thread, a 4-million-node limit and
a 300-second wall deadline. Compilation is warmed before timing. CPU seconds
come from the POSIX process clock, and wall seconds are retained separately.
Timings include the Taylor model, cover, label construction and graph test.
The three fixture batches ran concurrently for part of the experiment;
within each batch, original and partitioned methods run sequentially on each
cell. Use process CPU totals and exact node counts for the comparison; wall
times reflect local scheduling and other load as well. The `original` mode
explicitly selects `verified_excluded`, not the separate `FASTVERIFY` draft.

## Verification and limits

[The isolated correctness replay](controls_release/summary.json) passes:
256-bit evaluations of all 32 capacity vertices, sampled interior points,
actual Fourier common rays that must not be excluded, direct natural-interval
checks, an actual 6+6 configuration that the graph must retain, and complete
membership/containment and resource-failure controls for label partitioning.
The universal claims come from the written proofs, not sampling.

For g3, [replay_accelerated.jl](../../NumericalCampaign/Certification/review/replay_accelerated.jl)
reruns the entire phase cover with the **original** `verified_excluded`,
obtains the same 792,864 nodes and 94 labels, and separately rebuilds the
overlap graph at 256 bits with an independent BitSet clique enumeration.
It uses the original quadratic capacity bound and retains the same 959 O
edges, 3,058 U edges and 56 candidate first bases; no compatible second
basis exists. [The final labels](g3_labels.tsv) are retained. This replay
does not depend on the new Cartesian verifier or the sharp capacity theorem.

The driver [success test](driver_success.log) certifies an actual retained
cell and records the new method. [Budget controls](driver_budgets.log) return
inconclusive in both old and new modes. The local package passes
[manifest verification](bundle_check.json) and [loads in both modes](bundle_load.log).

Run the registered check with:

```sh
python3 verify.py --only cluster_cover_acceleration --jobs 1 --output-dir Verification/cover_controls_replay
```

The early `controls` receipt failed because a test supplied Julia's symbolic
π to a Float64-only phase cache. The API now explicitly requires Float64
phase vectors and the wide-box control uses an outward Float64 bound for π.
`controls_v2`, `controls_final` and `controls_release` pass. The pilot logs predate the frozen
benchmark and are development evidence, not inputs to its aggregate totals.

These are retained difficult cells, including two used for tuning. This is
not an unbiased campaign sample or a campaign-wide CPU-cost projection.

The additional integration sources are frozen separately in
`integration_source/`, with `integration_source_hashes.json`. This preserves
the tested driver and local bundle without changing the original benchmark
snapshot. The unrelated `FASTVERIFY` draft differs between snapshots; neither
the benchmark nor the new accelerated path calls that draft verifier.

To repeat the g3 replay using only the frozen benchmark code:

```sh
julia --startup-file=no --compiled-modules=existing \
  --project=Verification/Campaign_cartesian_cover_2026-09-29/source/Certification/jlenv_cluster \
  Verification/Campaign_cartesian_cover_2026-09-29/source/Certification/review/replay_accelerated.jl \
  Verification/Campaign_cartesian_cover_2026-09-29/reference_cells.txt 1 /tmp/g3_labels_replay.tsv
```

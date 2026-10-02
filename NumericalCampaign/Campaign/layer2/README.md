# Separate branch-layer campaign

## Guarded run-of-record transition

Historical Julia receipts without the reviewed FastTM guard are rejected
by `audit.py --replay`. Use `guarded_batch.py OLD_LEDGER NEW_DIRECTORY`
(with JULIA pointing at the direct Julia executable if needed). It checks
source hashes before and after replay and turns failed acceptances into
open leaves in a new ledger. `recover_guard_leaves.py` can try Arb-only
exclusion on those failures without mutating the original ledger.

`inventory.py GUARDED_PACKAGE NEW_INVENTORY 512 --guarded` verifies the
source manifest and complete layer outcomes; the survivor count is no
longer hard-coded. `rekey_guarded.py OLD_LEDGER NEW_INVENTORY NEW_LEDGER`
transfers only exact JOB/LEVEL/coordinate matches, with optional TSV
ID-map cross-checking. The auditor emits final closure PASS only on the
guarded inventory with every acceptance replayed. The old 623,187-cell
inventory can only yield a historical-coordinate partial audit.

See [current receipts](../../../Verification/BranchLayer_guarded_20260930a/README.md)
for the guard transition, analytic A/B/C pilots, complete open lists and
active branch-only second-pass job. Experimental source and results from
previous stages remain retained; their old PASS labels are not a substitute
for guarded replay and inventory migration.

This directory owns only the 623,187 branch-layer survivors. Production
certification sources, `Campaign/driver.jl`, `cluster/run_task.sh`, and
`results/certify*` are unchanged. Status and measurements are in
[`WhatWeWanttoProve/BRANCH_LAYER.md`](../../../WhatWeWanttoProve/BRANCH_LAYER.md).

## Frozen inputs

`inventory.py PACKAGE NEW_DIRECTORY 512` checks every completed layer
outcome for unique IDs and full coverage, checks survivor coordinates
against the 121-byte records in `layer.txt`, and writes the 623,187
survivor records, a uniform sample without replacement, and SHA-256
manifests. The sample seed is 2026092902. `.part` files are not accepted
as completed outcomes. Its PASS is an inventory check, not layer closure.

## Pilot and replay

`pilot.py SAMPLE FIRST LAST NEW_OUTPUT_DIRECTORY` runs the proved
CampaignSecondPass at depth four, independently replays each success at
160 bits, and passes the other cells to `cover_worker.jl`. That worker
uses the existing interval domain tests, subdivides singular children,
and calls `certify_cell_cover_accelerated(...; partition=true)` wherever
the constructor works. Every open terminal leaf is tested against
`near_f6.certify_box` and `zero_neighbourhood.certify_box` at 160 bits.

All float classifications use 81 points and are evidence only. Caps,
exceptions, failed containment and singular construction leave cells open.
The defaults are two Cartesian subdivisions (levels 10–11), 180 seconds
per original cell, and 45 seconds per cover attempt. The local 32-cell
diagnostic used 45 and 15 seconds instead. Settings are saved in headers.

`sideleaf.py SHARD` applies the proved side test again to open leaves,
without additional seed subdivision, with a 120 CPU-second limit per
original cell. Every successful leaf is replayed at 160 bits. A partial
sideleaf file cannot authorize exclusions without the audit rerunning
its accepted tests. Missing leaf results remain open.

`hybrid.py` and `target_worker.jl` are an experimental side-first ordering.
Their distinct receipts must not be merged with the first policy's timing
sample. `f6_probe.py` scans for survivors containing exact F6 references
and tests the retained T2 rules; its output explicitly does not claim a
complete parent certificate.

`replay_shard.py SHARD` reruns every accepted Julia leaf using `replay.jl`.
It uses the same outward-interval tests and a 180-second cover-attempt
limit. A capped replay is a replay failure, never a pass.

Every runner refuses existing result filenames/directories. Failed runs
are retained; select a new output directory for retries. `done.json`
marks completion of a pilot shard. The Julia output alone is insufficient.

## Coverage audit

```
python3 -B NumericalCampaign/Campaign/layer2/audit.py \
  INVENTORY_DIRECTORY SHARD_PARENT NEW_AUDIT_DIRECTORY --replay
```

This checks inventory hashes, original IDs/coordinates, input row ranges,
complete trees, the exact rational geometry of every enlarged split,
certificate scopes, all accepted side/T2 tests, and all Julia replay
records. It rejects duplicates and extra records. Missing cells are
explicitly open. `open_cells.jsonl.gz` retains their original IDs, jobs,
levels, centres, failure reasons and required next method/theorem.

The audit separates `structural_coverage=PASS` from `closure=PASS`.
Closure requires **all 623,187 cells** and acceptance replay; otherwise
it reports OPEN and exits 2. Without `--replay`, closed counts are
provisional. The geometric argument and registered adversarial tests
are in [`ProvenResults/CampaignLayerCoverage`](../../../ProvenResults/CampaignLayerCoverage/PROOF.md).

The requested root is enlarged by 2^-40. Julia leaf radii retain that
guard and add depth-dependent rounding slack. The audit tests the actual
binary64 boxes as exact rationals, including the parent's outer faces;
it does not rely on a nominal dyadic tiling argument alone.

`consolidate.py` selects one complete witness tree per original ID from
overlapping trials and root second-pass receipts. It retains source
hashes and never combines incompatible subdivisions. Audit the selected
receipts again with `--replay`. `--f6-probe F6_probe.json` annotates the
open list with exact F6 references, without supplying acceptance.

## Measurements and budget

`measure.py SHARD_PARENT NEW_REPORT.json` reports process CPU, cell costs
and diagnostic classes. Its class-level Julia costs are wall-time
proxies; total Julia CPU includes process startup. Supplemental strata
must not be used as an unweighted campaign-wide sample.

The initial remote pilot is job 7136281, stage
`layer2_pilot_20260929a`, isolated code `layer2_code_20260929a`, results
`results/layer2/pilot_20260929a_*`. It requests one rome node for at most
one hour (128 allocated CPU-hours). Do not reuse these filenames.
The user authorized this pilot node. Broader node use must be coordinated,
and cumulative spending above approximately 5,000 CPU-hours requires
the user's approval.

## Local continuation: exact inner regions and cheap ordering

`f6_collars.py F6_PROBE NEW_CERTIFICATES --survivors SURVIVORS` generates
one rigorously accepted T2 inner box per exact-F6 parent. It partitions
the already enlarged parent into that box and at most eight rational
slabs. The T2 engines include the separately proved analytic radius
extension. Run `f6_collars.py CERTIFICATES NEW_REPLAY_RECEIPT --replay
--survivors SURVIVORS` for 256-bit acceptance replay and exact geometry
checks. This is a partial-cover receipt: open slabs do not authorize
whole-parent closure. `collar_prune.py` attempts bounded acceptance on
those slabs and independently replays any success.

`apply_ordering.py OLD_LEDGER NEW_LEDGER` applies the direct outward
F-order filter, removes descendants of newly excluded nodes, and retains
source hashes. Follow it with the normal `audit.py --replay`. The method
proves `outside_F`; it does not claim physical-D0 exclusion.

`fast_prune_run.py` benchmarks the registered mixed F/side tree. Its local
trial was slower than the existing second pass and is experimental.
`consolidate.py` accepts both original-sample and full-survivor second-pass
inputs, binds coordinates against the full inventory, and selects one
complete witness per cell by unresolved volume. It cannot combine leaves
from incompatible subdivisions.

The measured fresh 1,024-cell sample, 54 exact-F6 partitions, alternative
positive-R runs, registered checks and latest complete open list are in
[the local continuation receipts](../../../Verification/BranchLayer_local_20260929b/README.md).

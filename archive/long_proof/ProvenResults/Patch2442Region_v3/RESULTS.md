# Round 3: practical partial coverage of the (2,4,4,2) ring

**2,903 of all 4,174 supplied leaves (69.55%) and 46 of all 497 supplied
parents (9.26%) are certified as whole closed boxes.** Every accepting
partition passed a fresh native rebuild and replay. The patch is not closed:
1,271 leaves and 451 parents remain unresolved under the larger profile.
Parent and leaf counts are different input censuses, not additive coverage.

Each accepted box has the statement
`no_physical_completion_in_strict_D0`: no physical completion with R>0 and
this leading corner maximal among all 400 positional corners. All four
side pairings are covered. No H+ quartet-edge claim or exclusion of arbitrary
physical matrices is asserted. The exact supplied rational guards are included.

## Full-list measurements

| Input/profile | Tested | Accepted | Unresolved | Total CPU-s | CPU-s/input | CPU-s/acceptance, including failed attempts | Largest box CPU-s |
|---|---:|---:|---:|---:|---:|---:|---:|
| Leaves, 0.3 s cap | 4,174 | 1,404 (33.64%) | 2,770 | 995.355 | 0.238465 | 0.708942 | 0.305705 |
| Leaves, 3 s cap | 4,174 | 2,903 (69.55%) | 1,271 | 5,736.101 | 1.374246 | 1.975922 | 3.001097 |
| Parents, 3 s cap | 497 | 46 (9.26%) | 451 | 1,453.102 | 2.923746 | 31.589169 | 3.006806 |

The final files are `leaves_fast_final.jsonl.gz`, `leaves_bounded.jsonl.gz`
and `parents_bounded.jsonl.gz` under results/. Each includes one result per
input in input order, accepting partition witnesses, and explicit failure
reasons. Corresponding `.ids.json` files list accepted and unresolved IDs.
All 1,404 fast acceptances are included in the larger profile's 2,903.
The fast and larger profiles are separate scans, not cumulative costs.

Every leaf rejection was `cpu_budget`. Parents had 445 `cpu_budget` and six
`depth_budget` results. Defaults other than time are Taylor degree 4, depth
16, maximum 255 visited nodes. Native CPU deadlines are checked during model
multiplication and Bernstein rows; the cap is soft by the cost of an atomic
operation and Python wrapper work. The observed maxima above quantify that
small overrun. No result is accepted after the search detects budget expiry.

Wall times were 280.335 s (four workers), 842.663 s (eight workers), and
465.982 s (four workers), respectively. CPU is summed worker process CPU,
not wall time. Compilation and launch are included in wall time but not
per-box CPU. Local runtime: Python 3.11.16, mpmath 1.3.0, Apple clang
21.0.0; fresh C++17 builds disable fast-math and contraction. Controls also
use sympy 1.13.1. This release does not require numpy, Julia, or UBSan.
Rusty has not yet been measured for this release.

## Clean replay

| Profile | Accepting inputs freshly replayed | Exact partition leaves | Replay CPU-s | Status |
|---|---:|---:|---:|---|
| Fast leaves | 1,404 | 3,144 | 74.123 | PASS_ACCEPTED_SUBSET |
| Larger leaves | 2,903 | 26,770 | 747.529 | PASS_ACCEPTED_SUBSET |
| Parents | 46 | 1,368 | 36.588 | PASS_ACCEPTED_SUBSET |

Replay rebuilds the native library, verifies the complete input/result census,
checks the exact closed partition, and reevaluates all accepting inequalities.
It does not accept the stored true flags or reuse their floating bounds.
The files and receipts are `leaves_fast_REPLAY`, `leaves_REPLAY` and
`parents_REPLAY`. A replay PASS refers only to the certified subset.

`CONTROLS.json` reports PASS for all 43,750 exact tensor Bernstein weights,
five polynomial coefficient controls, 3,125 exact remainder checks, 33
independent original mean-coefficient comparisons, and the exact physical
Fourier-family corner census. Six boxes containing known strict-D0 physical
points and one R=0-touching physical control all reject. These controls
supplement the proof; they are not its acceptance evidence.

The complete scans preserve the original scanner at `inputs/scan_verify.py`.
After those scans, release changes only set the default cap to 0.3 s, preload
the worker library outside the per-box timer, handle non-object JSON inputs
as inconclusive, and stream file hashes. The build now enforces dependency
pins. No accepting arithmetic or search decision changed. Source hashes in
receipts distinguish the scanner versions. The final wrapper has a two-box
accepting smoke test; the replay and controls use the released arithmetic.

## What blocks the remaining boxes

At every one of the 4,174 exact centres, the zero-width diagnostic mean test
succeeds. This is diagnostic only, and cannot accept any positive-width box.
`point_diagnostics.jsonl.gz` records that separate experiment.

Among 1,268 larger-profile unresolved leaves with a last-bound diagnostic,
all have a separated Delta enclosure in at least one orientation; none have
Delta crossing zero in both. In 1,248, some witness has C lower >0 but its
F lower bound is not positive. Twenty lack a positive C lower bound across
all witnesses. Three stopped leaves lack a last-bound record. R crosses
zero in both orientations in 157 of the recorded cases. These are enclosure
observations, not proofs of actual zeros, root collisions, or near-equality.

The predominant remaining obstacle is the enclosure of F=C^2-(2AB)^2 R
within the budget. No structural obstruction is established. This method
avoids side-root separation altogether. It uses the requested (3.2) route,
retaining four seed-coordinate dependencies through the final inequalities,
with algebraic cancellation, outward Taylor remainders and Bernstein bounds.
No nonapproach radius or matrix-to-seed radius conversion is used.

## Full-run cost and calibration recipe

Extrapolating the measured CPU per input, **without predicting coverage of an
unseen distribution**, gives:

| Profile | 100,000 input boxes | 1,000,000 input boxes |
|---|---:|---:|
| Fast leaf profile | 6.62 CPU-h | 66.24 CPU-h |
| Larger leaf profile | 38.17 CPU-h | 381.73 CPU-h |
| Coarse parent profile | 81.22 CPU-h | 812.15 CPU-h |

Use the cheap profile first. Apply the larger profile selectively to its
rejections if the measured extra exclusions justify the cost. Do not spend
the coarse-parent cost indiscriminately: its measured return is poor. Higher
budgets are not offered as a plan to guarantee closure. Other certified
terminals can consume the unresolved list without redoing accepted boxes.

On rusty, load Python 3.11 with mpmath 1.3.0 and gcc 13.3.0, check
MANIFEST.sha256, and run (from the project root):

```sh
python -B ProvenResults/Patch2442Region_v3/verify.py \
  --boxes /path/to/full-run.jsonl.gz --output /fresh/path/calibration-fast.jsonl.gz \
  --jobs 8 --limit 256 --cpu-per-box 0.3
python -B ProvenResults/Patch2442Region_v3/verify.py \
  --boxes /path/to/full-run.jsonl.gz --output /fresh/path/calibration-wide.jsonl.gz \
  --jobs 8 --limit 256 --cpu-per-box 3
```

Compare accepted fractions, summed CPU per input and per acceptance, and
maximum CPU. Recompute the projection using that machine's receipts. Then
omit `--limit`, retaining the selected budget. For a cluster allocation,
partition input records exactly once into independent box-list shards; for
example 64 shards with eight workers each if 512 cores are allocated. Each
shard uses a different output path and the same command. Preserve input IDs
and audit the union of shard IDs against the original input census. There
is no dependency or shared mutable search state between boxes.

The verifier keeps only a bounded window of tasks and streams input, output
and file hashing. Accepted proof forests make output larger than an ID list;
keep them for clean replay. Source and upstream SHA-256 checks run before
compilation. Install this directory into the existing project: the pinned
upstream proof ledger and outward arithmetic files must be present. This is
an additive module, not a standalone replacement for that ledger.

# ActiveShoulderClosure v2: actual-frontier extension

Install this directory alongside the sealed `ActiveShoulderClosure_v2` and
`FourierTransverseStability_v2` directories in the same NoFourMUBS checkout.
The ZIP is an additive extension, not a replacement for those dependencies.

## Environment

Python **3.11**, numpy **2.2.4**, sympy **1.13.1**, mpmath **1.3.0**, and
python-flint **0.9.0** are checked by the driver and verifier. Local tests use
Python 3.11.16 on macOS; rusty is the requested Rocky 9 production platform.

For the cover use Julia **1.12.7**, the project
`NumericalCampaign/Certification/jlenv_cluster`, and the unchanged bundle
hash `577018ebd9e3b0cee1134680a3d0302f3d972ff3211c3cf0cbacc5a6c09f961d`.
Package sources and manifests are checked through the sealed v2 inventory.
Do not substitute Julia 1.12.1 for a production run.

On rusty, **load gcc/13.3.0** before replay. The default compiler lacks the
UBSan runtime. The requirement is a C++17 compiler able to link and execute
`-fsanitize=undefined -fno-sanitize-recover=undefined`, not merely a compiler
that recognizes the flags. `compiler_check.py` fails early if it cannot.
The FT backend calls `g++` from PATH, so setting CXX alone is insufficient.

From the repository root:

```bash
module load gcc/13.3.0
export CXX=g++
export JULIA_BIN=/path/to/julia-1.12.7/bin/julia
export SHOULDER_JULIA_PROFILE=production
export OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 JULIA_NUM_THREADS=1
ASC=ProvenResults/ActiveShoulderClosure_v2_frontier
python "$ASC/compiler_check.py"
python "$ASC/test_controls.py" -v
```

Keep the site's existing JULIA_DEPOT_PATH containing the pinned project
packages. Never run these proof scripts with Python `-O`.

## Exact boxes and a bounded calibration

Input is JSONL, optionally gzip-compressed:

```json
{"centers":["1/3","-2/7","5/4","0"],"radii":["1/8192","1/8192","1/16384","1/8192"]}
```

A scalar `radius` can replace `radii`. Supply the complete guarded radii in
radians. With no `--grid`, every distinct input box is one root. `--grid 2048`
or another positive denominator is available when shared grid roots are
preferable. Production cube lists must use `--production-cubes` so covers
require both signs. No centre-only transport is used.

```bash
python "$ASC/sample_boxes.py" --boxes frontier.jsonl.gz --count 256 --output sample.jsonl
python "$ASC/build_region.py" --boxes sample.jsonl --output region.json
python "$ASC/driver.py" --region region.json --boxes sample.jsonl \
  --output calibration.jsonl.gz --jobs 4 \
  --cpu-per-root 10 --max-nodes 2047
python "$ASC/verify.py" --region region.json --boxes sample.jsonl \
  --forest calibration.jsonl.gz --output calibration_replay.json --jobs 4
```

The sampled list retains source indices and exact box geometry. Use a fixed
seed for A/B comparisons. A partial shard cannot certify the unsampled full
list. The default terminal order is FT, lift, gated PSD, gated
cover. Defaults are PSD backoff `-1` (no descendant retry after failure),
failed-PSD fraction `.10`, cover width `.0001`, cover backoff `4`, failed-cover
fraction `.25`, and cover-exception limit `8`.

For an A/B timing on the same selected roots, keep all other arguments fixed
and compare `--psd-backoff 0 --psd-failure-fraction 1` with the defaults. Use
`--no-transverse` only to measure the cost of the remaining kernel. Outputs
must have fresh names. Report closure fraction, worker CPU per input box,
nodes/CPU-second, PSD failures and CPU, cover exceptions and messages, and
fresh-replay CPU. Wall time is not CPU time. These soft CPU gates can overshoot
by one in-flight terminal or worker startup.

## Clean replay

The following replays all 256 sampled boxes, including new FT applicability
checks, without rerunning the already sealed full v2 certificate:

```bash
python "$ASC/verify.py" --region "$ASC/data/calibration_256_region.json" \
  --boxes "$ASC/data/calibration_256_boxes.jsonl" \
  --forest "$ASC/receipts/calibration_256.jsonl.gz" \
  --output fresh_256_replay.json --check-built-region --jobs 4
```

`verify.py` accepts repeated `--forest` arguments for disjoint shards of one
region. Duplicate authoritative roots are rejected. Use the inherited
`assemble.py` to choose monotone improvements when merging a baseline with
continuations. Missing roots are permitted as geometry but make intersecting
queries inconclusive. Exit 0 means all listed real target boxes passed exact
containment; exit 2 means some remain open. A malformed certificate fails.
Padding need not close. Fresh cover replay runs in parallel and deduplicates
theta-identical requests before the full tree audit.

```bash
python "$ASC/verify.py" --region "$ASC/data/padding_region.json" \
  --boxes "$ASC/data/padding_boxes.jsonl" \
  --forest "$ASC/receipts/padding_forest.jsonl.gz" \
  --output fresh_padding_replay.json --jobs 4
```

That control passes with zero whole roots closed and a second root absent:
the requested closed box lies strictly inside the freshly certified part.

## Full-run recipe

Do not resume the 82 padding roots simply to close all of S. Feed the actual
remaining frontier after upstream stages, and let FT reject or certify each
whole guarded box first. The integrator's F3 and (4,5,0,3) stages stay separate.

Avoid one enormous in-memory JSON region for tens of millions of boxes.
Normalize the source in one streaming pass into bounded files:

```bash
python "$ASC/shard_boxes.py" --boxes full_frontier.jsonl.gz \
  --output-dir frontier_shards --boxes-per-shard 50000
```

The manifest pins the original source and every normalized shard, with exact
contiguous source-index ranges. For each manifest entry, build an exact-box
region, then run its driver with `--boxes` set to that same shard. A 50,000-box
chunk bounds memory; the region is sent once per worker rather than once per
root. For an initial production pass, recommend **256 one-worker cluster
jobs**, `--cpu-per-root 10 --max-nodes 2047`, with a **10,800 CPU-second shard
allocation** (`--shard-cpu-budget 10800`) and an aggregate
search allocation of 768 CPU-hours across all chunks. This leaves
room under the 1,000-hour target for replay and difficult leftovers. It is a
budget envelope, not a guarantee of closure. Track the sum of all completed shard CPU and the remaining running
allocations; concurrency alone is not an aggregate CPU cap. If there are more
than 256 input chunks, schedule later chunks only from the unused aggregate
allocation. The sample-based combined search/replay projection is about
1,027 CPU-hours before overhead, so calibrate before assuming that envelope
will suffice.

For a moderate region shared by many jobs, `--shards 256 --shard INDEX` also
works. For very large lists, use bounded input chunks instead of making each
job load the whole list. Start with 4–8 representative chunks on rusty and
measure before allocating the full envelope. Repeat `verify.py` for every
chunk with its complete source list and assembled forest. Retain inconclusive
boxes for later passes; do not treat a budget exit as a closure.

An existing coarse region can instead be continued with `--resume OLD.gz`
and `--boxes REAL_FRONTIER.gz`. Roots with no targets are skipped before
resume replay, and disjoint descendant leaves become open padding. Every
inherited proof that is reused is still freshly audited.

## Diagnostics and scope

`cover_exception_samples` in each root record contains the exact rational
input, path, outward binary64 input, full Julia message and stack trace. The
message census remains in the concise progress log. See the retained local
production-profile diagnostic and calibration records for real examples.
An exception is always inconclusive. No numerical guard in the frozen Julia
kernel has been relaxed.

The two unclosed production cubes are unchanged by this delivery; all prior
90-cube results remain in sealed v2. The inherited `multiplier_terminal.py`
hook still has no installed certificate and cannot authorize acceptance.

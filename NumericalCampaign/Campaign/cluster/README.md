# No four MUBs in C⁶: cluster campaign (rusty)

This package certifies Q on the canonical domain D₀ ∩ F. Q is the statement
that no H₊(θ) extends {I, H} to four MUBs.

- **Theory:** the reduction, inputs and certificate are in
  `NumericalCampaign/` of the project: REDUCTION.md, INPUTS.md and
  Certification/README.md.
- **Status (30 September):** the run of record is in progress, in
  `~/Documents/QuantumPhysics/ClusterScripts/nofourmubs_rescaled_2026-09-30`. It uses guarded
  FastTM with rescaled `inv`/`sqrt`; `results/FREEZE.json` pins the manifest and the FastTM hash.
  - The expansion runs as three 10-node jobs.
  - `post_expand_guarded.sh` then runs as a dependent Slurm job. It merges, audits, runs
    `compare_runs.py` against the previous directory, then submits the layer prune (4 nodes) and
    the certification (3 × 10 nodes, 36 h).
  - The earlier directories `nofourmubs_campaign_2026-09-28_v1` (unguarded) and
    `nofourmubs_guarded_2026-09-29` are superseded and were deleted on 30 September for the file quota ([../REPORT_2026-09-30.md](../REPORT_2026-09-30.md)).
- **Budget:** 600,000 CPU-hours over two weeks. Account `ccq`, QOS limit
  3,840 cores and 45 nodes. That is 30 rome nodes (128 cores) or 40 genoa
  nodes (96 cores).

## Layout

| path | what |
|---|---|
| `code/` | the certification sources and `driver.jl`, pinned by `MANIFEST.sha256`; Julia environment `code/Certification/jlenv_cluster` (ForwardDiff 1.4.5, IntervalArithmetic 1.0.10, TaylorModels 0.12.0) |
| `jobs_L6.txt` | 340,972 level-6 cells of T⁴ (half-width π/64) that survive the enlarged F, R and BC tests (re-planned 28 September) |
| `run_task.sh` | one disBatch task, `julia driver.jl MODE …`; exits at once if its output exists |
| `run_disbatch.slurm`, `submit.sh` | one disBatch job per stage or slice |
| `make_tasks.py` | builds the task files |
| `status.py` | progress, rates, CPU-hours and projection; `--failed` lists the residual certify leaves, and `--layer-left` lists the branch-layer cells the layer prune leaves |
| `layer_prune.py`, `run_layer.sh` | the layer stage (reconstruction-free D₀ exclusion, Python + python-flint) |
| `preflight.sh` | code manifest, Julia environment, and an end-to-end check on two known cells |
| `post_expand_guarded.sh` | runs after the expansion jobs (`sbatch --dependency=afterany:…`): refuses `.part` files, merges, `audit.py expand` (stops unless PASS), extracts the old run's layer-survivor IDs, `compare_runs.py`, then submits the layer prune and the certification in three slices |
| `post_certify.sh` | runs after the certification slices: resubmits unfinished tasks with `submit.sh certify 2 tail` and requeues itself; otherwise runs `make_pass2.py certify certify_pass2`, then pass 2, then `audit.py certify certify certify_pass2` (writes `logs/audit_certify.log`), then `replay_full.jl 200 20261001 certify` (writes `logs/replay_full.log`) |
| `compare_runs.py` | compares two campaign directories: multisets of `cells.txt` and `layer.txt` records, and `coverage.json` prune counts. `--layer-map` writes an old-to-new layer ID map, optionally filtered by `--only-ids` |
| `make_pass2.py`, `replay_full.jl`, `status_fast.py` | pass 2 for failed cells; an independent replay of random certified leaves; a fast status count (`status_fast.py certify`) |

## Stages

**0. Preflight.** Run once on the login node; it takes about 5 minutes:

    ./preflight.sh

**1. Expand.** Each level-6 job is refined to level 9 (ρ = π/512 ≈ 0.0061).
Cells that miss D₀ ∩ F are pruned rigorously:
- `F_out`: an ordering inequality fails;
- `R_out`: R < 0;
- `D0_out`: another corner beats (012|012). This test is applied only at
  ρ ≤ 0.013.

A kept level-9 cell that misses D₀ ∩ F at all 17 of its sample points is
refined for pruning only, down to level 11, and its kept sub-cells become
work cells at their own level. The sampling only decides where to refine.
Soundness rests on the rigorous tests alone.

Cells where the Taylor model of H₊ cannot be formed make up the **branch
layer**. A branch point of the radical chain meets them: mostly R = 0, where
the two sheets meet and the side constructor degenerates. They can be neither
excluded nor certified by this code, so they are listed separately in
`layer.txt`. Numerically they are far outside D₀, with other corners beating
(012|012) by about 300, but proving that needs a separate argument, which is
an open item. Prune counts per level and reason are kept, so the coverage
can be audited.

    python3 make_tasks.py expand 50          # 8,274 tasks of 50 jobs
    WALLTIME=24:00:00 ./submit.sh expand 5 1 1379      # one slice per job; repeat for the other slices

**2. Merge.** This produces:
- `cells.txt`: every work cell once, in a fixed random order;
- `layer.txt`;
- `coverage.json`;
- `tasks_certify.txt`: 64 cells per task.

    python3 make_tasks.py cells 64

**2b. Layer prune.** This runs the reconstruction-free exclusion of
[ProvenResults/CornerBounds/SideTriplePrune](../../../ProvenResults/CornerBounds/SideTriplePrune/README.md)
on every branch-layer cell. Branch-layer cells are those where H₊ has no Taylor model.

- **How it works.** It covers the phases of one unknown side column. Then it
  proves that no compatible triple of side columns exists, or that a
  complementary corner beats (012|012). It never builds H₊, is valid across
  R = 0, and uses no reconstruction inputs.
- **Where it runs.** On the Python venv `mub6_shared_py311` (python-flint 0.9.0),
  with 4,000 cells per task:

      ./submit.sh layer NODES FIRST LAST

- **Benchmark on 600 random layer cells:**
  - 88.5% excluded at depth 8, about 0.06 s per cell;
  - 91% after the depth-10 retry;
  - about 150 CPU-h for the whole layer.
- **Survivors.** List them with `python3 status.py --layer-left`. About 13%
  of them meet D₀ at sample points, often near symmetric seeds, where H₊'s
  side constructor degenerates. They need certification with smaller cells,
  or a regular reconstruction chart (see WhatWeWanttoProve).

**3. Certify: samples (done, 29 September).** Any prefix of the shuffled task file is a uniform
sample.
- The 1% sample (`tasks_certify1pct.txt`, old setup) and the v2 sample with its retest
  (`tasks_certifyv2.txt`) measured the old method.
- The v3 sample (`tasks_certifyv3.txt`, cells 103,756–121,046, accelerated cover only) certified
  all 17,291 cells, at 25 s mean.
- Results are in `results/certify/`, `results/certify_v2/` and `results/certify_v3/`. They are
  summarised by `status.py`, `status_v2.py` and `status_v2.py --v3`.

**4. Certify: the run of record (approved; chained after the expansion).** In
`nofourmubs_rescaled_2026-09-30`, `post_expand_guarded.sh` does the following:
- builds `tasks_certify.txt` (135k tasks of 64 cells) with `make_tasks.py cells 64`;
- submits it as three 10-node slices with a 36 h limit, writing `results/certify/`;
- the code is frozen in `results/FREEZE.json`, and `run_task.sh` sets the production method.

Afterwards:
- Monitor with `python3 status_fast.py certify`. Add `--failed` to list failed cells.
- Pass 2: run `python3 make_pass2.py`, then `./submit.sh certifypass2 N 1 NT`. It re-runs failed
  cells, one per task, with larger caps, into `results/certify_pass2/`.
- Audit with `python3 audit.py certify certify certify_pass2`. Later directories supersede earlier
  ones cell by cell. It reports PASS only when every cell is finished with no failed leaves,
  bisections are complete and there is one code hash.
- Independent replay: `julia --project=code/Certification/jlenv_cluster replay_full.jl K certify`.
  It reruns K random certified leaves with the original interval verifier, then a separate 256-bit
  graph.

The superseded runs used `results/certify_full/` (unguarded, cancelled at 43.7%) and
`results/certify/` in `nofourmubs_guarded_2026-09-29` (guarded, cancelled at about 4%).

 Keep tasks short (64 cells ≈ 30 min), use
`submit.sh STAGE NODES tail` for stragglers, and run `replay.jl K` on a random sample of each
slice.

**Certificate.** Every work cell is certified by the **accelerated cluster-cover certificate**:
`cover_accelerated.jl` on top of `cover.jl`, with the theorems in `ProvenResults/CommonRays/ClusterCover`.
- Every common unbiased ray over the cell is covered by phase-box labels of capacity one (sharp
  criterion), and an exhaustive orthogonality/unbiasedness graph test on the labels excludes a
  quartet.
- Exclusions are accepted only by outward-interval tests (the Cartesian rectangle, with the original
  arc test as fallback).
- It needs no regularity or root count, so folds, ghost valleys and ray clusters are harmless.

This is the default in `run_task.sh`: `CERT_COVER_ACCELERATED=1 CERT_FASTMAX=0 CERT_CHILD_FASTMAX=0
CERT_COVER0=120`. The whole cell gets a cover attempt of up to 120 s, then bisects if needed.
Certified leaves record `method="cover_accelerated"`, and batch headers record every setting. On the
unbiased 0.2% sample it certified 100% of cells at 25 s mean ([REPORT_2026-09-29b.md](REPORT_2026-09-29b.md)).

The older **rays** certificate (Krawczyk tubes, `complete.jl` and `gram.jl`) is still in the driver.
It is off, because its branch and bound accepts by floating-point tests. Set `CERT_FASTMAX=60` to
compare. The node budget of the cover search is `CERT_COVERBUDGET`, default 2·10⁷.
See the proofs and benchmark.

Time and work are capped:
- a failed cell is bisected up to twice (`CERT_MAXDEPTH`);
- the box budget per certificate is `CERT_BUDGET`, default 3·10⁶;
- one certificate is capped at `CERT_CERTMAX` seconds, default 600. If it is
  cut off, the cell is bisected;
- a work cell with all its bisections is capped at `CERT_CELLMAX` seconds,
  default 2,400. Past it, the remaining leaves are recorded as
  `FAILED:time_limit`.

Leaves that still fail form the **residual set** (none in the 0.2% sample). They get a second pass
with larger caps. `python3 status.py --failed` lists them for the old results directory, and
`status_v2.py` summarises the 29 September runs.

## Cell enlargement (tiling rigour)

- **Enlargement.** Cells are nominal boxes, a Float64 centre ± Float64(π/2^level). Every rigorous
  test runs on the **enlarged** box centre ± (ρ + 2⁻⁴⁰): the F, R, BC and D₀ prunes, the rays and
  cover certificates, and the layer prune.
- **Why it tiles.** Child centres are rounded by at most about 10⁻¹⁵ per level, over at most 13
  levels, and π − fl(π) ≈ 1.2·10⁻¹⁶. Both are far below 2⁻⁴⁰ ≈ 9·10⁻¹³, so the enlarged leaves
  provably cover [−π, π]⁴ with no gaps.
- **History.** The first expansion, on 28 September, tested nominal boxes. It was cancelled at 97%
  and is archived in `archive_v1/`. The job list was re-planned (`jobs_L6.txt`, with enlarged
  prunes and `bc_test` at all levels) and the expansion rerun.

## Restarts

Resubmitting the same stage or slice is safe:
- finished tasks exit before starting Julia;
- an interrupted certify task resumes from its `.part` file and skips
  finished cells. A cell cut off mid-way has no `done` line, so it is redone.

## Output

- `results/expand/e_*.txt`: one line `JOB LEVEL θ1 θ2 θ3 θ4` per surviving work
  cell, and one `#prune JOB level:reason:count … work:N` line per job.
- `results/certify/c_*.jsonl`: a header line (code hash, host CPU, budget,
  Julia version). For each cell, one line per leaf (`status` certified,
  `D0_out`/`F_out`/`R_out`, `split:REASON` or `FAILED:REASON`, with `rays`
  and `nV` = candidate bases), followed by `{"cell":ID,"done":true,"failed":N,"t":SECONDS}`.

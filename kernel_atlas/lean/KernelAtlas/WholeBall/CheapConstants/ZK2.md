# ZK2: all-ball cheap C1

**Work in progress.** All 577 original-radius fine budgets and all 432
preliminary smaller-radius budgets are confirmed (five of the latter were
subsequently restored to their original radii). Run6's seed cover is
**NUMERICALLY closed** with 2,765 cheap balls, including 415 new balls.
The edge repair is running on rusty; fresh final audits follow. A closed
all-cheap run6 atlas, including its edge boundary, is **NOT ESTABLISHED** yet.
Final receipts and accounting will be added when those jobs finish.

The input is the 2,350-ball ZK archive. A read-only comparison established that
all original centres, frames, horizontal phase data and radii match run5. The
run5 seed-state SHA-256 is
`b6a1ed8fe271621655ce199625821e16aac383c536ab366c147decbb1d4108e4`;
the edge-state SHA-256 is
`01975b309c4f5d5b168e4cbebacafaaa4b8822a2bb25c9605532c3504a7b4fa1`.
Run5 is never written.

## Checks and interpretation

**CERTIFIED:** all 1,773 existing cheap fits passed the certifier's own Stage C
at an enclosure slightly larger than their cheap C1 bound. That run took
697.30 seconds of measured Python wall time; its Slurm allocation was 701
seconds on 128 CPUs, or 24.9244 allocated core-hours.

`budget_fine.py` searches the other 577 balls at their own label radius and
then the alternative 0.02/0.03 label. It bisects passing/failed screening
values to a relative bracket of at most 2%, up to factor 8, and confirms each
accepted endpoint with `seedcert.run_stage_c`. A failed clustering or capped
clique search is not a mathematical impossibility result. The reported
brackets describe this search, **not a proved global maximum** of Stage C.

Step 1 recovers **150** additional balls at unchanged radii: the resulting
classes are **1,299 rank 0**, **624 rank 4**, and **427 requiring shrink**.
`ZK2_step1_fit.jsonl.gz` records each decision and its absolute/relative margin.
Three searches reach factor 8; the other brackets are at most 2% wide.

`budget_plan.py` prefers rank 0, then rank 4, at the original radius. Remaining
balls use a decreasing radius grid and fresh rank-4 Arb bounds. Every accepted
plan also passes certifier Stage C at its proposed stored remainder. Separate
searches refine the budget at the actual smaller radius. The brief's proposed
0.8 lower bound on the radius factor is insufficient: 75 plans use smaller
factors, including three at 0.4.

Five reruns failed at a smaller remainder even though their fine endpoints had
passed. `budget_keep.py` retains their original radii and stores those already
certified endpoints. Original plans remain intact as receipts. The planner
now also reuses such an endpoint before considering any shrink. The corrected
plans shrink exactly 427 balls, preserve 150 recovered balls, and reopen 2,077
sources (2,076 have transfers into a shrunk ball). All 2,350 prepared scalar
witnesses passed exact rational checks.

**PROVED:** the algebraic bound formulas are those derived in `REPORT.md`.
**CERTIFIED:** the saved scalar inequalities are replayed with exact Python
rationals, and the centre, matrix bounds and orientation inequalities use Arb.
Neither label asserts a new Lean formalization of the cheap constants.

## Re-cover and reproducibility

`shrink_balls.py` prepares a separate run, preserving original centres and
frames. It reopens shrunk sources, all sources transferring into them, and
sources whose increased remainder affects T3 screens. It clears their retry
counters and invalidates edge/record boundary caches. Existing driver files
are unchanged.

`budget_grow.py` supplies the existing driver with a constructor that accepts
new balls only after cheap rank-4 C1 and certifier Stage C pass. No new ball
uses full-tensor or box C1. `budget_run6.py` alternates seed growth with the
existing edge builder using `--edge --xball 0.13`, feeding edge gaps back into
seed growth. Driver closure remains **NUMERICAL** until the user's independent
export and Arb/Julia transfer certification.

The original edge boundary has 1,183,840 leaves, all targeting five shrunk
seed balls. Its re-cover uses `budget_edge.py` to partition the unchanged
`edge_multi.cover_box` routine's 2,080 start boxes across four nodes. Each
result is checkpointed atomically; collection requires every start box
exactly once, with common input/source hashes. A real old boundary leaf
passed the new runner's preflight in 0.394 s. The earlier single-node edge
pass was cancelled; its allocation is included in the accounting.

The first edge pass produced 8,385,902 groups and 850 numerical gaps.
`budget_edge_grow.py` added 36 cheap balls at the resulting proposals and
closed their seed covers in 264 seconds. The subsequent edge pass
reuses only successful start boxes after checking that every old target's
centre, inverse frame, frame and radius is unchanged and that the edge ball
and boundary routines match. Boxes with gaps are recomputed. Regression
checks accept appended targets and reject changed, reordered or removed
targets. Final seed/edge closure and fresh audits are still pending.

Before the final audit, `budget_edge_compact.py` groups identical transfer
descriptions and windings into shared box arrays. This preserves every box,
including duplicates and their order within each metadata group. Per-group
box digests, seed payloads and edge-ball payloads are checked; the raw closed
snapshot is retained. Serial/parallel regression checks and a real 90-box
sample pass. The compact snapshot prevents each audit worker from loading
millions of separate Python dictionaries.

The final `budget_state.py` audit requires a closed seed and edge state,
unchanged original centres/frames, fresh cheap C1, certifier Stage C, and fine
budgets for changed/new balls. Its input is an immutable closed snapshot.

`ZK2_jobs.jsonl` records this task's jobs, including cancelled searches whose
completed trial checks were reused. `ZK2_sources.tar.gz` preserves the exact
source snapshots; `ZK2_source_manifest.json` records all source/input hashes.
Two growth refreshes restarted open covers against newly added targets. The
second used the driver's STOP checkpoint, preserving all completed work;
the first resumed its last periodic checkpoint and recomputed one ball and
one cover. The final receipt collector checks shard completeness, common
state/source hashes, exact scalar inequalities and Stage C bindings, and
counts Slurm allocations without double-counting their job steps.
The cluster uses Python 3.12.9, NumPy 2.2.6 and python-flint 0.9.0, with BLAS
threads limited to one and normally 80 worker processes per 128-CPU node.
No Lean process has been run for ZK2.

Regression checks cover search brackets, preservation of a known certified
lower endpoint, source/radius binding, transfer/T3/edge invalidation, retry
clearing, source preservation, and rejection of overwrites or destinations
inside run5. A real radius-0.03 construction and state-audit smoke test passed
cheap rank 4, certifier Stage C and budget refinement to factor 8 in 1.84 s.

Final ball counts, fit margins, run6 hashes and total core-hours are pending.

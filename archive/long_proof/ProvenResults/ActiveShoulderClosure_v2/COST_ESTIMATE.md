# Measured cost and bounded cluster allocation

The data establish substantially cheaper partial coverage. They do not
establish that every root will close within 1,000 CPU-hours. The remaining
search is right-censored by its budgets. RESULTS.md and the clean replay
receipt give the final retained coverage, separately from these benchmarks.

## Local measurements

Python 3.11.16, numpy 2.2.4, sympy 1.13.1 and python-flint 0.9.0 ran on
macOS arm64. Historical cover measurements used Julia 1.12.1; the final
calibration uses Julia 1.12.7 and the frozen bundle hash checked by julia_environment.py. Rusty
must run CALIBRATION.md before interpreting the local rates as its rates.

| Run | Closed roots | Nodes | Worker CPU seconds | Nodes / CPU-second |
|---|---:|---:|---:|---:|
| v1, same 16 IDs, 12-second budget | 0/16 | 3,414 | 194.164745 | 17.5820 |
| v2 lift-only policy, same sample | 12/16 | 2,458 | 70.170350 | 35.0290 |
| v2 fallback policy before final retry allocation, same sample | 11/16 | 1,572 | 81.545657 | 19.2775 |
| Before explicit worker isolation, Julia 1.12.7 | 11/16 | 1,485 | 88.707412 | 16.7404 |
| Explicit-spawn policy before replay optimization, Julia 1.12.7 | 11/16 | 1,487 | 86.564252 | 17.1780 |
| Final replay-optimized code, Julia 1.12.7 | 11/16 | 1,568 | 83.021294 | 18.8867 |
| Fresh fallback pilot, 30 seconds/root | 1,200/1,609 | 343,269 | 19,000.610216 | 18.0662 |

Fallbacks do not uniformly accelerate easy roots: the short sample closed
fewer roots and used more CPU than the lift-only sample. Their benefit is
additional coverage on the unresolved tail, measured separately. The
fresh full pilot used the earlier scalar cover adapter; the delivery
sample uses independent outward seed widths and charges Julia startup
and child CPU. Later diagnostic counters do not alter acceptance tests.
The pre-optimization Julia 1.12.7 sample skipped 2,696 inherited pairing obligations;
its wall time was 89.585988 seconds while proof replay ran locally.
All runners now explicitly spawn workers on Linux as on macOS, and the
Julia adapter rejects connections inherited from another process. This
fix prevents cross-process response confusion; the new calibration is
retained as v2_spawn_calibration127. The final source calibration after
parallel replay and exact input deduplication is v2_parallel_calibration127;
the changes preserve the search policy and improve independent replay.

The final 87-root shoulder continuation used the earlier immediate-retry
cover policy and closed five additional whole roots. It visited 45,737
nodes in 25,068.423044 worker CPU-seconds (1.8245 nodes/s), with
25,120.011612 total process CPU-seconds, or 6.977781 CPU-hours.
Many unsuccessful cover calls consumed most of a root's allocation.
This is a measured hard-tail cost, not a measurement of the final default
failure allowance described below. Its complete output is merged only
where exact comparisons preserve the baseline's certified coverage.

Two resumed difficult roots (20 and 23) showed why failed-cover CPU must
be budgeted separately. With 300 CPU-seconds/root, a seed-halving retry
delay alone yielded 257 nodes in 600.167353 CPU-seconds (0.4282 nodes/s).
Limiting unsuccessful covers to 25% of the root allocation yielded 7,750
nodes in 600.056880 seconds (12.9154 nodes/s). Neither run closed either
root. The additional PSD leaves are proof gains, not by themselves a
seed-volume estimate. Successful covers do not consume this failure
allowance. The default retains both the retry delay and failure allowance;
these are search policies only and never authorize acceptance.

The all-root timing wrapper measured 19,155.047169 total user+system CPU
seconds, or 5.320846 CPU-hours, including parent/child overhead. Its wall
time was 3,772.596087 seconds while sharing the local machine with other
bounded jobs. Per-root records, source hashes and summaries are retained
in data/benchmarks/. The fresh full forest is included and independently
replayed, so its volume estimate is reproducible rather than inferred
from accepting-leaf counts.

## Cost per seed volume

The pilot grid union has volume 1609/4294967296 rad^4. The fresh pilot
forest's exact closed-mesh lower bound is 85331/274877906944 rad^4,
or 82.8649394% of that union. Both children of every auxiliary tau split
must accept; tau subdivisions never add seed volume. Final accumulated
coverage and its exact lower bound are separate receipt fields.

For this fresh bounded pass, the measured ratio is approximately
17,140,115 CPU-hours per certified rad^4. This is a cost for the achieved
partial coverage, not a marginal cost for the hardest remaining sliver.
The sum of the 80,613 outward input-box volumes is about
2.7897467909e-8 rad^4; the pilot grid volume is 13.4286 times that sum.
Overlaps make the sum an upper bound on the input union, not its exact
volume. Rebuild the full-run region to measure the real overapproximation.

Two deliberately conditional extrapolations illustrate why box counts
are inadequate. Repeating the entire pilot grid workload 600 times costs
about 3,193 CPU-hours at the measured bounded-pass cost. Applying the
same measured cost/achieved-volume ratio to 600 times the input-volume
sum gives about 287 CPU-hours. Neither extrapolation predicts complete
closure: geometry, overlap, the hard tail and final proof replay can all
change the cost. In particular, the smaller number is not evidence that
the full campaign will finish within 1,000 CPU-hours.

## Cluster recipe and ceilings

1. Run CALIBRATION.md with Julia 1.12.7 and the pinned production sources.
2. For the delivered pilot, run shard_forest.py with 256 shards and a fresh
   output directory. For a new exact list, use build_region.py first;
   existing resume forests must match that region's SHA-256 exactly.
3. Set SHOULDER_V2_DIR, SHOULDER_V2_OUTPUT, JULIA_BIN and, when applicable,
   SHOULDER_V2_RESUME. Set SHOULDER_V2_REGION for a rebuilt full-run region.
   Submit cluster.sh as its documented 256-job array, one CPU and 8 GB/job.
4. The first pass allows 300 CPU-seconds/root, 131,071 nodes, seed/tau
   tree depth 64 and tau depth 12. Each shard also has a 10,800 CPU-second
   allocation and a four-hour scheduler wall limit. Budgets include
   inherited witness replay and Julia work. Exit 2 means incomplete.
5. Assemble with the baseline forest first. The assembler preserves its
   certified coverage and adopts only whole-root or provably monotone
   improvements; incomparable partial trees must remain separate.
6. Freshly replay the assembled result with verify_region.py, using
   --pilot or the new exact --boxes input as appropriate. Record seed
   volume gained per CPU-hour and replay CPU separately. Escalate only
   the remaining roots, preferably by assigned subtrees when costly.

Ignoring overruns, a fresh 1,609-root 300-second allocation is 134.1 CPU-h.
With a resume forest it is approximately U/12 CPU-h plus closed-root
replay, where U is the unresolved root count. An indivisible interval
call or inherited proof replay can exceed the remaining root allocation;
these are not hard OS CPU limits. The sum of the shard ceilings is 768
CPU-h, intended to leave 232 hours of a 1,000-hour envelope for calibration,
replay and controlled overruns on a larger region. It is an allocation
plan, never an all-root closure forecast.

## Expensive representatives and F3 patches

Production has nine exact cube-isometric representatives for 90 cubes.
Use the retained representative-7 continuation with subtree_sweep.py;
--refine invokes adaptive subdivision of the assigned frontier. Workers
replay only the assigned subtree and its ancestors. Merge enforces exact
unchanged proof nodes outside each assignment, followed by a full clean
replay. The initial eight-way sweep redundantly replayed the entire
inherited tree in each worker; those measurements are retained honestly,
but that costly behavior is not the recommended continuation protocol.

Even scoped replay must be budgeted. One assignment in the later eight-part
run contained 644 inherited cover calls whose recorded search CPU summed
to 3,783.517161 seconds. Its 1,200-second allocation could not accommodate
that replay and new search. Splitting that baseline into 16 assignments
reduced the largest recorded cover burden to 1,955.089130 seconds; it did
not reduce the total replay burden. The README therefore recommends 16
assignments with 3,600 CPU-seconds each (16 nominal CPU-hours), calibrated
on the delivered continuation before submission. Charge this and replay
overruns to the overall allocation; these historical timings are not
hard upper bounds for rusty or the enlarged continuation.

The F3 exact endpoint is singular in the tested side charts. This does
not imply a tube obstruction for every nearby box: refined boxes admit
PSD/lift closures, including a complete supplied patch during the bounded
refinement run. RESULTS.md gives the final patch counts. Apply PSD and
production cover to refined sub-boxes before additional chart research.
The exact multiplier extension is disabled pending its independent proof
and checker; MULTIPLIER_HOOK.md specifies the interface and release gates.

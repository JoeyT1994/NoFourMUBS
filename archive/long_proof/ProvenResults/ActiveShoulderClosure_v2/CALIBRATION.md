# Rusty calibration before allocation

Use a matching repository checkout with this additive directory, Python
3.11, numpy 2.2.4, sympy 1.13.1, python-flint 0.9.0 and mpmath 1.3.0.
Install requirements.txt with `--require-hashes`. Set JULIA_BIN to the
actual Julia **1.12.7** executable, not a launcher selecting another version.
Install the frozen jlenv_cluster dependencies before the offline run.

From the v2 directory, with fresh output paths:

```sh
export SHOULDER_JULIA_PROFILE=production
export OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 JULIA_NUM_THREADS=1
python3.11 -B -c 'from predicate import check_pins; check_pins()'
python3.11 -B julia_environment.py > /work/calibration_environment.json
python3.11 -B -c 'import json; from terminal_audits import run; print(json.dumps(run()))' \
  > /work/calibration_terminals.json
python3.11 -B driver.py --sample 16 --jobs 1 --cpu-per-root 12 \
  --max-nodes 65535 --output /work/calibration_16.jsonl.gz
```

The environment check verifies the **full** frozen production bundle hash
577018ebd9e3b0cee1134680a3d0302f3d972ff3211c3cf0cbacc5a6c09f961d,
the manifest, and package source SHA-256 inventory. A mismatch is a failed
preflight; do not recapture pins on rusty to make it pass. The cover adapter
is separately pinned v2 code and receives outward-enclosing seed widths.

The 16-root driver may exit 2: that means a complete search output with
unresolved roots. It is not a failed process or a closure certificate.
Compare its exact IDs and options with v2_parallel_calibration127, and
record process CPU including the Julia child, wall time, nodes, terminal
counts and pairing reuse. The final local sample used Julia 1.12.7 and
measured 11/16 closed, 1,568 nodes and 83.021294 worker CPU-seconds.
The final policy explicitly spawns workers on Linux as well as macOS;
terminal controls also check Julia connection ownership and isolation.
Earlier historical runtimes were Julia 1.12.1;
the environment receipt must say production and 1.12.7 on rusty.

Next choose 32 open root IDs spread across the delivered open inventory,
including near-R=0, large-R and F3 patches. Run with `--root-ids` and
`--cpu-per-root 60`, once fresh and once with the matching retained forest
as `--resume`. Resume timings include independent proof replay. Do not
compare resumed nodes/second directly with fresh nodes/second.

Before a scientific claim, run the full clean verifier on a fresh output
directory. It independently recomputes every accepting witness and reports
whole-region and 90-cube closure separately from a successful partial audit:

```sh
python3.11 -B verify.py --jobs 8 --output-dir /work/rusty_clean_replay
```

The verifier parallelizes the large production continuation as well as the
root forests. Its 4,946 cover occurrences reduce to 1,280 distinct outward
input boxes; both sheets are counted separately when their inputs differ.
Watch STAGE_PROGRESS.json and continuation_covers/progress.json in the
output directory. The latter records completed/total, worker CPU and wall
time after every distinct check. These progress checkpoints are diagnostic
and are never accepted as proof after a restart. Every clean invocation
recomputes the covers and checks the full tree geometry.

For a new full-run box list, rebuild the exact region first. Measure its
actual seed volume and overlap; 600 times as many input boxes need not mean
600 times as much grid-region volume. Report incremental certified seed
volume per CPU-hour, with replay costs separately, before choosing the
continuation allocation. See COST_ESTIMATE.md and cluster.sh. Their finite
budgets are allocations, not a prediction of complete closure.

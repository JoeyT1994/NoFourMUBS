# ActiveF6Cube1551

Additive certificate for the two closed guarded cubes at (1,5,5,1) and
(5,1,1,5), half-width pi/512+2^-40 radians. Read PROOF.md for the
maximal-corner hypothesis, which applies on R>0 as well as at R=0.

Use Python 3.11 with numpy 2.2.4, sympy 1.13.1, mpmath 1.3.0 and
python-flint 0.9.0. Use Julia **1.12.7**, the existing
NumericalCampaign/Certification/jlenv_cluster profile, and frozen production
code bundle SHA-256
577018ebd9e3b0cee1134680a3d0302f3d972ff3211c3cf0cbacc5a6c09f961d.
The worker checks the profile and code before accepting. On rusty load
**gcc/13.3.0**: its default g++ lacks the UBSan runtime. A C++17 compiler
with working UBSan is required; fast-math is forbidden. Local replay uses
Apple Clang with UBSan. Existing dependencies must be present at their
repository-relative paths; every dependency is recursively SHA-256 pinned.

From the repository root, with python pointing to that environment:

```sh
module load gcc/13.3.0
export JULIA_BIN=/path/to/julia-1.12.7/bin/julia
export SHOULDER_JULIA_PROFILE=production
export JULIA_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1
python ProvenResults/ActiveF6Cube1551/verify.py \
  --output-dir /fresh/path/prod7-replay --jobs 8 --cpu-hours 12
```

Use an existing populated Julia depot. No installation or network operation
is part of the replay. The output directory must be new. The leaf log is
flushed as work completes; RECEIPT.json includes completed CPU time, wall
time and the exact input hashes. CPU accounting includes the Julia workers.
The cap stops scheduling new leaves; already-running tasks can finish, so
it is not a hard process-level limit. A cover has a bounded per-call budget.
This replay repeats every new leaf, not the previously adopted global tube
certificates or transverse majorant derivation.

## Short calibration and sharding

Search is unnecessary for this completed certificate. For a machine
calibration, replay a deterministic subset without claiming cube closure:

```sh
python ProvenResults/ActiveF6Cube1551/calibrate.py \
  --output-dir /fresh/path/prod7-calibration --jobs 8 --count 64
```

The subset includes each used terminal and samples the cover leaves evenly.
Its status is CALIBRATION_PASS, never the whole-cube theorem's PASS. Compare
CPU per terminal, particularly the 365 cover leaves; nodes/second across
unlike terminals is misleading. RESULTS.md gives measured full-replay cost.

For an independent sharded search, enumerate depth-8 prefixes in 64 shards:

```sh
python ProvenResults/ActiveF6Cube1551/driver.py \
  --output /fresh/path/prod7-shard-${SHARD}.jsonl.gz \
  --shard ${SHARD} --shards 64 --jobs 1 --prefix-depth 8 \
  --max-depth 22 --cover-depth 12 --cpu-per-prefix 120 \
  --cover-seconds 15 --cover-nodes 1000000
```

This permits at most about 8.54 CPU-hours in completed prefix budgets plus
bounded in-flight terminal overhead. A shard PASS proves only its selected
prefixes. Combine all 64 shards and audit the complete prefix partition
before claiming the cube. Setting a STOP file in this module asks the driver
to stop safely with explicit open leaves; remove it before restarting.
The retained three-stage search (analytic first, cover only on the remaining
365 leaves) is more efficient: its exact prefix lists and records are in data/.
The standalone driver also accepts --prefix-list, and all failures remain
explicitly open. The calibration and full fresh replay are recommended over
rerunning search or the old tau forest.

# ActiveShoulderClosure — incomplete regional certificate

This is an additive partial result and cost-limited continuation package.
It is **not** a certificate that all of the active shoulder is closed.
Read PROOF.md for the exact theorem and RESULTS.md for the outcome.

Apply this additive package to the root of the supplied standalone ZIP.
It introduces only this directory and
`Verification/active_shoulder_2026-10-01/`. Existing files are unchanged.
Use Python 3.10 or 3.11 with the versions in `requirements.txt`.

Run from the NoFourMUBS root, choosing a fresh output directory:

```sh
OPENBLAS_NUM_THREADS=1 python3 -B ProvenResults/ActiveShoulderClosure/verify.py \
  --jobs 4 --output-dir /tmp/shoulder-replay
```

Expected exit: **2**, because whole-region closure remains incomplete.
The receipt separately reports geometry, accepting-leaf replay and pilot
counts. To validate only the explicitly partial evidence, add
`--audit-partial`; the receipt still says `whole_region: INCOMPLETE`.
Neither verifier mode edits the retained certificate or dependency pins.

The supplemental box certificates counted in RESULTS.md are independently replayed. They
are overlapping certified subsets of S and do not close the open leaves
of the separately retained complete partition of S. The public predicate
can apply either kind of verified subset by exact containment.

A bounded, shardable continuation on the target cluster is:

```sh
OPENBLAS_NUM_THREADS=1 python3 -B ProvenResults/ActiveShoulderClosure/driver.py \
  --shard 0 --shards 128 --jobs 1 --max-nodes 4095 \
  --max-depth 24 --cpu-per-root 120 \
  --output /tmp/shoulder-shard-000.jsonl.gz
```

Use a distinct shard number and output name for every shard. Root ids
are assigned by `id mod shards`, so the 128 jobs are disjoint and cover
all 1,609 roots. This budget is at most about 54 CPU-hours across the
root searches, plus process startup and one-leaf overshoots; it is a
bounded diagnostic pass, **not a prediction of successful closure**.
The driver now chooses fresh references per leaf and tries nearby parameter cells with
radius at least 1/48, including the five new 1/36 tubes. All 134 diagnostic centers now close; the remaining demonstrated
limitations are whole-box enclosures and incomplete regional coverage.
A larger budget is not a proof that these will all close. No cluster job
was launched for this delivery.

Each output is a compressed shard with an explicit header/root inventory,
complete root trees including budget leaves, and a final summary. Exit 2
means incomplete, including any root or leaf budget exhaustion. A `.part`
file is not an accepting shard. `assemble.py` combines one authoritative
partition per root and retains unattempted roots explicitly. Assembly
sets replay status PENDING; it does not authorize the public predicate.

To reproduce the small diagnostic selection and all-center distance scan:

```sh
OPENBLAS_NUM_THREADS=1 python3 -B ProvenResults/ActiveShoulderClosure/diagnostics.py \
  --jobs 2 --output-dir /tmp/shoulder-diagnostics
```

Its center distances and reference optimization scores are floating
proposals. Its interval decisions are useful diagnostics, not a complete
region certificate. Record indices in this module are **zero-based** data
record indices, excluding the two comment lines of the supplied pilot.

`INPUTS.json` pins all new accepting code/assets and adopted dependencies.
`pin_inputs.py` is a release helper, deliberately never invoked by the
verifier. Regenerating hashes alone does not validate changed mathematics
or certificate data. A new release needs fresh accepting-leaf and box
replays before its index can be marked as replayed.

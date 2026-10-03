# Practical whole-box terminal for the (2,4,4,2) ring

This additive module applies the cleared signed-mean test (3.2), with Taylor
models and Bernstein bounds, directly to exact seed boxes. It accepts only
whole closed boxes and reports **no physical completion in strict D0**.
Radii are seed-angle radians throughout. There is no matrix-radius conversion,
side-root reconstruction, Julia cover, or nonapproach-radius assumption.

From the repository root, using Python 3.11 and mpmath 1.3.0:

```sh
python -B ProvenResults/Patch2442Region_v3/verify.py \
  --boxes /path/to/LIST.jsonl.gz --output /fresh/path/RESULTS.jsonl.gz \
  --jobs 8 --cpu-per-box 0.3
```

Plain JSONL is also accepted. Each record needs `id`, four exact rational
strings in `centers`, and four in `radii`; supplied guards are already included.
The tested input range is |centre_i|<=100 radians and 0<radius_i<=1 radian;
unsupported or invalid records return false. Inputs are not rounded to a
nearest centre or inferred from seed-distance metadata. Output order and IDs
match input order, including unresolved records. The default CPU budget is
0.3 seconds. `--cpu-per-box 3` selects the measured larger profile. Default
Taylor order is 4, seed depth 16 and maximum visited nodes 255.

Every output has `id`, `ok`, `reason`, `statement`. The statement string is
`no_physical_completion_in_strict_D0`; it is asserted **only when ok is true**.
Accepted records also retain a complete binary partition and witnesses.
False and exceptions remain inconclusive. Output receipts summarize coverage,
CPU per attempted box, maximum observed cost, input/output hashes and build
provenance. Native checks stop work inside model products and Bernstein rows;
small operation/wrapper overruns are explicitly measured in RESULTS.md.

A C++17 compiler with ordinary IEEE-754 binary64 arithmetic is required.
`CXX` may select it. Builds disable fast-math and floating contraction and
write fresh libraries only under this module's work directory. Libraries
from a previous run are not silently reused. On rusty, gcc 13.3.0 is a suitable
choice; this kernel does not require the UBSan runtime or Julia. No numpy or
python-flint API is used. The exact controls additionally use sympy 1.13.1.

Input/output processing in verify.py uses a bounded window of 4*jobs tasks,
so the full-run list need not fit in memory. Use independent processes/jobs;
there are no internal BLAS threads. Set OPENBLAS_NUM_THREADS=1 if your Python
environment loads BLAS through other startup hooks. Each worker reuses its
loaded native library and its precomputed monomial/Bernstein tables.

## Clean replay and controls

```sh
python -B ProvenResults/Patch2442Region_v3/controls.py
python -B ProvenResults/Patch2442Region_v3/replay.py \
  --boxes ProvenResults/Patch2442Region_v3/inputs/round3/NoFourMUBS_AgentB_round3_2026-10-02/leaves_4174.jsonl.gz \
  --results ProvenResults/Patch2442Region_v3/results/leaves_bounded.jsonl.gz \
  --output /fresh/path/leaves-replay.jsonl.gz --jobs 8
```

Repeat replay.py for `parents_497.jsonl.gz` and `parents_bounded.jsonl.gz`.
It checks the complete input/result census, reconstructs every accepted
partition from exact input geometry, checks closed coverage, and freshly
recalculates every accepting terminal. It does not trust stored booleans or
coefficient bounds. A failed replay exits unsuccessfully and produces no PASS
receipt. The replay receipt is **PASS_ACCEPTED_SUBSET**, never whole-patch
closure. The convenience replay loads these pilot lists into memory; the
production verify.py scanner is the streaming interface for million-box lists.

The final per-box files and receipts are under results/. PROOF.md specifies
the hypotheses and arithmetic. INPUTS.json and PINNED_UPSTREAM.json bind the
implementation and adopted inputs; MANIFEST.sha256 additionally binds the
packaged results. Check the delivery manifest from this directory with
`sha256sum -c MANIFEST.sha256`.

## Practical full-run use

Start with a deterministic calibration prefix (for example `--limit 256`) on
rusty, using a fresh output path and the intended CPU cap. Compare coverage
and CPU per attempted and accepted box with RESULTS.md. Then scan the full
list with the same command without `--limit`. Input-box shards are independent
and may be distributed across workers or machines. A false result must stay
on the frontier; accepting a child alone does not accept its parent.

The 0.3-second profile is the cheap first terminal. The 3-second profile buys
more leaf coverage at higher cost. Direct application to the coarser 497
parents has substantially worse cost per exclusion; do not extrapolate the
leaf coverage fraction to those boxes. Partial certified leaves can be
combined with the integrator's existing F/G tree only after its usual exact
whole-parent coverage audit. This module does not import F/G success flags.

# ZC2b mixed-cap construction

## Acceptance boundary

`construction.py` uses floating point only to propose cap normals, thresholds,
Fourier alignments, integer windings, and S-lemma multipliers. Every cap added
to the retained list first passes `caps.check_cap` (T0/T1) or
`cap_t3.check_cap` (T3) with Arb. A source receives `status: CERTIFIED` only
after `cap_coverage.verify_coverage` accepts its polar-facet certificate in
integer arithmetic. Numerical hull distances in `info` are diagnostics.

A retained cap's `replay` object records the result obtained during
construction. It is not an input trusted by the independent replay: the
source normal form, affine outputs, remainders, matrix witnesses, and coverage
must all be recomputed from the original data and cap fields.

## Proposal algorithm

1. Reconstruct and certify the source's whole-ball normal form.
2. Rank the recorded transfer groups by a numerical estimate of their original
   box area. For each useful group, propose a cap near the mean of its box
   directions and near a numerical minimizer of the target-parameter norm.
3. For T0/T1, use the existing ZC polynomial and true-anchor local proposals.
   For T3, use a true source jet at `r*v/||v||`, together with one fixed Fourier
   alignment and winding. The two affine outputs use independent scalar
   S-lemma multipliers; no vector multipliers were needed for these proposals.
4. Bisect the cap threshold numerically. Positive rounding slack is added to
   the threshold and matrix bound before the Arb checker is called. If that
   checker rejects a proposal, it is discarded or re-proposed with additional
   slack; it never enters the retained list merely because the float test passed.
5. Construct a numerical polar hull. Its most deficient facet supplies the
   next direction to cover. Try applicable transfer groups at that direction
   and nearby existing cap normals, then retain a certified proposal that
   covers many deficient facet directions.
6. Once the numerical hull suggests full coverage, greedily delete redundant
   caps. Construct exact dual vertices for the remaining polar facets and
   verify the entire coverage certificate using integers.

The weighted run uses the output-weighted normal bounds already available
in `cert/cap_weighted.py`. For T3 it additionally selects the proved local
Psi-Hessian remainder (`psi_remainder: local_hessian`). Both choices are
explicit in each cap record and are replayed by the verifier.

## Resumption and comparison runs

`--resume` replays each retained cap before reusing it. `--upgrade` then
re-proposes caps at the same normals using the requested weighting and Psi
remainder, keeping a replacement only when it is wider and passes Arb.
Checkpoints have `status: NOT ESTABLISHED` until exact coverage succeeds.
The original transfer boxes are never removed or changed.

An initial unweighted run and a weighted pilot were stopped after the pilot
showed substantially faster improvement in coverage. Their retained
checkpoints and log summaries are descriptive comparison data; they do not
assert full sphere coverage. `initial_runs_receipt.json` identifies those runs.

## Reproduction

Use Python with python-flint 0.9.0, NumPy, and SciPy. The production checker
also imports the shared code in `atlas`; the constructor configures both
`cert` and `atlas` import paths itself. Constrain BLAS threading when running
several worker processes.

```sh
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 \
python ZC2b/construction.py \
  --seeds all --workers 6 --max-add 250 \
  --weighted --psi-remainder local_hessian \
  --out ZC2b/results
```

To continue an interrupted construction and widen older caps:

```sh
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 \
python ZC2b/construction.py \
  --seeds all --workers 6 --max-add 250 \
  --weighted --psi-remainder local_hessian \
  --resume --upgrade --out ZC2b/results
```

The `--max-add` value is an invocation budget, not a mathematical limit. Any
source that reaches it without an accepted cover remains `NOT ESTABLISHED`
and must retain its original boxes or undergo further construction.

Per-source `info.seconds` are elapsed times for that invocation, including
source-model reconstruction, cap proposals, Arb acceptance, pruning, and
exact coverage. Summing them counts overlapping work when workers run in
parallel. `run_receipt.json` records the elapsed wall time of the full
invocation.

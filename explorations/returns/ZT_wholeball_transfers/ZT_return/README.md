# Return ZT: replay guide

Read **REPORT.md** for the conclusions, proofs, exact scope, and remaining failures.
Read **per_ball_counts.csv** for the 200 individual source-ball results.
**RESULTS_SUMMARY.json** records the final achieved counts assembled from full-sphere replay records.

The package includes the supplied input certificate and reference sources under
`context/`, the new verifiers, explicit proposed or checked covers, lower-bound
and sharpness witnesses, and replay results. No external atlas checkout is needed.
No Stage C or MUB exclusion computation is called.

## Installation

Python 3.12 was used. Install the two runtime dependencies:

```bash
python -m pip install -r requirements.txt
```

For these small matrices, `OPENBLAS_NUM_THREADS=1` avoids unnecessary thread overhead.
All commands below are run from this directory. Interval proofs use 224-bit Arb
arithmetic; the supplied hexadecimal floats remain exact binary rational inputs.

## Short end-to-end replay

```bash
python replay.py
```

This recomputes two complete seed-sphere certificates, the seed-6 geometric
lower bound, negative controls, the edge whole-ball contraction, and 32 edge
transfer patches. It writes its own results under `replayed/`, preserving the
included complete replay records. A diagnostic edge replay is explicitly
labelled as partial.

To also replay all 55,345 edge patches:

```bash
python replay.py --full
```

## A seed ball and an arbitrary list of transfer boxes

The input group schema is exactly the T0/T1 format from `context/FORMAT.md`:

```json
[
  {"kind":"T1", "target":123, "g":"id",
   "rows":[0,1,3], "cols":[0,2,4], "wind":[0,0,0,0],
   "boxes":[[3,1,2,3,4]]}
]
```

That JSON is a schema example, not a certified transfer. For a real supplied
and replayed cover, use:

```bash
python weighted_replay.py context/sample_certificate.json.gz \
  --seed 6 --groups counts/refined_results/seed_6_patches.json \
  --output replayed/seed6.json
```

`weighted_replay.py` reconstructs the source normal form and every requested
output-weighted bound. It accepts no cached numeric bound as a proof.

The Python API also accepts individual source and target entries directly:

```python
from zt_patch import normal_form, SC
from weighted_replay import WeightedTransfer

model = normal_form(SC.Ball(source_entry))
transfer = WeightedTransfer(model, SC.Ball(target_entry), transfer_group)
result = transfer.check(dyadic_box)
# If needed: transfer.check_local(dyadic_box)
```

The whole-source model is shared by all its transfers, and its weighted tensor
cache is shared by all output maps. A complete sphere conclusion additionally
requires the exact coverage check, as performed by the CLI.

For actual-centre jets throughout, add `--local`. To try a centre jet only
when the polynomial test fails, add `--fallback-local`:

```bash
python weighted_replay.py context/sample_certificate.json.gz \
  --seed 8 --groups counts/refined_results/seed_8_hybrid.json \
  --fallback-local --output replayed/seed8_hybrid.json
```

Without `--limit`, a full-sphere verdict also requires the exact dyadic coverage
traversal. With a nonzero `--limit`, the verdict is only about the listed tested
patches. T3 is deliberately not accepted by this seed verifier. A failed source
contraction produces `NOT ESTABLISHED`; it is not silently replaced by an
assumed branch certificate.

`zt_patch.py` offers the same CLI with the simpler norm-after-output bound.
It is retained as an independently replayable baseline.

## Batch seed-sphere replay

To replay the final covers for all 193 certified source spheres in three
disjoint batches:

```bash
python counts/replay_final_spheres.py \
  --certificate context/sample_certificate.json.gz --workers 3 \
  --output replayed/final_spheres
```

The 165 complete refined polynomial covers are replayed by:

```bash
python counts/certify_refined_spheres.py \
  --certificate context/sample_certificate.json.gz --workers 3 \
  --output replayed/refined_spheres
```

Use `--workers 1` where `fork` multiprocessing is unavailable. Each process has
its own Arb precision context. The initial simpler 91-source benchmark is
replayed by `counts/certify_spheres.py`. The 28 sources initially retaining
original fine leaves are attempted with actual-centre fallback by:

```bash
python counts/certify_refined_spheres.py \
  --certificate context/sample_certificate.json.gz \
  --survey counts/refined_results --hybrid --workers 3 \
  --output replayed/hybrid_spheres
```

The six sources requiring one or two rounds of child refinement have their final
cover lists under `counts/refined_repaired_results/`. Replay all six with:

```bash
python counts/certify_refined_spheres.py \
  --certificate context/sample_certificate.json.gz \
  --survey counts/refined_repaired_results --hybrid --workers 3 \
  --output replayed/repaired_spheres
```

The final complete covers certify all 193 sources with successful Z models,
using 344,174 patches in place of 937,968 original boxes. The other seven sources
retain their original fallback route. The exact commands and source
selection are recorded in `counts/COUNTS_REPORT.md`; `per_ball_counts.csv`
points to the final certificate record chosen for each source. Initial failed
attempts are retained as diagnostics and are not labelled as full certificates.

## Edge whole-ball, transfer, and sharpness replay

```bash
python edge/edge_augmented.py
python edge/edge_replay.py --output replayed/edge_full.json
python edge/edge_sharpness.py
```

The first command reconstructs the augmented normal form. The second recomputes
the weighted output constants, all 55,345 target/orientation tests, 2,026 genuine
centre-jet fallbacks, and exact sphere coverage. The third replays fixed
directional lower witnesses for the full phase output and all 1,440 edge
transfer output maps. The `--only-full` sharpness option is a separate diagnostic.

The source coordinates are `p=Mw`. The raw-parameter Hessian estimate is valid
on this same ellipsoid; it is not a claim on a larger isotropic `p` ball. The
implemented 22-normal-coordinate proof includes the fold `R=0` and needs only
the stated local F6-012 germ.

## All weighted seed bounds and actual Taylor sharpness

```bash
python refined_export.py context/sample_certificate.json.gz \
  results/curvature_groups.csv replayed/weighted
python taylor_sharpness_replay.py context/sample_certificate.json.gz \
  replayed/weighted replayed/weighted/taylor_sharpness.json
```

The first command is the analytic replay of 193 source models and 8,284 output
maps. Direction proposals are normalized and re-evaluated in Arb. The second
command is a consequence of those proved bounds; its inputs must be produced
by the first replay before their provenance is trusted. See `THEORY_REPLAY.md`
for the exact meaning of every exported bound.

## Geometric obstruction and exact coverage counts

```bash
python replay_geometry.py context/sample_certificate.json.gz \
  counts/seed6_geometric_obstruction.json replayed/seed6_geometry.json
python sphere_count_replay.py --max-level 5
```

The first command verifies all 2,184 noncontainment witnesses and the lower
bound of 627 leaves. Its scope is the 42 recorded descriptors and windings for
seed 6 under FORMAT's exact traversal. The second command uses integer
arithmetic only to count closed dyadic cells meeting the sphere.

## Candidate generation versus proof

`counts/count_study.py`, `counts/weighted_study.py` (including its refined mode),
and `edge/edge_study.py` are numerical candidate generators. Their proposed
counts do not become certificates until the corresponding interval replay
and coverage traversal succeed. `results/model_j.npz` files are numeric
proposals, not interval witnesses. Retained original leaves in a numerical
hybrid cover must be checked by the actual-centre method, refined, or sent to
the original fallback verifier.

The full input has 2,328 source balls, but only the supplied 200 full transfer
lists are studied here. There is no statistical extrapolation to the others.

## Integration notes

- The transfer predicate is on `box ∩ source sphere`. The coverage traversal is
  unchanged; a theorem claiming the transfer on the entire box must be replaced
  by the sphere-restricted lemma before using the sphere correction.
- Cross-ratios and signatures are gauge invariant, but the projected Newton
  residual must retain the same dephased lift used to construct its left inverse.
- The stored winding convention is checked over the whole source ball.
- Reuse a centre jet only for its identical anchor.
- Float computations propose data. Arb inequalities and exact integers decide
  validity. Nonfinite intervals are rejected.
- `vendor/wholeball.py` contains conservative compatibility changes for the
  python-flint 0.9 interval-power corner case. Upper-only norm helpers are never
  used as lower witnesses.

No Lean kernel implementation is included. The new lemmas and complete finite
witness data are intended to make that integration concrete.

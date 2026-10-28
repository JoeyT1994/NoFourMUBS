# Original-ball all-K classifier

For independent review, start with the [full results and proof handoff](REVIEW_HANDOFF.md)
and the [review request](REVIEW_REQUEST.md). They identify the frozen implementation,
acceptance dependencies, exact remaining cases, and reproduction commands.

This checks every completing third basis on a specified **whole original seed ball**, keeping its original centre, four native coordinates, and radius. It combines the complete Stage C ray cover with conditional column bounds and an interval proof forcing a genuine balanced order-three symmetry. The symmetry recognition theorem identifies Conjecture 1 type.

The checker is a sufficient test: it reports unresolved cases honestly. The approximately 200 surviving indices are currently on inaccessible Rusty storage, so this release does not claim all 200 have passed. The separate X-ball is outside this driver's scope.

## Run

From the repository root, with Python 3.11 or newer:

```sh
python3 -m venv .venv-tc-native
.venv-tc-native/bin/pip install -r proof/theorems/TC_triple_classification/family_neighbourhoods/requirements.txt
.venv-tc-native/bin/python proof/theorems/TC_triple_classification/family_neighbourhoods/run.py \
  --indices 1864 2200 1700 500 1100 --output tc-receipts.jsonl
```

For the Rusty survivor list, use zero-based original atlas indices, one per line (whitespace, commas, and `#` comments are accepted), or a JSON integer array:

```sh
.venv-tc-native/bin/python proof/theorems/TC_triple_classification/family_neighbourhoods/run.py \
  --index-file remaining-indices.txt --workers 8 --output remaining-receipts.jsonl
```

Add `--resume` to continue the same batch. Completed rows, including unresolved rows, are retained; to retry unresolved cases after changing the method, use a new output file. Resume rejects changed proof/source/atlas bindings. Each worker uses its own Arb context; the driver limits numerical library thread pools to one thread per worker unless explicitly configured otherwise.

Exit status is 0 only when every requested ball is certified or certified empty; 2 means at least one is unresolved. A partial output after an interrupted job does not cover missing indices. The adjacent `.manifest.json` records the exact requested set and source binding. Keep it with the JSONL receipts.

## What is checked

- The supplied original atlas SHA-256 and each selected seed record.
- Fresh C1 and whole-ball native phase-model checks.
- An exhaustive five-phase torus cover and complete color-pattern enumeration.
- Arb column contractions, a coupled contraction of the full third basis, and necessary orthogonality exclusions.
- A complete fine-bin fallback with cached pair tests when coarse labels are insufficient.
- Exact permutation, gauge, and moving-projector identities.
- A strict Arb derivative bound below one, forcing actual order-three symmetry for every solution in each remaining pattern.

Numerical roots, fits, inverses, and symmetry matches propose data only. They never establish completeness or classification. Stage C uses the existing proved binary64 error enclosures; the new acceptance inequalities use Arb. See [PROOF.md](PROOF.md) for the conditional theorem and every analytic bound.

The method does not rely on the exceptional fourth-root anchor's list of 120 rays or its 60 symmetries, and it does not load the supplied R=0.153 handoff executable code. It uses the handoff's general recognition proof as an analytic dependency, with its content hash recorded.

## Deployment and verification

`package.py` creates a self-contained tarball with the pinned atlas, required executable files, arithmetic documentation, recognition proof, and source manifest. No SSH access is needed to build it. Extract it on Rusty and run the commands above from the extracted root.

`test_native.py` checks the equation/Jacobian normalization against direct matrix arithmetic, the canonical actions and windings at a tensor-product triple for all three anchors, malformed actions, graph exhaustion/caps, nonfinite norm rejection, preservation of a known zero under the coupled contraction, whole-ball enclosure rounding, and fine-graph pruning/caps. End-to-end receipts in `results/` provide the interval replay evidence on selected original balls.

Resource limits (2,000,000 ray bins, 6,000 labels, 300,000 undirected candidate edges, 5,000,000 clique-search steps, and a configurable per-ball pattern cap) produce `NOT ESTABLISHED`. They never certify emptiness. The optional fine-bin fallback allows 6,000 bins and 5,000,000 candidate edges per color pattern, processed in batches of 20,000 edges.

## Measured status

The latest replay closes **12 of 13** selected original balls: six have every completing basis classified and six are certified empty. Newly resolved cases are **1864 and 1700** (all-K classification), and **2200, 500, and 1100** (emptiness). Ball 1864 retains its original radius **0.08**; 2200 retains **0.125**. No H-domain subdivision or reduced radius is used. Ball 1879 also passes through this generic method.

Ball **2300** still has two unresolved patterns. Coverage of the inaccessible survivor list is not yet established. See [the receipts, timings, and remaining case](results/REPORT.md).

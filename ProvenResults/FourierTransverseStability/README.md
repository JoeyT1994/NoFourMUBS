# FourierTransverseStability

Additive partial regional theorem for all physical order-six Hadamard
completions whose leading corner is maximal among all 400 positional
corners. Both matched and both nonmatched pairings are covered.

Read `PROOF.md` for the exact domains, hypotheses and proof. The two
moving-reference bounds are

```
broad: d_rows_and_columns <= max(4*abs(u), 16*abs(v)),
thick: d_rows_and_columns <= max(2.5*abs(u), 10*abs(v)).
```

Here u,v are **normal seed phases in radians**, not arbitrary seed-box
half-widths. The family parameters p,q are in **turns**. The exact
rectangles are in `geometry.py` and `data/profiles.json`. Both bands
enter the existing direct **projector** tube of radius 1/36 via an
explicit transformation of the actual transposed carrier.

## Replay

Unzip this additive directory into the supplied local-core repository.
From that root run:

```sh
python3 -B ProvenResults/FourierTransverseStability/verify.py --workers 4
```

For the second retained precision:

```sh
python3 -B ProvenResults/FourierTransverseStability/verify.py \
  --workers 4 --precision 192 \
  --receipt ProvenResults/FourierTransverseStability/receipts/REPLAY_192.json
```

Dependencies: Python 3.10+, numpy, sympy, mpmath. No Julia, compiler,
network, cluster or python-flint is needed by the **new** replay.

The verifier checks 629 complete tangential tiles, both side branches,
exact algebra, all geometric cover branches and rejection controls.
It imports the pinned, already-proved regional matrix tube; it does
not rerun that theorem's separate five-cell common-ray cover.

## Files

- `PROOF.md`: theorem, full analytic proof and evidence boundaries.
- `verify.py`, `kernel.py`: complete replay and fail-closed acceptance.
- `interval.py`, `charts.py`, `corner.py`: directed arithmetic, quadratic
  normal predictors, correlated corner-gap and strict-R tests.
- `geometry.py`: exact scope and matrix-free whole-seed-box predicate.
- `example.py`: exact guarded subbox of pilot row 22328, verified without
  any matrix lifting; it does not close the full parent.
- `algebra.py`, `controls.py`: exact identities and negative controls.
- `data/predictors.npz`, `data/tiles.json`: retained dyadic proposals and
  complete two-dimensional parameter cover.
- `data/dependencies.json`: hashes of 23 direct supplied inputs.
- `build.py`: optional numerical proposal generation followed by the
  exact/outward acceptance kernel. Not used during replay.
- `receipts/`: fresh full replays and delivery receipt.

## Applicability

After replay, call `geometry.contains_box(centers, halfwidths)` with
four exact radian centers and separate nonnegative radian half-widths.
A result is a membership certificate; `None` means not certified.
Physicality and all-400 maximality remain explicit hypotheses. For
campaign centers/guards involving exact pi, use the outward interval
interface `geometry.frame_test`; never discard the guard or use a
midpoint-only membership decision.

The module changes no existing terminal, registry, proof-of-record or
frontier. It certifies neither the entire shoulder nor the secondary
endpoint patches, and its regions have 1<R<16. No low-R closure or
count of closed original frontier boxes is claimed.

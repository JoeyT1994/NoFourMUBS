# ExactPSDRegionCertificates

**14 whole-region strict-D0 exclusions; 28 exact quadratic Bernstein
witnesses; all 7,553 selected low-R frontier leaves covered.**

The regions are rational Cayley-coordinate boxes intersected with `0<R<=1`.
All selected source leaves independently satisfy `R<2/3`. There is no new
seed subdivision or radical subdivision in the exclusion proof.

The common unscaled minor bound is `m<-1/4` on `0<=tau<=1`. Each witness has
a polynomial identity with the exact equality `tau^2-R=0`, a positive
rational epsilon, and individually certified nonnegative multipliers.
The coefficient bounds use exact whole-box Taylor enclosures, so this is
subdivision-free, not interval-free. The package is not a global SOS claim.

## Replay

Python 3, standard library only:

```sh
python3 verify.py
```

To compare the selected geometry with the original uploaded frontier:

```sh
python3 verify.py --frontier /path/to/unresolved_pairing_leaves.jsonl.gz
```

To check one certificate without claiming population coverage:

```sh
python3 verify.py --region-only 1025
```

The source file is at
`NoFourMUBS_local_frontier_2026-10-01/shoulder/cluster_driver_round1/unresolved_pairing_leaves.jsonl.gz`.
The original archives and source gzip are pinned in `population_manifest.json`.
They are not duplicated in this smaller delivery.

The retained run checked the original gzip, 14,164 total records, all
7,553 selected leaves, all 28 witnesses, the 400-corner physical control,
and all negative controls. See `validation_report.json` for exact results.
Running without `--frontier` replays the supplied geometry manifest and all
mathematical certificates, but does not re-read the original compressed file.

## Files

- `PROOF.md`: theorem, exact polynomial identity, positivity proof, every
  boundary/denominator branch, physical hypotheses, dependencies and limits.
- `REGIONS.md` and `certificates/`: human-readable index and complete exact
  rational region, witness, coefficient-bound and multiplier data.
- `exact_core.py`: integer outward arithmetic, order-two jets, and the exact
  signed-moment coefficient circuits, including denominator clearing.
- `algebra.py`: a small sparse-polynomial checker; it independently checks
  the radical identity, complementary-corner square, determinant coefficients,
  31 moments, denominator identities, and an exact physical 400-corner census.
- `geometry_exact.py`, `R_models.json`, `low_R_leaves.json`, `source_grid.json`:
  exact source geometry, 79 cap models and the finite coverage proof.
- `verify.py`: acceptance and mutation/negative-control replay.
- `upstream_text/` and `upstream_manifest.json`: unchanged source proofs,
  conventions, engine and explicitly imported paper text, with hashes.

All acceptance uses integer/Fraction comparisons. There is no reliance on
mpmath, SymPy, a compiler, hardware floating-point rounding, eigenvalues,
optimization output, fitted coefficients, or a stored Boolean PASS flag.
The wall-time number in the report is display metadata only.

## Exact scope

The population is precisely the records whose stored R string begins
`[+/-`. This naming convention selects the 7,553 records; the stored R
values are not trusted as inequalities. Their actual whole-box R bounds
are independently recomputed from rational Taylor models.

These are strict-D0 exclusions, not nonexistence results for all Hadamard
completions at those seeds and not direct four-MUB certificates. They
eliminate completions whose leading corner is globally maximal and strict.
The reconstruction and fixed-corner matching interface is the same one
used by SignedCornerPSDPrune; the copied proof dossier remains relative to
its explicitly stated ClassificationPaper inputs.

The separate residual patches near `(2,4,4,2)` and `(4,5,0,3)` are **not
certified closed here**. The failed pilot and an exact physical
counterexample to an unrestricted-neighborhood exclusion are documented
in `LIMITATIONS.md`. No claim is made about the other 6,611 frontier records.

No Lean formalization or verification against the named Lean/Mathlib
revisions has been performed. `LEAN_PORT.md` gives the exact interface
and small ring identity to port, without untested Lean code.

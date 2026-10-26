# Replaying the weighted bounds and their sharpness witnesses

Run commands from the returned package directory. The examples assume the
supplied input files are under `context/`; if the archive was extracted to
another directory, pass that actual path instead. Python needs NumPy and
`python-flint`; this run used `python-flint 0.9.0`. The included interval
norm helpers handle that version's interval-power corner case.

The dependency directories `vendor/` and `edge/` must remain beside the
scripts. `seed_weighted.py` uses the dimension-independent predictor
residual/cache routine from `edge/edge_augmented.py`; it does not use an
edge-chart theorem to prove seed-ball statements.

## Main certified replay

The included `results/curvature_groups.csv` supplies group indices and
direction proposals. Those proposals are not trusted as norm bounds:
the scripts renormalize each direction in Arb and re-evaluate its exact
centre curvature. All original centre equations, contraction constants,
and weighted residual bounds are recomputed from the certificate.

```bash
python refined_export.py context/sample_certificate.json.gz \
  results/curvature_groups.csv replay_weighted
python taylor_sharpness_replay.py context/sample_certificate.json.gz \
  replay_weighted replay_weighted/taylor_sharpness.json
```

The first command produced 193 certified source models and 8,284 certified
weighted output bounds in about 223 seconds in this session. Machine time
will vary. It creates one `refined_weights_seed_j.json` per seed, plus
`refined_weights_summary.json`.

The second command is the inexpensive exact-Arb consequence of those
certified bounds. It checks the original-centre, whole-source-ball Taylor
supremum using

\[
 U=\tfrac12\alpha r^2+T_0,\qquad
 L=\tfrac12 t_{\rm lower}r^2-T_0.
\]

`U<3L` certifies that the reported upper bound is less than three times
the true Taylor supremum. The run returned 7,590 maps below a factor of 3
and 5,621 below a factor of 2. This sharpness statement does not apply
automatically to every sphere-centred patch. Run the first command before
trusting the second command's input bounds; the second does not independently
re-prove their provenance.

## One weighted output map

```bash
python seed_weighted.py context/sample_certificate.json.gz \
  --seed 1728 --group 30 --output replay_weighted/weighted_1728_30.json
```

The exported fields have the following meanings, with
`Q=Q0+Uw+H2[w,w]/2+Xz(w)` and the requested output map `A`:

| Field | Rigorous bound |
|---|---|
| `normal_value` | `sup ||AX z||` |
| `normal_gradient` | `sup ||AX Dz||` |
| `normal_hessian` | `sup ||AX D²z||` |
| `alpha` | `||AH2||` |
| `Hessian` | `sup ||A D²Q||`, bounded by `alpha + normal_hessian` |

Every JSON number is an outward upper bound. The `old_*`, `simple_*`, and
`refined_*` fields allow comparison of the older norm-first estimate with
the bound that carries the output map through the residual equations.

## Earlier, simpler Hessian-sharpness witnesses

```bash
python curvature_replay.py context/sample_certificate.json.gz \
  results/curvature_groups.csv replay_weighted/curvature_certified_33.json
```

This replays all 1,187 nonlinear output maps on the 33 balls selected by
the original simple-bound survey. It proves a factor below 3 against the
whole-ball Hessian supremum, with maximum ratio upper bound
`2.962358040490293`. The refined certificate is stronger and covers more
maps; this earlier replay is retained as an independent, simpler benchmark.

## Reconstructing the numerical survey

These commands are optional for the certified replay above. They recreate
the midpoint proposals and the numerical diagnostic table:

```bash
python build_models.py context replay_results
python curvature_survey.py context/sample_certificate.json.gz \
  replay_results replay_results --random 1024
```

The second command uses 312 deterministic grid directions and 1,024
deterministically seeded random directions. Its output is explicitly
**NUMERICAL**, even though the source model constants were certified.
The separate Arb replays turn the selected directions into verified lower
witnesses. Setting `OPENBLAS_NUM_THREADS=1` can reduce overhead for these
small matrix products.

## Exact dyadic-sphere counts

```bash
python sphere_count_replay.py --max-level 5
```

This uses integer arithmetic only and returns the closed-box sphere counts
`16, 256, 2080, 16960, 136832` at levels 1 through 5. These are geometric
counts, not successful-transfer counts.

## Audit of the transfer integration

**PROVED, conditional on the same local germ as Z.** In
`weighted_replay.py`, the `WeightedTransfer` subclass retains the target
affine map and centre quadratic term. It replaces only the normal target
remainder: `||AX|| tau` becomes `normal_value`, and the local target
Hessian contribution `||AX|| Z2` becomes `normal_hessian`. The original
orientation tests remain unchanged and valid. The effective `xnorm`
substitution is used only in those target expressions. The source model's
positive `tau,Z2` make its two divisions valid on the supplied certified
models. No claim that the substituted number bounds `||AX||` is needed or
made.

The bounds are for the original ball, so the polynomial test applies on
the sphere even if a dyadic midpoint is outside the ball. The actual-centre
test uses the radial anchor and the original contraction. The convex
sphere-corrected target expression is only a certificate on the box's
intersection with the sphere; the exact coverage traversal supplies that
sphere membership. The kernel-facing transfer lemma must retain this
hypothesis.

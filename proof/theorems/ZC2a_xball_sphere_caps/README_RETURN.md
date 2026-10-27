# ZC2a — X-ball spherical-cap return

Read `REPORT_RETURN.md` for the achieved result, measured counts, timings,
certificate sizes, negative controls, and precise scope. The cap-transfer
proof is `EDGE_CAP_THEOREM.md`; `EDGE_CAP_AUDIT.md` records the mathematical and
implementation audit.

## Replay the frozen certificate

Use Python 3.11 or later with the packages in `requirements-replay.txt`.
The retained run used Python 3.12.14 and python-flint 0.9.0. From this
directory, in an environment with those dependencies installed:

```bash
PYTHONPATH=cert:atlas OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 \
python xball_replay.py \
  --input data/xball_headers.json.gz \
  --caps results/xball_caps_certificate.json \
  --workers 6 --negative-tests \
  --receipt results/replay_again.json
```

Every source model is recomputed. Every cap's target, both orientation
signs, and five-by-five matrix witness are checked in Arb. The complete
sphere coverage is checked by integer arithmetic. A result is accepted
only when all required checks pass. `--workers 1` uses the serial
production entry point directly.

The retained receipt is `results/xball_replay.json`. Check that its source,
certificate, and checker hashes match this checkout with:

```bash
PYTHONPATH=cert:atlas python xball_check_binding.py
```

This hash check is an integrity check; the earlier command reruns the
mathematical verification.

`MANIFEST.sha256` additionally records every distributed file except the
manifest itself. It can be checked from this directory with
`sha256sum -c MANIFEST.sha256`.

## Replay the geometric dropped-cap counterexample

Removing cap 322 (original transfer group 10,383) exposes an actual sphere
point missed by all remaining caps. The stored rational polar witness can
be checked independently with integer arithmetic:

```bash
python cert/find_dropped_cap_hole.py \
  results/xball_caps_certificate.json \
  --verify-witness results/dropped_cap_hole.json
```

The retained result is `results/dropped_cap_hole_replay.json`. The complete
replay command above also runs the requested enlarged-cap, dropped-record,
wrong-group, and tampered-witness controls. Additional controls are in
`results/final_negative_tests.json`.

The pinned dependency file reproduces the retained environment. Its NumPy
and SciPy versions require Python 3.11 or later. SciPy is used by numerical
construction helpers; the exact coverage replay does not use its convex
hull proposals or optimization results as evidence.

## Check the connection to the original handoff

The original `data/zc2a_xball.json.gz` is included unchanged. The smaller
`data/xball_headers.json.gz` preserves every seed header, the source edge
header, and the original order and content of all T1 descriptors. It omits
only their box arrays and adds ignored search metadata. The independent
exact projection check is:

```bash
python cert/check_xball_projection.py \
  data/zc2a_xball.json.gz data/xball_headers.json.gz
```

Its retained receipt is `xball_projection_check.json`.

## Integrate into the surrounding atlas

Set `edge_record["caps"]` to the object containing the `caps` and `coverage`
fields from `results/xball_caps_certificate.json`. Preserve the existing
edge transfer descriptor order: `group_index` refers to that order. The
groups' `boxes` may then be empty. `FORMAT.md` §8a documents the additive
field and the compact index-only coverage schema.

`cert/edgecert.py` and `cert/certify_seed_atlas.py` contain the production
wiring. `cert/edgecaps.py` provides the shared serial and individual-cap
checks. Existing seed-cap and edge-box meanings are preserved.

This return checks the X-ball boundary transfer component. The target seed
chart hypotheses and the other atlas components remain dependencies of
the surrounding proof. It contains no Lean-kernel acceptance and does not
claim a new complete proof of nonexistence of four MUBs.

## Construction and coverage implementation

`xball_construct.py` adapts the original ZC proposal method to the edge
model. `xball_fast.py`, `xball_groups_build.py`, `xball_adaptive.py`, and
`xball_axis_heuristics.py` accelerate numerical proposals and hole filling.
`xball_weighted_all.py` refits caps with the sharper edge weighted Hessian.
`xball_finalize.py` freezes the geometric certificate and checks exact
coverage. Construction diagnostics never determine acceptance.

The final untrusted proposal and weighted-curvature cache are included.
To regenerate and exactly check its coverage without overwriting the
frozen certificate or retained receipt:

```bash
PYTHONPATH=cert:atlas OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 \
python xball_finalize.py \
  --input results/xball_weighted_final_proposal.json \
  --output results/reconstructed_caps.json \
  --receipt results/reconstructed_coverage.json
```

The resulting geometry still requires the complete Arb replay. Construction
uses NumPy and SciPy only to propose caps and facets. The archive retains
the final proposals, bulk group proposals, weighted refits, and timing logs;
several superseded intermediate cap snapshots are omitted.

The compact coverage certificate stores facet index quadruples. Exact
Cramer's rule reconstructs its dual vertices. Strict supporting-plane
inequalities, twice-incident ridges, and all dual-vertex norm inequalities
are verified. An exact dyadic bounding-box hierarchy speeds support checks.
`COVERAGE_AUDIT.md` proves these steps and records their validation.

The original handoff's `BRIEF.md`, `PROOF.md`, `Z/`, `ZC/`, and `ZT_edge/`
remain available for the surrounding definitions and dependencies.

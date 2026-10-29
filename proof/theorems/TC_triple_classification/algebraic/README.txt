Algebraic improvements to triple certification

This directory extends upstream revision
13d1853c7d89bb1d8901b63649cede39c8c98b2b of JoeyT1994/NoFourMUBS.
The original native and X-ball sources are unchanged. Every extension
has a separate source binding. The new code is research proof software;
the global triple classification is NOT established by this release.

Concrete result

On this runtime the unchanged native certifier leaves original seed
ball 2169 unresolved (five excluded and eleven unresolved patterns).
The scalar extension excludes all sixteen patterns on the same original
ball, including its boundary, with arbitrary completing K covered by the
native exhaustive cover. Its original adapted seed radius is exactly
the binary64 value 0x1.999999999999ap-4, approximately 0.1. This is not a
claim that an unscaled four-phase radius 1/8 has been classified.

Saved-witness replay and other pilot outcomes are in results/ and the
handoff's generated progress summary. Only completed source-bound runs
are evidence. Failed pilots, partial scans, and local graph/barrier
regressions do not close an atlas ball.

Implemented components

- scalar_support.py: signed full-basis quadratic lower bounds on the
  product of the four-seed ball and six K-error balls. All acceptance is
  Arb. Numeric proposals are saved for replay. SCALAR_PROOF.txt gives
  the derivation and explains why a zero-only cover is not an epsilon
  boundary cover.
- localization.py and patterns.py: optional necessary seed caps, with
  original-chart centre jets, repeated contractions and explicit original
  coordinate tracking. CAP_PROOF.txt explains preservation of all zeros
  of the original pattern. This route currently has no claimed extra
  whole-ball closure beyond the saved successful receipts.
- intrinsic.py: exact-chart 34-variable residual/gradient/Hessian
  enclosures, with all curvature terms and explicit radians/turns.
- implicit.py: uniform existence and uniqueness of all 30 K coordinates,
  plus four-variable residual jets retaining all 36 remaining equations.
  A real native-chart pilot passes; this is not an all-K census.
- barrier.py: complete rational box-complex geometry, exposed walls,
  periodic K seams, positive boundary gaps, critical witness exclusions,
  and independent coverage replay. Missing faces or unfinished branches
  cannot pass. known_boxes.py recomputes removed-region classifications.
- transitions.py: all three basis anchors, swaps, coherent common row
  gauges, and separately named H-only and joint phase inclusion metrics.
  Inclusion receipts require a verified target theorem before they may
  be used for classification.
- crossing_norms.py and verify_walls.py: fresh reconstruction of both
  crossing preconditioners and their derivative/norm bounds; quantitative
  wall coefficients. The supplied exact crossing structure remains a
  bound upstream dependency. Wall geometry is not silently assumed.

Reproduction (from the repository root)

Use Python 3.12 or a compatible newer Python with the packages pinned in
this directory's requirements.txt. The recorded runtime used Python
3.12.4, NumPy 2.0.1, SciPy 1.17.0, python-flint 0.9.0, SymPy 1.14.0 and
threadpoolctl 3.6.0. Do not use Python -O for proof scripts.

Let A=proof/theorems/TC_triple_classification/algebraic. Commands below
use $A only as a path abbreviation; the handoff also supplies commands
in REPRODUCE.sh. Output names must be new; resume is allowed only where
explicitly supported and with the identical source/input binding.

  python -m unittest discover -s "$A" -p 'test_*.py' -v
  python proof/theorems/TC_triple_classification/family_neighbourhoods/test_native.py

Original baseline:
  python proof/theorems/TC_triple_classification/family_neighbourhoods/run.py \
    --indices 2169 --output baseline-2169.jsonl

Improved whole-original-ball proof:
  python "$A/run_algebraic.py" --indices 2169 --output improved-2169.jsonl

Saved quadratic witnesses, rebuilt all-K cover (no new dual optimization):
  python "$A/replay_scalar.py" --receipts improved-2169.jsonl \
    --index 2169 --output replay-2169.jsonl

Optional necessary seed localization:
  python "$A/run_localized.py" --indices 1296 --output localized-1296.jsonl

Crossing constants, with the preconditioners reconstructed afresh:
  python "$A/verify_walls.py" --output wall-bounds.json

Actual native-chart implicit graph proposal plus certification:
  python "$A/propose_graph_pilot.py" --output graph-input.json
  python "$A/run_barrier.py" --input graph-input.json \
    --output graph-barrier.json --max-nodes 1
  python "$A/run_barrier.py" --replay graph-barrier.json

The graph example's small parameter domain is a regression of the new
elimination and critical machinery, not a substitute for the original
whole-ball target. run_barrier.py reads exact rational root endpoints.
For direct 34-dimensional examples give 4 w intervals and 30 K intervals.
Only K in turns can use periodic_axes; an axis marked periodic must span
exactly one full turn. Cross-chart unions are not implemented by guessing
coordinate identifications.

What remains

The upstream snapshot reports 182 open ordinary seed balls. Count only
new fully closed originals, with their replay receipts, against that
snapshot. Completing the conjecture still needs every remaining all-K
domain closed, full graph/tube overlap and boundary accounting where
the critical method is used, the X-ball and Tao coverage, and the named
recognition and Stage C review obligations. The raw large remote split
and X-ball shell rows are not all present in the GitHub snapshot.

No claimed cost estimate, degree argument, numerical rank, or absence
of numerical counterexamples replaces those obligations. PROOF.txt
gives the mathematical scope of each implemented step and each limitation.

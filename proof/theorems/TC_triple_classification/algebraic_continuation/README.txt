Algebraic certification on the original atlas balls

This directory continues the work in ../algebraic/ on the upstream source
revision 13d1853c7d89bb1d8901b63649cede39c8c98b2b. Its target is every
completing basis K over each original closed native ball, at the original
radius stored in the pinned 2775-ball atlas. The radii belong to the native
four-dimensional coordinates of the atlas. They must not be relabeled as
a common radius 1/8 in unscaled seed phases or full Hadamard phase norm.

The proof is incomplete. The authoritative checkpoint ledger is
results/progress_replayed.json. It starts with the preceding release's
181 unresolved original balls and counts only completed independent
replays whose source hashes, atlas record hashes, and complete pattern
lists are checked by checkpoint.py. A successful pattern, numerical
optimization, incomplete scan, or unverified discovery is not a closed
ball. The upstream 2593 reported closures and the preceding replayed
closure 2169 are separate dependencies. We have not freshly replayed
every upstream certificate, and the upstream exceptional-case evidence
and global recognition obligations remain dependencies of a full proof.

Why the new tests help

The exhaustive native cover first supplies closed phase bins for every
possible column of K. The bins are grouped into colors, and every possible
basis is contained in one of the surviving six-color patterns. The new
bin test retains the signed quadratic Taylor polynomial of the six
unbiasedness equations on each original closed bin, with the whole
original seed ball as its parameter domain. A positive interval-verified
lower bound excludes the bin. Keeping every other bin preserves all
completing bases and can substantially tighten the later column tubes.

For each remaining basis pattern, the phase test optimizes the residual
direction and quadratic multipliers together. It tests each available
enclosure before a later refit changes the expansion point. The complex
entry test then expresses the unit-entry and K-orthogonality equations
as exact quadratic polynomials. Only the H-dependent mixed equations
need a Taylor remainder. Retaining contractions of the H derivatives
improves that remainder. A further implemented test intersects this
enclosure with the absolute displacement and the real and imaginary
error bounds implied by the phase tube, giving 25 quadratic constraints.
Its pilot improved a bound but did not close its test ball.

Numerical conic optimization proposes witnesses. Every accepted witness
is reconstructed in Arb and must have a strictly positive verified
margin. A separate replay rebuilds the exhaustive native cover, checks
every saved bin deletion, and processes every surviving basis pattern.
Replays do not invoke the conic solver. They may still use numerical
proposals inside the unchanged native code, whose acceptance tests are
checked as before. No original H radius is reduced by these methods.

Implemented proof routes

  optimized_support.py, run_optimized.py, replay_optimized.py
    Optimized signed phase quadratics. See OPTIMIZED_PROOF.txt.

  bin_quadratic.py, run_bins.py, run_eager_bins.py, replay_bins.py
    Closed-bin filtering and tests of each valid phase enclosure.
    See BIN_PROOF.txt and ../algebraic/SCALAR_PROOF.txt.

  chordal_support.py
    Exact quadratic complex-entry K equations. See CHORDAL_PROOF.txt.

  tight_chordal.py, run_tight_bins.py, replay_tight_bins.py
    Contracted H-derivative remainder. See TIGHT_CHORDAL_PROOF.txt.

  intersection_chordal.py, run_intersection_bins.py
    Twenty-five quadratic constraints. See INTERSECTION_PROOF.txt.
    The saved pilot has status NOT ESTABLISHED.

  cubic_chordal.py, run_cubic_bins.py, replay_cubic_bins.py
    Signed mixed cubic tensors, combined before taking their norms.
    See CUBIC_PROOF.txt. Acceptance uses the same quadratic dual.

  phase_hull.py and quadratic_caps.py
    Experimental support slabs for the bin geometry and necessary seed
    caps. See HULL_PROOF.txt and CAPS_PROOF.txt. Their saved pilots do
    not establish an additional full-ball classification.

  partition_geometry.py, run_partition_bins.py, run_partition_fast.py
    Complete partitions using local radii for the intersection of each
    box with the original ball. The corresponding replay_partition_*.py
    programs check the full tree, reconstruct every leaf, and recheck all
    saved scalar witnesses. See PARTITION_GEOMETRY_PROOF.txt. Count only
    completed full-ball replays, not the first-pattern pilot.

  seed_partition.py and transfer_cover.py
    Base partition geometry and experimental geometric transfers.
    TRANSFER_PROOF.txt states the upstream theorem dependencies. Failed
    or stopped partition and transfer pilots remain unresolved.

  checkpoint.py
    Rechecks source bindings and counts only completed all-K replays.
    This is accounting, not a replacement for rerunning the replayers.

Reproduction

Use Python 3.12 with the pinned packages in requirements.txt, and do not
run proof scripts with Python -O. From the repository root, write A for
proof/theorems/TC_triple_classification/algebraic_continuation. The commands
below use $A only as a path abbreviation. Choose fresh output names.

  python -m unittest discover -s "$A" -p 'test_*.py' -v
  python -m unittest discover -s "$A/../algebraic" -p 'test_*.py' -v
  python -m unittest discover -s "$A/../family_neighbourhoods" -p 'test_*.py' -v
  python "$A/checkpoint.py"

Replay ball 126, including all its saved bin and basis exclusions:

  python "$A/replay_bins.py" --eager \
    --receipt "$A/results/eager_bins_126.jsonl" --output replay-126.jsonl

Replay a certificate from the ongoing eager batch:

  python "$A/replay_bins.py" --eager \
    --receipt "$A/results/scan_eager/ball_596.jsonl" --output replay-596.jsonl

Replay ball 604 using the contracted H-derivative remainder:

  python "$A/replay_tight_bins.py" \
    --receipt "$A/results/tight_bins_604.jsonl" --output replay-604.jsonl

Replay the complete partition certificate for ball 2573 (both patterns,
512 leaves, and 7,150 saved bin exclusions):

  python "$A/replay_partition_bins.py" \
    --receipt "$A/results/partition_full_2573.jsonl" --output replay-2573.jsonl

Replay a signed-cubic certificate:

  python "$A/replay_cubic_bins.py" \
    --receipt "$A/results/scan_cubic_first/ball_1028.jsonl" --output replay-1028.jsonl

Replay the two optimized-phase certificates:

  python "$A/replay_optimized.py" \
    --receipts "$A/results/optimized_1296_cert.jsonl" --index 1296 \
    --output replay-1296.jsonl
  python "$A/replay_optimized.py" \
    --receipts "$A/results/optimized_serial.jsonl" --index 1073 \
    --output replay-1073.jsonl

For fresh discovery on an original ball:

  python "$A/run_eager_bins.py" --index 596 --output discovery-596.jsonl
  python "$A/run_tight_bins.py" --index 604 --output discovery-604.jsonl

batch_hybrid.py runs independent per-ball processes with an external
time limit. A timeout is NOT ESTABLISHED. Use a new results directory for
each source version. Existing files are skipped by that batch utility,
so a skipped row is not evidence that it matches a changed source.
replay_batch.py follows eager-batch completions during an active run.

Every proof receipt is paired with a .manifest.json file. The manifests
bind explicit source files and the atlas checksum. Do not edit a bound
source and retain a previous result as if its binding still matched.
The native and preceding algebraic sources are kept unchanged here.
The old SIGALRM-based optimized serial pilot stopped early; its completed
1073 row is usable with its successful replay, but the partial scan must
not be described as complete. Other stopped and failed experiments are
retained as research evidence with their actual status.

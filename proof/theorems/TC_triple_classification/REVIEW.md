# TC validation record — 27 October 2026

**Historical record:** the sections below describe earlier stages. The
current generic native-ball certifier and its twelve closed cases out of
thirteen are documented in the [full review handoff](family_neighbourhoods/REVIEW_HANDOFF.md).
That handoff supersedes this document's opening scope summary for the
latest release; the earlier evidence below is preserved.

**PROVED / CERTIFIED scope:** the entire original radius-0.063 ball 1879
in `seed_method/TRANSFER_R0153.md`, the smaller all-triples seed ball in
`seed_method/PROOF.md`, the two earlier local full-triple patches and Tao
exclusion in `PROOF.md`. **NOT ESTABLISHED:** classification on the full
seed atlas or the X-ball. No counterexample has been certified.

## Original-ball certificate procedure

The supplied radius-0.153 all-K theorem now closes original ball 1879.
The local theorem replay passed all seven stages and reproduced every
acceptance report field apart from elapsed time. Its complete cover has
365,780 bins, 10,543 labels and 30 initial color patterns. The final
filters and symmetry argument cover every completing basis.

`seed_method/transfer_r0153.py` checks the exact equivalence of its centre
to the native anchor, freshly certifies C1 on the unchanged original
ball, and proves the entire image has phase distance below
0.120873737696 from that anchor. This is strictly below 0.153; no shrinkage
or recentering of the source ball is used. Seven new tests pass, including
an independent exact anchor construction, strict inclusion and rejection
of wrong centres, oversized domains, changed sources and incomplete
local-theorem receipts. The existing atlas's 26-source binding also passes.

The handoff was checked against all 229 supplied manifest hashes before
execution. The transfer pins 114 immutable sources/documents/inputs and
the local theorem's 33 direct source/input hashes. The replay uses the
supplied Stage C error-enclosure proof and Section 8 symmetry recognition;
these analytic dependencies are stated in the transfer proof. Stage C
uses conservative binary64 error margins, whereas the transfer inequality
and fresh C1 are verified in Arb. This is not an independent formal proof
of the supplied analytic arguments.

The local environment is Python 3.13 with NumPy 2.2.6, SciPy 1.17.0,
python-flint 0.9.0 and SymPy 1.14.0. NumPy/Accelerate emitted matrix-product
floating-point warnings, retained in the logs. All saved cover arrays
were finite. Every cover bin, label, radius, edge, color, clique,
assignment and filtered bin matched the archive's clean replay exactly;
only the proposed tangent frame differed, and its projector and Gram
bounds were rechecked in Arb. All seven acceptance reports matched the
supplied reports apart from timings. The separate supplied radius-1/8
seed-ellipsoid corollary also replayed successfully; it is not needed for
the original-ball transfer.

### Earlier generic subdivision attempt

`seed_method/whole_ball.py` implements the sufficient test proved in
`seed_method/WHOLE_BALL.md`. Its target is the unchanged native ball 1879,
with exact recorded radius `0x1.020c49ba5e354p-4`. Its complete initial
cover is replayed, rather than trusted or replaced by a smaller ball.
The full-phase injectivity argument also applies to known-family patches
away from the special anchor and does not assume projected seed points
remain in the original ball.

Seven new tests pass: nonzero-centred family existence and injectivity for
all ten construction templates,
original native centre and jet retention, inclusion of all ten known
anchor bases in the complete cover after gauge conversion, closed-split
coverage, cap rejection, and rejection of invalid triple boxes. These
tests caught and corrected two enclosure issues during development:
projected label radii need a sqrt(2) factor in fixed-first-phase coordinates,
and a norm lower bound needs `abs_lower()` when intervals contain zero.
Known K entries on the negative real axis use a certified rotated phase
lift rather than the discontinuous principal argument interval.

**The earlier bounded subdivision attempt remains NOT ESTABLISHED.** Its source-bound
receipt records every unresolved initial clique or subdivided phase box.
The 512-node run excluded 227 leaves and retained 31,637 unresolved leaves
(31,578 are unvisited original clique roots). An exact rational audit of
the prefix-free leaf paths verifies total weight one for each of all
31,579 initial cliques. All ten source/input hashes and both input-file
hashes match. Thus the accounting is complete while the classification is
incomplete; none of the original-ball cases silently disappears.
The 55-phase intervals currently lose too much correlation for the
transverse test to close this domain. Successful tests and the sufficient
acceptance theorem are not a classification certificate for that ball.

## Seed-ball extension

The new receipt classifies `||w-w_*|| <= 1/160` in seed 1879's original
w frame. Arb verifies both containment in its original radius-0.063 ball
and identity with its native C1 branch. The complete torus cover leaves
25,474 bins, all assigned to 120 certified unbiased-column branches. The
600-edge graph has exactly ten six-cliques. All ten match exact
construction anchors and pass the correlated 2-by-2 normal test, with
q below 0.231. This is an all-K result on a four-dimensional H domain.

All 13 source/input hashes in the new receipt were checked. Five new
tests passed in 13 seconds. They include an independent matrix-expression
implementation of the unbiasedness equations: at three interior seed
points it certifies column roots and verifies both the normal remainder
and its derivative bound. Other checks cover all ten gauge templates,
every clique, missing-column rejection, oversized-domain rejection and
graph-cap rejection. These are implementation checks, not an independent
proof or formalization of the analytic theorem.

The earlier complete outer cover at the original radius is separately certified:
28,213 retained bins, 515 labels and 31,579 six-cliques. Its six source
hashes also match. That search did not classify those cliques individually.
The later transfer theorem classifies every actual native-ball triple.
The smaller-ball receipt and the earlier full-triple patches alone did not
resolve that obligation. The new replays were performed locally; the Rusty
record below applies to the earlier results only.

## Replay evidence

| Check | Result |
|---|---|
| Exact flatness, two Gram identities, and all cross moduli at both anchors | PASS, symbolic arithmetic over explicit radicals |
| Product-anchor 55-variable uniqueness, radius 1/8192 | PASS, Arb contraction q < 0.315 |
| Continuous-anchor 53-variable transversal uniqueness, radius 40/2^20 | PASS, Arb contraction q < 0.103 |
| Known-family existence for every two-coordinate parameter of radius 2^-20 | PASS, uniform contraction and enclosure in the uniqueness box |
| Tao complete five-phase torus cover and no-six-clique search | PASS, 155 labels, 70 graph edges, 150 exact search steps |
| Nine unit tests, including independent symbolic directional derivatives | PASS locally and on Rusty |
| Existing seed-atlas receipt and 26-source binding | PASS; certificate SHA-256 starts `33ad9798` |
| Python compilation and Git whitespace checks | PASS |

Local runtime: Python 3.13, python-flint 0.9.0, SymPy 1.14.0. Rusty job
7346823 used Python 3.12.9 with the same library versions. The complete
Rusty replay and tests completed in 76 seconds, with batch MaxRSS 95564K.
Its full log and scheduler record are retained in `results/`.

The local and Rusty JSON receipts are exactly equal, including their
checker-source hashes. This cross-platform replay uses the same Python
implementation. It is not an independent checker or a Lean formalization.

## Rejection tests

The tests reject an oversized uniqueness box, a singular selected
Jacobian, duplicate rows, invalid or oversized family radii, graph-search
exhaustion, asymmetric graphs, invalid cell indices and nonfinite numeric
input strings. K5 is accepted as six-clique-free; K6 and K7 are not.
An exact sphere-boundary cell is retained. Every vertex of a test cell,
including its full normal remainder, lies in the new rational/Arb
enclosure. Directional derivatives are independently obtained by symbolic
differentiation of the full matrix equations at both anchors.

## Mathematical checks and remaining review boundary

- The Hessian constants 24 and 480 follow from sums of exponential
  coefficient norms; they hold on the whole phase chart.
- Transversal injectivity is separated from existence. The latter comes
  from exact anchors or a uniform contraction on the explicit continuous
  construction, never from a small residual interval.
- The continuous patch uses the same row gauge on H and K. Its two free
  coordinates are actual H phases; their family existence is uniform.
- All Tao bin rejections and graph-edge removals use strict Arb
  inequalities. Clustering distances and graph enumeration are exact.
  Search exhaustion cannot produce acceptance.
- The frozen research snapshot is only an input audit: missing indices
  and float-based exclusion summaries do not resolve any strict TC cell.
- The current worktree was based on `main` at `26b8797f`; research code was
  inspected separately. Existing proof checkers were not modified.

This validation records the author's derivation and computational replay.
The analytic arguments and the connection to an eventual complete
joint-cell cover remain available for further independent review. In
particular, neither receipt claims that the two patches cover N or the
X-ball. The explicit remaining obligations are in `PROOF.md` §6.

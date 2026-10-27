# TC validation record — 27 October 2026

**PROVED / CERTIFIED scope:** the all-triples seed ball in
`seed_method/PROOF.md`, the two earlier local full-triple patches and Tao
exclusion in `PROOF.md`. **NOT ESTABLISHED:** classification on the full
seed atlas or the X-ball. No counterexample has been certified.

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

The complete outer cover at the original radius is separately certified:
28,213 retained bins, 515 labels and 31,579 six-cliques. Its six source
hashes also match. **Those native-ball cliques remain unclassified.**
The new smaller-ball receipt and the earlier full-triple patches do not
resolve that obligation. The new replay was performed locally; the Rusty
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

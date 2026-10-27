# TC validation record — 27 October 2026

**PROVED / CERTIFIED scope:** the two local full-triple patches and Tao
exclusion in `PROOF.md`. **NOT ESTABLISHED:** classification on the full
seed atlas or the X-ball. No counterexample has been certified.

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

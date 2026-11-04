# The seed atlas driver

The driver builds the seed atlas of Steps 3–5 of [`PROOF.md`](../../../PROOF.md) and writes it in the format of
[`../FORMAT.md`](../FORMAT.md). It works in ordinary floating point. Nothing here needs to be trusted, because both
certifiers ([`../cert/`](../cert/README.md) in Arb and [`../../independent_seed/`](../../independent_seed/README.md) in
Julia) check the result from the certificate alone.

`run_rusty.sh` runs the whole build on one large cluster node, under Slurm. It grows the atlas, covers the X-ball's
sphere, writes the certificate and sets each ball's remainder, and it can resume after an interruption.

## Files

| File | What it does |
|---|---|
| `driver.py` | Grows the atlas breadth first, with a master process and a pool of workers. `distexec.py` and `distworker.py` spread the work over several nodes |
| `seedgeom.py` | The seed geometry: the side Gram equations, Newton's method and continuation, the matched completion, the census of all 400 corners under every symmetry with their orientation and matching, and the distance to the edge, R/‖∇R‖ |
| `c1.py` | `Ball`, holding the centre data (P = Q(θ₀), T = DQ(θ₀), M_θ = V S⁻¹ and U = T M_θ), and the floating-point bound on its enclosure by Taylor models on boxes in w |
| `tmb.py` | Second-order Taylor models, batched over boxes |
| `makeball.py` | Makes a new ball. It tries radii from 0.125 down to 0.01, uses label radius 0.03 and then 0.02, stores a remainder 1.1 times the Taylor-model bound, and screens the local tests |
| `cover.py` | Covers each sphere by dyadic boxes. It finds targets by sampling the sphere and looking every corner seed up in a grid index of the balls, tests same-chart (T0) and linear (T1) transfers exactly at the vertices, other T1 transfers by Taylor models, and transfers into the X-ball (T3) at sample points |
| `edge_phase.py` | The edge chart through F6, the X-ball (`EdgeBall.xball`), the side orders and windings of T3 transfers, and proposals for gaps on the X-ball's sphere |
| `edge_multi.py` | Covers the X-ball's sphere by T1 boxes into seed balls, and reports any gaps (exit code 3) for `driver.py --gaps` |
| `record_boundary.py` | Covers the boundaries of full-matrix records. Only certificates with records use it |
| `seed_export.py` | Writes the certificate, with the X-ball's exclusion radius 7/40 |
| `wholeball_n.py` | Raises each ball's remainder to its whole-ball enclosure bound wherever the local tests still pass, so that the certifiers need one centre computation per ball. It never tightens a remainder |
| `kernel_n.py`, `apply_kernel_n.py` | A looser remainder (up to six times the sampled one) for checking inside the Lean kernel. Not used for this certificate, because a larger remainder makes the local tests harder |
| `selfcheck.py` | A floating-point recheck of every enclosure, transfer box and sphere cover |
| `summary.py`, `build_log.py` | Summaries of a build, and the build log from a certificate |
| `run_rusty.sh`, `run_rusty_multi.sh`, `run_selfcheck_rusty.sh` | Cluster jobs: the whole build on one node, growth over several nodes, and the floating-point self-check |

## How the atlas is grown

**Balls.** A ball is centred at a seed in some corner chart, with M_θ = V S⁻¹ from the singular value decomposition of
DQ(θ₀), so that its image is close to a round four-dimensional disc. Both orientations are used, since
f₋(θ) = conj f₊(θ̄).

**Growth.** Each ball's sphere ‖w‖ = r is covered by dyadic boxes. Where a box has no target, a new ball is placed
just outside the sphere, at distance f · r in that direction for f in {1, 1.15, 1.3, 1.45}, choosing the f furthest
from existing centres. A new ball stays in its parent's chart while that chart's distance to the edge is at least 0.6
times the best corner's, and otherwise moves to the best corner.

**No re-covering.** Every sampled sphere point is expanded into all of its corner seeds with matching orientation,
about 28,800 of them, and each is looked up among the existing balls. Growth therefore stops wherever a class is
already covered. The atlas covers the space of classes, not the seed region itself.

**Transfers.** A transfer of type T0 stays in the same chart. A linear T1 transfer uses one of the 72 corner
symmetries, under which the new seed is linear in the old. A general T1 transfer passes to another corner where charts
meet. A T3 transfer goes into the X-ball, on boxes of level at least 4. For it, the matrix must be the chart's own
reconstruction, with its fourth corner phase and side angles within 0.1 rad of the chart's linear model at F6.

**The X-ball.** This is the edge chart's ellipsoid of tangent radius 0.13, which lies within 7/40 of F6, where
quartets are excluded by an exact cover. Its own sphere is covered by T1 boxes into seed balls (`edge_multi.py`), and
`driver.py --gaps` adds seed balls wherever a point of that sphere has no target.

**Efficiency.** Each candidate is tested only on the boxes still open, and the sample points of T3 transfers are
computed once per box.

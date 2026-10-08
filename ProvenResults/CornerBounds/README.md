# Corner bounds near the reconstruction boundary (T1)

**Additional usable prune:** [SideColumnPrune](SideColumnPrune/README.md)
now excludes seed boxes from D₀ without reconstructing H₊. Four level-9
cells retained as singular by the existing tests are certified out. This
is a partial branch-layer result; no useful uniform m is claimed.

**Stronger compatibility test:** [SideTriplePrune](SideTriplePrune/README.md)
requires the surviving columns to assemble into a compatible three-column
side. It excludes all eleven retained local branch cells, including seven
that the first prune leaves unresolved. It also uses no reconstruction
inputs and supplies no production-wide saving estimate.

**T1 is qualitatively true, conditional on accepted strict-corner coverage,
but its proposed useful constants are incompatible.**

The [proof](PROOF.md) establishes:

* For every fixed F6-seed exclusion radius η > 0, some threshold m(η) > 0
  satisfies T1. This compactness proof gives no explicit threshold and is
  not a certified numerical prune.
* An exact Fourier-family curve belongs to D₀ ∩ F and has
  `max_c R_c = 2304 v²/(1+v²)⁴`. It disproves the suggested combination
  `m ≥ 20`, `η ≤ 0.05`, for either the usual angular Euclidean or maximum
  distance. An explicit rational-phase witness has `0 < R_max < 9/4`
  and distance greater than `0.05` in both metrics.
* For Euclidean angular distance, T1 necessarily has
  `m < 2304 sin²(η/(2√2)) cos⁶(η/(2√2)) < 288η²`
  when `0 < η < π/(3√2)`. In particular, `m ≥ 20` requires
  `η > √10/12 ≈ 0.2635` in this range. These are necessary bounds,
  not sufficient thresholds.
* Every positional corner of every actual order-six Hadamard has R ≥ 0.
  A complementary-corner invariant is exactly 64 times a real moment-map
  Jacobian determinant squared. This identity is unconditional.

The positive-sheet identification of the counterexample uses the accepted
side-constructor formulas and their symmetric side data; it does not rely
on a numerical match or on the global coverage theorem. The compactness
theorem separately uses accepted strict-corner coverage.

[verify.py](verify.py) checks the polynomial square identity, the entire
400-corner family census, the positive-sheet match, the fundamental-domain
inequalities, and the exact rational witness. All checks are exact.

    python3 ProvenResults/CornerBounds/verify.py
    python3 verify.py --only corner_boundary_bounds --output-dir /tmp/t1-check

No new exclusion rule is enabled in the campaign. The quantitative T1
problem remains open, with the above restriction on its constants.

Isolated verification receipt:
PASS, all-exact replay.

[PairedSidePrune](PairedSidePrune/README.md) adds the division-free
identity `det(G) D + C E† adj(G) B=0` to couple all horizontal and vertical
side triples. With a fractional R cap it excludes 4 of the 53 retained
production sample boxes; 2 require the coupling and 2 only the sharper
cap. The remaining 49 are unresolved. This is a standalone D₀ prune,
not a quartet certificate on genuine D₀ points; no live driver changed.

[CampaignSecondPass](CampaignSecondPass/README.md) now measures a bounded
application to actual surviving production cells. Fractional caps and
paired-side tests, with at most four binary seed splits, exclude **93/512
held-out whole cells (18.2%)** at 1.84 local CPU-seconds per input.
All 93 still fail the original depth-8/10 baseline and pass independent
160-bit replay. A separate batch command retains full covering paths and
original campaign IDs. The separate R-gap test certifies D₀ ⇒ R>1 on
56/202 sampled D₀-touching cells; those are partial-cell cuts only.
These are measured local pilots, not full-campaign runtime projections.

[LocalBranchGap](LocalBranchGap/PROOF.md) supplies a finite, whole-box
quantitative R-gap application: seven of ten coordinate-bound near-atlas
branch boxes satisfy D0 => R>1, replayed at 96/160 bits. Whole-box atlas
proximity and F6 separation are exact. This is not a uniform T1-prime
threshold and does not itself give quartet certificates for those parents.

# T6. Residual D₀ cells: R = 0 walls and side-chart enclosure failures

**Priority: medium (28 September 2026, evening).** These are residual cells with float-sampled
D₀ points. A domain prune cannot remove any cell that actually meets D₀.

## Certified follow-up: the whole-cell distinction

[RegularSideCharts](../ProvenResults/RegularSideCharts/README.md) proves that every physical
R>0 side has a regular real-analytic implicit chart, with det(J)²=R/64 and explicit validation
bounds. Symmetry alone creates no additional singularity of this moment map.

The seven cited boxes were checked with outward arithmetic: **six cross R=0**, despite having
positive R at their sampled D₀ points. The seventh, centred at
(1.2824079386723963, −0.803805932852076, −0.8160777791551611, 1.2946797849754814),
has **R>0.3328 throughout**. The existing Julia constructor fails at sqrt(R) on the six crossing
boxes. On the seventh it fails the sufficient convergence bound for the side square root δ,
not a demonstrated zero divisor. The existing constructor succeeds on 15/16 children and
255/256 grandchildren of that box. These successes enclose H₊; they do not exclude quartets.

The new implicit chart validator certifies a small physical control box, but has not yet
replaced the failing constructor on these campaign boxes. T6 remains open. The original
sample observations and hypotheses below should be read with this correction.

## Further proved progress: four gaps and a finite atlas

[ResidualCells](../ProvenResults/RegularSideCharts/ResidualCells/README.md)
proves **D₀ ⇒ R>1 on the whole boxes numbered 1, 2, 4 and 5** in the
retained diagnostic. Thus the R=0 crossings of cells 1, 2 and 4 are
separated from their relevant D₀ portions by an explicit local gap.
Only the R≤1 portions are prunable; this does not discard the whole boxes.
A certified gradient bound also excludes the within-cell 10⁻⁴-radian
neighbourhood of R=0 in maximum-coordinate seed distance.

The positive cell 5 now has a complete **61-chart reconstruction cover**,
maximum subdivision depth four, with an independent exact rational audit
of coverage. Some Taylor remainders are broad, so cheap downstream
certification has not been demonstrated. There is no new gap for cells
3, 6 and 7, and no whole-cell quartet exclusion. T6 remains open.

## Production numbers (29 September)

The layer stage has now run on all 14,020,093 branch-layer cells: **95.6% excluded,
623,187 survivors**. In a uniform sample of 8,000 survivors
([summary](evidence/layer_survivors_T2_summary_2026-09-29.txt)):
- **2.5% touch D₀ ∩ F** at a float sample (~1.6·10⁴ projected). They lie near the Fourier family
  (atlas distance median 0.021 rad, max 0.093), with R at their D₀ points ≥ 5.0 (median 39).
  Only 33 of the 202 have a D₀ point with R < 20. These are the T6 cells.
- The other 97.5% miss D₀ at all 81 samples; a deeper prune or a cell version of the
  ResidualCells R-gap is the tool for them.
- 55% of all survivors have a sampled R range containing 0.

Because R ≥ 5 at their D₀ points and the side charts are regular at R > 0, the proposed
campaign route is to bisect the D₀-touching survivors, certify their positive-R sub-cells with
the rays or cover certificate, and discard R ≤ 1 parts by the R-gap.

**Measured follow-up on actual campaign cells:**
[CampaignSecondPass](../ProvenResults/CornerBounds/CampaignSecondPass/README.md)
applied the existing R-gap test to all 202 sampled D₀-touching survivors.
It certifies **D₀ ⇒ R>1 on 56 cells**, at their original enlarged width;
all 56 pass independent 160-bit replay. Discovery took 22.5 seconds
elapsed in one local worker. These are conditional cuts, not deletion
of the cells or quartet certificates on their R>1 portions.

Separately, a frozen bounded subdivision policy excludes **93 of 512
held-out whole survivor cells (18.2%)**, with 1.84 local CPU-seconds per
input and full 160-bit replay. None of the 14 cells in that holdout with
sampled D₀ points is excluded. All 93 remain unresolved under the original
depth-8/10 baseline. The new command writes separate complete leaf
certificates and accepts actual campaign cell IDs. The 512-cell holdout
is drawn from the retained 8,000 sample, not freshly from the full final
survivor list; no cluster-wide runtime saving is claimed.

## What was measured (600-cell benchmark, 28 September)

- **The sample.** The branch layer is the level-9 cells where the Taylor model of H₊ cannot be
  formed. After the production expansion, 600 random layer cells were run through
  [SideTriplePrune](../ProvenResults/CornerBounds/SideTriplePrune/README.md)
  (benchmark: [evidence/layer_bench.py](evidence/layer_bench.py),
  [data](evidence/layer_bench_600.json)).
- **What the prune removes.** 88.5% at depth 8, and **91%** after a depth-10 retry, at about
  0.06 s per cell. The campaign now runs this as its layer stage.
- **What is left.** Two seed bisections leave most of the 53 remaining cells nearly untouched
  ([evidence/layer_residual_sample.txt](evidence/layer_residual_sample.txt)).
  - **46 of 53** have no point of D₀ ∩ F among 81 float samples. A finer prune, or T1′/T2, may
    remove them.
  - **7 of 53 have float samples in D₀ ∩ F**, with **R between 17 and 87** at those points.
    This does not imply that the whole cell avoids R=0; six in fact cross it.
  - They lie near two symmetric loci:
    - θ₂ ≈ θ₃ and θ₁ ≈ θ₄, so E ≈ Eᵀ: for example (1.282, −0.804, −0.804, 1.282);
    - θ₃ ≈ −θ₁ and θ₄ ≈ −θ₂, so row 3 of E ≈ conj(row 2): for example (1.07, −0.98, −1.01, 1.12).
- **Hypothesis, not checked.** Both loci are boundary walls of F where Gram moduli tie: h = v, and
  Xh = Yh respectively. The side constructor may degenerate there, for instance a vanishing P_j or
  divisor, while H₊ itself stays regular. The branch lemma's exceptional s = 0 chart is related.

At their original size the campaign cannot form an H₊ Taylor model on these cells. Their
float-sampled D₀ points suggest that a domain-only prune cannot remove them all. A projection
from the sample: roughly 13% of the ~9% residual, so on the order of 10⁵ level-9
cells.

## What we want (any one suffices)

1. **A regular reconstruction chart near these loci.** An alternative formula for H₊, or for a
   Hadamard-equivalent completion, whose denominators are certified nonzero on cells meeting the
   degenerate locus. Possible sources: a different side labelling, the transposed seed, or the
   opposite-corner chart. The campaign would then build its Taylor model from that chart and
   certify the cells with the rays or cover certificate.
2. **A removable-singularity statement.** For example, the side formula has a 0/0 at the locus with
   an explicit finite limit, given as an expansion the campaign can enclose.
3. **A direct quartet exclusion near these loci.** For example, a cover certificate built from an
   explicit parametrisation of the symmetric Hadamards, as T2 proposes along the Fourier family.

## First steps

- **Done for the seven cited cells:** identify the failed operation; see the certified follow-up above.
  Next, resolve the remaining positive-R enclosure failure and the physical portions of R=0-crossing boxes.
- Check whether the loci are the h = v and Xh = Yh walls of F, or something else.

## Deliverable

- A chart or statement the campaign can apply cell by cell, with its dependencies stated.

# Handoff: the two hard pieces of the branch layer (30 September 2026)

You are joining a computer-assisted proof that C⁶ has no four MUBs, conditional on the accepted
inputs in `MinimalConstruction/ASSUMPTIONS.md`. Read these first, about 20 minutes:
- `HANDOFF.md`, then `WhatWeWanttoProve/README.md`;
- `NumericalCampaign/Campaign/REPORT_2026-09-30.md`;
- `NumericalCampaign/Campaign/branch_bins_study_2026-09-30/README.md`.

## Where things stand

- **Reduction:** no four MUBs follows from Q, which says that for every seed θ in D₀ ∩ F, {I, H₊(θ)/√6}
  does not extend to four MUBs. D₀ means that the seed's corner (012|012) has the largest R of all
  400 corners.
- **Work cells:** all 8,652,805 are being certified quartet-free on the cluster, in the run of record
  `nofourmubs_rescaled_2026-09-30`. So far 557,102 of 557,115 are certified; it finishes around
  1 October, 09:00.
- **Branch layer:** 623,187 level-9 seed cells (half-width π/512) where the radical construction of
  H₊ has no Taylor model. Each must be shown outside D₀ ∩ F or quartet-free.
- **Division of labour:**
  - The numerical agent (not you) runs the refinement pass that closes about 95 % of the branch
    volume with existing tools.
  - It will hand you the exact per-cell lists of what it cannot close.
  - **You own the remaining two pieces below.**

## Piece 1 (code, no new maths): certify singular subcells with inf R > 1 via implicit side charts

**What they are.** Seed boxes, at levels 11–13, where
- `hplus_tm` fails because a side radical degenerates (the side block's own invariant is near 0), but
- the corner invariant is certified R > 1 on the whole box.

About 2.3 % of survivor volume. A sample of 179,671 boxes is in
`NumericalCampaign/Campaign/branch_bins_study_2026-09-30/results/posR_singular_boxes_level13.txt.gz`
(columns: cell id, bin, level, θ1..θ4, R_lo, R_hi, nearest F6 class and distance).

**What is proved.** `ProvenResults/RegularSideCharts`:
- at every physical corner with R > 0, the six side phases have a regular real-analytic implicit
  chart with det(J)² = R/64;
- PROOF.md gives explicit local sizes, sensitivity bounds and an outward validation test, implemented
  in `chart.py`;
- `ResidualCells/atlas.jl` builds a complete 61-chart atlas for one positive box.

**What to build.** An alternative H-model provider for the cover certificate.
- The production certificate is `NumericalCampaign/Certification/cover.jl`, `certify_cell_cover`,
  line 289, wrapped by `cover_accelerated.jl`. It needs only
  `cc = CoverCell(H)`, where H is a 6×6 matrix of complex FastTM models (`.re`, `.im`) over the
  seed box.
- Today `hcell` (`hform.jl:45`) builds H from `hplus_tm`.
- Build H instead from validated side charts: the B and C blocks as FastTM models from the implicit
  chart, then the completion block D. `ProvenResults/ChartConditioning` proves a Lipschitz completion
  with no 1/√R loss.
- Then call the unchanged cover and graph test.

**Requirements.**
- **Enclose the right completions.** The enclosure must contain H₊(θ), or all physical completions
  of the seed, for every θ in the box. Justify the branch or sheet choice: `ProvenResults/Sheets`,
  the branch lemma, and the positive-sheet conventions of `MinimalConstruction`.
- **Remainders:** outward FastTM remainders under the guard (`ProvenResults/FastTMInvariant`); the
  production FastTM sha256 is `7e9c0bc3…`.
- **Acceptance:** exact or outward-interval only. Floats may only propose.

**Deliverable.**
- `certify_cell_sidechart(θ, ρ)`, returning the same result tuple as the cover.
- Tests against production `certify_cell_cover_accelerated` on regular boxes: the same accept/reject.
- A pilot on about 1,000 boxes from the sample, with the success rate and CPU-s per box.
- A ProvenResults note stating the enclosure argument.
- Don't edit production files; add new files. The numerical agent integrates them after review.

## Piece 2 (open maths): the residual near F6 seeds

**What it is.** Seed boxes, at level 13, where
- no test closes them, and
- the outward interval of R straddles [0, 1].

About 2 % of survivor volume. In the sample they lie 0.04–0.2 rad from F6 seeds, mostly the
**stationary** classes (0,2,3,0), (0,2,3,2), (2,4,4,2) and (0,0,2,4), with a few 0.13 rad from the
active classes. The sample is 338,054 boxes in `results/residual_boxes_level13.txt.gz`.

**Why the existing tests fail.** Near an F6 seed every corner's R tends to 0, so a comparison of
corners has no margin. A float probe away from the seeds found residual points outside D₀ by M − R₀
of about 95. Closer to the seeds that margin shrinks.

**Tools.**
- `ProvenResults/FourierCornerRigidity`:
  - in an established F6 carrier chart with 0 < t ≤ 1/256, the 220 inactive (stationary-class) corners
    satisfy R ≤ (1112/1915)² M;
  - the near-rank-one tube h ≤ 2⁻¹⁴ lies outside strict D₀, as an exact predicate in `prune.py`.
- `ProvenResults/ChartConditioning`: the ten-chart Lipschitz completion; M ≥ 4ρ² for ρ ≤ 1/40;
  only two endpoint classes.
- `ProvenResults/EffectiveConfinement`: an explicit but useless global cutoff. Its §6 rounding is
  sharp and local.
- `FourierNeighbourhood/*`: tubes of 1/30 at F6, 1/16384 family-wide and 1/256 regional, plus
  production cubes.

**What is needed.** Close these boxes by one of:
- **(a) D₀-exclusion.** Prove some corner beats (012|012) on the box. For example, certify an F6
  carrier chart from the seed box, using a seed-to-carrier bound valid at these distances, then apply
  the inactive-class gap.
- **(b) Quartet exclusion.** Show every physical completion lies in a proved quartet-free tube.
- **(c) A new rigorous certificate** that works when all corners are small.

The distances, 0.04–0.2 rad, are far larger than any current analytic radius (2⁻¹⁴), so a
computer-assisted route is likely. Design it, pilot it, and estimate its cost.

**Deliverable.** An additive ProvenResults module:
- PROOF.md;
- `verify.py`, exact or outward;
- a predicate on rational seed boxes;
- a pilot on the sample boxes, with the fraction closed and CPU-s per box.

Negative results are useful too: a physical H near these seeds that is in D₀ and has small R would
show the residual is a real sliver.

## Constraints

- **Cluster** (rusty, account `ccq`):
  - the certification holds 30 rome nodes until about 1 October, 09:00;
  - the per-user core limit is about 4,350;
  - ask the user before large runs; the guideline is to ask before 5,000 CPU-h.
- **File quota:** about 1.05M files in home. Bundle outputs, with one file per shard.
- **Don't write** into `nofourmubs_rescaled_2026-09-30/results/` or `code/`.
- **Conventions:** matrix radii and seed radii are different things; never substitute one for the
  other. State every use of an accepted input. Report plainly what is not proved.

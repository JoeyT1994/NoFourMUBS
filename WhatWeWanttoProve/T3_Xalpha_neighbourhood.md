# T3. No quartet near the Szöllősi X(α) family

**Priority: none; not needed by the campaign (29 September).** The accelerated cover certificate
certified every cell of an unbiased 0.2% campaign sample, including the high-R cells where X₆ lives,
and certifies the campaign-size X₆ cube. This file is kept as a record, and as a target of
independent mathematical interest.

## Status (updated 29 September 2026)

- **ClusterCover.** [ProvenResults/CommonRays/ClusterCover](../ProvenResults/CommonRays/ClusterCover/README.md)
  proves the following. Phase-box labels of half-width ≤ 1/2 have capacity one. A cover of all
  common rays by labels, plus an exhaustive orthogonality/unbiasedness graph test, therefore
  excludes quartets without counting roots or assuming regularity, so folds are harmless.
- **The X₆ cube.** The original local interval certificate excludes radius 1/1024.
  The [accelerated cover receipt](../Verification/Campaign_cartesian_cover_2026-09-29/README.md)
  now excludes the full campaign-size cube at the same exact seed centre,
  radius Float64(π/512)+2^-40, with 1,122,151 nodes and 31.95 local CPU-s.
  The unaccelerated comparison exhausted its four-million-node budget.
- **Integrated.** The campaign's automatic version,
  [cover.jl](../NumericalCampaign/Certification/cover.jl), reproduces that certificate without
  hand-picked labels: 68 labels, 57 s. It is **now in the production driver**, as the second
  certificate after the ray path.
- **Still open.** The whole-family statement, and a neighbourhood of radius ~10⁻², remain open.
  They matter only if the campaign's cover certificates fail on cells meeting the X(α) tube at
  ρ ≈ 0.006.
- **The 1% certify sample (29 September) answers this: the failures are not a T3 problem.**
  24% of cells fail, all at R ≥ 250 (X₆ has R = 311). But the R ≥ 300 band is 60% of all work
  cells, fails at 34%, and carries 83% of the cost. The difficulty is generic at high R: wide
  clusters of nearly coincident rays, as at X₆, occur across most of the high-R part of D₀.
  A neighbourhood theorem for X(α) would remove only a small part of it. The fix is in the
  cover certificate (larger labels, boundary refinement, smaller cells); see the
  [report](../NumericalCampaign/Campaign/cluster/REPORT_2026-09-29.md).

## Original formulation (kept for the record)

### What was asked

**Target T3 (local).**
- There is an explicit ε > 0 such that no Hadamard within distance ε of the X(α) family (up
  to equivalence and conjugation) is a quartet edge.
- **The metric.** Anything the campaign can test on a seed cell will do. Two options:
  - a d_F-style distance, d_X(U) = min over the family and over equivalences of
    ‖U_j U_j† − …‖, as in D2;
  - or, in seed form, explicit neighbourhoods in θ of the seeds whose H₊ lies in the family.
- **Useful size.** ε at least about 10⁻², so that the tube is covered with some margin, at
  cells of radius ρ ≈ 0.006.

**Stronger (global) form.** X(α) lies in no MUB quartet. This is the conjecture of Matolcsi
et al. (Conjecture 3 there; DOI 10.1007/s10801-026-01506-x, MMVW, arXiv:2503.14752).
[BARRIERS.md](../ProvenResults/BARRIERS.md) lists it as **not proved and not usable**. The
global form alone does not help the campaign; it needs the neighbourhood version.

## Why it matters

- **The original regularity certificate cannot cross a fold** ([FOLDS.md](../NumericalCampaign/FOLDS.md)). That completeness proof
  shows that the rays form a trivial covering over the cell. Where two real rays merge and
  leave the real torus, that fails at every refinement.
- **What is near X(α).**
  - X₆(0.3+0.2i) lies in D₀, with R_max = 311, and has **60** common unbiased rays.
    Nearby carriers have 56: four pairs merge within 10⁻³–10⁻² in any direction.
  - A fold wall passes within about 5·10⁻⁴ of X₆.
  - The poorly conditioned rays form two clusters of four.
- **Campaign consequence.** The original regularity method leaves cells meeting this tube
  residual. The new cluster-cover alternative has a successful local certificate;
  extending it across the tube remains to be done.

## Evidence

- [FOLDS.md](../NumericalCampaign/FOLDS.md), "Structure at X₆": the ray counts, σ₅ along random directions
  falling like √(t_f − t) with t_f ≈ 5·10⁻⁴, and the ray clusters.
- The clique stage on X₆ itself finds its known MU-triple basis and excludes quartets
  ([Certification/test_gram.jl](../NumericalCampaign/Certification/test_gram.jl)). So X₆ is not a quartet edge
  numerically. The problem is completeness of the ray list near the fold, not the quartet
  test.

## Suggested routes

- **A D2-style 4+1 obstruction near X(α).** D2's method (exact interval certificates over
  phase charts) worked at F6.
- **Structural.** Balanced / cubic-power vanishing forces the Fourier or X(α) families
  ([ProvenResults/EdgeRigidity/KarlssonPairingDetector.md](../ProvenResults/EdgeRigidity/KarlssonPairingDetector.md)).
  A quantitative version would say that near-vanishing forces nearness to those families. It
  might give a neighbourhood for free, if the quartet exclusion on the family itself can be
  made robust.

## Deliverable

- A theorem with an explicit ε, in a metric computable from θ or from H₊(θ) on a cell.

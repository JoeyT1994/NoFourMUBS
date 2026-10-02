# T2. No quartet edge near the Fourier family

**Priority: highest (raised 28 September), together with [T1′](T1_corner_R_lower_bound.md).**
With T1′, this closes the branch layer, the campaign's main remaining gap.

## Status (consolidated 29 September 2026; additions 30 September)

**30 September additions.**
- [FourierCornerRigidity](../ProvenResults/FourierCornerRigidity/README.md):
  - Near-rank-one tube: a maximal corner with a 2×3 block dephasing to (1,1,1), (1,e^{ia},e^{ib}),
    max(|a|,|b|) ≤ 2⁻¹⁴, forces H ≅ F6. The tube is therefore outside strict D₀. The other two seeds
    are free, no small-R premise is needed, and transposed blocks are included.
  - This replaces the rank-one-pair radius 2⁻⁴³ by 2⁻¹⁴.
  - `prune.py` has exact whole-box predicates in turns.
  - With the 1/30 F6 tube, the larger h ≤ 1/2560 is quartet-free.
- Endpoint classes, from [ChartConditioning](../ProvenResults/ChartConditioning/README.md) and
  FourierCornerRigidity §3:
  - Near F6, the four classes (0,2,3,0), (0,2,3,2), (2,4,4,2) and (0,0,2,4), 220 corners in all,
    cannot be positive-R maximal corners.
  - Under strict-corner coverage, only (4,5,0,3) and (1,2,2,4) are small-R endpoints of strict D₀.
    A seed gap τ > 0 around the other four exists, but is not computed.
- [EffectiveConfinement](../ProvenResults/EffectiveConfinement/README.md) (30 Sep): an explicit
  global cutoff m = 2^(−N), N ≈ 7.5·10⁵². 0 < M < m ⇒ within full-matrix phase radius 1/3072 of F6
  ⇒ quartet-free. Conditional on strict-corner coverage and the Jeronimo–Perrucci–Tsigaridas
  effective minimum. Its rounding step (§6) is sharp. The generic §5 loses everything, so a
  problem-specific replacement for §5 is the open target.
- **What remains of T2** is a quantitative confinement step: a numerical τ, or a global M cutoff
  that takes small-M carriers into the explicit F6 chart. Then the two active classes are closed at
  production width.


**Matrix side: proved.** No quartet edge lies within
- **1/16384 of the whole family**, including transpose and equivalences
  ([PracticalTube](../ProvenResults/FourierNeighbourhood/PracticalTube/README.md): 294 boxes,
  2,178,035 six-cliques excluded, 408 positive controls, no reconstruction inputs; replayed
  locally, PASS);
- **1/256 on 191 of 270 parameter boxes**, and 1/128 on 4
  ([WideFamilyTube](../ProvenResults/FourierNeighbourhood/WideFamilyTube/README.md)); the other 79
  boxes have only the uniform radius;
- **1/30 around the F6 orbit** ([ClusterTube](../ProvenResults/FourierNeighbourhood/ClusterTube/EXPANDED.md)).

**Seed side: the atlas is complete; lifting is proved only locally.**

| Result | Seed region | Notes |
|---|---|---|
| [SeedAtlas](../ProvenResults/FourierNeighbourhood/SeedAtlas/README.md) | S_Four = 12 surfaces and 36 R = 0 curves | Exact distances and cell-proximity tests; direct carrier-tube transfer bounds |
| [AtlasRigidity](../ProvenResults/FourierNeighbourhood/SeedLifting/ATLAS_RIGIDITY.md) | Exact atlas seeds in D₀ with 0 < R ≤ 20 | Only Fourier carriers (zero-distance lift). Unconditional |
| [**ProductionCube**](../ProvenResults/FourierNeighbourhood/SeedLifting/PRODUCTION_CUBE.md) | **Half-width π/512** (production width) at (4π/3, 5π/3, 0, π) | 227 leaves: 207 enter the 1/30 F6 tube, 20 miss D₀. Crosses R = 0, R < 1/5 throughout. Unconditional; 72-frame containment rule |
| [**ZeroNeighbourhood**](../ProvenResults/FourierNeighbourhood/SeedLifting/ZERO_NEIGHBOURHOOD.md) | Radius π/4096 along (4π/3,5π/3+δ,0,π+δ), 0≤δ≤π/128; trimmed zero-atlas arcs with prototype radius π/8192 | 13 new cubes extend genuine maximal carriers four times farther along the curve, with R<1/2. A complete 740-box cover excludes the trimmed arcs from D₀; three further production-width cubes miss D₀. Independent 96/160 verification; near-grid gaps remain |
| [FourierMaxR](../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_MAX_R.md) | Explicit Fourier references throughout the family | Exact maximum-corner formula; M→0 only at twelve F6 parameter points. For M≤36, d_F6≤π√M/144, giving excluded reference radius 1/30−π√M/144 in either orientation. Not an off-family seed lift |
| [**NearF6Closure**](../ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md) | **All six F6 corner classes**, uniformly at radius 2⁻⁴⁸; also radius 2⁻⁴⁹ around any Fourier reference seed with M≤2⁻⁹² | New cubes: 1/65536, 2⁻⁴² and 2⁻⁴⁶ at the three missing classes. Quantitative F3-block stability and a singular-corner rechart cover all physical completions, including R=0. Exact algebra plus 96/160 replay. Mathematically uniform on the stated small-M tail, far below production width |
| [**ExtendedAnalyticRadii**](../ProvenResults/FourierNeighbourhood/SeedLifting/EXTENDED_ANALYTIC_RADII.md) | F3 cube 2⁻³⁹; rank-one cube 2⁻⁴³; uniform F6 radius **2⁻⁴⁵**; small-M reference threshold 2⁻⁸⁶ with seed radius 2⁻⁴⁶ | Eightfold increase of the two analytic radii. Uses the actual tiny R cap and distance coefficient 1+4π; registered exact and 160/256-bit verification. Still not production-scale. Exact partitions now place certified T2 inner boxes inside all 54 identified F6-containing survivors; their surrounding slabs remain open |
| [MatchedCoverLift](../ProvenResults/FourierNeighbourhood/SeedLifting/MATCHED_COVER_LIFT.md) | 1/512 at the same seed; 1/1024 and 1/2048 at two further F6 seeds | 255-leaf cover into the F6 tube |
| [RZeroLift](../ProvenResults/FourierNeighbourhood/SeedLifting/R_ZERO_LIFT.md) | 1/2048 at the same seed | First control across R = 0; no reconstruction inputs |
| [ResidualLift](../ProvenResults/FourierNeighbourhood/SeedLifting/RESIDUAL_LIFT.md), [RegionalSeedLift](../ProvenResults/FourierNeighbourhood/SeedLifting/REGIONAL_SEED_LIFT.md) | 1/2000 (earlier 1/10000) at a **non-F6** Fourier seed, 8 < R < 9 | Carrier distance < 1/50 into a regional 1/48 tube |
| [DirectLift](../ProvenResults/FourierNeighbourhood/SeedLifting/DIRECT_LIFT.md) | Patch: transverse 2·10⁻⁷, tangential π/512 | d_Four ≤ L ε with L < 189 under a strict corner gap. **0 of the 53 retained production boxes excluded** ([receipt](../Verification/T2_direct_lift_2026-09-29/production_benchmark.json)) |
| [ConservativeLift](../ProvenResults/FourierNeighbourhood/SeedLifting/CONSERVATIVE_LIFT.md) | ε ≤ r^(17/6)/(2.4·10¹⁸), needs 2r ≤ R ≤ 19 | Explicit but a 10⁻¹⁹ cube; no R = 0 control |
| [MovingReference](../ProvenResults/FourierNeighbourhood/SeedLifting/MOVING_REFERENCE.md) | Any complete seed partition | The whole-cell criterion with a Fourier reference chosen per leaf, and regional radii where proved |
| [FourierSideCompletion](../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_SIDE_COMPLETION.md), [BranchGap](../ProvenResults/FourierNeighbourhood/SeedLifting/BRANCH_GAP.md) | — | Exact endpoint N(z, w) of a strict B_F seed; quantitative alternative-side gap |

**Proved limits.**
- Unrestricted lifting is false: an exact atlas seed outside D₀ has d_Four > 1/40
  ([SeedObstruction](../ProvenResults/FourierNeighbourhood/UniformTube/SEED_OBSTRUCTION.md)).
- The present tube cannot absorb small R: a D₀ ∩ F carrier has R < 1/200 and d_Four > 1/16000,
  and m = 20 would need δ > 1/300
  ([SmallRObstruction](../ProvenResults/FourierNeighbourhood/SeedLifting/SMALL_R_OBSTRUCTION.md)).
  Neither refutes quartet exclusion itself.

**Still open.**
- A **uniform D₀-restricted seed lift through R = 0** at production width, along the whole
  family (not just at F6 seeds), with matching T1′ constants.
- The 79 parameter boxes without a regional radius.
- The portions of the omitted near-grid segments in ZeroNeighbourhood between its trimmed
  arcs and the new tiny F6 cubes. All F6 corner classes themselves now have certified
  neighbourhoods; enlarging the two analytic radii is the main local quantitative task.

**What the campaign measured** ([report §4](../NumericalCampaign/Campaign/cluster/REPORT_2026-09-29.md)).
The D₀-touching layer survivors (~1.6·10⁴ projected) lie at seed distance ~0.02 rad from the
family (median; 90th percentile 0.062), with R ≥ 5 and median 39 at their D₀ points. No
realistic tube absorbs them; they should be bisected and certified. T2 is needed only for the
thin R → 0 sliver at the family itself. ZeroNeighbourhood now certifies a continuous extension
beyond the old F6 cube and large trimmed portions of the zero-seed atlas. FourierMaxR proves
that maximal R→0 within the Fourier family can only approach F6-equivalent parameter points.
NearF6Closure now supplies a uniform seed neighbourhood of that M→0 tail, including
off-family maximal physical completions, at explicit but very small constants. Its two
analytic radii and the intervening atlas shoulders still need enlargement. ZeroNeighbourhood's
fast containment rule accepts none of the 53 retained benchmark cells; no production-scale
saving is claimed for the new tiny analytic cubes.

## Why this changed

The original target was a larger neighbourhood of the single point F6.
[ProvenResults/CornerBounds](../ProvenResults/CornerBounds/README.md) changed that.

- It gives an exact curve N(z) = [[F, F], [F Z, −F Z]] of the Fourier family.
- The curve lies in D₀ ∩ F, with max_c R_c = M(v) = 2304v²/(1+v²)⁴, which tends to 0 at F6.
- Its seeds lie at Euclidean distance √2·2·arctan(v) from S_F6. So D₀ contains points with
  R < 20 out to seed distance ~0.26 from F6, **along the family**.
- At such cells R is too small for H₊ to have a Taylor model at campaign cell size, so the
  campaign can neither prune nor certify them.
- Jaming et al. exclude the Fourier family itself as quartet edges, but not a neighbourhood of
  it. So the target must be a neighbourhood of the **whole family**.

## What we want

**Target T2 (seed form, which the campaign can test).**
- Let S_Four ⊂ T⁴ be the seeds of the dephased positional 3×3 corners of the Fourier family:
  F(a, b) and its transpose, all (a, b), all 400 corners, up to the equivalences of the
  reduction. It is a union of 12 two-dimensional tori and 36 circles in T⁴.
  **The explicit parametrisation is now proved**, including the boundary pieces;
  see the atlas above. All strict Fourier seeds are on the twelve surfaces.
- We want an explicit η₂ > 0 such that no θ with dist(θ, S_Four) < η₂ gives a quartet edge
  H₊(θ).

**Matrix form, requiring a seed-lifting lemma to obtain the seed form.**
- Let d_Four(U) be the d_F-type distance of D2, minimised also over the family parameter
  (a, b).
- We want: every quartet edge U has d_Four(U) > δ₀, together with a lemma converting
  seed distance to d_Four (dist(θ, S_Four) < η ⇒ d_Four(H₊(θ)/√6) < δ₀).
  The matrix statement is now proved with δ₀=1/16384, but the unrestricted
  inverse implication is false. At the exact atlas seed
  `(ω,ω²,(4+3i)/5,(21+20i)/29)`, the actual H₊ satisfies d_Four>1/40.
  That seed lies outside D₀. A conversion lemma must therefore specify
  additional hypotheses, such as θ∈D₀ (possibly with R<m), and prove the
  estimate there. The counterexample does not refute the seed-form quartet
  exclusion itself: its carrier is not asserted to be a quartet edge.

**Pairing with T1′.** The campaign needs matching constants:
- T1′ says: R(θ) < m and dist(θ, S_Four) ≥ η₂ imply θ ∉ D₀;
- T2 says: dist(θ, S_Four) < η₂ implies no quartet edge.

Together these give the prune "sup R < m on the cell ⇒ excluded".
- m ≈ 20 is what level-9 cells straddling R = 0 need; smaller m still helps, with smaller
  cells.
- The η₂ that T1′ needs depends on how fast max_c R_c grows away from the family. That is
  unknown, and a measurement is suggested below.

## What exists

- The proved pieces are listed under Status above.
- **Jaming–Matolcsi–Móra–Szöllősi–Weiner** ([arXiv:0902.0882](https://arxiv.org/abs/0902.0882)):
  F(a, b) and its transpose lie in no quartet. The target is a robust, quantitative version of
  this.
- **D2** ([ProvenResults/FourierNeighbourhood](../ProvenResults/FourierNeighbourhood/README.md);
  proved, computer-assisted, exact interval arithmetic, no reconstruction inputs).
  - No 4+1 configuration has d_F ≤ 1/1024 around the point F6.
  - Its method (finite labels on phase charts, then a graph step) is the same as the
    cluster-cover theorem. A 4+1 or 6+6 cover certificate over a tube around the family is a
    natural route.
- **The campaign's cover certificate** ([cover.jl](../NumericalCampaign/Certification/cover.jl))
  excludes quartets cell by cell wherever the H₊ Taylor model exists. It cannot reach the
  family's small-R zone, because there H₊ is singular at campaign cell size.
  - A certificate built directly from an explicit parametrisation of the family plus a
    perturbation, not through the reconstruction, would avoid that.
- **The CornerBounds census** gives the exact 400-corner multiset along N(z).

## Suggested routes

The matrix-cover route is now completed by PracticalTube. Current work
should prioritize quantitative transverse lifting and matching T1′
constants; the matrix routes below record how that subtarget was reached.

- **Robustify Jaming et al.** Their Section 3 proof uses discretisation and
  exhaustive computation with controlled error bounds. Recovering strict
  rejection margins could give a version tolerating carrier perturbations
  of size δ₀; no such margin is supplied by the seed atlas.
- **A cover certificate around the family.** Parametrise the tube by
  (a, b) ∈ T² × (transverse perturbation), enclose the carrier directly (no H₊ reconstruction),
  and use the cluster-cover graph test, as in D2 but along the family.
- **Measure first.** Sample seeds near S_Four and record max_c R_c against distance. This
  informs the η₂ that T1′ needs. The exact atlas and proximity routine now
  supply S_Four; measurements still do not prove an exclusion constant.

## Deliverable

- An explicit η₂ in seed form (preferred), or δ₀ in d_Four form plus the conversion lemma.
- An explicit description of S_Four.
- Dependencies stated. Avoiding the reconstruction inputs, as D2 does, is preferable.

## Branch-layer update, 30 September 2026

The production-width all-class F6 lift remains open. Six actual-parent
partial partitions have 251 accepted leaves replayed at 96/160 bits,
but no whole-parent closure. The corrected near-atlas gap cohort gives
seven of ten whole-box implications D0 => R>1; this is a finite application,
not uniform T1-prime. Moving references with regional/F6 transferred radii
leave 37 sub-cells open in the three gap-failure parents (11 further
sub-cells miss D0 by strict negative R). See
[branch status](BRANCH_LAYER.md),
[LocalBranchGap](../ProvenResults/CornerBounds/LocalBranchGap/PROOF.md), and
[BranchReference](../ProvenResults/FourierNeighbourhood/SeedLifting/BRANCH_REFERENCE.md).
Historical FastTM-dependent acceptances require guarded replay and the
forthcoming guarded inventory before entering the run of record.

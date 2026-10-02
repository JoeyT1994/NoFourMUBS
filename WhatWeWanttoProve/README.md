# What we want to prove: analytical targets for the numerical campaign

The numerical campaign ([NumericalCampaign/](../NumericalCampaign/README.md)) certifies statement Q
cell by cell over the seed domain D₀ ∩ F. By the [reduction](../NumericalCampaign/REDUCTION.md), Q
implies that there are no four MUBs in C⁶. This is conditional on the
[accepted inputs](../NumericalCampaign/INPUTS.md).

This folder is the **single status view**: what the campaign needs, what is proved, and what is
still open. Proofs and certificates live in [ProvenResults/](../ProvenResults/README.md); this
folder only points to them. Notation is in [NOTATION.md](NOTATION.md). Each target file gives:
- the exact statement wanted;
- why the campaign needs it;
- its status, with links to the proved pieces;
- the evidence and the routes;
- the usable form of a deliverable.

*Last consolidated 30 September 2026.*

Branch-layer execution, fresh survivor sampling, measured costs and partial
coverage receipts are tracked in [BRANCH_LAYER.md](BRANCH_LAYER.md).
The branch layer is not yet closed.

## Where the proof stands

| Piece | Status |
|---|---|
| Reduction: Q ⇒ no four MUBs | Proved, conditional on the accepted reconstruction inputs |
| FastTM arithmetic | **Proved for guarded traces** ([FastTMInvariant](../ProvenResults/FastTMInvariant/README.md)). Since 30 Sep `inv` and `sqrt` are [rescaled](../ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md), so small denominators no longer trip the guard. Independent review of the rescaling has been requested |
| Domain pruning (F, R, `bc_test`, D₀) | **Run of record in progress** on rusty (`nofourmubs_rescaled_2026-09-30`, jobs 7140938–40). The guarded run of 29–30 Sep passed its audit with 8,652,808 work cells and 14,426,812 layer cells. 406,719 of those layer cells were guard artefacts, which the rescaled FastTM removes ([report](../NumericalCampaign/Campaign/REPORT_2026-09-30.md)). The unguarded run of 28 Sep is superseded |
| **Certification of a work cell** | **Solved in method; the run of record starts automatically after the expansion.** The guarded run certified 342,217 of the first 342,218 cells at 20.7 s mean before it was superseded. The accelerated [cluster cover](../ProvenResults/CommonRays/ClusterCover/README.md), cover only, is the production certificate: [Cartesian exclusion](../ProvenResults/CommonRays/ClusterCover/CARTESIAN_EXCLUSION.md), [sharp capacity](../ProvenResults/CommonRays/ClusterCover/SHARP_CAPACITY.md) and [label refinement](../ProvenResults/CommonRays/ClusterCover/LABEL_REFINEMENT.md). An unbiased 0.2% sample on rusty certified **17,291 of 17,291** cells at 25 s mean, projecting **≈ 6·10⁴ CPU-h** for all of them ([report](../NumericalCampaign/Campaign/cluster/REPORT_2026-09-29b.md)). The high-R band that caused this morning's no-go now costs about 22 s per cell |
| **Branch layer** | [SideTriplePrune](../ProvenResults/CornerBounds/SideTriplePrune/README.md) excluded **95.6%**, leaving **623,187 survivors** in the unguarded run. The guarded run left 976,882, about 354k of them guard artefacts. The rescaled run is expected to return to about 623k genuine branch points; its counts are pending. The [second pass](../ProvenResults/CornerBounds/CampaignSecondPass/README.md) removes 18% of held-out survivors at ≈ 2 s per cell. About 2.5% (~1.6·10⁴) touch D₀ at a float sample, near the Fourier family (median 0.02 rad), with moderate R (median 39); the R-gap proves D₀ ⇒ R > 1 on 28% of those. The route is to bisect and certify their positive-R parts. The thin R → 0 sliver at the family itself needs T2 |
| F6 endpoint structure (30 Sep) | **Proved:** only the classes (4,5,0,3) and (1,2,2,4) can be small-R maximal endpoints ([ChartConditioning](../ProvenResults/ChartConditioning/README.md), conditional on strict-corner coverage). The near-rank-one tube of radius 2⁻¹⁴ is outside strict D₀ ([FourierCornerRigidity](../ProvenResults/FourierCornerRigidity/README.md)). The seed gap τ around the other four classes exists, but no numerical value is known |
| Branch lemma (T4) | **Proved** |
| Reconstruction inputs (strict-corner coverage, side exhaustion, positive-sheet coverage, side formulas) | **Proved 1 Oct** relative to named ClassificationPaper results ([MinimalConstruction/Proofs](../MinimalConstruction/Proofs/README.md); 15 local verifiers, registered check `reconstruction_proofs` PASS). Independent review of the prose (especially CRITICAL_STRIP_CLASSIFICATION and FOURIER_ROUTING) pending |

**So the remaining analytical work is concentrated in T2** (with T1′ and T6 as supporting tools).
The numerical side needs only compute and bookkeeping: the full run, the layer survivors and the
audit.

## Targets

| | Target | What it removes | Status | Priority |
|---|---|---|---|---|
| [T2](T2_fourier_neighbourhood.md) | No quartet edge within δ₀ of the whole Fourier family, with a seed-proximity test | The small-R part of D₀ along the Fourier family, where H₊ has no Taylor model | **Matrix side proved:** δ₀ = 1/16384 uniformly, with larger local radii. **Seed side:** all six F6 corner classes now covered, including R=0; a uniform neighbourhood of the Fourier M→0 tail is proved at very small constants. The larger non-F6 corridor and trimmed zero-atlas tubes remain available. Practical uniform lifting and the intervening atlas shoulders remain open. **30 Sep:** the rank-one-pair seed radius is now 2⁻¹⁴, outside strict D₀, and only (4,5,0,3) and (1,2,2,4) remain as endpoint classes | **Highest** |
| [T1′](T1_corner_R_lower_bound.md) | Away from the T2 neighbourhood, 0 < R ≤ m implies some corner beats (012\|012) | With T2, the branch layer by one Taylor model of R | Qualitatively proved (compactness, no constant). The original F6-point constants are **refuted**. The obstruction also rules out pairing δ = 1/16384 with any m ≥ 1/200. **30 Sep:** a quantitative local form, M ≥ 100t² in the F6 chart for t ≤ 1/100 and M ≥ 4ρ² for ρ ≤ 1/40 in full-matrix phases. The global step is now **explicit but useless**: [EffectiveConfinement](../ProvenResults/EffectiveConfinement/README.md) proves M<2^(−N), N≈7.5·10⁵², ⇒ within 1/3072 of F6 (conditional on strict-corner coverage and a published effective-minimum theorem). **A practically useful m, say 10⁻³–10⁻², is the open target**; the loss is all in its §5 | **Highest (pairs with T2)** |
| [T6](T6_degenerate_side_cells.md) | A usable chart, or direct exclusion, for residual cells near symmetric seeds | The D₀-touching layer survivors (~1.6·10⁴) | Local regular charts proved. The R-gap test now certifies D₀ ⇒ R > 1 on 56/202 actual sampled D₀-touching cells, independently replayed. A separate bounded pass removes 93/512 whole held-out layer survivors. Remaining positive-R quartet certification is open | Medium |
| [T3](T3_Xalpha_neighbourhood.md) | No quartet edge near X(α) | Nothing now: the accelerated cover certifies every sampled cell, including the campaign-size X₆ cube | Not needed by the campaign | None |
| [T5](T5_quartet_ray_nondegeneracy.md) | Quartet rays are nondegenerate | Nothing now | Bypassed by ClusterCover | None |
| [T4](T4_branch_lemma.md) | Branch lemma | — | **Proved** ([BRANCH_LEMMA.md](../ProvenResults/Sheets/BRANCH_LEMMA.md)) | Done |

## Proved results, by what the campaign does with them

**In production now.**
- [ClusterCover](../ProvenResults/CommonRays/ClusterCover/README.md) with its three accelerations: the certificate for every work cell.
- [SideTriplePrune](../ProvenResults/CornerBounds/SideTriplePrune/README.md): the layer stage.
- [CornerBounds](../ProvenResults/CornerBounds/README.md) square identity R(B) = R(p, −J, W) = −D(E)²:
  the radical-free corner test `bc_test`.
- [Branch lemma](../ProvenResults/Sheets/BRANCH_LEMMA.md) (T4): continued branches are valid H₊
  representatives across dF = 0.

**Proved and directly usable, not yet integrated.**

| Result | What it gives | How the campaign would use it |
|---|---|---|
| [ProductionCube](../ProvenResults/FourierNeighbourhood/SeedLifting/PRODUCTION_CUBE.md) | The full π/512 cube at the F6 seed (4π/3, 5π/3, 0, π) has no quartet edge, including across R = 0 (227 leaves, 72-frame rule) | Mark cells inside that cube as excluded |
| [ZeroNeighbourhood](../ProvenResults/FourierNeighbourhood/SeedLifting/ZERO_NEIGHBOURHOOD.md) | Radius π/4096 along a genuine maximal Fourier curve to δ=π/128, with R<1/2; 740 boxes exclude trimmed zero-atlas arcs from D₀; three additional π/512 domain cubes | Apply the exact or outward containment rule in `zero_neighbourhood.py`. Remaining near-grid segments are open; no new containment among the 53 retained benchmark cells |
| [NearF6Closure](../ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md), [analytic extension](../ProvenResults/FourierNeighbourhood/SeedLifting/EXTENDED_ANALYTIC_RADII.md) | All six F6 corner classes have positive seed radii; the extension gives uniform radius 2⁻⁴⁵ around every F6 seed, and radius 2⁻⁴⁶ around Fourier references with M≤2⁻⁸⁶ | `near_f6.certify_box` retains the original cubes; `analytic_radius_extension.certify_box` applies the enlarged F3/rank-one cubes. All physical completions and R=0 included. Still far below production width |
| [FourierCornerRigidity](../ProvenResults/FourierCornerRigidity/README.md) (30 Sep) | Near-rank-one 2×3 block with ratio phases ≤ 2⁻¹⁴ ⇒ H ≅ F6, so the tube is outside strict D₀; the other two seeds are free. With the 1/30 tube, h ≤ 1/2560 is quartet-free | `prune.maximal_corner_prune` or `quartet_exclusion_prune` on exact rational turn boxes, 2⁻¹⁷ and 2⁻¹⁴. This removes sub-boxes of branch cells near rank-one-pair seeds, not whole production cells (width π/512 ≈ 128× larger) |
| [ChartConditioning](../ProvenResults/ChartConditioning/README.md) (30 Sep) | Ten-chart block conditioning (σ² ∈ (1/4, 23/4)) and a completion Lipschitz bound with no 1/√R term. Full-matrix F6 inverse M ≥ 4ρ² (ρ ≤ 1/40). Only two F6 classes can be small-R maximal endpoints | Restricts the T2 endpoint analysis to (4,5,0,3) and (1,2,2,4). A computed τ would delete neighbourhoods of the other four classes |
| [SymmetricSignedCornerPrune](../ProvenResults/SymmetricSignedCornerPrune/README.md) (30 Sep) | A whole-box strict-D₀ exclusion that works where every corner is small: 511 of 1,000 residual branch boxes (by class: all of (0,0,2,4) and (4,5,0,3), 71% of (2,4,4,2), 5% of (1,2,2,4)) | Pre-filter in the branch95 refinement pass, about 75× cheaper than side-triple; it leaves the (1,2,2,4) residual as the main analytic target |
| [SideChartCover](../ProvenResults/SideChartCover/README.md) (30 Sep, pending) | The cover certificate on singular cells with R>1, through implicit side charts covering all completions: 32 of 40 local boxes certified | Bin (b) of the branch layer, after the helper's two bug fixes and a cluster pilot |
| [MovingReference](../ProvenResults/FourierNeighbourhood/SeedLifting/MOVING_REFERENCE.md) | A whole-cell lifting criterion with a Fourier reference chosen per leaf, using regional radii where proved | The general tool for further seed cubes along the family |
| [ResidualCells](../ProvenResults/RegularSideCharts/ResidualCells/README.md), [campaign replay](../Verification/Campaign_layer_second_pass_2026-09-29/README.md) | D₀ ⇒ R > 1 on four diagnostic boxes and now 56/202 actual sampled D₀-touching survivor cells | Discard only the certified R ≤ 1 portions; the rest of each cell still needs certification |
| [RegularSideCharts](../ProvenResults/RegularSideCharts/README.md) | Regular side charts at every R > 0 point | Justifies bisecting D₀-touching survivors and certifying their positive-R sub-cells |
| [PairedSidePrune](../ProvenResults/CornerBounds/PairedSidePrune/README.md) | 4 of 53 retained boxes excluded beyond SideTriplePrune | A second-pass layer prune |
| [CampaignSecondPass](../ProvenResults/CornerBounds/CampaignSecondPass/README.md) | **93/512 whole held-out production-size survivors excluded (18.2%)**, all independently replayed; 1.84 local CPU-s per input | Separate bounded pass on survivor batches, with complete leaf certificates and replay command. This is a local pilot, not a full-campaign performance projection |
| [SideColumnPrune](../ProvenResults/CornerBounds/SideColumnPrune/README.md) | A single-column D₀ exclusion | Subsumed by SideTriplePrune |

**T2 building blocks (usable only together).**

| Result | What it gives |
|---|---|
| [PracticalTube](../ProvenResults/FourierNeighbourhood/PracticalTube/README.md) | Uniform matrix radius d_Four > 1/16384, family + transpose + equivalences (replayed locally, PASS) |
| [WideFamilyTube](../ProvenResults/FourierNeighbourhood/WideFamilyTube/README.md) | Radius 1/256 on 191 parameter boxes, 1/128 on 4; 79 boxes have no new certificate |
| [ClusterTube](../ProvenResults/FourierNeighbourhood/ClusterTube/README.md) | Radius 1/30 around the F6 orbit ([EXPANDED](../ProvenResults/FourierNeighbourhood/ClusterTube/EXPANDED.md)) |
| [FourierMaxR](../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_MAX_R.md) | Exact maximum of all 400 Fourier corners; M→0 only at twelve F6 parameter points. For M≤36, d_F6≤π√M/144 in either orientation; reference radius 1/30−π√M/144, including 1/48 for M≤1/4 and 1/96 for M≤1. These are reference bounds, not arbitrary seed-R prunes |
| [SeedAtlas](../ProvenResults/FourierNeighbourhood/SeedAtlas/README.md) | Fourier seeds = 12 surfaces and 36 R = 0 curves, with exact distance tests |
| [AtlasRigidity](../ProvenResults/FourierNeighbourhood/SeedLifting/ATLAS_RIGIDITY.md) | Exact atlas seeds in D₀ with 0 < R ≤ 20 have only Fourier carriers (zero-distance lift) |
| [FourierSideCompletion](../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_SIDE_COMPLETION.md), [BranchGap](../ProvenResults/FourierNeighbourhood/SeedLifting/BRANCH_GAP.md) | Exact endpoint parameters; a quantitative alternative-side gap |
| Seed lifts ([Conservative](../ProvenResults/FourierNeighbourhood/SeedLifting/CONSERVATIVE_LIFT.md), [Direct](../ProvenResults/FourierNeighbourhood/SeedLifting/DIRECT_LIFT.md), [Residual](../ProvenResults/FourierNeighbourhood/SeedLifting/RESIDUAL_LIFT.md), [Regional](../ProvenResults/FourierNeighbourhood/SeedLifting/REGIONAL_SEED_LIFT.md), [MatchedCover](../ProvenResults/FourierNeighbourhood/SeedLifting/MATCHED_COVER_LIFT.md), [RZero](../ProvenResults/FourierNeighbourhood/SeedLifting/R_ZERO_LIFT.md)) | Seed cubes from 10⁻¹⁹ up to 1/512 half-width; the non-F6 cubes (up to 1/2000) have 8 < R < 9. All below production width except ProductionCube |

**Limits (proved counterexamples).**
- [SeedObstruction](../ProvenResults/FourierNeighbourhood/UniformTube/SEED_OBSTRUCTION.md):
  unrestricted seed lifting is false (an atlas seed outside D₀ has d_Four > 1/40).
- [SmallRObstruction](../ProvenResults/FourierNeighbourhood/SeedLifting/SMALL_R_OBSTRUCTION.md):
  a D₀ ∩ F carrier with R < 1/200 has d_Four > 1/16000; m = 20 would need δ > 1/300.
- [CornerBounds curve](../ProvenResults/CornerBounds/README.md): the desired m≈20 needs coverage
  far beyond the previously small F6 seed cubes. [FourierMaxR](../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_MAX_R.md)
  shows that the actual R_max→0 limits within the Fourier family are all equivalent to F6.
  NearF6Closure now covers every limiting corner class, but its smallest radii need improvement.
- [BARRIERS.md](../ProvenResults/BARRIERS.md) lists further shortcuts that are ruled out.

## The best single deliverable

> There are δ, m > 0 such that, for every θ ∈ D₀ ∩ F with R(θ) < m, H₊(θ) lies within δ of the
> Fourier family, **and** no quartet edge lies within δ of the Fourier family.

Every cell with sup R < m would then be excluded by one Taylor model of the polynomial R(θ). The
first half is the contrapositive of T1′; the second half is T2.

**Constraints on the constants.**
- The small-R obstruction shows that δ = 1/16384 cannot be paired with any m ≥ 1/200, and
  m = 20 needs δ > 1/300. So the statement needs a larger excluded matrix region, a smaller m, or
  direct exclusion of the non-Fourier remainder.
- The campaign measurement fixes the scale. The D₀-touching layer survivors lie at seed
  distance ~0.02 rad from the family (median), with R ≥ 5. A tube alone would need a seed radius
  of about 0.1 rad to absorb them, far beyond any proved radius.
- **The realistic split** ([report §4](../NumericalCampaign/Campaign/cluster/REPORT_2026-09-29.md)):
  - bisect the ~1.6·10⁴ D₀-touching survivors and certify their positive-R sub-cells;
  - discard their R ≤ 1 parts by a cell version of the ResidualCells gap;
  - use T2 (a seed lift into the tube) only for the thin R → 0 sliver at the family itself;
  - prune the ~6·10⁵ survivors that miss D₀ more deeply. That is not a T2 problem.

## How results come back

- **Where to put them.** A proved target goes in [ProvenResults/](../ProvenResults/README.md)
  (statement, status, dependencies, proof or replayable certificate), with a line in
  [NumericalCampaign/INPUTS.md](../NumericalCampaign/INPUTS.md). Then update the status line here
  and in the target file, rather than adding a new dated paragraph.
- **T1′ + T2** become a prune in [domain.jl](../NumericalCampaign/Certification/domain.jl): sup R < m
  on the cell implies out, plus the proximity condition. The layer list is then re-checked in
  seconds.
- **Cell exclusions** (such as ProductionCube) are applied to `cells.txt` or `layer.txt` before
  certification.
- **Constants matter.** If a proof gives weaker constants, say so early. The campaign can meet a
  theorem halfway with smaller cells near the excluded set. That works wherever the H₊ Taylor
  model exists; it does not work at R ≈ 0.

## Evidence

- [evidence/corner_evidence.jl](evidence/corner_evidence.jl) (log alongside), for T1′:
  over 2,000 uniform strict seeds, max_c R_c ≥ 58, and D₀ seeds have R ∈ [58, 374].
- [evidence/layer_bench.py](evidence/layer_bench.py) ([data](evidence/layer_bench_600.json),
  [residual sample](evidence/layer_residual_sample.txt)): the 600-cell layer benchmark (91%
  excluded), and the 7 residual cells with D₀ samples that led to T6.
- [evidence/layer_survivors_T2_summary_2026-09-29.txt](evidence/layer_survivors_T2_summary_2026-09-29.txt)
  ([sample](evidence/layer_survivors_T2_sample_2026-09-29.tsv)): 8,000 layer survivors with
  atlas distances, R ranges and D₀ membership at 81 float samples each.
- [NumericalCampaign/FOLDS.md](../NumericalCampaign/FOLDS.md), for T3 and T5.
- **Branch-layer diagnosis** (28 September): enclosing √R, δ and w by intervals or slabs does not
  rescue the H₊ Taylor model near R = 0, because the division by ρ = (n + Re dF)/2 degenerates.

## Background: the accepted inputs

These are strict-corner coverage, side/completion exhaustion, positive-sheet coverage, and
nonvanishing denominators on R > 0 ([ASSUMPTIONS.md](../MinimalConstruction/ASSUMPTIONS.md)).
- The whole argument is conditional on them. Proving them would make it unconditional, but the
  campaign does not need that in order to run.
- CornerBounds' compactness theorem uses strict-corner coverage.
- The branch lemma uses only the sign-selected side identities.

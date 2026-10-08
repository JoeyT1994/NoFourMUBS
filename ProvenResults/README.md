# ProvenResults: the certificates and lemmas the proof cites

Each folder states one result: its hypotheses, its proof, its pinned inputs and its verifier. They are grouped below by where they enter [`../PROOF.md`](../PROOF.md). Results that rely on the reconstruction inputs ([MinimalConstruction](../MinimalConstruction/README.md)) say so.

Some packages describe themselves as "partial" or "additive". That status refers to when each package was delivered. What closes each row is recorded in the final [ledger](../Verification/ledger_2026-10-07c/README.md).

## §1 Reduction

| Result | Statement |
|---|---|
| [Sheets](Sheets/README.md) | H₋(θ̄) ≅ conj H₊(θ), so one sheet suffices. Side branch lemma ([BRANCH_LEMMA](Sheets/BRANCH_LEMMA.md)) |
| [Tao exclusion](ExceptionalEndpoints/Tao/README.md) | S6 has exactly 90 common rays and no orthogonal pair among them. An independent replacement for Brierley–Weigert |
| [Strict-side guards](StrictSideGuards/README.md) | The P denominators and λ moduli of the side constructor, proved without reconstruction inputs |
| [Balanced products](BalancedProducts/BalancedFourSeedIdentity.md) | Balanced three-row product sums vanish for every non-Tao Hadamard. Used by several pruning certificates |
| [F3 blocks](FourierBlocks/FourierBlockClassification.md), [edge rigidity](EdgeRigidity/README.md) | A 3×3 Hadamard block forces the Fourier family or Tao. No quartet edge has a vanishing 3×3 minor |

## §2 The exclusion engine and the F6 tube

| Result | Statement |
|---|---|
| [ClusterCover](CommonRays/ClusterCover/README.md) | Cover the common unbiased rays by capacity-one labels, then exclude two compatible orthogonal 6-cliques by exhaustive graph search. The certificate for every cell of the campaign |
| [ClusterTube](FourierNeighbourhood/ClusterTube/README.md) | No quartet edge within column-projector distance 1/30 of the F6 orbit. Integer cover with 7,485,187 nodes; no reconstruction inputs |
| [FourierNeighbourhood](FourierNeighbourhood/README.md) | Tubes around the whole Fourier family: [PracticalTube](FourierNeighbourhood/PracticalTube/README.md), [WideFamilyTube](FourierNeighbourhood/WideFamilyTube/README.md), [UniformTube](FourierNeighbourhood/UniformTube/README.md). Seed lifts into them: [SeedLifting](FourierNeighbourhood/SeedLifting/), [SeedAtlas](FourierNeighbourhood/SeedAtlas/README.md), [F3JointLift](FourierNeighbourhood/F3JointLift/) |

## §3 Soundness of the regular cover

| Result | Statement |
|---|---|
| [FastTMInvariant](FastTMInvariant/README.md) | The guarded FastTM Taylor-model enclosures are sound through order 12, including the rescaled `inv`/`sqrt` |
| [CertificateArithmetic](CertificateArithmetic/README.md) | Taylor-model remainder rules |
| [DyadicTiling](DyadicTiling/README.md) | The enlarged cells ρ + 2⁻⁴⁰ tile T⁴ through depth 13 |
| [CampaignLayerCoverage](CampaignLayerCoverage/README.md) | Exact rational audit of the branch-cell refinements |

## §4 The branch layer

| Locus | Result | Statement |
|---|---|---|
| All | [CornerBounds/SideTriplePrune](CornerBounds/SideTriplePrune/README.md) | Surviving side labels must form a compatible triple. Excludes 95.6% of the branch layer without reconstruction. See also [SideColumnPrune](CornerBounds/SideColumnPrune/README.md), [PairedSidePrune](CornerBounds/PairedSidePrune/README.md), [CampaignSecondPass](CornerBounds/CampaignSecondPass/README.md), [LocalBranchGap](CornerBounds/LocalBranchGap/PROOF.md) |
| R = 0 layer | [SymmetricSignedCornerPrune](SymmetricSignedCornerPrune/README.md), [SignedCornerPSDPrune](SignedCornerPSDPrune/README.md) | Whole-box strict-D₀ exclusions from signed corner means and PSD pencils. They need no radicals, so they work where every corner is small |
| R = 0 layer | [RegularSideCharts](RegularSideCharts/README.md) | Analytic side charts with det(J)² = R/64, and the residual-cell gap |
| F6 seeds | [FourierCornerRigidity](FourierCornerRigidity/README.md), [ChartConditioning](ChartConditioning/README.md) | Near-rank-one corners are outside strict D₀. Only the classes (4,5,0,3) and (1,2,2,4) can be small-R endpoints |
| (2,4,4,2) seeds | [Patch2442Local](Patch2442Local/README.md), [Patch2442Region_v3](Patch2442Region_v3/README.md) | Punctured 1/40 ball and whole-box terminals for the (2,4,4,2) ring |
| Shoulder | [ActiveShoulderClosure_v2](ActiveShoulderClosure_v2/README.md) and its [frontier extension](ActiveShoulderClosure_v2_frontier/README.md) | Guarded production cubes and the frontier passes p1–p3 (42.7M rows). They build on [v1](ActiveShoulderClosure/README.md) and [FourierTransverseStability_v2](FourierTransverseStability_v2/README.md) |
| Small M | [EffectiveConfinement](EffectiveConfinement/README.md) | An explicit global cutoff M < 2^(−7.5·10⁵²) ⇒ H lies in the F6 tube. Far too small to use, but it shows such a cutoff exists |

The (0,0,2,4) seeds and the band certificate are in [`../RouteC/band`](../RouteC/band/REPORT.md).

## Barriers

[BARRIERS.md](BARRIERS.md) lists proved counterexamples to tempting shortcuts.

## Verifying

`python3 ../verify.py` replays every registered check in an isolated copy. The cluster-cover checks also need the pinned Julia environment in `NumericalCampaign/Certification`.

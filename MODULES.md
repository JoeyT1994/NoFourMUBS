# Module map: what the proof of record uses (8 Oct 2026)

This map was built from `PROOF_MAP.md`, `simplerproof/PROOF.md`, the 07c ledger, `full_ledger.py`, `REDUCTION.md`, `MinimalConstruction/Proofs`, and the modules' `INPUTS.json` and import statements. Nothing has been moved or deleted. This page only labels each module.

## Used directly by the proof

| Module | Role |
|---|---|
| `MinimalConstruction/Proofs` (MC1–MC5), `NumericalCampaign/REDUCTION.md` | Reduction to seeds of maximal corners, relative to arXiv:2608.18053 |
| `ProvenResults/CommonRays` (ClusterCover), `NumericalCampaign/Certification` | Stage-C exclusion on the 8.65M regular work cells |
| `ProvenResults/FourierNeighbourhood` (ClusterTube, SeedLifting/residual_lift) | F6 tube of radius 1/30; side-cover rows of the ledger |
| `simplerproof/widetube` | F6 tube of radius 0.075; local averaging lemma (new 8 Oct; replayed on the cluster) |
| `ProvenResults/ActiveShoulderClosure_v2`, `…_v2_frontier` | Ledger sources v2 and frontier_p1–p3, hard_*: 42.7M rows |
| `ProvenResults/Patch2442Local` (Radius025Complete), `Patch2442Region_v3` | Ledger sources ball40, ball40_seed, v3 |
| `ProvenResults/SignedCornerPSDPrune` | Ledger source hybrid_psd |
| `RouteC/band` (with `seed0024`) | Ledger sources band and seed0024 |
| `ProvenResults/CornerBounds` | Side-column cap and radical-free prunes |
| `ProvenResults/Sheets`, `ExceptionalEndpoints` (Tao), `BalancedProducts` | Reconstruction branches; Tao exclusion; interval constructor |
| `RouteC/averaging` | Identity R(A) = (2 Im q(B))², used by seed0024 and the wide-tube lemma |
| `simplerproof/averaging_lemma/PRACTICAL_LOCAL.tex` | Local theorem at F6, used by seed0024; awaiting review |

## Inputs to the modules above

These are reached one level down through `INPUTS.json` or imports:
- ActiveShoulderClosure (v1)
- FourierTransverseStability_v2
- RegularSideCharts
- SymmetricSignedCornerPrune
- ChartConditioning
- EffectiveConfinement
- FastTMInvariant
- FourierBlocks
- FourierCornerRigidity
- StrictSideGuards (mentioned in prose only)
- ExactPSDRegionCertificates (listed in a brief only)

## Check before archiving

These are not cited by the current chain, but the 1 Oct `PROOF_OF_RECORD.md` cites them:
- DyadicTiling. This one is probably still needed: it shows the stored enlarged cells contain the ideal dyadic cells of the 8.65M-cell cover.
- CampaignLayerCoverage
- SideChartCover
- ActiveF6Cube1551

## Not used by the current proof (exploratory or superseded)

AnchorElimination, AnchorInequalities, CertificateArithmetic, Completion, EdgeRigidity, FourierTransverseStability (v1, superseded by v2), FourthBasis, Quartets, RelativePhases, SpectralMoments, Triples. In `RouteC/`: HybridReconstruction and the loose exploration scripts.

## Superseded top-level documents

| Superseded | Replaced by |
|---|---|
| `HANDOFF.md`, `HANDOFF_BRANCH_HELPER.md`, `HANDOFF_LOCAL.md`, `RESEARCH_BRIEF.md` (30 Sep – 1 Oct) | `README.md` (start-here table) |
| `PROOF_OF_RECORD.md` (1 Oct draft, kept as delivered) | `PROOF_MAP.md`, `simplerproof/PROOF.md` |
| `PROOF_OF_RECORD_STATUS.md`, `STATUS_2026-10-01.md`, `STATUS_2026-10-04.md`, `STATUS_2026-10-07.md` | Ledger 07c and this file |
| Ledgers 06a–07b | Ledger 07c |

**Large local data.** `Verification/BranchLayer_*` (about 786 MB) is already git-ignored as superseded evidence; its hashes are in `ARCHIVED_DATA.md`. The top-level `NoFourMUBS_*.zip` delivery files (about 168 MB) are also git-ignored.

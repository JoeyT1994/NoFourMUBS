# NumericalCampaign: certify no four MUBs by a rigorous cover of the carrier torus

**Status (30 September 2026, morning).**
- **Run of record in progress** on rusty, in `nofourmubs_rescaled_2026-09-30`:
  - FastTM sha256 `7e9c0bc3…` is the guarded FastTM with rescaled `inv`/`sqrt`
    ([FastTMInvariant](../ProvenResults/FastTMInvariant/README.md),
    [RESCALED_INTRINSICS](../ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md));
  - the expansion is jobs 7140938–40 on 3 × 10 rome nodes;
  - post-expansion job 7140941 starts after them: merge, `audit.py expand`, comparison with the
    guarded run, then the layer prune and the full certification on 30 nodes;
  - everything else in the package is identical to the guarded run (MANIFEST diff: `fasttm.jl` only).
- **Why a rerun.** The guarded run of 29–30 September passed its expansion audit. But the guard
  rejected FastTM's old `inv`/`sqrt` constants c₀^−(Q+1) on 406,719 cells with small denominators,
  and sent them to the branch layer. That left 976,882 layer survivors instead of 623,187. Rescaling
  removes these artefacts: on a sample, 88% of their volume is pruned and none is left in the layer,
  while genuine branch points are unchanged. The guarded certification certified 342,217 of the
  first 342,218 cells at 20.7 s mean before it was cancelled in favour of one clean code version.
  See [Campaign/REPORT_2026-09-30.md](Campaign/REPORT_2026-09-30.md).
- **Method:** the accelerated cover certificate, cover only (unchanged).
- **Superseded:** the unguarded run of 28–29 September (`nofourmubs_campaign_2026-09-28_v1`) and the
  guarded run (`nofourmubs_guarded_2026-09-29`). Neither is of record. Their directories were deleted from
  rusty on 30 September for the file quota, after `compare_runs` confirmed that the rescaled run reproduces the
  unguarded `cells.txt` and `layer.txt` exactly.
- What remains besides that run is listed under "Open items" below. The analytical targets are in
  [WhatWeWanttoProve/](../WhatWeWanttoProve/README.md).

## The attack in one paragraph

**The reduction.** Every quartet would contain an edge (I, H). The [reduction](REDUCTION.md) proves
that such an H can be taken to be H₊(θ), the positive-sheet reconstruction, with the seed θ in an
explicit domain D₀ ∩ F of about 1/11,000 of T⁴:
- the top-left corner has the largest R of all 400 corners;
- the Gram moduli are ordered, which removes the 72-fold ordering redundancy.

The reduction uses only the accepted reconstruction inputs, the sheet conjugation, the F6 and Tao
exclusions, and exact invariance identities.

**The computation.** The campaign certifies

> **Q.** For every θ ∈ D₀ ∩ F, {I, H₊(θ)/√6} does not extend to four MUBs.

It works cell by cell, on seed boxes of half-width ρ = π/512 ≈ 0.0061 (level 9 of a dyadic cover of
T⁴). Every rigorous test uses the enlarged cell ρ + 2⁻⁴⁰, so the enlarged leaves provably tile the
torus.

1. **Expansion (run of record in progress; previous runs done).** 340,972 level-6 jobs are refined to level 9. Cells that miss D₀ ∩ F are
   pruned rigorously by four tests: the F ordering, R < 0, the radical-free corners (`bc_test`),
   and all 400 corners through a Taylor model of H₊ (`d0_test`). The guarded run gave
   - **8,652,808 work cells**;
   - **14,426,812 branch-layer cells**, where H₊ has no Taylor model (near R = 0 and other branch
     loci), including 406,719 guard artefacts which the rescaled run removes.
   Its audit passed. The rescaled run's counts are pending.
2. **Layer stage (automatic after the expansion).** The reconstruction-free prune of
   [SideTriplePrune](../ProvenResults/CornerBounds/SideTriplePrune/README.md) excluded 95.6% of
   the unguarded branch layer, leaving 623,187 survivors. The guarded layer left 976,882, including
   about 354k guard artefacts.
3. **Certification (starts automatically after the expansion).** Each work cell gets the **cluster-cover
   certificate** ([ClusterCover](../ProvenResults/CommonRays/ClusterCover/README.md)).
   - The certificate covers every common unbiased ray over the cell by phase-box labels of
     capacity one, then runs an exhaustive orthogonality/unbiasedness graph test.
   - It needs no regularity or root count.
   - The accelerated version adds three proved components:
     - [Cartesian exclusion](../ProvenResults/CommonRays/ClusterCover/CARTESIAN_EXCLUSION.md);
     - [sharp capacity](../ProvenResults/CommonRays/ClusterCover/SHARP_CAPACITY.md);
     - [label refinement](../ProvenResults/CommonRays/ClusterCover/LABEL_REFINEMENT.md).
   - Every acceptance is an outward-interval test.

   The older **rays** certificate (Krawczyk tubes, fold exclusion, clique test) is still in the code
   but is **not used**. Its branch and bound accepts exclusions and regularity by floating-point
   tests, and the fully interval-verified version ([review/verified_rays.jl](Certification/review/verified_rays.jl))
   is 3–20× slower. Cover only is both faster and fully rigorous.

Quartets, unlike MU triples, have a robust numerical residual gap, so cells never have to approach
a genuine solution.

## Open items

1. **The run of record** (in progress, approved):
   - expansion, merge and audit, then the layer prune and the certification of every work cell on
     30 rome nodes. This is chained by job 7140941 via
     [post_expand_guarded.sh](Campaign/cluster/post_expand_guarded.sh);
   - then pass 2 on failed cells (`make_pass2.py`), `audit.py certify` and a random independent
     replay (`replay_full.jl`);
   - projected ≈ 9·10⁴ CPU-h in total (expansion ≈ 3·10⁴, certification ≈ 6·10⁴). See
     [BUDGET.md](BUDGET.md).
2. **Branch-layer survivors** of the rescaled run (expected ≈ 623k genuine branch points; the
   branch-layer agent owns this stage, see
   [WhatWeWanttoProve/BRANCH_LAYER.md](../WhatWeWanttoProve/BRANCH_LAYER.md)):
   - ~1.6·10⁴ touch D₀ at float samples. They sit near the Fourier family (median 0.02 rad) with
     moderate R (median 39). The route is to bisect them and certify the positive-R parts, and to
     discard R ≤ 1 parts by a cell version of the
     [ResidualCells](../ProvenResults/RegularSideCharts/ResidualCells/README.md) gap.
   - ~6·10⁵ miss D₀ at all samples. They need a deeper prune or the R-gap test.
   - The thin R → 0 sliver along the Fourier family needs T2
     ([WhatWeWanttoProve/T2](../WhatWeWanttoProve/T2_fourier_neighbourhood.md)). Since 30 September
     only two F6 endpoint classes remain, and the near-rank-one tube (2⁻¹⁴) is outside strict D₀
     ([FourierCornerRigidity](../ProvenResults/FourierCornerRigidity/README.md),
     [ChartConditioning](../ProvenResults/ChartConditioning/README.md)).
3. **The coverage audit** after the run (`Campaign/cluster/audit.py`).
4. **The reconstruction inputs** are now proved relative to ClassificationPaper results ([MinimalConstruction/Proofs](../MinimalConstruction/Proofs/README.md), 1 Oct; independent review pending).

## Contents

| File or folder | What it holds |
|---|---|
| [REDUCTION.md](REDUCTION.md) | The theorem "Q ⇒ no four MUBs", its proof, and the measured size of D₀ ∩ F |
| [INPUTS.md](INPUTS.md) | Every theorem, construction, accepted input and software tool the campaign relies on, with its status |
| [BUDGET.md](BUDGET.md) | The 600,000 CPU-hour budget, the spend so far and the measured projection |
| [Campaign/](Campaign/) | [driver.jl](Campaign/driver.jl) (plan, prune, certify, bisect), `jobs_L6.txt` (340,972 jobs), [cluster/](Campaign/cluster/README.md) (the disBatch package for rusty, with the reports), [analysis/](Campaign/analysis/) (layer and atlas-distance analysis) and [evidence_2026-09-29/](Campaign/evidence_2026-09-29/) (today's measurements) |
| [Certification/](Certification/README.md) | Julia tools: FastTM, the H₊ Taylor model, the domain tests, the cover certificate (`cover.jl`, `cover_accelerated.jl` and its parts) and the retired rays certificate, with tests |
| [Domain/](Domain/README.md) | The exact reduction verifier, and Monte Carlo for D₀, F, the boundary overhead and the seed symmetries |
| [FOLDS.md](FOLDS.md) | Fold walls, ghosts and the X(α) tube: the analysis that motivated the cover certificate. Historical |
| [Pilot/](Pilot/README.md) | The local pilots of 27–28 September with the rays path. Historical |
| [Prototypes/](Prototypes/README.md) | The first Python pilots, not rigorous. Historical |
| [Evidence/](Evidence/README.md) | Why Q should hold with margin: the quartet residual gap and ray conditioning |

## Running

- **On the cluster:** [Campaign/cluster/README.md](Campaign/cluster/README.md) covers preflight, the
  stages, status, and the cover-only settings.
- **The exact reduction check:** `cd Domain && python3 verify_reduction.py` takes about 20 s. The
  root `verify.py` also runs it.
- **Julia 1.12.** From `Certification/`, the reference cover test is

      julia --startup-file=no --project=jlenv_cluster test_cover.jl

  The accelerated cover, on one cell:

      include("cover_accelerated.jl")
      r = certify_cell_cover_accelerated(θ, ρ + 2.0^-40; partition = true)

- **Python.** The `Domain/`, `Prototypes/` and `Evidence/` scripts use the repository
  `requirements.txt`, plus scipy. Run each from its own folder.

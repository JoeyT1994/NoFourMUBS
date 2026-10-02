# Handoff: no four MUBs in C⁶ (30 September 2026)

**Goal.** Prove that C⁶ has no four mutually unbiased bases. This is open, and nothing here proves
it yet. The route is a rigorous computer-assisted exclusion. It rests on a small set of reconstruction inputs, listed in
[MinimalConstruction/ASSUMPTIONS.md](MinimalConstruction/ASSUMPTIONS.md). These are now proved on 1 October 2026 relative to named ClassificationPaper results in [MinimalConstruction/Proofs](MinimalConstruction/Proofs/README.md) (registered check `reconstruction_proofs`, PASS; independent review of the prose pending).

## The argument in four steps

1. **The reduction** ([NumericalCampaign/REDUCTION.md](NumericalCampaign/REDUCTION.md), proved).
   - Any quartet contains an edge H₊(θ), the positive-sheet reconstruction of a complex Hadamard
     from its 3×3 corner seed θ ∈ T⁴.
   - θ can be taken in an explicit domain D₀ ∩ F, about 1/11,000 of T⁴.
   - So it suffices to prove Q: **no θ ∈ D₀ ∩ F gives a quartet edge.**
2. **The domain cover** (run of record in progress on Flatiron's rusty cluster).
   - D₀ ∩ F is covered by dyadic seed cells of half-width π/512 and pruned rigorously.
   - About 8.65M **work cells** result, plus about 14M branch-layer cells where the reconstruction
     has a branch point. Exact counts of the rescaled run are pending; the guarded run's audit gave
     8,652,808 and 14,426,812, including 406,719 guard artefacts.
   - A reconstruction-free prune removes about 95.6% of the branch layer, leaving about 623k cells.
   - All Taylor-model arithmetic runs under the proved range guard
     ([FastTMInvariant](ProvenResults/FastTMInvariant/README.md)), with
     [rescaled `inv`/`sqrt`](ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md).
3. **Certification of each work cell** (run of record; it starts automatically after the
   expansion). The accelerated **cluster-cover certificate**
   ([ProvenResults/CommonRays/ClusterCover](ProvenResults/CommonRays/ClusterCover/README.md))
   works as follows:
   - every common unbiased ray over the cell is enclosed in phase-box labels of capacity one;
   - an exhaustive orthogonality/unbiasedness graph test then shows that no second and third
     basis fit;
   - every acceptance is an outward-interval test.

   On guarded code it certified 342,217 of the first 342,218 cells at 20.7 s mean. The projection
   is about 5–6·10⁴ CPU-h.
4. **What is left:**
   - finishing the run of record: pass 2 for the few failed cells, the coverage audit and a random
     independent replay;
   - the branch-layer survivors, handled by the branch-layer stage
     ([BRANCH_LAYER.md](WhatWeWanttoProve/BRANCH_LAYER.md)): bisect and certify the ~1.6·10⁴ that
     touch D₀, and prune the rest more deeply;
   - the thin R → 0 sliver along the Fourier family, target **T2**. Since 30 September only two F6
     endpoint classes remain. The missing piece is a quantitative confinement step: a numerical
     seed gap τ, or a global small-M cutoff.
   - independent review of the rescaled `inv`/`sqrt` note.

## Where to look

| If you want… | Read |
|---|---|
| the status of every piece, and the open analytical targets | [WhatWeWanttoProve/README.md](WhatWeWanttoProve/README.md) |
| the campaign, its numbers and how to run it | [NumericalCampaign/README.md](NumericalCampaign/README.md), [Campaign/cluster/README.md](NumericalCampaign/Campaign/cluster/README.md), [latest report](NumericalCampaign/Campaign/REPORT_2026-09-30.md) |
| every proved result, with proofs and verifiers | [ProvenResults/README.md](ProvenResults/README.md) |
| what the proof depends on | [NumericalCampaign/INPUTS.md](NumericalCampaign/INPUTS.md) |
| shortcuts that are proved not to work | [ProvenResults/BARRIERS.md](ProvenResults/BARRIERS.md) |
| replay receipts | [Verification/README.md](Verification/README.md) |

## Reproduce

- **All retained proofs:** `python3 verify.py`. It needs Python ≥ 3.10 with `requirements.txt`, and
  Julia 1.12 for the cluster-cover checks. It runs 81 checks; the latest complete run (80 then registered) is in
  `Verification/root_run_2026-09-30/`.
- **One campaign cell:** from `NumericalCampaign/Certification`, run
  `julia --startup-file=no --project=jlenv_cluster`, then

      include("cover_accelerated.jl")
      r = certify_cell_cover_accelerated(θ, π/512 + 2.0^-40; partition = true)

- **The cluster package:** `NumericalCampaign/Campaign/cluster/`. Build it with `build_bundle.sh`
  and check it with `preflight.sh`. The large campaign data live on rusty, not in this folder:
  `cells.txt`, `layer.txt`, the results and the logs. The run of record is in
  `~/Documents/QuantumPhysics/ClusterScripts/nofourmubs_rescaled_2026-09-30`. The superseded
  `…_campaign_2026-09-28_v1` (unguarded) and `…_guarded_2026-09-29` were deleted on 30 September. Their
  comparisons are recorded in the rescaled run's `logs/compare_runs.log` and `logs/compare_vs_unguarded.log`.

## Conventions

- **Nothing unproved enters ProvenResults.** Every file states its scope and dependencies.
- **Campaign acceptance is always by outward-interval arithmetic** on cells enlarged by 2⁻⁴⁰.
  Floating-point tests only propose.
- **Superseded material is archived, not deleted**, in `../NoFourMUBSArchive/` (not included in
  this zip); `cleanup-2026-09-29/ARCHIVE_NOTE.md` lists the latest moves.

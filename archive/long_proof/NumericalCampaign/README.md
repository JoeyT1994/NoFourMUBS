# NumericalCampaign: the certified cover of D₀ ∩ F

This folder holds the reduction and the computation behind §1, §3 and §4 of [`../PROOF.md`](../PROOF.md).

## The reduction

Every quartet would contain an edge (I, H). By [REDUCTION.md](REDUCTION.md), H can be taken to be H₊(θ), the positive-sheet reconstruction, where θ lies in an explicit domain D₀ ∩ F of about 1/11,000 of T⁴:
- the top-left corner has the largest R of all 400 corners;
- the Gram moduli are ordered, which removes the 72-fold ordering redundancy.

The reduction uses:
- the reconstruction ([MinimalConstruction/Proofs](../MinimalConstruction/Proofs/README.md), proved relative to the classification);
- sheet conjugation;
- the F6 and Tao exclusions;
- exact invariance identities.

It remains to certify

> **Q.** For every θ ∈ D₀ ∩ F, {I, H₊(θ)/√6} does not extend to four MUBs.

## The computation

The cover works on seed boxes of half-width π/512 (level 9 of a dyadic cover of T⁴). Every rigorous test uses the enlarged cell ρ + 2⁻⁴⁰, so the enlarged leaves provably tile the torus ([DyadicTiling](../ProvenResults/DyadicTiling/README.md)).

1. **Expansion.** 340,972 level-6 jobs are refined to level 9. Four rigorous tests prune cells that miss D₀ ∩ F:
   - the F ordering;
   - R < 0;
   - the radical-free corners (`bc_test`);
   - all 400 corners through a Taylor model of H₊ (`d0_test`).

   FastTM is the Taylor-model engine. Its guard and rescaled intrinsics are proved sound in [FastTMInvariant](../ProvenResults/FastTMInvariant/README.md).
2. **Regular cells.** Each of the 8.65M work cells receives the cluster-cover certificate ([ClusterCover](../ProvenResults/CommonRays/ClusterCover/README.md)):
   - capacity-one labels cover every common unbiased ray;
   - an exhaustive orthogonality/unbiasedness graph test follows;
   - every acceptance is an outward-interval test.
3. **Branch layer.** These are the cells where H₊ has no Taylor model, near R = 0 and the side branch points.
   - [SideTriplePrune](../ProvenResults/CornerBounds/SideTriplePrune/README.md) removes 95.6% of them without reconstruction.
   - The survivors are refined by [`Campaign/branch95`](Campaign/branch95/README.md) into 45,713,468 post-E rows.
   - Every row is closed by one of the certificates listed in the [final ledger](../Verification/ledger_2026-10-07c/README.md).

## Contents

| File or folder | What it holds |
|---|---|
| [REDUCTION.md](REDUCTION.md) | The theorem "Q ⇒ no four MUBs", its proof, and the measured size of D₀ ∩ F |
| [INPUTS.md](INPUTS.md) | Every theorem, construction and software tool the campaign relies on, with its status |
| [Certification/](Certification/README.md) | Julia tools: FastTM, the H₊ Taylor model, the domain tests and the cover certificate, with tests |
| [Campaign/](Campaign/) | `driver.jl` (plan, prune, certify, bisect) and `jobs_L6.txt` |
| [Campaign/cluster/](Campaign/cluster/README.md) | The cluster package: preflight, stages, audits and replays |
| [Campaign/branch95/](Campaign/branch95/README.md) | The branch-layer pipeline, and `full_ledger.py`, which builds the ledger |
| [Domain/](Domain/README.md) | The exact reduction verifier, and Monte Carlo estimates for D₀ and F |
| [Evidence/](Evidence/README.md) | Why Q holds with margin: the quartet residual gap and ray conditioning |

## Running

- **The exact reduction check:** `cd Domain && python3 verify_reduction.py`. It takes about 20 s, and the root `verify.py` also runs it.
- **One cell of the cover (Julia 1.12, from `Certification/`):**

      include("cover_accelerated.jl")
      r = certify_cell_cover_accelerated(θ, ρ + 2.0^-40; partition = true)

- **The full run on a cluster:** see [Campaign/cluster/README.md](Campaign/cluster/README.md).

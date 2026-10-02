# Branch-layer bins study (30 September 2026, local, evidence only)

This is a measurement, not a certificate. It asks how the **genuine** branch-layer survivors sort
under the existing rigorous tools once they are refined.

**Sample:** 208 survivors, every 3,000th of the 623,187 old survivors (`old_sample.txt`, level 9).

**Code:** production code with the rescaled FastTM. All tests are the campaign's outward-interval
tests. The float probes (`d0probe.jl`) only explain the results.

## Steps

1. **Level-11 refinement** with `driver.jl prune`, in `bins_study.jl`. The
   F/R/BC/D0 tests are the same as the expansion's; D0 is applied on the subcells too. Output:
   `results/bins_level11.jsonl`.
2. **Side-triple prune on the leftover level-11 leaves**, in `triple_all.py`. It uses the unchanged
   `ProvenResults/CornerBounds/SideTriplePrune/triple_prune.prune_box` on the leaf and, where that
   fails, on its level-12 and level-13 children. Output: `results/res_part_*.json`.
3. **Leftover level-13 boxes by outward R interval**, in `classify_open.jl`: R < 0, R > 1, or residual.
   Also the distance to the nearest active or stationary F6 seed. Output:
   `results/open_level13_classified.txt`.

## Results, as fractions of the sampled survivor volume

| Bin | Volume | What closes it |
|---|---:|---|
| Pruned at levels 10–11 (F, R, BC, D0 on subcells) | 64.7 % | Done: existing tests |
| Side-triple prune on leftover subcells, levels 11–13 | ≈ 4.2 % | Done: existing test, applied to small boxes |
| **H₊ Taylor model exists** (work cells at levels 10–11) | 26.6 % | The production cover certificate |
| Singular with inf R > 1 (levels 11 and 13) | ≈ 2.3 % | Regular side charts (RegularSideCharts, det J² = R/64), not yet integrated |
| **Residual**: singular, R straddling [0, 1] at level 13 | ≈ 2.1 % | Open |
| Time cap | 0.03 % | Rerun |

- 45 of the 208 cells are fully pruned by refinement alone.
- Refinement is a large gain. Whole level-9 cells defeated the side-triple prune because its R cap
  (the maximum of R₀ over the cell) was about 54. On small subcells the cap is small.
- The float probe on one cell's residual shell (0 < R < 1) found every sampled point outside D₀ by
  a margin of 93–98 in M − R₀. Even corners using only the first three rows beat R₀ by 27 or more.
  So the residual there is a D₀-exclusion problem, not a quartet problem.

## Where the residual is

The residual lies in 41 of the 52 cells that still had open boxes.
- The largest residuals sit **0.04–0.18 rad from stationary F6 seed classes**, not the active ones.
- A few sit 0.13–0.14 rad from active seeds.
- The closest residual point is 0.058 rad from an active seed and 0.037 rad from a stationary one.
- All of these are far outside a production cube (π/512 ≈ 0.006) and far outside the analytic
  tubes (2⁻¹⁴).

Near F6 seeds every corner's R tends to 0, so a comparison of corners loses its margin. This is the
regime where FourierCornerRigidity's inactive-class gap, R_inactive ≤ (1112/1915)² M, would apply
if the carrier's chart could be certified.

## Implications

- About 95 % of genuine survivor volume is handled by existing tools plus refinement: 68.9 %
  excluded plus 26.6 % certifiable as work cells.
- About 2.3 % needs the side-chart integration, which is engineering.
- About 2 % is a residual near F6 seeds at moderate distance, especially the stationary classes. That
  residual is where the remaining mathematics is needed.

Cost: about 18 CPU-h locally for the side-triple step on 4,615 leaves. It would parallelise
trivially on the cluster.

# Seed atlas driver (piece B)

Builds the seed atlas of `../SPEC.md` and writes it in the format of `../FORMAT.md`. Everything here is untrusted binary64.
Piece A (`../cert/`) certifies the result in Arb.

| file | role |
|---|---|
| `seedgeom.py` | seed geometry: Gram sides, Newton, continuation, the matched completion, corner census (all g ∈ G4, 400 corners, 36 orderings, orientation +1 and matched), edge distance R/\|∇R\| |
| `tmb.py` | second-order Taylor models, batched over boxes (after `explorations/seed_balls/tm2.py`) |
| `c1.py` | `Ball` (centre data: P = Q(θ0), T = DQ(θ0), Mth = V S⁻¹, U = T Mth) and the C1 bound by Taylor models on k⁴ w-boxes (SPEC §2), about 100× faster than the prototype through batching |
| `makeball.py` | radius ladder 0.125 … 0.01, label radius 0.03 then 0.02; stored n = 1.1 × the Taylor-model bound; Stage C screened with a lower clique cap (a screened pass is an official pass) |
| `cover.py` | sphere covers by dyadic boxes; target discovery by sampling the sphere and looking every corner seed up in a grid index of the balls; T0 / linear T1 by exact vertex tests, general T1 and T2 by Taylor models over the box |
| `driver.py` | breadth-first growth on one node (master + process pool), then the record phase (F6 record boundary → T1prime) |
| `record_boundary.py` | the F6 record (centre F6, R = 0.125, the largest radius at which its Stage C passes) and its shell cover |
| `seed_export.py` | writes `../results/seed_atlas_certificate.json.gz` |
| `selfcheck.py` | float re-check of every C1, every transfer box (with the stored windings) and every sphere cover |
| `run_rusty.sh` | the rusty job (ccq, one node) |

## Method

- **Balls.** Every ball has orientation o = +1: f₋(θ) = conj f₊(θ̄), and G4 is applied anyway.
  - The centre is a seed in some corner chart.
  - Mth = V S⁻¹ from the SVD of DQ(θ0), so the ball's image is close to a round 4-disc of matrix radius r.
- **Growth.**
  - Cover each ball's sphere ‖w‖ = r by dyadic boxes.
  - Where a box has no target, spawn a ball just outside the sphere: f·r in that direction, f ∈ {1, 1.15, 1.3, 1.45}, taking the f that is furthest from existing centres.
  - The new ball stays in the parent's corner chart while that chart's edge distance is at least 0.6 × the best corner's. Otherwise it moves to the best corner, by edge distance R/|∇R|.
- **No re-covering.** A class is reached again through any of its corners. Every sampled sphere point is expanded into all of its about 28,800 orientation-+1 corner seeds, and each is looked up among the existing balls. So the growth stops where the class is already covered: it covers the class space, not Ω.
- **Transfers.** T0 is used for the same chart.
  - **Linear T1.** The 72 seed symmetries (rows, cols orderings of (0,1,2), g ∈ {id, conjT}) give θ′ linear in θ.
  - **General T1.** Other corners, where charts meet.
  - **T2.** Into the F6 record.
- **Records.** Only F6's record: centre F6 exactly, R = 0.125, label radius 0.03, with n = 0.0162. Stage C fails at 0.15: the clique search hits its cap with 756 labels.
  - Its boundary shell is covered by T1prime boxes into seed balls.
  - See FORMAT.md §6 for the pending refinement of T1prime.

## Build log

(filled in after the rusty run)

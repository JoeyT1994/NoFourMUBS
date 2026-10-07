# Route C: a coarse proof of "no four MUBs in C⁶" in θ-coordinates

**Status:** design plus first measurements, 7 Oct 2026. This is a work programme, not yet a proof.

Our main campaign proves the same statement independently: see the ledgers under `Verification/`. Route C aims at a much shorter proof built from two ingredients:
- **our chart:** every relevant Hadamard is H₊(θ) for a corner seed θ ∈ T⁴;
- **the exclusion idea of openai/math, Stage C:** cover every ray unbiased to (I, H) by small labels, then show by exhaustive search that no two further orthonormal bases fit.

Our campaign already implements that exclusion rigorously as the cluster-cover certificate (`ProvenResults/CommonRays/ClusterCover`, `NumericalCampaign/Certification/cover_accelerated.jl`). It does so on cells of half-width π/512 ≈ 0.006.

Route C asks how coarse the θ-cover can be, and how to handle the part of θ-space where the chart degenerates.

## The argument

1. **Reduction.**
   - Statement: if four MUBs existed, one edge (I, H) would have H ≅ H₊(θ) with θ ∈ D₀ ∩ F, or H would be equivalent to F6 or to Tao's S6.
   - Source: [`NumericalCampaign/REDUCTION.md`](../NumericalCampaign/REDUCTION.md).
   - Inputs: the accepted reconstruction inputs, plus the published F6 and Tao exclusions.
2. **Coarse analytic cover.**
   - Cover D₀ ∩ F by dyadic cells at the coarsest level L the certificate accepts.
   - On each cell where H₊ has a Taylor model, run the cluster cover. It proves that {I, H₊(θ)/√6} does not extend to four MUBs for every θ in the cell.
   - Cells missing D₀ ∩ F are discarded by the cheap rigorous tests (F ordering, R < 0, corner bounds).
3. **Branch band.**
   - These are cells where the radical chain √R → side roots → cube roots → divisions has no enclosure. The main locus is R → 0, where the side solutions collide and the corner no longer determines the completion.
   - On this band, H₊ cannot be enclosed. Route C needs a completion argument that does not pass through √R. Section "Open problem" below lists the options.

## Measurements so far (7 Oct 2026)

All numbers are measured.

### Numerical feasibility (`feas.py`, 12 random Hadamards)
- Each Hadamard was found by least squares and its maximal corner moved to the top left, so it is a D₀ chart point.
- Generic H have about 48 rays unbiased to (I, H).
- No pair of these rays is orthogonal, so the largest orthonormal family has size 1. A generic (I, H) does not even extend to a third basis.
- The closest pair to orthogonal has |⟨v,w⟩| as small as about 1e-4. Two samples landed on the F6 family (R = 243).

### Rigorous cluster cover on single coarse cells (`test_coarse.jl` on rusty)
Ten generic centres, production certificate, no subdivision.

| Level | Half-width (rad) | Result |
|---|---|---|
| 8 | 0.0123 | **10 / 10 certified**, 30–90 s, 48–149 labels |
| 7 | 0.0245 | **10 / 10 certified**, 140–1,850 s (median about 1,000 s), 48–241 labels |
| 6 | 0.049 | 0 / 10: 9 hit the 3,000 s limit, 1 lost its H₊ Taylor model (cube-root branch) |

At level 6 the failure is in the enclosure, not in the exclusion: the cube root leaves its branch (`ctm_root`). Replacing the radical chain by a direct root enclosure of the Hadamard equations, the analogue of their Root certificate, would remove this limit.

### How small the maximal corner R gets (`mcorner.py`, 4,096 random Hadamards)
M(H) = max over the 400 corners of R_c(H).
- 700 samples are Tao's S6, all entries cube roots of unity, with M = 243.
- Over all samples, M ranges from 15.7 to 388. The 0.1 % quantile is 44.5 and the median 289.
- M → 0 only on approach to the F6 orbit, where every corner has R ≤ 0 (`CornerBounds`).

So a corner with small R is *maximal* only near the F6 corner seeds S_F6. Elsewhere, points of the band R → 0 carry genuine Hadamards H₊(θ): the matched sheets are flat for every R > 0. But those corners are far from maximal, so the band lies outside D₀. This is a numerical observation, not yet a theorem.

### Scale
- D₀ ∩ F is about 8.9·10⁻⁵ of T⁴.
- At level 7 it takes on the order of 10⁵ cells (rough estimate from volume), against about 8.7·10⁶ level-9 work cells in the campaign.
- At level 6 it would take on the order of 10⁴ cells, comparable to their 22,379 balls.

## The branch band: what is there (measured 7 Oct)

**Where the hard core sits.** The hard core of the campaign tail is 852 boxes, each with depth-48 nodes that the signed-mean method cannot close. Every one of those stuck nodes lies on a single curve.
- **The curve:** symmetric corners a = d, b = c, with phases within 0.03–0.1 rad of the stationary seeds (4,2,2,4)π/3 and (2,4,4,2)π/3.
- **What vanishes on it:** R = 0, and some side divisor P_j = 0 in every row and column order (`stuckpts.py`).
- **What happens to the completions:** exactly on the curve, the completions of E form a one-parameter continuum. The Jacobian of the Hadamard equations has a single vanishing singular value, about 8e-7; the next is 0.02 (`fiber.py`). For nearby θ with R > 0, the two sheets lie on this continuum, and they slide up to about 3 rad along it while θ moves by about 1e-4. This is why the radical chain, the side-label covers and the signed-mean inequalities all degenerate there.
- **Why these points are not in D₀:**
  - These Hadamards are far from F6 (d_F ≈ 0.4–0.7).
  - Their corner E is far from maximal: R(E) ≈ 1e-3 against competing corners with R ≈ 100–260 (157.5 at the curve point itself).
  - The competing corners use rows and columns from both halves of H, so they involve the D block. Corners built from E's rows or columns alone reach only R ≈ 0.27. That is why the reconstruction-free side prunes, which never see D, cannot close these boxes.

**What closes them.** The whole-box PSD maximality predicate (SignedCornerPSDPrune) does.
- **Where it works:** it closes nodes at depth ≥ 44. A node left open at the old depth cap of 48 closed completely one level deeper: 16 of 16 children, in 4 s (`psddeep.py`).
- **What changed:** the hybrid driver's depth cap was raised to 64 on 7 Oct.
- **What closes this region in the campaign:** the signed-mean cover, PSD leaves at depth ≥ 44, and a fresh hybrid replay.

**A cleaner certificate for this region, not built yet.** A Route C version would follow their Root certificate:
1. Cover the arc of near-completions by a tube of overlapping pieces x = x_k + s·t_k + V_k w.
2. In each piece, a parametric Krawczyk step proves a unique w for every (θ, s).
3. Over the whole tube, a competing corner exceeds R(E).

It must still show that H₊(θ) lies in the tube, for example by one anchor point plus continuity. Near the curve R has a critical point (∂R/∂θ_k changes sign in every coordinate), so connectivity of {R > 0} inside a box is not automatic. That is the remaining subtlety.

## Assessment: how simple can a θ-coordinate proof be?

**The exclusion step is not the hard part.**
- Stage C is the cluster cover, and it already works on cells 4× wider than the campaign's (level 7).
- The cost of a coarse cover is dominated by the enclosure of H₊, not by the exclusion.

**What makes a proof in our coordinates longer than theirs is the chart.** The 3×3-corner reconstruction degenerates on two loci:
- the Fourier boundary near S_F6, handled by `FourierNeighbourhood`;
- the symmetric R = 0 curve through the F3 seeds, handled by the 1/40 ball and PSD maximality.

**The shortest correct proof in θ-coordinates is therefore:**
1. The reduction to D₀ ∩ F.
2. A coarse Stage-C cover of the analytic cells.
3. The two degenerate loci, by the tubes, the ball and maximality.

That has the same skeleton as our campaign, but with roughly 64–256× fewer analytic cells.

**A strictly simpler proof would change chart near the degenerate loci,** for example using their full-phase completion with well-conditioned frames. Since their code is unpublished, that would mean an independent rigorous re-implementation.

## Files

- `feas.py`: numerical feasibility study (non-rigorous).
- `test_coarse.jl`: production cover on one coarse cell.
- `mcorner.py`: maximal-corner survey.
- `stuckpts.py`, `fiber.py`, `psddeep.py`, `foldlift.py`: hard-core analysis and the fold-tube prototype.
- `results/`: raw outputs of the runs above.

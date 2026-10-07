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

So in θ-space, physical points with small R(θ) = M(H) lie near the F6 corner seeds S_F6. Elsewhere the band R → 0 of D₀ contains no physical point; this is a numerical observation, not yet a theorem. That is the observation Route C has to turn into a proof.

### Scale
- D₀ ∩ F is about 8.9·10⁻⁵ of T⁴.
- At level 7 it takes on the order of 10⁵ cells (rough estimate from volume), against about 8.7·10⁶ level-9 work cells in the campaign.
- At level 6 it would take on the order of 10⁴ cells, comparable to their 22,379 balls.

## Open problem: the branch band

At R → 0 the corner chart degenerates. A test point inside such a cell (`Verification/ledger_2026-10-07a`, hard core) has no Hadamard completion on any reconstruction sheet: |HH* − 6I| ≈ 0.7. So the band seems mostly empty of physical points, but proving emptiness is the hard part.

Tools tried on that point:
- the reconstruction-free side prunes `CornerBounds/{SideColumn,SideTriple,PairedSide}Prune`. They fail at every depth: thousands of side labels appear, because the side solutions form a continuum at R = 0;
- the PSD maximality predicate. It closes such points only on boxes of depth ≥ 44.

Candidate completion arguments for the band:
1. **Block completion, after Stage A of openai/math.** Write B = G_h^{1/2} W, with W unitary and G_h = 6I − EE†. Cover W ∈ U(3) by cells and exclude each cell by the unimodularity and orthogonality equations of the completion, with no √R anywhere.
2. **Change of corner.** If R(E) is tiny and E is maximal, then all 400 corners are small. Qualitatively (`CornerBounds` T1), H is then near the F6 or Tao families, where the published and `FourierNeighbourhood` exclusions apply. A computable version of this needs the same global cover as option 1.
3. **Root certificates in the full phase space.** Enclose the actual completion of E by an interval Newton (Krawczyk) step on the Hadamard equations, with near-singular directions treated as tangent columns, as in their Root certificate.

## Files

- `feas.py`: numerical feasibility study (non-rigorous).
- `test_coarse.jl`: production cover on one coarse cell.
- `results/`: raw outputs of the runs above.

# T1′. A corner beats (012|012) near R = 0, away from the Fourier family

**Priority: highest, together with [T2](T2_fourier_neighbourhood.md).** With T2, this closes the branch
layer, the campaign's main remaining gap.

## Status (consolidated 29 September 2026; additions 30 September)

**30 September additions** (quantitative local forms; the global cutoff is still open):
- [FourierCornerRigidity](../ProvenResults/FourierCornerRigidity/PROOF.md) §2: in a dephased F6
  chart, t ≤ √M/18 + (389/9)t², so M ≥ 100t² for t ≤ 1/100.
- [ChartConditioning](../ProvenResults/ChartConditioning/RESULTS.md) Theorem 2: in full-matrix
  phases, M ≥ 4ρ² for ρ ≤ 1/40, with no Fourier-family assumption. Under strict-corner coverage,
  c·δ(H)² ≤ M(H) ≤ 432²·δ(H)² globally, with c > 0 not computed.
- [EffectiveConfinement](../ProvenResults/EffectiveConfinement/README.md) (30 Sep): an explicit
  global cutoff m = 2^(−N), N ≈ 7.5·10⁵². 0 < M < m ⇒ within full-matrix phase radius 1/3072 of F6
  ⇒ quartet-free. Conditional on strict-corner coverage and the Jeronimo–Perrucci–Tsigaridas
  effective minimum. Its rounding step (§6) is sharp. The generic §5 loses everything, so a
  problem-specific replacement for §5 is the open target.
- Neither result gives the numerical m needed by the campaign: both are matrix-chart statements,
  and the seed-to-chart step is exactly what remains.


- **Qualitative T1 is proved; no constant is known** (CornerBounds, below).
- **The original constants are refuted**, and so is pairing the proved T2 radius with a useful m:
  [SmallRObstruction](../ProvenResults/FourierNeighbourhood/SeedLifting/SMALL_R_OBSTRUCTION.md)
  gives a D₀ ∩ F carrier with R < 1/200 and d_Four > 1/16000, so δ = 1/16384 cannot be paired
  with any m ≥ 1/200. A second example shows m = 20 needs δ > 1/300. These are distances to the
  whole family, including transpose and equivalences. They do not refute T1′ with other
  constants.
- **Reconstruction-free D₀ prunes (partial T1 tools, no uniform constant):**
  - [SideColumnPrune](../ProvenResults/CornerBounds/SideColumnPrune/README.md): a two-phase
    cover of one missing side column.
  - [SideTriplePrune](../ProvenResults/CornerBounds/SideTriplePrune/README.md): the surviving
    labels must form a compatible triple. **In production as the layer stage: 95.6% of the
    14.0M layer cells excluded.**
  - [PairedSidePrune](../ProvenResults/CornerBounds/PairedSidePrune/PROOF.md): joint row/column
    compatibility and fractional R caps exclude 4 of the 53 retained benchmark boxes.
  - [ResidualCells](../ProvenResults/RegularSideCharts/ResidualCells/README.md): D₀ ⇒ R > 1 on
    four benchmark boxes. A cell version would discard the R ≤ 1 parts of layer survivors.
- **Along the family itself**, quartet exclusion across R = 0 is proved on local seed cubes,
  including one full production cube ([T2](T2_fourier_neighbourhood.md) status). That is T2, not T1′.

[ProvenResults/CornerBounds](../ProvenResults/CornerBounds/README.md) (all-exact replay
`corner_boundary_bounds`) proves the following.

- **Qualitative T1 holds.** For every η > 0 some m(η) > 0 works: 0 < R(θ) ≤ m(η) and
  dist(θ, S_F6) ≥ η imply that some corner of H₊(θ) beats R(θ). This uses compactness and
  accepted strict-corner coverage. **No value of m(η) is computed**, so it is not a prune.
- **The originally proposed constants are impossible.** An exact positive-sheet
  Fourier-family curve N(z) lies in D₀ ∩ F with max_c R_c = M(v) = 2304v²/(1+v²)⁴. Its seeds
  are at Euclidean distance √2·2·arctan(v) from S_F6, and at max-coordinate distance
  2·arctan(v). Hence T1 with an F6-*point* neighbourhood needs:
  - m < 2304 sin²(η/(2√2)) cos⁶(η/(2√2)) < 288η² (Euclidean), or m < 576η² (max-coordinate);
  - in particular, m ≥ 20 forces η > √10/12 ≈ 0.26.
  - A rational witness at v = 1/32 has distance > 0.05 and 0 < R_max < 9/4.
- **Unconditional side results.**
  - Every positional corner of every order-six Hadamard has R ≥ 0.
  - The complementary-corner invariant is a square: R(B) = R(p, −J, W) = −D(E)² =
    64(det J_real)², a moment-map Jacobian.

**Consequence.** The small-R points of D₀ lie along the **Fourier family**, not just near F6.
The exclusion zone must be a Fourier-family neighbourhood, and those points must then be
excluded as quartet edges by T2. Restricting to D₀ ∩ F does not remove the obstruction.

## Current target T1′

- Let N_Fourier(δ) be the seeds θ whose H₊(θ) lies within δ, in a d_F-type distance, of the
  Fourier family F(a, b), up to equivalence and transposition.
- **We want** explicit m > 0 and δ > 0 such that 0 < R(θ) ≤ m and θ ∉ N_Fourier(δ) imply
  that some corner of H₊(θ) has R_c > R(θ).
- Equivalently, as the campaign would use it: θ ∈ D₀ and R(θ) < m imply θ ∈ N_Fourier(δ).
- **Useful constants.**
  - m ≈ 20, which is the R range of a level-9 cell straddling R = 0. Even m ≈ 5 helps, with
    smaller cells.
  - δ is whatever T2 can exclude. The earlier ~0.26 seed-distance obstruction
    concerns a neighbourhood of F6 alone, not a transverse neighbourhood of
    the whole Fourier family; the exact curve has distance zero to that family.
- **A cell test for N_Fourier(δ) in seed terms** (on E alone) is needed as well, because H₊
  has no Taylor model on these cells. Alternatively, the statement could be phrased directly
  in seed coordinates.
  The [exact Fourier seed atlas](../ProvenResults/FourierNeighbourhood/SeedAtlas/README.md)
  now supplies distances to S_Four without reconstructing H₊. This is not
  yet the inverse estimate from seed proximity to the matrix neighbourhood
  N_Fourier(δ): the choice of completion still needs to be controlled.
  [PracticalTube](../ProvenResults/FourierNeighbourhood/PracticalTube/README.md)
  proves a matrix radius 1/16384. The earlier
  [UniformTube](../ProvenResults/FourierNeighbourhood/UniformTube/README.md)
  refutes unrestricted seed lifting. That counterexample has R<3 but another
  corner R>100, so it is outside D₀ and does not refute this target.
- **Evidence.** Uniform seeds almost never come near the Fourier family; there
  max_c R_c ≥ 58 (2,000 seeds). The layer cells sampled by the campaign had other corners
  beating (012|012) by about 300. The small-R D₀ points are therefore expected to lie only
  along the family.

## Original formulation (superseded by T1′ above; kept for the record)

### What was asked

**Target T1 (seed form).**
- Let S_F6 ⊂ T⁴ be the finite set of seeds θ whose corner E is a dephased 3×3 corner of a
  matrix equivalent to F6. By strict-corner coverage, all of these have R ≤ 0.
- We want explicit constants m > 0 and η > 0 such that, for every θ ∈ T⁴ with
  0 < R(θ) ≤ m and dist(θ, S_F6) ≥ η, some positional corner c of H₊(θ) has
  R_c > R(θ).
- **Originally proposed useful constants:** m ≥ 20 and η ≤ 0.05. These
  are now disproved in combination by the exact curve above. The uniform
  numerical evidence below does not sample that exceptional region.

**Weaker forms that also help.** In decreasing order of usefulness:
1. **T1 restricted to D₀ ∩ F**, or restricted to the cells that the prune cannot decide. The
   campaign can provide these cells explicitly as a list.
2. **Hölder continuity of the corner multiset across R = 0.**
   - Statement: for θ, θ′ with R ≥ 0 and |θ − θ′| ≤ ε, the sorted 400-vector of corner R
     values moves by at most K·|θ − θ′|^{1/2}, with K explicit.
   - Use: exclusion by nearby exact points. Compute the corner R values at the centre of a
     cell, then exclude the cell if the margin exceeds K·(diameter)^{1/2}.
3. **A lower bound for max_c R_c on the hypersurface R = 0.**
   - Statement: max_c R_c(H(θ)) ≥ m′ > 0 for θ with R(θ) = 0 and dist(θ, S_F6) ≥ η. Here
     H(θ) is the common limit of H₊ and H₋, which is well defined, as the two sheets meet
     there.
   - Use: together with continuity, this gives T1 on a neighbourhood.

## Why it matters

- **Cells the D₀ test cannot decide.** Near R = 0 the radical chain degenerates, so no Taylor
  model of H₊ exists on a cell that meets R = 0, or comes within about a cell width of it.
  Neither the D₀ test nor the certification can run there.
- **Size.** On the 28 September expansion sample, these cells are about 55% of all cells that
  survive the other prunes. That projects to about 10⁸ level-9 cells (ρ = π/512) over the
  domain.
- **What the rest of the prune achieves.** The radical-free corner test `bc_test` (below)
  removes about 88% of them. The remainder still projects to more than 10⁷ cells, and
  refinement cannot finish it: the cells straddling R = 0 multiply by 8 per level.
- **Most of these cells are far outside D₀**, with some other corner beating (012|012) by
  about 300. But CornerBounds shows that **some genuine D₀ cells with small R lie along the
  Fourier family**. Those need T2, not T1′.
- **Current campaign policy.** After `bc_test`, the singular cells are listed at level 9 in
  `layer.txt` by the expansion stage: **14,020,093 cells** in production. SideTriplePrune then
  excludes 95.6%, leaving **623,187 survivors**, of which ~2.5% touch D₀ (see
  [T6](T6_degenerate_side_cells.md)).
- **Use of T1′ + T2 in the prune.** A cell with sup R < m on the whole cell is outside D₀, or
  lies in the Fourier neighbourhood that T2 excludes. This is one Taylor model of the
  polynomial R(θ), with no H₊ needed. It would delete the whole branch layer in seconds.

## Evidence (numerical, not proof)

From [evidence/corner_evidence.jl](evidence/corner_evidence.jl), log in
[evidence/corner_evidence.log](evidence/corner_evidence.log). The sample is 2,000 uniform
seeds with R > 0, with H₊ in floating point.

| R(θ) bin | seeds | min over seeds of max_c R_c | share where R(B) or R(C) beats R(θ) |
|---|---|---|---|
| [0, 5) | 159 | 118.4 | 78.6% |
| [5, 20) | 337 | 87.2 | 54.0% |
| [20, 50) | 484 | 66.2 | 36.8% |
| [50, 100) | 341 | 58.0 | 19.1% |
| ≥ 100 | 679 | 122.8 | 6.6% |

- Over all seeds, **max_c R_c ≥ 58.0** (1st percentile 151, median 312).
- The 45 seeds that lie in D₀ have R(θ) between 58 and 374.
- This is consistent with REDUCTION.md: on 257 D₀ samples, min R = 54.
- **Near F6, R_max tends to 0.** Along the Fourier family, R_max ≈ (300–700)·d_F². This is why
  T1 has to exclude a neighbourhood of S_F6. Uniform samples essentially never land near
  F6, so the table says nothing about how large η must be.

## What we already know (use it; don't redo it)

- **Corners B and C are radical-free** (proved, and used in the campaign as `bc_test`).
  - Row orthogonality of H₊ gives E E† + B B† = 6I, so 6I − B B† = E E†. Its off-diagonals
    are those of G_h negated.
  - Hence R(B) = R(p, −J, W) from E's row Gram, and R(C) = R(p_v, −J_v, W_v) from E's column
    Gram, using R(Mᵀ) = R(M).
  - This is exact check 5 of verify_reduction.py, and agrees numerically to 10⁻¹⁰.
  - So near R = 0, T1 already holds wherever R(p, −J, W) > R(p, J, W), which is where the
    J-odd part of R is negative. It also holds wherever the column version wins.
  - **What is really left** is the set where both are ≤ R(θ). There J is small, and
    R(B) ≈ R(C) ≈ R(θ) ≈ 0.
- **Corner D gives nothing new.** Numerically, p, W and |J| of D = H₊[4:6, 4:6] coincide with
  E's to 10⁻¹¹, as a CS-decomposition-type identity. So R(D) is R(θ) or R(B). A proof of
  this is not needed.
- **Enclosing the radicals does not work.** Covering √R by an interval, or by slabs of width
  down to √(sup R)/32, with pointwise enclosures of δ and w, does not give a usable H₊
  enclosure on these cells. The division by ρ = (n + Re dF)/2 still meets 0, and the entry
  widths grow to 10²–10⁸. The degeneration is structural, not a looseness artefact. So the
  remaining corners near R = 0 need an argument that does not go through the side
  constructor. Possible routes:
  - the limit Hadamard at R = 0;
  - a different parametrisation;
  - an algebraic identity.

## Suggested routes

- **At R = 0.** H₊ = H₋ there, and the reconstruction may simplify. For example, z₊ = χ/(2g)
  is real. Compute the corner R values of the limit matrix H(θ) on {R = 0} in closed form,
  or bound them, as a function of three free seed parameters.
- **Where J is small.** In the remaining region R(B) ≈ R(θ), so the needed corner must mix
  E-columns with B-columns. Look for a mixed corner, for example (012|013), whose R has a
  controlled expansion in √R.
- **Blow-up.** Use u = √R as a coordinate in place of one seed. The chain may then be
  analytic in (θ′, u), except at the side degeneracy ρ → 0, which needs its own
  understanding. Is it a genuine 0/0 of the formula, with a finite limit?

## Deliverable

- **Preferred:** the combined statement in the [README](README.md), that is T1′ + T2 with
  matching δ.
- Otherwise, a statement in one of the forms above, with explicit constants and hypotheses stated in
  seed terms. The campaign can only test quantities it can compute on a cell: R(θ), E's
  Grams, and distances in θ.
- A computer-assisted proof is fine if its certificate is replayable.
- Say which accepted inputs are used. Strict-corner coverage is fine to use.

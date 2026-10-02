# What the campaign relies on

Every input to "no four MUBs ⇐ certified Q" is listed here with its status.
Nothing else is used.

## 1. Construction

| Input | Where | Used for |
|---|---|---|
| Positive-sheet reconstruction H₊(a,b,c,d), E = [[1,1,1],[1,a,b],[1,c,d]], with invariants g, R and the side formulas | [MinimalConstruction/RECONSTRUCTION.md](../MinimalConstruction/RECONSTRUCTION.md) §§1–3, [Implementation/model.py](../MinimalConstruction/Implementation/model.py) | The carrier family being covered, and the canonical corner (R over the 400 corners) |
| Single-radical form: common-ray equations with one real radical √R; overlap ⟨v,v′⟩ = [g⟨x,x′⟩ + ⟨z, J_T z′⟩]/g | [Implementation/single_radical.py](../MinimalConstruction/Implementation/single_radical.py), [Measurements/SingleRadicalMeasurements.md](../MinimalConstruction/Measurements/SingleRadicalMeasurements.md) | Ray equations and Gram entries in the Taylor-model certificates. The Julia port is [Certification/single_radical.jl](Certification/single_radical.jl) |

## 2. Accepted external inputs (not proved in this repository)

From [ASSUMPTIONS.md](../MinimalConstruction/ASSUMPTIONS.md), and used
exactly as the library uses them:

1. **Strict-corner coverage.** Every non-F6 Hadamard has a corner with
   R > 0.
2. **Strict side and completion exhaustion.** At a strict corner, the
   matched pairings H₊ and H₋ recover every framed completion. The only
   exceptions are the Tao ones.
3. **Positive-sheet coverage,** through the opposite-corner sheet reversal.

4. **Sign-selected side identities and denominators.** The prescribed-sign
   constructor has positive definite G, unit λⱼ and ξ, positive ρ,
   `3MM† = G`, and the nonvanishing divisors stated in
   [ASSUMPTIONS.md](../MinimalConstruction/ASSUMPTIONS.md). These local
   identities are also the inputs to the proved branch lemma below;
   branch invariance itself is no longer an additional assumption.

The coverage and exhaustion inputs 1–3 enter in steps (d)–(e) of the
[reduction](REDUCTION.md); input 4 supplies the local construction
identities. **Update 1 Oct 2026:** these inputs are now proved relative to named ClassificationPaper results in [MinimalConstruction/Proofs](../MinimalConstruction/Proofs/README.md) (all five obligations MC1–MC5; registered check `reconstruction_proofs` PASS). The campaign is therefore conditional only on those ClassificationPaper results and the cited published theorems, pending independent review of the new prose proofs.

## 3. Proved results from the library

| Result | Statement used | Where used |
|---|---|---|
| [Sheet conjugation](../ProvenResults/Sheets/README.md) | H₋(θ̄) ≅ conj H₊(θ) | Reduction (e) |
| [Side branch lemma (T4)](../ProvenResults/Sheets/BRANCH_LEMMA.md) | Every defined δ reversal and cube-root change gives a permutation of the last three columns (h) or rows (v). Algebraic proof using the accepted sign-selected side identities; no exhaustion assumption | Justifies continued branches in `fasthplus.jl`, including cells crossing dF = 0. Existing nonzero-divisor checks remain necessary: at s = 0 the alternative δ chart has ρ′ = 0 |
| [Tao exclusion](../ProvenResults/ExceptionalEndpoints/Tao/README.md) | Tao is in no MUB triple (the published proof is Brierley–Weigert) | Reduction (b) |
| [Finite common-ray algebra](../ProvenResults/CommonRays/FiniteCommonRayAlgebra.md) | If all 3×3 minors are nonzero, the common-ray scheme is a complete intersection of length 252 − 2m | A rigorous complete ray count at one point: HC finds 252 certified distinct solutions, so the list is complete ([hc_rays.jl](Certification/hc_rays.jl)) |
| [Edge rigidity](../ProvenResults/EdgeRigidity/QuartetEdgeCorollary.md) | No quartet edge has a zero 3×3 minor | Optional: discard cells on which some minor is certified to vanish identically. It also lets the count theorem apply on every cell that matters |
| [Fourier neighbourhood (D2)](../ProvenResults/FourierNeighbourhood/README.md) | Every quartet edge has d_F > 1/1024 | Discard cells within 1/1024 of the F6 orbit, where R → 0 |
| Exact invariance identities | R depends only on the positional corner; how the moduli permute | Reduction (c): [Domain/verify_reduction.py](Domain/verify_reduction.py), which is exact |
| [Corner boundary bounds (T1 progress)](../ProvenResults/CornerBounds/README.md) | A qualitative gap exists by accepted strict-corner coverage. An exact curve in D₀ ∩ F rules out the proposed m ≥ 20, η ≤ 0.05; complementary corner R is a squared moment-Jacobian determinant | Research constraint only: no prune enabled and no explicit sufficient threshold supplied |
| [Side-column prune (additional T1 tool)](../ProvenResults/CornerBounds/SideColumnPrune/README.md) | Covering the two phases of a missing side column certifies a competing corner without H₊; valid across R=0, for every physical completion, without reconstruction inputs | Standalone `prune_box` and four certified level-9 examples that the existing tests retain as singular. Not yet integrated into the cluster driver; full-layer savings unmeasured |
| [T6 local gaps and positive-cell atlas](../ProvenResults/RegularSideCharts/ResidualCells/README.md) | D₀ implies R>1 on benchmark cells 1,2,4,5; cell 5 has a complete 61-chart cover with exact subdivision audit | Gap is unconditional for physical maximal corners. Atlas inherits existing construction/interval dependencies; enclosure quality and quartet certification remain open |
| [Regular implicit side charts (T6)](../ProvenResults/RegularSideCharts/README.md) | Physical R>0 sides have invertible moment Jacobians, det(J)²=R/64. Quantitative inverse and interval validation criteria | Unconditional local side result; does not select H₊ or certify a whole T6 cell. Six benchmark cells cross R=0; one has R>0 throughout |
| [Side-triple prune (stronger T1 tool)](../ProvenResults/CornerBounds/SideTriplePrune/README.md) | Surviving labels must support three compatible columns: vⱼ† adj(G) vₖ=0 and the remaining column is flat. Loops/repeated labels are handled, without invertibility or reconstruction inputs | Excludes all eleven retained local branch cells, seven beyond the previous prune. **The campaign's layer stage:** 95.6% of the 14.0M branch-layer cells excluded in production |
| [Cluster cover (T3/T5 alternative)](../ProvenResults/CommonRays/ClusterCover/README.md) | Labels with internal squared overlap >1/6 have capacity one across both extra bases. Direct coverage plus exhaustive graph exclusion requires neither root counts nor regularity | Standalone certified seed cube of radius 1/1024 near X₆; 54 labels and one possible orthogonal six-clique. **This theorem is the campaign's production certificate** (with the tools below). No uniform X(α) tube is proved, nor needed |

**Additional cover tools:** [sharp phase-box capacity](../ProvenResults/CommonRays/ClusterCover/SHARP_CAPACITY.md)
gives the exact cubic threshold `r<½ arccos(1/4)` and a sixteen-vertex
anisotropic test. [Cartesian interval exclusion](../ProvenResults/CommonRays/ClusterCover/CARTESIAN_EXCLUSION.md)
and [label refinement](../ProvenResults/CommonRays/ClusterCover/LABEL_REFINEMENT.md)
give cheaper certified exclusions, multiple labels per connected component,
and tighter pair enclosures. They use the existing cover theorem and Taylor
model assumptions, with no new reconstruction input. The entry point,
[cover_accelerated.jl](Certification/cover_accelerated.jl), is the production
default in the cluster package (cover only; the rays path, whose branch and
bound accepts by floating-point tests, is not used). Receipts are in
[Verification](../Verification/Campaign_cartesian_cover_2026-09-29/README.md).

**Additional proved tool for T1′/T2:** the
[Fourier seed atlas](../ProvenResults/FourierNeighbourhood/SeedAtlas/README.md)
gives every family corner seed as 12 surfaces plus 36 R=0 curves, exact
seed-distance and cell-proximity tests, and direct carrier-tube transfer
bounds. Its 28,800-corner enumeration is exact and uses no reconstruction
input. It supplies no whole-family exclusion radius or inverse estimate
for H₊; proximity alone is not used as a prune.

**Further T2 result, not used for pruning:**
[UniformTube](../ProvenResults/FourierNeighbourhood/UniformTube/README.md)
proves a whole-family matrix exclusion radius δ=2^(−2^590), using the
published Fourier exclusion and the effective minimum theorem of
Jeronimo–Perrucci–Tsigaridas. The radius is impractically small. Its separate
Arb certificate, using accepted local reconstruction identities, refutes
unrestricted seed-to-H₊ proximity: an exact atlas seed has d_Four>1/40.
That seed is outside D₀, so a D₀-restricted lifting bound remains open.

**Explicit confinement, not used for pruning (30 September):**
[EffectiveConfinement](../ProvenResults/EffectiveConfinement/README.md) uses the same
Jeronimo–Perrucci–Tsigaridas theorem (SIAM J. Optim. 23(1), 2013, Thm 1; cited, not
reproved) and strict-corner coverage. It shows that 0<M(H)<m=2^(−N), with N≈7.5·10⁵², puts H
within phase radius 1/3072 of F6, and hence inside the 1/30 tube. The constant is far too small
for the campaign.

## 4. Published results

- Jaming, Matolcsi, Móra, Szöllősi, Weiner,
  [arXiv:0902.0882](https://arxiv.org/abs/0902.0882): the Fourier family
  F(a,b) and its transpose, including F6, lie in no quartet. Used in
  reduction (b).

## 5. Numerical inputs (certified software, not theorems)

| Tool | Role | Rigour |
|---|---|---|
| IntervalArithmetic.jl 1.0.10 | All enclosures | Outward rounding. Every inequality in a certificate is an interval inequality |
| FastTM (in-house, [Certification/fasttm.jl](Certification/fasttm.jl)) | The H₊ Taylor model over a seed cell, used by the domain tests and the cover certificate | Float64 coefficients with every rounding, truncation and tail swept into an outward remainder. **Proved** for every guarded trace by [FastTMInvariant](../ProvenResults/FastTMInvariant/README.md) (order ≤ 12, B(P)+r ≤ 2⁴⁰, exact bounded scalars, gradual underflow included). The guard is always on and fails closed (installed 29 Sep 2026). The unguarded code had a proved extreme-operand counterexample ([Review/FASTTM.md](../Review/FASTTM.md)); results from unguarded runs need a guarded rerun. Since 30 Sep `inv` and `sqrt` expand about a normalised centre ([RESCALED_INTRINSICS.md](../ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md); production sha256 `7e9c0bc3…`, mechanically checked to differ from the guarded source only there). Independent review has been requested |
| TaylorModels.jl 0.12, TaylorSeries 0.22.8 | Order-reduction helpers and the retired rays path | Polynomial with interval coefficients plus an interval remainder. Rigorous given correct library arithmetic |
| HomotopyContinuation.jl 2.22.2, `certify` | The complete ray set at a point (diagnostics; not used by the campaign) | Interval Krawczyk certification of every solution. Completeness comes from the length-252 theorem, not from HC |

Floating-point tests (`excluded_fast`, the ordering of columns, the rotation angle) appear only as
proposals or choices; acceptance is always by an outward-interval test.

The campaign environment is pinned in
[Certification/jlenv_cluster](Certification/jlenv_cluster/Project.toml) (Julia 1.12.7 on rusty);
[Certification/jlenv](Certification/jlenv/Project.toml) adds HomotopyContinuation for diagnostics.

## 6. Deliberately not used

- **N1, and the Zauner tube.** Q is a quartet statement. Quartets have a
  numerical residual gap: descent from 24 starts never went below 0.051
  ([Evidence](Evidence/README.md)). This is only a heuristic for why the
  cells certify; it is not an input.
- **CountTwo and CountSix.** These are available as extra pruning in the
  clique stage, but they are not needed.

## Uniform Fourier-family matrix tube (completed T2 matrix theorem)

[PracticalTube](../ProvenResults/FourierNeighbourhood/PracticalTube/PROOF.md)
proves that every quartet edge has **d_Four>1/16384**, including transpose
and equivalences. This is an unconditional integer/interval certificate,
with 294 closed covering leaves and a separate exact symmetry audit.
It requires no reconstruction input and does not use the published family
exclusion as a theorem input. The
[receipt](../Verification/T2_practical_partition_2026-09-28/README.md)
retains all completed records and checkpoint provenance.
A cell can use it once every relevant carrier is certified within that
matrix distance. Seed proximity alone still lacks the quantitative
restricted lifting lemma; this result does not yet enable `sup R<20` pruning.

## Exact D₀ Fourier-atlas rigidity (T2 follow-up)

[Atlas rigidity](../ProvenResults/FourierNeighbourhood/SeedLifting/ATLAS_RIGIDITY.md)
is unconditional for physical matrices: if a maximal positional corner
has a Fourier-atlas seed and 0<R≤20, its carrier belongs to the Fourier
family or transpose. The proof uses the existing unconditional structural
lemmas, an exact six-corner identity, and a rational Bernstein certificate.
It requires no reconstruction formulas. This supplies the zero-distance
case of restricted lifting; it does not yet enable a positive-width cell
prune. The accompanying three-block completion bound requires certified
side matching, which is a remaining obligation.

## Conservative restricted lifting (not a production-width prune)

[ConservativeLift](../ProvenResults/FourierNeighbourhood/SeedLifting/CONSERVATIVE_LIFT.md)
proves an explicit seed-to-carrier estimate and whole-cell criterion for
2r≤R≤19, 0<r≤1. The permitted atlas distance is
`r^(17/6)/(2.4·10^18)` radians. This result uses the accepted strict side
formulas, denominators, exhaustion and flat matched pairings, together
with T4 and the proved side Jacobian bounds. A phase cube of half-width
10^(-19) is certified nonvacuously. The present constants and positive-R
lower bound do not close the production branch layer; this is not an
implemented campaign prune or a uniform `sup R<20` exclusion.

## Direct restricted lifting (sharper local criterion)

[DirectLift](../ProvenResults/FourierNeighbourhood/SeedLifting/DIRECT_LIFT.md)
proves `d_Four≤L ε` when a certified alternative-side corner gap forces
the Fourier side at the end of a strict seed path. It uses the same
accepted strict reconstruction inputs as ConservativeLift, covers every
physical starting completion on D₀ under its checked hypotheses, and
has an outward whole-box test with all 72 positional frames. A retained
patch has L<189, transverse half-width 2×10⁻⁷ radians, and tangential
half-width π/512. It does not handle R=0 crossings or full production
transverse widths. The production driver is unchanged; no measured
residual workload reduction is claimed.

## Obstruction to pairing the current tube with a large R threshold

[SmallRObstruction](../ProvenResults/FourierNeighbourhood/SeedLifting/SMALL_R_OBSTRUCTION.md)
proves, using accepted reconstruction inputs, that a D₀∩F carrier can
have R<1/200 and d_Four>1/16000. A second example has maximal R<18 and
d_Four>1/300. Therefore the current certified radius 1/16384 cannot
justify uniform `sup R<1/200` pruning, and an m=20 proximity theorem
would need δ>1/300. These are all-corner and all-minor Arb certificates,
not sampled maximality tests. Quartet exclusion and lifting with an
additional seed-proximity hypothesis remain open/valid as stated.

## Larger F6 matrix tube

[ClusterTube](../ProvenResults/FourierNeighbourhood/ClusterTube/PROOF.md)
proves unconditionally that no quartet edge is within projector distance
1/36 of the F6 monomial orbit. It covers all relaxed common rays by an
integer phase-box search and excludes every pair of compatible six-ray
bases with an exact sharp-angle graph. This radius concerns F6, not
the whole Fourier family; no seed prune is enabled automatically.
The unconditional
[B_F completion lemma](../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_SIDE_COMPLETION.md)
identifies a strict Fourier-side endpoint as N(z,w) with known parameters,
which may support a local tube test once the lifting bound is certified.

## Local seed-only quartet exclusion across R=0

[RZeroLift](../ProvenResults/FourierNeighbourhood/SeedLifting/R_ZERO_LIFT.md)
proves that a maximal physical seed within 1/2048 radians in each
coordinate of (4π/3,5π/3,0,π) has normalized Frobenius distance <1/40 to
F6. It therefore cannot be a quartet edge, using ClusterTube's 1/36
radius. This cube contains both signs of R and strict D₀∩F points.
The lift uses complete side covers and physical orthogonality only;
it does not assume strict reconstruction inputs. For H₊, its physicality
on the campaign domain remains an accepted input. The standalone
`rzero_lift.certify_box` applies the theorem by outward containment in
any of 72 dephased corner frames. The radius is smaller than a production
cell and local to one F6 seed orbit; T2 remains open in full.

[PairedSidePrune](../ProvenResults/CornerBounds/PairedSidePrune/PROOF.md)
separately provides an unconditional polynomial necessary condition for
physical completion, valid even at det(G)=0. It excludes four additional
whole boxes from D₀ in the retained 53-box sample. No production driver
is modified by either standalone tool.

## Larger matched-cover seed cubes

[MatchedCoverLift](../ProvenResults/FourierNeighbourhood/SeedLifting/MATCHED_COVER_LIFT.md)
proves a cube of half-width 1/512 at (4π/3,5π/3,0,π), plus cubes at
(0,2π/3,π,0) of half-width 1/1024 and (0,2π/3,π,2π/3) of half-width
1/2048. On D₀ these exclude quartet edges, including after every leading
corner frame transformation. The larger cube has a complete 255-leaf
seed partition; no positive lower R is required. The proof uses new
individual column/row completion estimates and the same 1/36 F6 tube,
with no reconstruction inputs beyond physicality when naming H₊.
The standalone `side_cover_lift.certify_known_cubes` is a fast containment
rule, while `certify_box` runs a new complete matched cover. No running
production code was changed. These local cubes do not settle T2 along
the full Fourier family or at the production half-width π/512.

## Regional Fourier tubes and a non-F6 seed patch

[WideFamilyTube](../ProvenResults/FourierNeighbourhood/WideFamilyTube/PROOF.md)
adds larger matrix radii on 191 explicitly enumerated parameter boxes:
1/256 including transpose/equivalences, with 1/128 on four boxes. In the
literal certified orientation the radii are 1/96 and 1/48. The 79 omitted
coarse boxes still have the existing uniform 1/16384 theorem. No larger
uniform whole-family radius is asserted.

[RegionalSeedLift](../ProvenResults/FourierNeighbourhood/SeedLifting/REGIONAL_SEED_LIFT.md)
uses the direct 1/48 tube to certify a phase cube of half-width 1/10000
at `(π/180)(120,−53,−120,−120)` on D₀. Its whole-box R range is (8,9),
and complete side covers give carrier distance <1/50. An exact
cyclotomic 400-corner census proves a maximal physical centre not
monomial-equivalent to F6. These results are unconditional for physical
matrices; naming H₊ requires its accepted physicality. The standalone
`family_side_lift` functions provide whole-cell tests. Neither new code
changes the live driver or certifies production width in this patch.

## Completion-error lifting and an expanded F6 tube

[ResidualLift](../ProvenResults/FourierNeighbourhood/SeedLifting/RESIDUAL_LIFT.md)
bounds each unknown completion column by `s_j/(1−η)` using a fixed
reference inverse and complete side covers. It certifies the non-F6
phase cube centred at `(π/180)(120,−53,−120,−120)` with half-width
**1/2000**. Its whole-box R lies in (8,9), and all maximal physical
completions enter the direct 1/48 regional tube with distance <1/50.
`residual_lift.certify_family` supplies the outward whole-cell predicate.
The physical statement is unconditional; naming H₊ retains its accepted
physicality hypothesis.

[ExpandedClusterTube](../ProvenResults/FourierNeighbourhood/ClusterTube/EXPANDED.md)
independently enlarges the F6-only exclusion radius to **1/30**, used by
`residual_lift.certify_f6`. Complete adaptive partitions may apply these
predicates leaf by leaf; every leaf must certify. A nonpositive R cap
excludes only the strict R>0 portion. No running campaign code is changed,
and no whole-family small-R threshold is asserted.

## Complete production-width seed region through R=0

[ProductionCube](../ProvenResults/FourierNeighbourhood/SeedLifting/PRODUCTION_CUBE.md)
excludes every physical maximal carrier whose seed lies in the closed
cube centred at `(4π/3,5π/3,0,π)` with half-width **π/512**. The complete
227-leaf certificate has 207 lifts into the F6 radius 1/30 and 20 D₀
exclusions; all leaves pass an independent 160-bit replay. No strict-R-only
discard is used, so physical R=0 points are included. The cube has
R<1/5 and contains genuine positive-R D₀ points.

The statement is unconditional for physical matrices. Naming H₊ keeps
its accepted physicality hypothesis. The fast standalone predicates in
`production_seed_lift.py` support all 72 corner frames, with Arb inputs
in radians or exact rational multiples of π. Actual cell rounding guards
must be included, and containment must pass. A shifted cell of the same
width need not fit; complete refinement is permitted. No running campaign
code is changed. The result is local and does not provide a uniform
small-R cutoff over the whole Fourier family.

## Continuous small-R neighbourhoods and an exact Fourier reference bound

[ZeroNeighbourhood](../ProvenResults/FourierNeighbourhood/SeedLifting/ZERO_NEIGHBOURHOOD.md)
certifies every physical maximal completion in a radius-π/4096 tube along
`(4π/3,5π/3+δ,0,π+δ)`, for 0≤δ≤π/128. It includes genuine non-F6
maximal carriers, requires no positive R lower bound, and has R<1/2
throughout. Thirteen new cubes supplement ProductionCube to give exact
continuous coverage. The radius is measured in the displayed frame;
π/16384 is a uniform maximum-norm radius around all frame images.

A separate complete 740-box certificate excludes neighbourhoods of
trimmed Fourier zero-corner arcs from D₀, with prototype-coordinate
radius π/8192 and radius π/32768 around their full frame orbit. Three
additional π/512 cubes around non-F6 zero-corner seeds miss D₀ entirely.
The proof specifies the omitted near-grid segments. Both 96-bit discovery
and independent 160-bit replay pass without strict-R-only discards.
`zero_neighbourhood.certify_box` and `certify_rational_pi_box` implement
whole-box containment, with distinct domain/quartet exclusion reasons.
Include input-rounding guards. No new cell among the retained 53 is
accepted by this fast rule; the production driver is unchanged.

[FourierMaxR](../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_MAX_R.md)
proves the exact maximum M of the 400 Fourier corners. Its zero set is
twelve parameter points, all equivalent to F6. For M≤36, both matrix
orientations satisfy d_F6≤π√M/144. The triangle inequality transfers the
F6 tube to radius `1/30−π√M/144` around the reference; in particular,
M≤1/4 gives 1/48 and M≤1 gives 1/96. `fourier_max_R.py` evaluates a safe
margin with the uniform family radius as fallback. Its parameters belong
to the explicit N(z,w) convention in the proof. These are reference-matrix
bounds, not arbitrary seed-R prunes. The physical statements are
unconditional; naming H₊ retains its accepted physicality hypothesis.

## All F6 corner classes, including singular limits

[NearF6Closure](../ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md)
adds closed seed cubes at the three previously uncovered classes:
half-width 1/65536 at `(pi/3)(1,2,2,4)`, 2⁻⁴² at `(pi/3)(2,4,4,2)`,
and 2⁻⁴⁶ at `(pi/3)(0,0,2,4)`. Every physical maximal completion,
including at R=0, enters the excluded F6 matrix region. A quantitative
F3-block theorem and a nearly rank-one row-pair argument handle the two
exceptional classes; the nonsingular class uses a complete residual lift.
Exact factorization and 96/160-bit replays are retained.

With the older cubes, all six corner classes are covered. A seed radius
2⁻⁴⁸ works uniformly around every F6 corner seed. Radius 2⁻⁴⁹ works
around any corner seed of either Fourier orientation whose reference
has maximum corner R at most 2⁻⁹². The nearby carrier must still be
physical and maximal; this is not a prune based on its R alone.
`near_f6.certify_box` applies outward whole-box containment and
`certify_f6_centered_cube` handles exact F6-centred rational-radian cubes.
The radii are very conservative, and no production-scale saving or
complete coverage of the intervening zero-atlas shoulders is asserted.
The campaign driver is unchanged. Physical statements are unconditional;
naming H₊ retains its accepted physicality hypothesis.

## Enlarged analytic F6 seed radii

[ExtendedAnalyticRadii](../ProvenResults/FourierNeighbourhood/SeedLifting/EXTENDED_ANALYTIC_RADII.md)
enlarges the two analytic F6 cubes to 2^-39 and 2^-43, giving uniform
F6 seed radius 2^-45. The Fourier-reference small-M corollary becomes
M<=2^-86 with seed radius 2^-46. It reuses the exact near-F3 and rank-one
arguments, checks their enlarged parameter range, retains the sharper
distance coefficient 1+4pi, and verifies the complete-cube R caps at
160 and 256 bits. The registered verifier replays the exact factorization
and grid classification and audits all 400 F6 corner seeds. No production
driver is modified, and no whole production cell is claimed closed by
this extension alone.

## Measured second pass on actual layer survivors

[CampaignSecondPass](../ProvenResults/CornerBounds/CampaignSecondPass/README.md)
uses the retained outward paired-side certificate on a complete closed
binary seed cover, with at most four split levels and 31 seed nodes.
On a 512-cell holdout, disjoint from the 32 tuning cells, it excludes
**93 whole enlarged production-size survivors (18.2%)** at **1.84 local
CPU-seconds per input**. All 93 still fail the original depth-8/10
baseline and pass complete 160-bit replay. No reconstruction assumption
is needed for these physical-D₀ exclusions, including at R=0.

The standalone batch command accepts original campaign records and writes
separate certificates with IDs, code/input hashes and covering paths.
Only complete accepted covers authorize a whole-cell discard; resource
limits and partial covers are unresolved. The original radius and its
2^(-40) guard are enclosed. The deployed driver and cluster job state
have not changed.

A separate test of the existing conditional gap routine proves **D₀ ⇒
R>1 on 56 of the 202** sampled D₀-touching cells, independently replayed
at 160 bits. Only their R≤1 portions may be discarded. The new runner's
optional `--threshold 1` mode likewise labels its conditional scope
explicitly, but is a different policy from the measured 56/202 trial.

The holdout comes from the retained 8,000-cell sample, originally drawn
from roughly the first 30% of layer jobs. These local measurements are
not a fresh full-campaign sample or timings on rusty. No net global CPU
saving, high-R certification fix, or exclusion of genuine positive-R
D₀ portions is asserted.

# Certification tools (Julia)

The campaign environment is `jlenv_cluster/` (Julia 1.12, IntervalArithmetic 1.0.10, TaylorModels
0.12.0, ForwardDiff 1.4.5), pinned by its Manifest. `jlenv/` adds HomotopyContinuation 2.22.2 for
`hc_rays.jl`. Run every script from this folder:

    julia --startup-file=no --project=jlenv_cluster <script>

The test carrier is g2, with seeds (2.692, −1.5, −0.614, 1.884) and 48 physical rays. The data are in
`data/H_g2.csv` and `data/rays_g2.csv`.

## The production certificate: accelerated cluster cover

The campaign certifies each work cell with `certify_cell_cover_accelerated(θ, ρ + 2⁻⁴⁰;
partition = true)` ([cover_accelerated.jl](cover_accelerated.jl)). The rays path is off; see
[../Campaign/cluster/README.md](../Campaign/cluster/README.md) for the settings.

- **Theorem.** [ClusterCover](../../ProvenResults/CommonRays/ClusterCover/PROOF.md): a cover of every
  common ray over the cell by capacity-one labels, plus an exhaustive 6+6 graph test, excludes a
  quartet. It needs no root count or regularity.
- **Exclusion.** A joint phase-box × seed-sub-cell branch and bound. Boxes are discarded only by
  outward-interval tests: the [Cartesian rectangle](../../ProvenResults/CommonRays/ClusterCover/CARTESIAN_EXCLUSION.md),
  with the original arc test (`verified_excluded`) as fallback. The float `excluded_fast` only
  proposes.
- **Labels.** Connected components of the kept boxes, partitioned into small groups
  ([label refinement](../../ProvenResults/CommonRays/ClusterCover/LABEL_REFINEMENT.md)). Each
  group's lifted bounding box must pass the [sharp capacity test](../../ProvenResults/CommonRays/ClusterCover/SHARP_CAPACITY.md),
  and every member box's containment is checked rigorously. Pair overlaps use direct-arc
  enclosures intersected with the centre-plus-radius bound.
- **Measured.**
  - On the campaign's unbiased 0.2% sample it certified 17,291 of 17,291 cells, at 25 s mean on rome.
  - The 6 hardest local cells replay with the original arc test and a separate 256-bit graph
    ([evidence](../Campaign/evidence_2026-09-29/replay_hardest6.log)).
  - The paired benchmark against the unaccelerated cover is in
    [Verification/Campaign_cartesian_cover_2026-09-29](../../Verification/Campaign_cartesian_cover_2026-09-29/README.md).

## Files

| File | Role | Status |
|---|---|---|
| [cover_accelerated.jl](cover_accelerated.jl) | **Production entry point** `certify_cell_cover_accelerated`: Cartesian verifier, partitioned labels, tight pairs, sharp capacity | Production (29 Sep) |
| [cartesian_cover.jl](cartesian_cover.jl) | `CartesianVerifier`: the cheaper outward-interval exclusion, with `verified_excluded` fallback | Proof: CARTESIAN_EXCLUSION.md; tests in review/test_cartesian.jl |
| [box_capacity.jl](box_capacity.jl) | `certified_box_capacity`: the exact 16-vertex capacity criterion (radii < π/4) and a real-part sufficient bound | Proof: SHARP_CAPACITY.md |
| [cover_labels.jl](cover_labels.jl) | `PartitionLabels`: median splits of oversized components into admissible labels; tight pair enclosures | Proof: LABEL_REFINEMENT.md |
| [cover.jl](cover.jl) | **Cover certificate** (`certify_cell_cover`), the cluster-cover theorem of [ProvenResults/CommonRays/ClusterCover](../../ProvenResults/CommonRays/ClusterCover/PROOF.md) with automatic labels. A joint phase-box × seed-sub-cell branch and bound accepts exclusions only by an outward-interval test; `excluded_fast` is a proposal filter. The unexcluded leaves form connected components, whose bounding boxes (half-width ≤ 0.59; capacity one holds for Σr² < 3(1 − 1/√6), PROOF.md §2) are labels. Containment is checked rigorously, and an exhaustive 6+6 graph test follows. Iterative deepening runs from width 1/8 to 1/256, refining only boxes on the frontier of the kept set (on hard high-R cells that is every box, so it matches full refinement). No regularity or root count is needed, so it crosses folds and ghosts | [test_cover.jl](test_cover.jl), [review/test_frontier.jl](review/test_frontier.jl). It reproduces the X₆ cube certificate (41 s, 74 labels). A g2 campaign cell takes 45 s. The formerly failed pilot cell certifies at ρ = 0.005 in 74 s (501 s at cap 0.3). With cap 0.59 all 12 failed cells of the 1% sample tested locally certify (29–118 s; [review/cover_boundary.jl](review/cover_boundary.jl)). g3 needs cells of ρ/4 (65 s each). The campaign driver tries the ray path first (60 s) and then this one |
| [single_radical.jl](single_radical.jl) | Port of MinimalConstruction's single-radical form, generic over floats, intervals and duals. It has 9 real ray equations in 5 phases, and the overlap ⟨v,v′⟩ | Verified: equations below 3·10⁻¹⁰ on all 48 rays ([test_port.jl](test_port.jl)) |
| [ctm.jl](ctm.jl) | Complex Taylor models, built as pairs of TaylorModelN | Working |
| [single_radical_tm.jl](single_radical_tm.jl) | Seed coefficients as Taylor models over a seed box | Tight: half-width 0.46 at ρ = 10⁻³, where plain intervals give 140 ([test_tm_enclosure.jl](test_tm_enclosure.jl)) |
| [fasttm.jl](fasttm.jl) | **FastTM kernel** (with the always-on operand-range guard whose soundness theorem is [FastTMInvariant](../../ProvenResults/FastTMInvariant/README.md)). Dense fixed-order Taylor models in the normalised seeds s ∈ [−1,1]⁴, stored as Float64 coefficients plus a scalar remainder. Rounding, truncation and intrinsic tails are all swept into the remainder. Products use precomputed monomial-pair tables. cos and sin use a Lagrange remainder; 1/x and √x use exact geometric tails, expanded about a centre normalised to 1 since 30 Sep so that small denominators stay inside the guard's range ([RESCALED_INTRINSICS](../../ProvenResults/FastTMInvariant/RESCALED_INTRINSICS.md)) | Rigour: [test_fasttm.jl](test_fasttm.jl) samples in BigFloat, with 0 violations. Dense product: 2.2 µs at order 4 and 50 µs at order 8, against 230 µs and 7.8 ms in TaylorModels.jl |
| [fastcoeffs.jl](fastcoeffs.jl) | Seed coefficients on FastTM, using the generic formulas of single_radical_tm.jl. The order-8 computation is truncated to the ray order | 0.05 s per cell (TaylorModels.jl: 7.5 s). Remainders equal or smaller. [test_fastcoeffs.jl](test_fastcoeffs.jl): 0 violations in 60 × 136 BigFloat samples |
| [fasthplus.jl](fasthplus.jl) | **H₊ Taylor model** (`hplus_tm`). This is model.py's side constructor on FastTM. The side √ and the cube root of ξ are continued analytically from the centre choices, each as a binomial series with an exact tail. `corner_R_all` gives the 400 corner invariants R_c from G = 6I − MM† | [test_hplus.jl](test_hplus.jl): 3.7·10⁻¹³ agreement with model.py at the centre, and 0 BigFloat violations. Max remainder 3·10⁻⁶ at ρ = 0.005 (q = 4) and 2·10⁻³ at ρ = 0.01 (q = 6), in 0.09 s. The cube-root series fails to converge at ρ = 0.02 |
| [test_corner.jl](test_corner.jl) | Rigorous D₀ exclusion: a cell is out when some corner has inf(R_c − R₀) > 0 on the whole cell | Out: 59/60 random cells at ρ = 0.005 (0.12 s per cell) and 55/60 at ρ = 0.01 (0.27 s). Never inconsistent with the centre test |
| [hform.jl](hform.jl) | Ray equations in the Hadamard-column form, f_j = \|Σ_k H̄_kj z_k\|² − 6, and a Taylor-model Krawczyk certificate for each ray over a cell (`hform_certify`). It returns a tight box and the largest uniqueness box r_max | g2: 48/48 at ρ = 0.005 in 0.37 s per cell. r_max ≈ 0.02, while the rays sweep ≈ 0.1 across the cell, so a fixed-box argument cannot work ([test_hform.jl](test_hform.jl)) |
| [domain.jl](domain.jl) | Point tests for F and D₀ (for sampling), and rigorous cell tests. `f_test` checks the F ordering. `bc_test` is **radical-free**: corners (012\|345) and (345\|012) have R = R(p, −J, W) from E's row and column Grams, by the orthogonality of H₊ (exact check 5 in Domain/verify_reduction.py). `d0_test` compares all 400 corners and returns `:singular` when the H₊ Taylor model cannot be formed | Sampling hit rate 9.5·10⁻⁵, against 8.9·10⁻⁵ expected. On the 28 September campaign sample, `bc_test` excludes 88% of the cells where H₊ is singular (near R = 0) |
| [test_cover.jl](test_cover.jl) | Reference cells for `certify_cell_cover` (X₆ cube, g1, g2, g3, pilot cells) | Passes; see the table in its log output |
| [test_port.jl](test_port.jl), [test_tm_enclosure.jl](test_tm_enclosure.jl), [test_fasttm.jl](test_fasttm.jl), [test_fastcoeffs.jl](test_fastcoeffs.jl), [test_hplus.jl](test_hplus.jl), [test_hform.jl](test_hform.jl) | Tests of the port, the Taylor-model enclosures and the H₊ model | Pass |
| [review/](review/) | Review and replay scripts: `replay_accelerated.jl` (original verifier plus 256-bit graph), `test_cartesian.jl`, `test_driver_accelerated.jl`, `bench_cartesian.jl`, `cover_boundary.jl`, `test_frontier.jl`, `verified_rays.jl` and `test_verified_rays.jl` | — |

## The retired rays certificate

The rays path is Krawczyk tubes for every common ray, completeness by fold exclusion, then a clique
test. It is still in the driver (`CERT_FASTMAX > 0`) but is **not used in production**.

- **The reason.** Its branch and bound (`fold_search` in complete.jl) accepts exclusion and
  regularity by floating-point tests (`fastexcl.jl`, with an a-priori rounding margin).
- **The rigorous version.** A fully interval-verified variant
  ([review/verified_rays.jl](review/verified_rays.jl)) reproduces every float acceptance on the
  tested cells but is 3–20× slower.
- **Speed.** The accelerated cover is as fast or faster on the cells the rays path handled easily
  ([evidence](../Campaign/evidence_2026-09-29/rays_vs_cover_20cells.log)).

| File | Role | Status |
|---|---|---|
| [complete.jl](complete.jl) | **Completeness certificate** (`certify_cell_rays`, with a box `budget` and a wall-clock `deadline`; either one makes the cell fail, never pass), by fold exclusion and a covering-map argument (theorem in the file header). A joint φ × θ branch and bound proves that every node is ray-free or has a regular 5×5 Jacobian. Then the centre rays are listed completely and each is certified over the whole cell. No homotopy continuation is needed | See the completeness table below |
| [fastexcl.jl](fastexcl.jl) | Float64 fast path for complete.jl, with an a-priori rounding margin of 10⁻⁹. Exclusion bounds each phase term exactly on its arc; regularity uses a Taylor-model preconditioner and closed-form second-derivative bounds; there is a Krawczyk exclusion at the centre carrier and exact order-2 re-expansion on sub-cells | 3–5× faster than the interval version |
| [gram.jl](gram.jl) | **Clique stage** (`certify_no_quartet`). It builds Taylor models of all ray-pair overlaps \|⟨z_a,z_b⟩\|²/36 over the cell (correlated in θ, with the tube radii as remainder). It then searches 6-cliques of possibly orthogonal pairs, filtered by the exact basis identity Σ_{v∈V}\|⟨v,x⟩\|² = 1, then second bases unbiased to the first. Survivors are re-examined on θ sub-cells | g2 at ρ = 0.005: 18 possibly orthogonal pairs, 0 candidate bases, **no quartet**, 1.2 s. X₆ (ρ = 10⁻⁶): **finds 1 candidate basis**, as it must, since X₆ is an MU-triple edge, and 0 quartets |
| [lsred.jl](lsred.jl) | **Prototype.** Lyapunov–Schmidt exclusion of a near-miss ghost: a 4-variable Krawczyk step for the transverse part, and a convex quadratic minorant of the reduced scalar | Not yet successful on real ghosts; see [FOLDS.md](../FOLDS.md) |
| [hc_rays.jl](hc_rays.jl) `H.csv` | All 252 complex solutions at a fixed carrier, with HC `certify`. With the length-252 theorem this is a rigorous complete ray set | 252 finite, 48 physical; 25 s to solve and 16 s to certify |
| [test_complete.jl](test_complete.jl), [test_complete_carriers.jl](test_complete_carriers.jl), [test_gram.jl](test_gram.jl) | Tests of the rays path | Pass (historical) |

Older Krawczyk variants (`tm_krawczyk.jl`, `fast_krawczyk.jl`, `cell_krawczyk.jl`), the
single-radical fold search (`complete_bb2.jl`, a negative result) and their benchmarks are archived in
`../NoFourMUBSArchive/cleanup-2026-09-29/`, together with this README's earlier version.

## Branch lemma (used by fasthplus.jl; proved algebraically)

On the h side, every defined reversal of the side square root δ or change
of the cube root of ξ permutes columns 3–5 of H₊. On the v side it permutes
rows 3–5. Both actions leave invariant (transporting rays with row changes):
- the corner-R multiset;
- every overlap modulus between common unbiased rays.

So the analytically continued branches represent H₊ on the whole cell,
provided its formula divisors are certified nonzero, even when dF changes
sign inside it. The [proof](../../ProvenResults/Sheets/BRANCH_LEMMA.md)
uses the accepted identities for the sign-selected side constructor, not
the side-fibre exhaustion theorem. It includes an
[exact verifier](../../ProvenResults/Sheets/verify_branch_lemma.py).
At s = 0 the alternative sign has ρ′ = 0 and must not be evaluated;
at dF = 0 both signs are regular. The lemma is needed for cells
that meet dF = 0; elsewhere the continued δ is model.py's choice.
`hplus_tm` returns bounds on dF for each side, which make that visible.

**Preconditioner (28 September).** hform_certify, regular_fast and
krawczyk_exclude0 use the 5×6 pseudo-inverse of the Jacobian instead of 5
selected rows. Because Σ_j f_j ≡ 0, the columns of J span 1^⊥, and YJ ≈ I
makes YF = 0 equivalent to F = 0. At g2, ρ = 0.005, the search now takes
20 s and 4.2·10⁵ boxes, down from 25 s and 5.6·10⁵.

### Completeness certificate of the rays path (one core; historical)

| carrier | ρ | result | rays | boxes | time |
|---|---|---|---|---|---|
| g2 | 10⁻⁴ | complete | 48 | 2.3·10⁵ | 15 s |
| g2 | 0.005 | complete | 48 | 5.6·10⁵ | **25 s** |
| g2 | 0.0075 | complete | 48 | 1.2·10⁶ | 89 s |
| g1 | 0.005 | complete; 15% of regular leaves on θ sub-cells | **52** | 1.3·10⁶ | 153 s |
| g3 | 0.005 | budget exhausted: a near-miss pair | — | 4·10⁶ | 671 s |
| g3 | 0.0025 | fold search completes; one ray's certificate fails | — | 6.8·10⁵ | 51 s |
| g3 | 0.00125 | complete | **52** | 4.1·10⁵ | 24 s |

**Rigorous counts correct the pilot.** The rigorous counts are 52 at g1 and
52 at g3. They were certified at the centre and at six corners of each
cell, and the count is constant. The Python fixed-carrier pilot reported 53
and 54 clusters; the extra clusters are near-miss ghosts. At a ghost the
equations come within about 0.01 of vanishing with a nearly singular
Jacobian (σ₅ ≈ 0.02), but no ray exists. These are the hard spots for
completeness: they need θ sub-cells (g1) or plain cell bisection (g3).

**Refinement rule.** If a cell exhausts its budget or a centre ray fails to
certify, bisect the cell. Deeper θ sub-cells inside one DFS were tried at g3
with a 12·10⁶ budget, and they only exhaust the budget.

## The X(α) locus (historical: the cover certificate now crosses it)

X₆(0.3+0.2i) ≅ H₊(2.4362, 0.4870, −2.1471, −1.8764), and this point lies in
D₀ (R_max = 311). It is a special point for the cover:
- **Ray count.** X₆ has 60 rays. At distance 10⁻³ in three random seed
  directions there are 56. So the count jumps on the locus.
- **Conditioning.** Nearby rays are nearly singular, with the smallest
  singular value ≈ 2√d at distance d. Measured: 0.05–0.13 at 10⁻³,
  0.22–0.45 at 10⁻², and 0.42–0.64 at 3·10⁻².
- **Effect on the certificate.** At ρ = 10⁻⁴, 8 of X₆'s 60 rays fail the
  ray certificate. The completeness search then exhausts its budget.
- **Consequence.** Cell sizes must shrink to 0 toward the locus, so the
  adaptive cover cannot reach it. A neighbourhood of the 2-parameter X(α)
  family needs a separate argument. This is MMVW's Conjecture 3 territory:
  X(α) is in no quartet.

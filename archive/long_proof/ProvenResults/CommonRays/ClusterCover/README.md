# Cluster cover: a local quartet exclusion without root counting

**Status: analytic theorem plus a computer-assisted local exclusion.**
The general theorem is in [PROOF.md](PROOF.md). The local result uses the
accepted local reconstruction identities and the campaign's Taylor-model
enclosures. It does not prove T3 for the whole X(α) family or T5's
nondegeneracy statement.

The additional campaign tools are [sharp capacity](SHARP_CAPACITY.md),
[Cartesian interval exclusion](CARTESIAN_EXCLUSION.md), and
[label partitioning with tighter pair enclosures](LABEL_REFINEMENT.md).
Their implementation,
[cover_accelerated.jl](../../../NumericalCampaign/Certification/cover_accelerated.jl),
is the campaign's production certificate (cover only, since 29 September).
The original frozen X₆ certificate below is unchanged.
The [new paired campaign receipt](../../../Verification/Campaign_cartesian_cover_2026-09-29/README.md)
also excludes the full X₆ cube at the same centre with radius
Float64(π/512)+2^-40, and the g3 cube at radius 0.005+2^-40.
The g3 cover was replayed using the original interval exclusion routine
and an independent 256-bit graph calculation. These are local seed cubes,
not a neighbourhood of the entire X(α) family.

## Certified region

For every seed in the closed cube

    θ ∈ θ₀ + (1/1024)[−1,1]⁴,
    θ₀ ≈ (2.436236992962, 0.486979737447,
           −2.147122554702, −1.87641662987),

the pair `(I,H₊(θ)/sqrt(6))` cannot extend to four MUBs.
Here θ₀ is **exactly** the four binary64 values encoded by these UInt64
bit patterns, in coordinate order:

    0x40037d69d2109e0c, 0x3fdf2aad0f8991ed,
    0xc0012d4e970797ad, 0xbffe05cd71af651e

The definitive encodings are also in [verify_cell.jl](verify_cell.jl).
This is the campaign's numerical seed near X₆(0.3+0.2i); the certificate
does not require an exact identification with that family member. The
radius is measured in these four seed angles, in radians, not in a
matrix-distance metric. Conjugations and Hadamard equivalences inherit
the exclusion.

## Why this helps

Root counting and regular continuation are unnecessary for this result.
A phase box of half-width at most 1/2 in every coordinate has internal
squared overlap at least 49/144, strictly above 1/6. Consequently it can
supply at most one column across both extra bases in a hypothetical
quartet, however many common rays it contains.

The frozen cover has 54 labels: 52 boxes of half-width 0.05 and two
larger boxes enclosing the problematic clusters. Every half-width is
below 0.292. Their rigorous pair-overlap bounds permit only **one**
six-label orthogonal basis, hence no two disjoint such bases. Direct
interval subdivision of the entire phase torus proves that every common
ray throughout the seed cube lies in at least one label.

The two larger boxes were selected from numerical clusters of four rays.
Neither that count, the existence of those rays, nor a classification of
any folds enters the proof. Empty ghost labels are equally permissible.
This gives the campaign a way to accept a cell without resolving its
folds or excluding every ghost valley. A particular cover can still fail
if its overlap bounds are too loose.

## Replay

Use Julia 1.12.1 and the pinned environment in
[jlenv_cluster](../../../NumericalCampaign/Certification/jlenv_cluster/Project.toml).
If its packages are not installed, instantiate that environment once:

    julia --project=NumericalCampaign/Certification/jlenv_cluster -e 'using Pkg; Pkg.instantiate()'

From the project root:

    python3 verify.py --only cluster_cover --jobs 1 --output-dir Verification/cluster_cover_replay

Or run `python3 ProvenResults/CommonRays/ClusterCover/verify.py` directly.
`JULIA_BIN` may name a specific Julia executable. The wrapper preserves
`JULIA_DEPOT_PATH` when a separate writable package cache is needed.
Missing dependencies, exhausted budgets and unresolved boxes fail the
replay; they never count as an exclusion. No numerical root finder or
HomotopyContinuation installation is required.

The retained [replay receipt](../../../Verification/cluster_cover_2026-09-28/cluster_cover.txt)
records 636,685 visited nodes: 6,738 covered leaves and 311,605 excluded
leaves. Nineteen fast exclusion proposals failed the outward interval
recheck and were subdivided. The exhaustive graph has 210 orthogonality
edges, 511 unbiasedness edges, and the single six-clique
`[5,6,17,18,31,51]` (one-based label indices). These counts describe this
replay; successful coverage and graph exclusion, not predetermined
counts, are the acceptance conditions.

The label file [data/x6_clusters.csv](data/x6_clusters.csv) contains 54
rows: five centers followed by five half-widths. Every decimal is parsed
as an exact binary64 value defining a label. These are proof witnesses,
not claimed exact roots. Discovery is not part of verification.

## What the verifier establishes

1. Every label has capacity one by the analytic 49/144 bound.
2. Outward interval arithmetic constructs conservative orthogonality and
   unbiasedness graphs. The target 1/6 is enclosed rigorously. All
   six-cliques are enumerated, without a clique cap.
3. The seed cube is strictly admissible: Sylvester's leading minors of
   `6I−EE†` and the reconstruction discriminant R are positive.
4. The full phase torus is covered by closed binary subdivision. Each
   terminal box is either contained in a label, with exact-period lifts
   checked using an interval for π, or violates at least one common-ray
   equation throughout the seed cube.

The initial phase domain is `[−p,p]⁵`, where `p` is the outward upper
bound of π. Child boxes share their split boundary. Label inclusion uses
the original endpoints, and exclusion uses outward radii around the
chosen floating-point center. Thus neither chart seams nor rounding at
a split can leave a gap.

For exclusion, write the raw Hadamard entry as

    H_kj(s) = Σ_α h_kjα s^α + e_kj(s),   |e_kj(s)| ≤ R_kj,
    s ∈ [−1,1]⁴.

The campaign Taylor models supply h and R. At phase center c, the
constant term of `S_j=Σ_k conj(H_kj) exp(iφ_k)` is enclosed together with
the radius

    Σ_{α≠0} |Σ_k conj(h_kjα) exp(ic_k)| + Σ_k R_kj,

where `c₀=0`. For each phase increment δ_k, enclose the constant
coefficient arc directly after an arbitrary unit rotation. Its
seed-dependent correction has modulus at most

    (Σ_{α≠0}|h_kjα| + R_kj) min(2, |δ_k|).

The resulting real and imaginary intervals enclose S_j over the whole
phase box and seed cube. A box is excluded only when their squared
modulus interval omits the exact integer 6. All coefficient, remainder,
and arc operations in this acceptance test use outward intervals.

The existing `excluded_fast` routine is only a proposal filter. Every
proposed exclusion is rechecked by the interval test; a rejected
proposal is subdivided. Its floating-point margins are therefore not
part of the acceptance argument.

## Dependencies and scope

The analytic cluster theorem is unconditional. The concrete local
certificate depends on the accepted sign-selected reconstruction
identities in [ASSUMPTIONS.md](../../../MinimalConstruction/ASSUMPTIONS.md),
the [branch lemma](../../Sheets/BRANCH_LEMMA.md), and the correctness of
the campaign's `FastTM`, `fasthplus.jl` and IntervalArithmetic enclosures.
It is not an independent formal verification of those libraries.
Global strict-corner coverage and completion exhaustion are not needed
to exclude this explicitly reconstructed local family.

The X₆ cube above is a standalone replayable certificate. The same
theorem, with automatic labels and the accelerations of
[CARTESIAN_EXCLUSION.md](CARTESIAN_EXCLUSION.md), [SHARP_CAPACITY.md](SHARP_CAPACITY.md)
and [LABEL_REFINEMENT.md](LABEL_REFINEMENT.md), is now the campaign's
production certificate (NumericalCampaign/Certification/cover_accelerated.jl).
This local application proves no uniform neighbourhood of
the X(α) family, no root-count theorem, and no global exclusion of four
MUBs. Its role is a reusable sufficient criterion and one successful
local application near the campaign's troublesome X₆ seed.

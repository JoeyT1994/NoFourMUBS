# Completion-error lifting with a fixed reference inverse

**Proved for physical matrices; no reconstruction assumptions or positive
lower bound on R.** The complete side-cover implementation is
[residual_lift.py](residual_lift.py). It retains every compatible side
triple and every physical completion in the maximal-corner domain D₀.

## The estimate

Write a raw order-six physical Hadamard and a physical reference as

    H = [[E,B],[C,D]],       H₀ = [[E₀,B₀],[C₀,D₀]].

Here D₀ in a matrix formula denotes a block. Align the three columns of B
and the three rows of C with the reference by independent permutations;
these induce the same permutations of D. Each side triple must use one
simultaneous assignment throughout all the estimates below.

Suppose C₀ is invertible. Set K=(C₀†)⁻¹. A certified lower spectral bound
κ₀ for 6I−E₀E₀† gives ||K||op≤1/sqrt(κ₀). For a bound c≥||C−C₀||F put

    η = c/sqrt(κ₀) < 1.

For the j-th trailing column, define

    q_B,j = K [(E−E₀)† B_:,j + E₀†(B−B₀)_:,j],
    q_C,j = K (C−C₀)† (D₀)_:,j.

If a rigorous enclosure gives ||q_B,j+q_C,j||₂≤s_j, then

    ||(D−D₀)_:,j||₂ ≤ s_j/(1−η).                         (1)

Consequently, if β_j bounds the corresponding B-column error and a_k
bounds the full error in leading column k, the maximum normalized
column distance, and hence maximum column-projector distance, is at most

    L = (1/sqrt(6)) max{max_k a_k,
                       max_j sqrt(β_j²+[s_j/(1−η)]²)}.    (2)

This is a quantitative seed-and-side-cover estimate. It is not an
unrestricted seed-lifting theorem, nor a universal small-R threshold.

**Proof.** Column orthogonality and its reference identity give, with
ΔD=D−D₀ and ΔC=C−C₀,

    C†ΔD = −[(E−E₀)†B + E₀†(B−B₀) + ΔC†D₀].

Multiplication by K, using KC₀†=I, yields

    ΔD = −(q_B+q_C) − KΔC†ΔD.

Take the Euclidean norm of one column and use
||KΔC†||op≤η. Rearranging proves (1). Combine the upper and lower block
errors, divide by sqrt(6), and use that the projector distance between
unit vectors is bounded by their Euclidean distance. This proves (2).

Unlike the earlier norm estimate, q_B and q_C are evaluated as vectors
before taking a norm. All cancellations retained by interval arithmetic
are valid; no subtraction of unrelated physical completions is assumed.

## Complete side-cover implementation

The side covers and all necessary moment/Gram tests are exactly those of
[SideTriplePrune](../../CornerBounds/SideTriplePrune/PROOF.md). The
fractional leading R cap comes from
[PairedSidePrune](../../CornerBounds/PairedSidePrune/PROOF.md).

For every surviving C triple the implementation chooses a simultaneous
row assignment, bounds c and each leading-column error, and evaluates
all three q_C,j. Componentwise complex interval hulls are taken over
**all** triples, separately for each j. Every label-to-reference-column
assignment that occurs in a B triple is then tested against the
corresponding hull. This over-approximates the joint side choices; it
cannot lose a physical completion. The c bound uses the very same C
assignments as the q_C hulls. Permutations are selected by upper distance
costs only to tighten the bound; they need not be optimal.

C₀ is an explicitly supplied physical Fourier matrix. Its lower Gram
bound is proved by positive Sylvester minors; its inverse is enclosed by
Arb complex matrix arithmetic. All acceptance comparisons are outward.
Budget exhaustion, incomplete covers, missing regional tubes, and failed
contraction tests return unresolved. The low-level `completion_bound`
requires physicality of its reference and completeness of its sides;
only `certify_f6` and `certify_family` supply these hypotheses themselves.

For a box with a nonpositive leading R cap, `outside_strict_D0` excludes
only the requested strict region R>0. It makes no claim about a physical
completion exactly at R=0. Other completed side covers can include R=0.

## A five-times-wider non-F6 patch

Every physical maximal completion of a seed in the closed phase cube

    θ* = (π/180)(120,−53,−120,−120),
    |θ_i−θ*_i| ≤ 1/2000,     i=1,...,4,

has maximum column-projector distance **<1/50** from the reference in
[RegionalSeedLift](REGIONAL_SEED_LIFT.md). That reference is in the
proved **1/48** direct Fourier tube, so the cube contains no quartet edge
on D₀. The whole cube has **8<R<9**. Exact maximality of its centre and
its inequivalence to F6 were established in the original regional proof.
Thus this is a nonvacuous seed criterion beyond the F6 orbit.

The following rational bounds suffice, and are replayed at 96 and 160 bits:

    κ₀ > 19/25,   c < 4/125,   η < 37/1000,
    max a_k < 3/100,   max β_j < 3/250,
    max s_j < 11/250.

Indeed `(4/125)²/(19/25)<(37/1000)²`, and

    max{(3/100)²,
         (3/250)² + [(11/250)/(1−37/1000)]²}/6 < (1/50)².

The cube half-width is five times the earlier 1/10000 patch, but still
about 12.27 times smaller than production half-width π/512. It does not
establish a uniform whole-family lift or the matching T1′ cutoff.

## Application

For four outward Arb phase centres and nonnegative half-widths in radians:

    from residual_lift import certify_family, certify_f6
    result = certify_family(centres, half_widths)
    # Only result['ok'] authorizes exclusion on the strict D₀ domain.

The default family reference is the one above. Other rational family
parameters and row/column permutations are accepted only if a retained
regional matrix certificate covers the reference. `certify_f6` uses the
independently proved [expanded F6 radius 1/30](../ClusterTube/EXPANDED.md).
Either predicate is valid on a complete closed subdivision of a parent
cell only after **every leaf** has certified; no sampled or missing leaf
is an exclusion certificate.

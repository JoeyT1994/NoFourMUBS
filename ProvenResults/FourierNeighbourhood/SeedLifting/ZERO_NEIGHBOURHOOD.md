# Certified neighbourhoods along the small-R Fourier boundary

**Proved:** the complete 740-box arc partition, thirteen extension cubes,
and three production-width domain cubes pass at 96 and independently at
160 bits. [Receipts](../../../Verification/T2_zero_neighbourhood_2026-09-29/README.md)
record exact coverage, controls, and unchanged proof sources.

This result has two distinct parts: an extension containing genuine maximal
Fourier carriers, and a domain exclusion around trimmed zero-corner arcs.
Both apply to **every physical maximal completion**, including at R=0,
without the accepted reconstruction assumptions. Neither is a uniform
neighbourhood of the entire Fourier seed atlas or a universal small-R cutoff.

Implementation: [zero_neighbourhood.py](zero_neighbourhood.py).
Complete replay: [verify_zero_neighbourhood.py](verify_zero_neighbourhood.py).
The numerical claims below require its passing retained receipts.

The accompanying [exact maximum-R formula](FOURIER_MAX_R.md) proves that
the Fourier family's maximal R can approach zero only at the F6 orbit,
and gives an analytic excluded radius around nearby Fourier references.

## 1. A continuous, nonvacuous extension beyond the previous F6 cube

Write

    theta(delta) = (4pi/3, 5pi/3+delta, 0, pi+delta),
    0 <= delta <= pi/128.

**Theorem.** Every seed within maximum-coordinate angular distance
**pi/4096** of this curve is excluded as a quartet edge on physical D0.
The same assertion holds in all 72 leading-corner frames. No positive
lower bound on R is needed. Throughout the displayed tube, **R < 1/2**.
Here pi/4096 is measured in the displayed frame. A uniform maximum-norm
radius around the union of all frame images is pi/16384, by the same
factor-four inverse-frame bound used below; arbitrary frames need not
preserve maximum-coordinate distance.

This is a neighbourhood of a continuum, not a sample of points. At every
delta>0 on the central curve, an explicit Fourier carrier is physically
maximal and belongs to the ordered campaign domain F. It is not equivalent
to F6: its leading corner contains entries whose phases differ from the
sixth-root grid by delta. Thus the theorem has genuine non-F6 D0 content.

**Certificate.** Supplement the proved [production cube](PRODUCTION_CUBE.md)
by the thirteen closed cubes

    centre theta(n*pi/2048),   half-width pi/2048,
    n = 4,5,...,16.

Complete side covers and all compatible triples enter the F6 matrix tube
of radius 1/30 by [ResidualLift](RESIDUAL_LIFT.md). The reference remains
F6; a non-F6 seed does not require a non-F6 matrix reference. Each new cube
has an outward upper bound R<1/2. Each is accepted by `residual_tube`,
which includes R=0, rather than by a strict-R-only discard.

To prove continuous coverage, set e=pi/4096. The old cube contains every
radius-e cube about theta(delta) for 0<=delta<=7e. For each n, the new
cube contains every such cube with |delta-2ne|<=e. The intervals
[(2n-1)e,(2n+1)e] meet at their endpoints, cover [7e,33e], and hence
cover the rest of [0,pi/128]=[0,32e]. This exact interval argument also
covers transverse perturbations and all closed boundaries.

The old cube's central-curve reach was delta=pi/512. The new interval
reaches four times farther. The endpoint theta(pi/128) is outside every
one of the old cube's 72 frames; this is checked with exact fractions.
The transverse radius here is smaller than production half-width: no
claim is made that an arbitrary production cell fits into this tube.

**Nonvacuity.** The exact carrier from
[CornerBounds §3–4](../../CornerBounds/PROOF.md) has

    v=tan(delta/2),
    R=max_c R_c=2304 v^2/(1+v^2)^4.

It is positive for delta>0 and tends to zero at delta=0. The point v=1/128
lies beyond the old cube and inside the extended interval. Physical
maximality follows from the exact 400-corner census; identifying it with
the positive reconstruction is unnecessary for the theorem here.

## 2. Neighbourhoods of zero-corner arcs away from their F6 grid points

Use q in units of pi and define

    A(q) = pi*(2/3, 0, q, 1),
    B(q) = pi*(2/3, 4/3, q, 2q),
    I_k = [k/3+1/24, (k+1)/3-1/24],   k=0,...,5.

**Theorem.** For either prototype, every q in the six closed intervals,
and every perturbation of each seed coordinate by at most **pi/8192**,
there is **no physical maximal completion**. Thus these boxes are outside
D0 altogether, a stronger conclusion than quartet exclusion.

Let Z_trim be the union of these arcs and all their 72 corner-frame
images. Every seed at torus maximum-coordinate distance at most
**pi/32768** from Z_trim is outside physical D0. To see the factor four,
apply the inverse corner frame: each transformed angle is an integer
linear combination of the original angles with row absolute sum at most
four. Reversing the row/column permutations and any transposition gives
another one of the 72 frames; re-dephasing does not change this inverse
action on seeds. The frame matrices and row-sum bound are checked exactly. In the original
prototype coordinates the larger radius pi/8192 applies directly.

**Why these arcs belong to the zero set.** The complete
[Fourier seed atlas](../SeedAtlas/PROOF.md) consists of 36 images of A and
12 surface images of `(2pi/3,4pi/3,x,y)`. On the surface,

    R=576 sin^2((2x-y)/2) sin^2((2y-x)/2) sin^2((x+y)/2).

Its zero set has the three branches `(x,y)=(t,2t),(2t,t),(t,-t)` modulo
2pi. Column cycles transform B onto all three, with q preserved up to
sign. The existing atlas identities and exhaustive corner coverage are
replayed, as are these exact linear transformations. A has R identically
zero. All omitted grid points q=k/3 are actual F6 corner seeds, verified
by an exhaustive exact sixth-root corner enumeration.

The parameter intervals deliberately omit neighbourhoods of those grid
points. The theorem does **not** settle every omitted shoulder. In
particular, it cannot be advertised as a complete neighbourhood of the
entire Fourier R=0 seed set.

**Finite proof of each arc.** The retained data divide each of the twelve
parameter intervals into closed dyadic leaves [a,b]. Put m=(a+b)/2,
t=(b-a)/2, h=1/8192. A leaf's entire perturbed arc is contained in the
following axis-aligned seed box, in units of pi:

| Prototype | Centre | Half-widths |
|---|---|---|
| A | (2/3,0,m,1) | (h,h,h+t,h) |
| B | (2/3,4/3,m,2m) | (h,h,h+t,h+2t) |

For each box a Taylor enclosure gives an upper bound on leading R.
Every physically allowed missing column is covered by the retained
moment and mixed-corner tests. All pairs, repeated labels, and compatible
triples are considered. A box passes only if no side triple exists, or
the rigorous horizontal/vertical coupling excludes every pair of triples.
Neither mechanism divides by R or assumes R>0. A nonpositive R bound
alone is expressly rejected as a certificate for this theorem.

Each root's paths are checked for uniqueness, prefix-freeness and exact
Kraft sum one. Both precisions reconstruct endpoints independently from
exact fractions. Resource exhaustion returns unresolved, never success.

## 3. Three additional full production-width domain exclusions

The complete cubes of half-width **pi/512** at the following centres
(given in units of pi) have no physical maximal completion:

    (2/3,0,1/2,1),
    (2/3,0,1/6,1),
    (2/3,4/3,1/8,1/4).

Their centres lie on the non-F6 zero-corner arcs. Complete side-triple
certificates are replayed at both precisions. These are domain exclusions,
not examples of physical maximal non-F6 carriers at R=0.

## Application, dependencies and limits

`zero_neighbourhood.certify_rational_pi_box(centers,radii)` accepts exact
rational multiples of pi and checks sufficient whole-box containment in
the continuous tubes in all 72 frames. It returns distinct reasons for
domain exclusion and quartet exclusion. It does not rerun the expensive
side covers. It also tests the thirteen extension cubes and three larger
domain-exclusion cubes directly. `certify_box` accepts outward Arb radians:
division by an enclosure of pi and exact dyadic endpoint conversion give
a containing rational-pi box before the same predicate is applied.
Include input rounding guards in a campaign application's radii. No
running campaign code has been changed.

The proof depends on the complete retained arc data, the new cube replays,
the existing ProductionCube and expanded F6 matrix tube, the side-cover
and residual-completion lemmas, and the exact Fourier seed atlas and
CornerBounds census. The verifier tests incomplete partitions, periodic
wrapping, symmetry images, malformed inputs and resource failures.

This gives explicit additional neighbourhoods at and approaching R=0.
It leaves open a complete uniform family neighbourhood, the remaining
near-grid shoulders and other F6 seed classes, and a matching universal
T1-prime cutoff. No campaign-wide saving is inferred from these local
certificates.

# A quantitative whole-box R gap on the near-atlas branch sample

**Proved finite instances, not a uniform neighbourhood theorem.** On seven
of the ten retained enlarged production boxes in `data/nearzero10.json`,
every physical maximal completion satisfies **R > 1**. Three boxes are
unresolved. The test is valid on whole boxes even when their seed
polynomial R changes sign. Sampling selects the cohort but supplies no
acceptance. No FastTM or reconstruction formula is used.

The public `local_gap.certify_box(centres, radii)` returns either a proved
strict positive lower bound for R on physical D0, or an inconclusive
result. An empty physical intersection may satisfy the implication.
This is the box-test version of Target B; it does not produce a uniform
function m(delta) or assert that all small-R physical seeds lie on a
Fourier curve.

## Proof of the whole-box test

Fix an exact positive rational m. Suppose a physical Hadamard H has a
maximal leading corner with seed theta in the closed input box and
R(theta) <= m. Every corner of H is nonnegative by the complementary
square identity. By maximality, every corner is at most R(theta).
On each closed seed sub-box X let U_X be its certified Taylor upper
bound on the leading R. Thus every corner is at most min(U_X,m).

Apply the complete horizontal and vertical side covers and paired-side
compatibility test of CampaignSecondPass with that cap. Every physical
side choice of H must occur in those covers. If the test eliminates all
choices, no such H exists on X. A strictly negative U_X also excludes
physical H. A complete finite binary cover of the input box by such
excluded sub-boxes therefore contradicts the supposition on every point
of the parent, including all split boundaries and R=0 points.

Consequently D0 intersect box implies R > m. Failed bounds, missing
branches, incomplete side covers and resource limits are inconclusive.
The implementation delegates exactly these steps to the retained
CampaignSecondPass theorem and replays each leaf independently; it
does not turn a conditional R gap into a whole-parent quartet exclusion.
If U_X <= m on a sub-box, the implication also proves that X misses D0.
Otherwise positive-R parts still require production cover or a T2 lift.

## F6 separation and finite application

For clarity, the predicate separately computes a certified lower bound
on maximum-coordinate torus distance from the box to every F6 seed.
Every dephased F6 corner seed has sixth-root exponents

    (r1*c1, r1*c2, r2*c1, r2*c2) modulo 6,

where r1,r2 are distinct nonzero residues modulo 6 and likewise c1,c2.
This follows directly by dephasing exp(2pi*i*r*c/6); row and column
origins cancel. Enumerating all such pairs therefore exhausts every
ordered corner frame. For each exact seed, bound the wrapped coordinate
distances from below by the centre distance minus the corresponding
radius. Take the maximum over coordinates and then the minimum over
the seed list. Downward rational rounding preserves this lower bound.
It is descriptive extra information, not a prerequisite for the gap proof.

In fact the union U of the seven accepted boxes satisfies the explicit
finite-region statement

    theta in U => dist_2(theta, Fourier seed atlas) < pi/128,
                  dist_infinity(theta, F6 seeds) >= 42893/262144;
    theta in U intersect D0 => R(theta) > 1.

The atlas proximity is verified on **whole enlarged boxes** using the
retained exact rational atlas-distance predicate in turns, at tube
radius 1/256. Outward conversion from radians to turns includes all
input uncertainty. This statement applies to U, not every box satisfying
the displayed distances. The bound on F6 distance is a conservative
common rational lower bound from the complete seed enumeration.

The ten boxes were selected from the frozen uniform 512-cell survivor
sample by no sampled D0 point, sampled R crossing zero, and sampled
atlas distance at most 2*pi/512. Their radii in this proof are the
outward enclosure of **pi/512 + 2^-40** about the recorded exact binary64
centres. Nine gap certificates replay at both 96 and 160 bits. The three
remaining cells are explicitly listed as open. The implication gives a
regular reconstruction region on physical points, but does not make a
Taylor square root exist over the entire original sign-crossing box;
further pruning/subdivision is still necessary.

Dependencies: CornerBounds complementary-square identity; PairedSidePrune;
CampaignSecondPass exact binary coverage and outward arithmetic.

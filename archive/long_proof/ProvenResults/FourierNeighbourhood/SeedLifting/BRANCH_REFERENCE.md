# Moving-reference lifting with the small-M F6 margin

**Proved criterion, not a complete branch-layer cover.** The reference
used by MovingReference may inherit either its retained regional radius
or the FourierMaxR F6 margin, whichever is larger. All side covers and
completion bounds must still succeed. This never infers a seed lift
from a small leading R value alone.

There is a parameter-convention issue: `family_reference(a,b)` uses H
from WideFamilyTube, while FourierMaxR uses N. The exact identity proved
in WideFamilyTube identifies H(a,b) with a permuted transpose of

    N(exp(2pi*i*(a+1/6)), exp(2pi*i*(b+1/3))).

Therefore evaluate FourierMaxR with **alpha=2pi(a+1/6)** and
**beta=2pi(b+1/3)**. Its corollary applies in both orientations and gives,
for a certified M<=36, distance to the F6 orbit at most pi*sqrt(M)/144.
The projector triangle inequality transfers the F6 radius 1/30 to the
reference with radius 1/30 minus that bound, if positive. The maximum of
this margin and the existing regional/uniform policy is valid: each
individual radius is independently proved. All rounding is outward and
the selected radius is rounded downward.

The complete ResidualLift test with this physical reference then gives
quartet exclusion for every physical maximal completion of the input
box. `outside_strict_D0` alone is never accepted by the public wrapper:
it does not justify discarding R=0. A separately recomputed **strictly
negative** outward R upper bound does exclude physical D0, by the retained
complementary-square nonnegativity theorem; equality is never enough.
Failed side covers and resource limits
remain inconclusive. Transposing the input seed is allowed because
quartet extendibility is invariant under transposition, as proved in
ProductionCube; the test is then applied to the transformed carrier.

Dependencies: MovingReference, WideFamilyTube matrix-convention audit,
FourierMaxR, ResidualLift, and the F6 matrix exclusion radius 1/30.
The registered verifier checks the exact affine convention, finite
radius controls, and agreement with the retained regional policy.

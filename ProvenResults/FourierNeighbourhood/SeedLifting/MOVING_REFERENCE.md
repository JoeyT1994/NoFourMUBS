# Certified movable Fourier references

**Proved:** the residual whole-cell lifting criterion can use any rational
Fourier parameters, with rigorously transferred larger regional radii
where available and the uniform radius 1/16384 elsewhere. A Fourier
reference may be chosen separately on every leaf of a complete seed
partition. This is a general applicable criterion, not a claim that it
succeeds on every seed box or supplies a uniform small-R cutoff.

Implementation: [moving_reference_lift.py](moving_reference_lift.py).
Audit: [verify_moving_reference.py](verify_moving_reference.py).
The reference remains fixed *within* a tested box. Movement between boxes
avoids charging all family-parameter variation to one fixed matrix.

## Exact matrix identities

Use the raw physical matrix

    H(a,b)[i,j] = exp(2πi[ij/6 + t_(i mod 3)(j mod 2)]),
    (t₀,t₁,t₂)=(0,a,b),       0≤i,j<6,

where a,b are in turns. The following identities hold for all real a,b.

**Six permutations of the three phase classes.** For u∈{1,−1} and
v∈{0,1,2}, define

    a′=t_((u+v) mod 3)−t_v,
    b′=t_((2u+v) mod 3)−t_v.

Then H(a′,b′) is obtained from H(a,b) by taking old row `(ui+v) mod 6`
and old column `(uj) mod 6`, and multiplying column j by

    exp(−2πi[uvj/6 + t_v(j mod 2)]).

Both index maps are permutations. Multiplying their affine phases proves
the identity modulo integer turns. In particular, `(u,v)=(-1,2)` gives

    H(a−b,−b) ~ H(a,b).                                  (1)

**Conjugation.** H(−a,−b)[i,j] is the conjugate of
H(a,b)[i,(-j) mod 6].

**Half periods.** Increasing a by 1/2 swaps rows 1 and 4;
increasing b by 1/2 swaps rows 2 and 5. Thus arbitrary integer half-period
shifts are allowed.

**Odd-column cycles.** Increasing `(a,b)` by `(k/3,2k/3)`, k=1,2,
is the column permutation taking old column
`(j+2k(j mod 2)) mod 6`.

The verifier independently checks **396 exact affine-phase identities**:
216 for the six phase-class permutations, 36 for conjugation, 72 for the
two half periods, and 72 for the odd-column cycles. The two variable
coefficients must match exactly and the constant difference must be an
integer. No floating tolerance is used.

## Matrix-radius policy

The implementation tries compositions of a conjugation choice, a
phase-class permutation, an odd-column cycle, and reduction of each
parameter modulo 1/2. There are at most 36 distinct proposed images.
Their composition is checked by exact rational arithmetic.

If an image lies in a retained closed box of
[WideFamilyTube](../WideFamilyTube/PROOF.md), the original reference
inherits its **direct** radius `1/(6 t)`, where the box's raw amplitude
tolerance is 1/t. The current values are 1/96 and 1/48. If an image is
exactly `(0,0)`, it also inherits the proved F6 radius **1/30**.
Otherwise the reference still has the proved uniform whole-family radius
**1/16384**. The largest of these available certified radii is used.
Completeness of the finite symmetry search is unnecessary: missing an
image can only lose an improvement, because the uniform fallback applies
to every Fourier reference.

Hadamard equivalence preserves maximum-column projector distance:
left monomial unitaries conjugate the projectors, right phases cancel,
and right permutations merely reorder their maximum. Complex conjugation
also preserves the norm. Each operation preserves quartet extendibility.
Consequently these transfers use no transpose loss and no extra radius
factor. The original untransformed reference is used in the completion
calculation; its excluded radius is justified by the displayed identities.

All membership tests use closed rational parameter intervals. No numeric
fit, sampled parameter value, or branch selection supplies a radius.
The cache stores only exact data; public metadata is copied so a caller
cannot alter later radius choices by mutating a returned certificate.

## Whole-cell criterion

Choose rational a,b and row/column permutations for the physical
reference H₀. On a seed box, exhaust both side covers and all compatible
triples as in [ResidualLift](RESIDUAL_LIFT.md). With

    K=(C₀†)⁻¹,   η=c/sqrt(κ₀)<1,
    ||ΔD_:,j||₂ ≤ ||q_B,j+q_C,j||₂/(1−η),

compute the resulting normalized maximum-column error L. If L is at
most the selected matrix radius, every physical maximal completion of
that box is excluded as a quartet edge. Missing/incomplete covers,
resource limits, a singular reference Gram, or a failed bound return
unresolved. All physical side choices are covered; unrestricted seed
lifting is not assumed.

As in the underlying implementation, an `outside_strict_D0` result from
a nonpositive R cap excludes only the strict R>0 part. A `residual_tube`
or `outside_D0` result also covers physical R=0 points. The campaign can
use `ok=True` on its strict domain; a theorem including R=0 must inspect
and justify every leaf's return case.

For a finite parent partition, each leaf may use different parameters,
assignments and available radii. Since each successful leaf excludes a
quartet edge, complete closed coverage proves the parent exclusion; no
continuous branch choice or matching between leaves is required.

## A reference proposal following the free seed phases

For rows `(0,1,2,3,4,5)` and columns `(0,2,5,1,3,4)`, the reference seed is

    (2π/3, −π/3+2πa, −2π/3, −2π/3+2πb)     modulo 2π.

For a box centre `π(q₀,q₁,q₂,q₃)`, propose

    a=(q₁+1/3)/2,     b=(q₃+2/3)/2.                       (2)

This aligns the two free reference phases with the centre. It does not
assert proximity or uniqueness of a completion: the complete side test
must still pass. Negative b can use (1), for example, to enter the
retained strong regional box near a=7/360.

    from fractions import Fraction as F
    from moving_reference_lift import certify_projected_box
    result = certify_projected_box(
        [F(2,3), F(-53,180), F(-2,3), F(-2,3)],
        [F(1,100000)]*4)
    # Inputs here are exact multiples of pi. Only ok=True excludes
    # the strict physical D0 portion of this whole box.

`certify_box` instead takes outward Arb centres/radii in radians and
explicit rational reference parameters, and accepts arbitrary valid
reference row/column orders.

## Verification and remaining scope

The exact identities and image composition are independently audited.
Complete 96/160-bit replays of the previously proved non-F6 patch of
half-width 1/2000 retain distance <1/50. A separate small negative-b box
passes by a completion lift, not a domain discard, using the reflected
regional radius. Uniform-fallback, F6-specialization, metadata-mutation,
and all resource-failure controls pass.

The production-width adaptive search around the non-F6 point remains a
proposal until all leaves pass and a complete independent replay is
finished. This reference policy itself neither closes that box nor
provides uniform seed lifting along the entire family or a T1′ threshold.

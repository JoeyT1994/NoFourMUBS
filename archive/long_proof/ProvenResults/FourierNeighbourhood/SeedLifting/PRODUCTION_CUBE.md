# A complete seed certificate at production half-width

**Proved, unconditional for physical Hadamards.** Let H be a dephased raw
order-six physical Hadamard whose leading corner is maximal (the domain
D₀). Write its four leading seed phases as θ. If

    θ* = (4π/3, 5π/3, 0, π),
    |θ_i−θ*_i| ≤ π/512,       i=1,...,4,

then H cannot be a quartet edge. Periodic phase shifts and all 72 leading
corner frames are included. No reconstruction assumptions or positive
lower bound on R are used. The complete cube contains both signs of the
seed polynomial R and genuine positive-R points of D₀∩F.

Every physical maximal completion covered by a lifting leaf has
maximum normalized column Euclidean distance **<1/30** from the explicit
F6 reference, after aligning the remaining rows and columns. This bounds
its column-projector distance, which enters the independently proved
[expanded F6 tube](../ClusterTube/EXPANDED.md). Leaves excluded from D₀
contain no physical maximal completion. All physical points in this cube
have **0≤R<1/5**, since an outward whole-cube calculation gives

    sup R < 0.192074 < 1/5.

This is a seed-proximity criterion with explicit half-width and carrier
radius. It is **not** the claim that every maximal seed with R<1/5 lies
in this cube or in an excluded tube. Nor does its fixed-radius conclusion
assert a linear Lipschitz bound at all smaller seed distances.

## Proof and finite certificate

The reference has rows `(0,5,3,1,2,4)` and columns `(0,2,1,3,4,5)` of
raw F6. Its leading phase seed is θ*, and its complementary Gram has
spectrum `3, 3−sqrt(5), 3+sqrt(5)`; these exact facts are independently
checked in [RZeroLift](R_ZERO_LIFT.md).

The closed cube is partitioned into **227 dyadic leaves**:
**207 enter the F6 tube** and **20 miss D₀**.
There are no pending, missing, overlapping-interior, or unresolved leaves.
The partition is retained in `data/production_cube_pi512.json`.

Each binary path splits coordinate `depth mod 4` at its midpoint. The
verifier checks distinct paths, prefix-freeness, and the exact rational
identity `sum 2^(-path_length)=1`. These conditions prove complete
coverage of the finite binary partition, including its closed boundaries.
Missing and duplicate leaf controls fail before any numerical acceptance.

Every leaf is certified using the complete side covers and the
[completion-error estimate](RESIDUAL_LIFT.md): with
`K=(C₀†)⁻¹`, `η=||C−C₀||F/sqrt(κ₀)<1`,

    ||(D−D₀)_:,j||₂ ≤ ||q_B,j+q_C,j||₂/(1−η).

All compatible side triples and simultaneous assignments are covered.
Only outward inequalities and complete finite covers accept; resource
limits cannot certify. The whole-cube theorem follows by finite coverage
and the F6 matrix tube. A separate exact-positive-R assumption is not
needed: every retained leaf is either a physical D₀ exclusion or a
completion lift valid also at R=0. No leaf relies on the weaker `outside_strict_D0` return case.

The discovery replay at 96 bits and the independent **160-bit replay**
both pass every retained leaf. The second reconstructs leaf coordinates
as exact rational multiples of π, independently of the search's repeated
interval midpoint updates. Matching paths and phase depths, proof-source
hashes, full receipts, and the exact coverage audit are retained in
`Verification/T2_production_seed_lift_2026-09-29/`.

Nonvacuity uses the previously proved exact CornerBounds curve through
θ*: for `v=1/8192`, put `Δ=2 arctan(v)` and

    θ=(4π/3, 5π/3+Δ, 0, π+Δ).

Its physical carrier is maximal, with
`R=2304 v²/(1+v²)^4>0`, and Δ<1/2048<π/512. Exact rational-offset
controls inside the older smaller cube also verify both signs of R.
These establish nonvacuity and the zero crossing; sampled points are not
used to prove coverage.

## Fast whole-cell application

Use [production_seed_lift.py](production_seed_lift.py). For exact rational
multiples of π, the complete parent is accepted without numerical
boundary ambiguity:

    from fractions import Fraction as F
    from production_seed_lift import certify_rational_pi_box
    result = certify_rational_pi_box(
        [F(4,3), F(5,3), 0, 1], [F(1,512)]*4)
    assert result['ok']

For outward Arb centres and half-widths **in radians**, use
`certify_box(centres, half_widths)`. Include the campaign's input-rounding
guard in those widths. The predicate tests containment in every one of
72 corner frames, with certified periodic wrapping. Floating proposals
for an integer wrap are accepted only after the outward containment
inequality succeeds. A box extending outside the proved cube returns
unresolved. In particular, an Arb enclosure extending beyond an exact
boundary must not be treated as exactly on that boundary.

For a transposed frame the distance conclusion concerns the transformed
carrier. Quartet extendibility is invariant under that operation:
conjugating a quartet `(I,U,C,D)` and multiplying by Uᵀ gives
`(Uᵀ,I,Uᵀ bar(C),Uᵀ bar(D))`. Thus exclusion transfers back without
assuming that maximum-column distance is transpose invariant.

Replay the retained full partition with

    python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify_production_partition.py \
      ProvenResults/FourierNeighbourhood/SeedLifting/data/production_cube_pi512.json \
      --precision 160 --output /tmp/production_cube_replay.json

## What this does and does not remove

The cube has the campaign's nominal production half-width π/512. Its
centre is an exact Fourier seed, not a claim about a particular cell in
the production work list. Arbitrarily shifted cells of the same width
need not fit; the caller must check containment or use a complete refined
partition. This distinction includes binary64 rounding guards.

The 53-box retained sample still has only the four previously known
D₀ exclusions under the new three-reference test, and no additional
quartet exclusions. No measured saving on that sample or change to the
running cluster driver is claimed.

This is the first retained **complete production-width** seed cube in
this sequence. It settles local seed lifting through R=0 at the stated
orbit. Uniform lifting along the entire Fourier family and a matching
T1′ cutoff remain open; the full T2 goal is not closed.

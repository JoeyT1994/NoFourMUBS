# A larger quartet-exclusion tube around the F6 orbit

**Theorem (proved, computer-assisted, unconditional).** Let d_F6 be the
maximum-column projector distance to F6/√6, minimized over row monomial
unitaries and column permutations. Every quartet edge satisfies

    d_F6 > 1/36.

This concerns four full mutually unbiased bases. It does not extend the
earlier 1/1024 theorem's stronger four-ray-plus-one-anchor statement or
its energy bound. It is a neighbourhood of the **F6 orbit**, not the
whole two-parameter Fourier family. The uniform family radius remains
1/16384. No reconstruction inputs are used here.

## 1. Reduction to a relaxed common-ray set

If I,U,C,D were a quartet with d_F6(U)≤1/36, apply the matching row
monomial and column permutations. Every ray of C and D remains flat in
I. The amplitude-transfer estimate in
[PracticalTube](../PracticalTube/PROOF.md#2-moving-a-quartet-to-an-amplitude-tube)
shows that each raw overlap with a Fourier column differs from √6 by
less than 6d≤1/6. For d=0 the error is zero. Thus it suffices to exclude
two mutually unbiased orthonormal bases from the set

    X={x=(1,e^(it₁),…,e^(it₅))/√6:
       ||Σ_(r=0)^5 exp(i t_r−2πi rj/6)|−√6|≤1/6, all j},

where t₀=0. Global phases of individual rays authorize this dephasing.
The F6 matrix is symmetric, so its transpose adds no new orbit.

## 2. Exhaustive confinement to 48 supplied balls

The centres are the exact rational unit-phase vectors retained in
[centers.json](../data/centers.json). Their coordinates are reconstructed
and checked to lie on the unit circle by rational arithmetic. They are
not assumed to be exact common rays or to form a complete root list.
The new certificate proves directly that **every x∈X** has projector
distance less than ρ=1/6 from at least one of the 48 normalized centres.

The scalar rejection routine is extracted byte-for-byte from the audited
prefix of `PracticalTube/tube.cpp`. The table uses L=218880 and Q=2²⁶;
Arb certifies all 437760 trigonometric-coordinate errors to be less than
1/Q. The existing midpoint/end-point integer error bounds are unchanged.
Here the scalar tolerance is rounded outward as ceil(Q/6).

Start with all 19⁵ closed boxes on the five-dimensional phase torus.
At any box, reject it only if one Fourier overlap fails the necessary
scalar inequality. Otherwise try the ball-inclusion test below. If
neither succeeds, split all five coordinates into their two halves and
check **all 32 children**. At resolution 2432, an undecided box is a
failure, never an exclusion. Closed faces and periodic endpoints remain
covered. The complete replay has

    6,143,299 nodes,
    5,879,123 rejected leaves,
      149,576 ball-inclusion leaves.

It also verifies `31·nodes+19⁵=32·leaves`, the full 32-ary forest identity,
and that every retained centre is used by some inclusion leaf.

### The new integer ball-inclusion bound

Write x₀ for the normalized midpoint ray, c for a normalized centre,
and h=L/(2n) for each phase half-width in table units. The raw midpoint
overlap S=1+Σ_(i=1)^5 conj(c_i)exp(it_i) is evaluated at integer scale Q,
using rounded centre coordinates with error <1/Q and the verified table.
In each complex product, the real or imaginary coordinate error is
less than `5/Q+2/Q²`, including signed integer-division truncation.
For all five products together the Euclidean error is less than 36/Q:

    2(25Q+10)² < (36Q)².

The integer norm routine returns the floor of the norm, so

    lo=max(0, floor(integer_norm)−37) ≤ Q|S|.

Consequently an outward bound for the midpoint projector distance is

    D(x₀,c) ≤ ceil_sqrt(36Q²−lo²)/(6Q).

For any ray x in the phase box, the column Euclidean distance gives

    D(x,x₀) ≤ sqrt(5/6)·2πh/L < 710h/(113L).

Set `rad=ceil(710Qh/(113L))`. The projector operator norm is a metric,
so the integer comparison

    [ceil_sqrt(36Q²−lo²)+6rad]·6 < 6Q

proves that the entire box is inside the centre's open ρ=1/6 ball.
This is a whole-box test; proximity of the midpoint alone is insufficient.

All products and corrected square roots remain within the signed/unsigned
64-bit ranges stated in the replay. Floating square roots supply proposals
only; integer comparisons correct them before any decision. The complete
C++ cover is compiled with undefined-behaviour sanitization enabled.

## 3. Sharp compatibility between projective balls

For rays u,v put α(u,v)=arccos|〈u,v〉|. This angle satisfies the triangle
inequality: decompose u,w along a middle ray v, phase their overlaps
with v positively, and use Cauchy–Schwarz on the orthogonal components.
One obtains `|〈u,w〉|≥cos(α(u,v)+α(v,w))` when the sum is ≤π/2;
otherwise the desired angle bound is automatic.

If two rays lie in radius-ρ projector balls with centre probability
`p=|〈c_i,c_j〉|²`, their centre angle differs from their actual angle
by at most h=2arcsinρ. Therefore:

- Orthogonality requires `p≤sin²h=4ρ²(1−ρ²)`.
- Unbiasedness requires `|arccos√p−arccos(1/√6)|≤h`.

The latter test uses rational arithmetic only. With

    A=3(1−2ρ²)²−5/2+2p,

it is equivalent to `A≤0` or `A²≤5p(1−p)`. Indeed, expanding the
squared cosine of the angle difference gives

    cos²(angle difference)=(5−4p)/6+(√5/3)√(p(1−p)).

Both cosines compared are nonnegative for ρ=1/6, making the two
squarings and the A≤0 case legitimate. The graph retains every pair
that passes these necessary conditions; it does not assume sufficiency.

The exact graph of the 48 rational centres has 462 orthogonality edges
and 828 unbiasedness edges. Neither graph has a loop. Thus an orthonormal
basis must occupy six distinct labels. The replay enumerates all
**52 orthogonality six-cliques** as possible C bases. For each, it
intersects all six unbiasedness neighbourhoods to obtain D candidates.
There are at most eight candidates, and direct enumeration of every
six-element subset finds no orthogonality six-clique. Hence no possible
D basis remains. The retained certificate lists every C clique and its
D-candidate set.

Every actual C,D pair would induce one of these graph configurations,
because the cover includes every ray and the graph only discards
impossible pair relations. This contradiction completes the theorem.

## 4. Replay and scope

From the project root:

    python3 -B ProvenResults/FourierNeighbourhood/ClusterTube/verify.py --output-dir /tmp/f6-cluster-tube

This regenerates the table, rechecks exact centre rounding and graph
arithmetic, compiles the sanitizer build, and executes a fresh full
cover. Six exact chirp common rays are tested at each of eight levels,
giving 48 positive controls of the actual scalar rejection routine.
The retained receipt is
[T2_F6_cluster_tube_2026-09-29](../../../Verification/T2_F6_cluster_tube_2026-09-29/README.md).

The larger local radius supplies more room for future seed lifting near
F6 and for quantitative T1′ estimates. It does not itself establish
seed-to-carrier control at R=0, a uniform R threshold, or exclusion of
any production seed box. Those remain separate obligations.

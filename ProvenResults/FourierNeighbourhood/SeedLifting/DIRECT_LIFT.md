# Direct branch selection gives a sharper seed-to-carrier estimate

**Status: proved using the campaign's accepted strict reconstruction
inputs.** This removes the second seed path in the conservative lifting
proof whenever a certified corner gap rules out the alternative side.
It gives a seed-only whole-cell test, with no sampled branch selection.
It still requires a strict path and does not handle cells crossing R=0.

## 1. The theorem

Use radians and the E₂ frame

    θ=(2π/3+u, 4π/3+v, x, y),
    σ=(2π/3,   4π/3,   x, y),   e ≥ sqrt(u²+v²).

Suppose θ is the leading maximal corner of a physical carrier: θ∈D₀,
and R(θ)<243. The latter excludes an exceptional starting Tao carrier,
whose maximal corner R is 243, before using matched continuation.
Suppose throughout the straight segment [θ,σ] that

    R ≥ r > 0,             6I−EE† ≥ κ I > 0.             (1)

The inequalities may be established on a box containing all such paths.
At σ form the explicit alternative side B_A from [PROOF.md](PROOF.md).
For a triple J of the six columns, define

    Δ_J(σ) = sqrt(R([E₂ B_A]_:,J)) − sqrt(R(E₂)).

Let

    b=72 sqrt(8)/sqrt(r),
    L=sqrt((1+2b²)/6+(1+2b)²/κ).

If some J satisfies

    Δ_J(σ) > 768 max(1,b) e,                            (2)

then

    d_Four(H(θ)/sqrt(6)) ≤ L e.                         (3)

In particular, `L e ≤1/16384` excludes a quartet edge. The same J need
not work everywhere if the cell is covered by finitely many certified
subcells. The threshold 20 is not needed here: one checks the actual
alternative corner gap, with R(θ)<243 excluding exceptional Tao inputs.
The certificate below lies in the small-R region.

**Dependencies.** Physical matched continuation and exhaustion use the
accepted strict reconstruction inputs in
[ASSUMPTIONS.md](../../../MinimalConstruction/ASSUMPTIONS.md), as in
[CONSERVATIVE_LIFT.md, §2](CONSERVATIVE_LIFT.md#2-continuation-of-a-matched-carrier-along-a-strict-path).
Other ingredients are the unconditional local side-Jacobian theorem,
the exact two-side classification, the complementary-square identity,
and the cubic-pair/Fourier-block classification. The last step uses the
completed [uniform matrix tube](../PracticalTube/PROOF.md).

## 2. Proof

Continue the given physical carrier along [θ,σ], relabelling side
columns and rows at overlaps. Strict side exhaustion and the branch
lemma justify this for every starting physical branch, rather than
only for a numerically chosen one. The side-Jacobian bound gives

    ||B′||F, ||C′||F ≤ b ||θ′||₂,
    ||E′||F = ||θ′||₂.

Here b also bounds the Euclidean speed of each six-dimensional vector
of side phases. Differentiating `EC†+BD†=0` and using (1) gives

    ||D′||F ≤ sqrt(6/κ)(1+2b)||θ′||₂.

Thus the normalized carrier has Frobenius speed at most L. The entire
path has length at most e, so its endpoints are at distance at most Le.

The endpoint horizontal side is B_F or B_A, up to a permutation. Suppose
it is B_A and apply that same permutation to the original carrier.
All corresponding phases in its first three rows differ from the
endpoint phases by at most η=max(1,b)e. Both first rows are all one.

For any three-column corner in an orthogonal flat three-row matrix,
the complementary-square identity is `R=64 Q_sin²`. The six-term sine
formula has `||∇Q_sin||₁≤48` globally. The absolute-value inequality
therefore proves the sharper perturbation bound

    |sqrt(R_J(K))−sqrt(R_J(K₀))| ≤384η.                 (4)

This does not divide by R and remains valid if a corner R vanishes.
Intermediate points need not be orthogonal; only the endpoint identities
are used. Since every original corner has R no greater than its leading
corner, two uses of (4) imply `Δ_J(σ)≤768η`, contradicting (2).
Consequently the endpoint side is B_F.

The first two endpoint rows have a cubic-root quotient. The existing
[cubic-pair](../../EdgeRigidity/CubicPairRigidity.md) and
[antipodal-to-block lemma](../../EdgeRigidity/BlockZero3Equivalence.md), and
[Fourier-block classification](../../FourierBlocks/FourierBlockClassification.md)
therefore put the endpoint in the Fourier family, its transpose, or
the Tao class. The last case is impossible **without a small-R estimate**:
B_F contains a pair of columns with first-row entries 1,1 and
third-row entries z,−z. Their multiplicative two-by-two cross ratio is
−1. Every cross ratio of a Tao-equivalent matrix is a cube root of
unity, since Tao has only cube-root entries and cross ratios are
unchanged by row and column phases. Thus the endpoint is Fourier or
transpose Fourier. The Frobenius estimate proves (3).

This also explains why the second path of CONSERVATIVE_LIFT.md is
unnecessary here: D₀ forces the continued endpoint onto B_F itself.

The stronger unconditional
[Fourier-side completion theorem](FOURIER_SIDE_COMPLETION.md) now
identifies that endpoint explicitly as N(z,w), up to the known side-column
permutation and phases/permutations of the three missing rows. Thus a
local tube for those particular family parameters may replace the
uniform 1/16384 tube in the final step, if its radius exceeds Le.

## 3. A fully specified whole-cell implementation

[direct_lift.py](direct_lift.py) exports `certify_box(centers,radii)` in
the E₂ frame and `certify_any_frame(centers,radii)` for general seeds.
All four phase centres and nonnegative half-widths are Arb enclosures
in radians. Only `ok=True` authorizes exclusion, with the dependencies
above. Failure means unresolved.

For the E₂ surface patch z=e^(ix), w=e^(iy), it encloses

    R₀=9|z²−w|²|w²−z|²|zw−1|²,
    κ₀=3−sqrt(|1+z+w|²+|1+ω²z+ωw|²).

The Gram formula follows because the first two rows of E₂ are
orthogonal and the other two off-diagonal entries form a two-entry
star: the three eigenvalues of `6I−E₂E₂†` are 3 and
`3±sqrt(|S|²+|T|²)`.

Write h₁,h₂ for outward bounds on |u|,|v|, including displacement of
the box centre from the exact surface. The code takes e=sqrt(h₁²+h₂²).
Let A₁,A₂ enclose the absolute first derivatives of the generic seed R
on the hull of the box and its surface projection. Then safe choices are

    r = lower(R₀−A₁h₁−A₂h₂),
    κ = lower(κ₀−2sqrt(6)e−e²).                         (5)

The first bound is the mean-value theorem. For the second,
`||E−E₂||op≤e`, `||E₂||op≤sqrt(6)` when κ₀>0, and hence
`||EE†−E₂E₂†||op≤2sqrt(6)e+e²`. A passing positive κ proves κ₀>0
as well. These bounds do not assume physicality of intermediate seed
matrices; physical continuation uses the accepted inputs separately.

The existing exact-differentiation Arb routine `R_jet` supplies A₁,A₂.
It also checks `upper(R₀+A₁h₁+A₂h₂)<243`, excluding any exceptional
Tao starting completion on D₀ before matched continuation is invoked.
All twenty alternative corner square roots are enclosed as `8|Q_sin|`.
Acceptance requires an outward proof of (1), (2), and `Le≤1/16384`.
No interpolation, numerical inverse, or guessed side is a proof input.

The frame wrapper tries the 72 positional corner permutations and
transposes. It applies their exact integer linear phase maps and covers
the resulting parallelepiped by an outward rectangular box. A floating
calculation merely proposes an integer multiple of 2π to subtract;
every such integer preserves the phases, and all acceptance is by Arb.
Reverse the successful frame using the fixed row/column monomials of
the actual carrier. They preserve the Frobenius bound; transposition
preserves it too and exchanges the Fourier orientations. No invariance
of the column-projector metric under transposition is assumed.

## 4. Certified elongated patch and limitation

Let v=1/16 and take the centre

    θ₀=(2π/3, 4π/3, 2π/3, π/3−2 arctan(v)).

The entire closed phase box with half-widths

    (1/5,000,000, 1/5,000,000, π/512, π/512)            (6)

is excluded from representing a quartet edge on D₀. Outward bounds in
the replay establish the simpler rational inequalities

    r>6.7, κ>0.74, b<79, L<189,
    Δ_(135)>0.45, 768 b e<0.018,
    Le<0.000054<1/16384.                                (7)

Indices (135) are zero based. The patch centre is a rephasing and row
permutation of the exact D₀ Fourier curve in
[CornerBounds](../../CornerBounds/README.md), with
`R=38654705664/4362470401`. Thus the certificate is nonvacuous on D₀.
The two tangential half-widths equal the production level-9 phase
half-width; the transverse half-width is **2×10⁻⁷ radians**, twelve
orders of magnitude above the former 10⁻¹⁹ example.

This is **not** exclusion of a full production cell: its two transverse
directions are still much thinner. Nor does it cover an R=0 crossing.
No production driver is changed and no residual workload reduction is
claimed from this patch alone. Obtaining useful transverse control from
D₀/small R, and handling R=0, remain necessary to finish the T2/T1′ goal.

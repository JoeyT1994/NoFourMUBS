# Exact cap coverage on S³

## Status and supported scope

**PROVED.** The criterion below is necessary and sufficient for caps with
positive thresholds. The short supplied certificate supports a full
dimensional simplicial polar hull. A nonsimplicial numerical hull is rejected;
Qhull is never part of the trusted computation. Rational perturbations of
cap normals usually remove degeneracy, but their transfer certificates must
then be recomputed for the perturbed caps.

**CERTIFIED.** `coverage.py --self-test` checks an exact eight-cap cover,
an exact robust eight-cap cover, and rejects small caps, a missing facet,
and a corrupted vertex witness. This generic fixture is separate from the
seed-ball transfer experiment.

## The polar-polytope criterion

Write a cap on the unit sphere as

    C_i = {x∈R⁴ : ‖x‖=1, v_i·x≥h_i},   h_i>0.

Normals need not be unit vectors. Define

    Q=conv{v_i/h_i},    P={x : v_i·x≤h_i for every i}=Q°.

**Theorem 1 (PROVED).** These closed caps cover S³ if and only if P⊆B⁴,
the closed unit ball. Equivalently, Q has the origin in its interior and
every vertex of P has squared norm at most one.

*Proof.* If P contains a point y with ‖y‖>1, x=y/‖y‖ obeys
v_i·x≤h_i/‖y‖<h_i, so x lies in no cap. Conversely, if an uncovered
unit vector x exists, every inequality is strict. There are finitely many
of them and each h_i is positive, so (1+ε)x∈P for some ε>0, contradicting
P⊆B⁴. If P is bounded, the maximum of its convex squared norm occurs at
a vertex, because every point is a convex combination of vertices and the
unit ball is convex. Boundedness is equivalent to 0∈int(Q). ∎

Equality in the norm bound is permitted: the caps themselves use ≥. To
obtain a robust cover one can require the stronger bound ‖y‖²≤1−δ with
δ>0. Transfer inequalities on each closed cap must separately remain strict.

## A short certificate of complete facet enumeration

The constructor runs a floating point hull algorithm on the points
q_i=v_i/h_i. This merely proposes candidate facets. The certificate provides
four indices F={i₁,i₂,i₃,i₄} and a rational vector y_F for every facet. The
exact verifier checks:

1. Each list has four distinct indices, there are no duplicate lists, and
   the 4×4 matrix with rows v_i for i∈F has nonzero determinant.
2. v_i·y_F=h_i for i∈F, and v_j·y_F<h_j for **every** j∉F.
3. Every triple of indices that is a face of a listed tetrahedron occurs
   in exactly two listed tetrahedra.
4. ‖y_F‖²≤1 for every listed facet.

At least five cap indices and at least one listed tetrahedron are required.
The strict inequalities in item 2 intentionally exclude additional coplanar
vertices, duplicate polar vertices on facets, and nonsimplicial hull faces.

**Theorem 2 (PROVED).** Items 1–3 establish that the supplied list is exactly
the full facet list of Q, that Q is four dimensional, and that 0∈int(Q).
Item 4 then proves full sphere coverage by Theorem 1.

*Proof.* The four linearly independent vectors in a listed facet lie in
the affine hyperplane y_F·q=1; they are affinely independent there. The
strict inequality for an index outside F gives a point off the hyperplane,
so Q has dimension four. Item 2 makes each listed tetrahedron an entire
facet of Q, with no unlisted vertices on that supporting hyperplane.

Every triangular face of a simplex facet is a ridge of Q. Every ridge of
a convex four-polytope belongs to exactly two facets. Consequently item 3
means that the nonempty set of listed facets is closed under facet
adjacency. The facet adjacency graph of a convex polytope is connected:
for example, a generic path on its boundary between relative interior
points of two facets crosses only ridges and yields a facet path. Hence
the list contains every facet. Every listed supporting plane has equation
y_F·q=1 with Q on its ≤ side, and the origin lies strictly on that side.
Since all facets were listed, 0∈int(Q). The polar vertices are precisely
the listed y_F. ∎

This proof is suitable for two reusable kernel lemmas: a closed nonempty
set of facets equals the facet set; and polarity converts hull facets
to vertices. After those lemmas, the data check is finite integer arithmetic.
No Euler-characteristic test is used as a substitute for completeness.

## Integer witness format and verifier cost

Clear denominators separately in each inequality to obtain integer
rows (V_i,H_i) with H_i>0. Store each dual vertex as n_F/d_F, where
n_F∈Z⁴ and d_F∈Z_{>0}. The substantive arithmetic checks become

    V_i·n_F = H_i d_F       (i∈F),
    V_j·n_F < H_j d_F       (j∉F),
    n_F·n_F ≤ d_F².

There is also a 4×4 integer determinant check per facet and a combinatorial
dictionary count of four ridges per facet. For m caps and f facets the
cost is O(mf) integer dot products, f constant-size determinants, and 4f
ridge insertions. A generic 4D hull can have O(m²) facets in the worst case;
the actual f is recorded in the result rather than assumed linear. This
does not require any interval trigonometry or repeated transfer tests.

The constructor computes n_F,d_F by Cramer's rule. The verifier only checks
the witness equations; it does not need to trust the constructor's solve.
`verify_coverage(..., require_cover=False)` is useful for construction:
it certifies the polar hull even if some vertices have norm greater than
one. Its separate `covers` field must be consulted; `passed` in that mode
alone is explicitly not a claim of coverage.

## Exact benchmark fixture

Take the eight normals ±e₁,…,±e₄ and h_i=1/2. These caps cover S³ because
some coordinate of a unit vector has absolute value at least 1/2. Their
polar polytope P is [−1/2,1/2]⁴ and all sixteen vertices have squared norm
one. The certificate contains sixteen tetrahedral facets and thirty-two
triangular ridges. Replacing h_i by 49/100 gives max vertex squared norm
2401/2500, so the same number of facets certifies a strict cover. Replacing
h_i by 51/100 gives max squared norm 2601/2500 and the verifier rejects it.

## Relation to the seed-ball coordinates

If w=r x, a cap described as ⟨w,e⟩≥r cos α becomes e·x≥cos α. In the
implementation one may use rational approximations v,h directly and
define the actual cap as v·w≥r h. Transfer certificates and coverage must
refer to those same exact coefficients. Normalizing v is unnecessary in
the coverage proof and would introduce avoidable square roots.

Caps with h≤0 are outside this short verifier's scope. Such a cap can be
shrunk to a positive-threshold subcap if desired, and its transfer remains
valid, but the resulting sphere coverage must be checked again.

## Qualitative completeness when combined with local transfer jets

**PROVED, with the precision qualification below.** Lack of losslessness
for a scalar cap multiplier does not obstruct sufficiently small caps.
Here is an explicit witness. For an affine normalized target map

    f(x)=d+F x,   ‖e‖=1,   a=d+F e,

choose η>0, ε>0 and k>(1+η⁻¹)‖F‖². Set

    λ=k,   μ=2k,
    s=(1+η)‖a‖²+2k(1−t)+ε.

Then the scalar-multiplier polynomial is

    s−‖d+Fx‖²−λ(1−‖x‖²)−μ(e·x−t)
      =(1+η)‖a‖²+k‖x−e‖²−‖a+F(x−e)‖²+ε.

Young's inequality bounds the last norm squared by
(1+η)‖a‖²+(1+η⁻¹)‖F‖²‖x−e‖². Hence the displayed polynomial has a
strictly positive definite 5×5 homogeneous matrix. To see definiteness,
replace the constant homogeneous coordinate by z and use u=x−ez: its
quadratic form is at least

    [k−(1+η⁻¹)‖F‖²]‖u‖²+εz².

The change from (x,z) to (u,z) is invertible. In particular the matrix
certificate can be verified with strict LDL pivots.

As t↑1, choose η=√(1−t), ε=η and
k=(1+η⁻¹)σ²+1, where σ is any fixed norm bound for F. Then
s→‖a‖². Thus if a source point has a strict target transfer, a local jet
centred at w=r e, whose Taylor error tends to zero with the cap diameter,
admits this certificate on a sufficiently small cap. The analogous signed
orientation lower bounds tend to the strict signs at the centre, so they
also pass for a sufficiently small cap. This argument requires the local
jet mode: a global polynomial error floor such as ‖AX‖τ need not tend to
zero as the cap shrinks.

Consequently, suppose a C² source branch on the closed ball has finite
derivative bounds, and the interiors of the finitely many available
strict-transfer regions cover its sphere. Each sphere point has a small
cap, with that point in its interior, carrying a strict transfer witness.
Compactness gives a finite subcover. The cap normals and thresholds may
be approximated by rationals while preserving all strict matrix, transfer,
and cover margins. A further arbitrarily small generic rational
perturbation removes all facet degeneracies, after which the exact polar
criterion above applies. This proves existence of a finite certificate
in the mathematical cap family; it supplies no useful universal cap-count
bound.

**Implementation limitation.** This is a statement about arbitrarily precise
rational witnesses and interval arithmetic. The current transfer replay
uses binary64 hexadecimal witness scalars and defaults to 224-bit Arb.
Neither the argument nor the experiments prove universal termination of
that fixed representation or of the supplied numerical search. In
particular a normalized strict target margin much smaller than binary64
spacing near s=1 would require a more general rational-scalar format.

## Exact losslessness counterexample for an invertible affine target

**PROVED.** The scalar cap multiplier can fail badly even for the squared
norm of an invertible affine target map. On S³ with x₁≥1/2, take

    F=diag(2,1,1,1),   d=(−9/8,0,0,0),   f(x)=‖d+Fx‖².

On the sphere,

    f(x)=3x₁²−(9/2)x₁+145/64.

This convex quadratic has equal values 49/64 at x₁=1/2 and x₁=1, so its
maximum on the cap is exactly 49/64<1. Nevertheless, any scalar-multiplier
certificate

    s−f(x)−λ(1−‖x‖²)−μ(x₁−1/2)≥0 globally,   μ≥0,

must satisfy, by evaluation at x=±e₁,

    s≥49/64+μ/2,       s≥625/64−3μ/2.

Their minimum common upper bound is 193/64, achieved at μ=9/2. This lower
bound on s rules out certifying the valid strict target f<1 on this cap
with a scalar multiplier.

The affine-multiplier extension already supported by the transfer checker
handles the same example exactly. The identity is

    49/64−f(x)=(1−‖x‖²)+3(1−x₁)(x₁−1/2).

Set s=25/32, λ=129/128, μ=3 and a=(−3,0,0,0), so the nonnegative affine
multiplier is μ+a·x=3(1−x₁). Then μ=‖a‖, and

    s−f(x)−λ(1−‖x‖²)−(μ+a·x)(x₁−1/2)
      =(1/128)(1+‖x‖²).

The homogeneous 5×5 certificate matrix is exactly (1/128)I, while s<1.
This example proves a strict gain from affine multipliers. It does not
assert losslessness of that extended certificate for every quadratic.

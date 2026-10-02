# D₀ rigidity on the exact Fourier seed atlas for 0<R≤20

**Theorem.** Let H be a physical order-six complex Hadamard, and let E
be a positional 3-by-3 corner which maximizes R among all 400 corners.
If its dephased seed lies in the Fourier seed atlas and

    0 < R(E) ≤ 20,

then H is equivalent to a member of the Fourier family or its transpose.
In particular, every reconstructed physical H₊ with such a seed in D₀
has d_Four(H₊/sqrt(6))=0. The theorem concerns every physical completion,
not just the selected reconstruction sheet, and uses no reconstruction
inputs.

This proves the zero-distance part of the restricted lifting target at
the requested R threshold. **It does not give a positive seed radius or
a quantitative estimate for seeds off the atlas.** The known unrestricted
lifting counterexample lies outside D₀ and does not contradict it.

## 1. Reduce to the two horizontal sides

The [exact atlas](../SeedAtlas/PROOF.md) shows that R>0 Fourier seeds lie
on its twelve surface pieces. After permuting/rephasing the corner and
possibly transposing the whole matrix, take

    E=[[1,1,1],[1,ω,ω²],[1,z,w]].

All these operations preserve maximality of the corner and its R value.
The [side classification](PROOF.md#1-exactly-two-horizontal-side-blocks-at-a-strict-surface-seed)
then gives B_F or B_A, up to its column permutation. Write

    S=1+z+w, T=1+ω²z+ωw, Y=|S|², Z=|T|²,
    p=Y+Z, t=YZ.

Here Y,Z>0, and 0<p<9. Indeed the third Fourier coefficient U=1+ωz+ω²w
is nonzero, and Parseval gives |S|²+|T|²+|U|²=9.

For B_F the quotient of the first two rows already consists of
1,ω,ω², each twice. We next prove the same conclusion for B_A under
maximality and R≤20.

## 2. A six-corner identity

Put K=[E B_A]. Use zero-based column indices and take

    J = {013, 015, 023, 024, 124, 125}.

There is the exact rational identity

    Σ_(J) R(K_:,J) − 6 R(E)
       = (Y−Z)² Q(Y+Z,YZ)/(Y Z)⁴.                      (1)

The rational polynomial Q(p,t), of weighted degree at most ten when
p has weight one and t weight two, is recorded coefficient-by-coefficient
in [mixed_polynomial.json](data/mixed_polynomial.json).
[mixed_algebra.py](mixed_algebra.py) reconstructs both sides of (1)
as Laurent polynomials over Q(sqrt(−3)), clears the explicit denominators,
and verifies equality exactly. No fitted or floating coefficients are
accepted by the replay.

The computation of each mixed R uses the unconditional
[complementary-square identity](../../CornerBounds/PROOF.md#2-an-unconditional-complementary-corner-square-identity):
R of a corner equals 64 times the squared six-term sine determinant of
its complementary three columns. The complement is within the three
rows of K, which are physically orthogonal. The implementation uses
`sin(a−b)=(exp(ia)/exp(ib)−exp(ib)/exp(ia))/(2i)` and exact polynomial
arithmetic. This also fixes the overall sign and factor in (1).

We will show Q(p,t)>0 throughout the physical region 0<R(E)≤20.
Consequently maximality, which makes the left side of (1) nonpositive,
forces Y=Z.

## 3. Exact positivity certificate

Since the first two rows of E are orthogonal, direct substitution in the
R polynomial gives

    R(E)=36(9−p)³−[t−(9−p)(18−p)]².                    (2)

Set

    k=sqrt(9−p), c=[t−k²(k²+9)]/(6k³).

Then 0<k<3, −1<c<1, and

    R(E)=36k⁶(1−c²), t=k²(k²+9+6kc).

The polynomial

    F(k,c)=Q(9−k²,k²(k²+9+6kc))/(24k¹⁰)               (3)

has no denominator. The verifier checks this algebraically, along with

    F(k,−1)=(k−3)⁶(k−2)²,
    F(k, 1)=(k+3)⁶(k+2)².

**First rectangle.** On 0≤k≤1 and −1≤c≤1, every coefficient in the
rectangular Bernstein representation of F is at least 64. The Bernstein
basis is nonnegative and sums to one, so F≥64 there.

**Remaining region.** For 1≤k<3, use (Y−Z)²=p²−4t≥0 to obtain

    0 < c+1 ≤ (3−k)³(k+1)/(8k³).

Put `c=−1+(3−k)³(k+1)u/(8k³)`, so 0<u≤1. Define polynomials

    H(k,u)=1024k¹⁰ F(k,c)/(3−k)⁶,
    H₁(k,u)=[H(k,u)−1024k¹⁰(k−2)²]/u,
    R_*(k,u)=9k³(3−k)³(k+1)u−(9/16)(3−k)⁶(k+1)²u².

The displayed quotients have polynomial numerators divisible by their
denominators; the replay checks both assertions and R_*=R(E).
An exact Bernstein bisection tree covers the entire closed rectangle
1≤k≤3, 0≤u≤1 with **19 nodes, ten leaves, maximum depth seven**.
At each leaf it certifies one of

    H>0, H₁>0, or R_*>20.

There are respectively five, two, and three leaves of these types. Every
split bisects a closed rectangle along one coordinate; its two closed
children cover it. Rational de Casteljau subdivision computes the child
Bernstein coefficients exactly. The tree's paths and strict rational
lower bounds are printed in the receipt. No numerical optimizer supplies
an acceptance decision.

For a point with R(E)≤20, the third type cannot contain that point.
The first type gives H>0 directly. In the second type, u>0 gives

    H=1024k¹⁰(k−2)²+u H₁ >0.

Since k<3, this proves F>0, and hence Q>0, throughout the required
region. This establishes the claimed consequence Y=Z of (1).

## 4. From Y=Z to a Fourier carrier

Use the triangle coefficients A=e₀ conjugate(e₁),
B₁=e₁ conjugate(e₂), C=e₂ conjugate(e₀) in the side-classification
proof. They are nonzero, A+B₁+C=0, and AB₁C>0. Equality Y=Z means
|e₀|=|e₁| and hence |B₁|=|C|. The two complex numbers B₁/A and C/A
have equal moduli and sum −1; they are conjugates. Their product is
therefore strictly positive. As

    AB₁C = A³ (B₁/A)(C/A) >0,

A³ is positive real. Thus α=A/conjugate(A), which occurs in B_A,
satisfies α³=1. The quotient of the first two rows of [E B_A] therefore
also consists of 1,ω,ω², each twice.

The unconditional [three-valued quotient theorem](../../EdgeRigidity/CubicPairRigidity.md)
now forces H to be Tao or to have an antipodal pair. An antipodal pair
forces an F₃ block by [block rigidity](../../EdgeRigidity/BlockZero3Equivalence.md),
and [Fourier-block classification](../../FourierBlocks/FourierBlockClassification.md)
then puts H in the Fourier family, its transpose, or Tao.

Tao is impossible here. It has an actual corner equivalent to E₂(ω,ω)
with R=243, as checked in the exact seed atlas and re-evaluated in this
replay. Equivalence preserves the complete set of corner R values, so a
maximal corner of any matrix equivalent to Tao has R≥243>20.
This leaves precisely the two Fourier orientations. ∎

## Verification and next obligation

Run `python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/atlas_rigidity.py`.
It verifies the six-corner identity, the coordinate changes, the complete
rational positivity cover, and the value excluding Tao. The written side
classification and the linked unconditional structural results supply
the remainder of the proof.

The next obligation is an explicit transverse stability estimate, including
control near R=0. Exact rigidity on the atlas alone does not justify a
whole-cell proximity prune or the desired inference from small R to a
certified matrix tube.

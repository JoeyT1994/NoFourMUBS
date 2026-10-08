# Seed proximity does not control the positive-sheet carrier in general

**Result.** Let ω=exp(2πi/3), and take the exact seed

    (a,b,c,d) = (ω,ω²,(4+3i)/5,(21+20i)/29).                (1)

Its seed distance to S_Four is zero, and it is strict, with 0<R<3.
Nevertheless its actual positive-sheet reconstruction satisfies

    d_Four(H₊(a,b,c,d)/sqrt(6)) > 1/40.                    (2)

Here d_Four includes the entire Fourier family, transpose, all row
monomial matches and column permutations. Physicality of H₊ uses the
accepted local sign-selected reconstruction identities. The interval
inequalities below are replayed with outward Arb balls at 256 bits.

**Scope.** This refutes an unrestricted inverse modulus tending to zero
with seed distance. It does not refute an estimate restricted to D₀:
the same certificate proves that this seed is outside D₀. It also does
not refute quartet exclusion on a seed tube; the exhibited carrier is
not asserted to be a quartet edge.

## 1. Exact seed membership

All four numbers in (1) have modulus one. The seed is on the atlas
surface `(a,b)=(ω,ω²)`, whose literal Fourier completion is the corner
E₂(c,d) of N(c,d). Therefore

    dist(θ,S_Four)=0

exactly, not just within a numerical tolerance. This point is also on
the closure of strict Fourier corner seeds, so discarding the atlas's
36 boundary curves would not repair the proposed estimate.

## 2. Interval certification of the reconstructed carrier

[seed_counterexample.py](seed_counterexample.py) evaluates the same
positive root `z₊=(χ+i sqrt(R))/(2g)` and sign-selected side formulas as
[model.py](../../../MinimalConstruction/Implementation/model.py), with
exact rational phases and an outward enclosure of sqrt(3).
It certifies positive definiteness of both Gram matrices by their leading
principal minors, positivity of g,R,n,ρ, nonvanishing of each side polynomial
P_j, and the prescribed sign dF>0 on each side. Cube roots use one
branch; alternative branches only permute the side columns/rows by the
[branch lemma](../../Sheets/BRANCH_LEMMA.md).

The code computes all 400 raw 3-by-3 minors with complex Arb balls and
proves, individually,

    |det H₊[I,J]| > 4/5.                                  (3)

For orientation, its enclosures are near

    R = 2.9376574142384709896...,
    g = 1.3049337262701618792...,
    min_(I,J) |det H₊[I,J]| = 0.8599493835034934169... .

The displayed decimals are not acceptance thresholds. Only the exact
rational comparisons in (3), R>0, R<3 and the stated divisor/sign guards
are used. All roots and operations are enclosed outward. No numerical
residual is treated as proof of the Hadamard identities; those identities
come from the explicitly accepted reconstruction input.

## 3. A quantitative distance lower bound from the minors

Every Fourier-family matrix and every transpose has a zero 3-by-3 minor.
For N this is immediate from its repeated upper block: the two columns
j and j+3 are identical on the first three rows. The property survives
all row/column monomial equivalences and transposition.

Let a raw Fourier representative B be matched to H₊ with normalized
column projector distances at most d. Choose each column's phase so
its inner product with the corresponding column of H₊ is nonnegative.
For normalized columns h,b,

    ||h−b||₂² = 2−2sqrt(1−D(h,b)²) ≤ 2D(h,b)².

Thus the difference of matched raw columns has Euclidean norm at most
`sqrt(12)d`, and restriction to three rows can only reduce that norm.
Each restricted raw column of H₊ or B has norm sqrt(3).

Take a zero minor of B. A three-term telescoping expansion of the
determinant, followed by Hadamard's determinant inequality, gives

    |det H₊[I,J]| ≤ 3·(sqrt(3))²·sqrt(12)d
                  = 18sqrt(3)d.                          (4)

Combining (3) and (4), every matching satisfies

    d > (4/5)/(18sqrt(3)) > 1/40,

where the last comparison is the integer inequality `18²·3<32²`.
This bound is uniform over the compact matching set, proving (2).

## 4. The restriction that this counterexample leaves open

For the same reconstructed H₊, the exact interval replay also proves

    R_(rows 0,1,2; columns 0,1,3)(H₊) > 100,
    R_(rows 0,1,2; columns 0,1,2)(H₊) < 3.                 (5)

Consequently this seed is outside D₀, by a large certified margin.
A statement restricted to D₀, perhaps also requiring R<m, is not
contradicted by this example and remains open here.

What is refuted is any implication of the form

    dist(θ,S_Four)<η  ⇒ d_Four(H₊(θ)/sqrt(6))<δ

for **all strict seeds**, whenever δ≤1/40 and η>0. In particular, no
finite C and α>0 can make `d_Four(H₊)≤C dist(θ,S_Four)^α` hold uniformly
on all strict seeds. Exact membership of a Fourier corner does not
identify the completion chosen by H₊.

This is stronger than the earlier observation that a corner may admit
both Tao and Fourier completions: the present certificate evaluates
H₊ itself and separates it quantitatively from every Fourier completion.
It blocks the unrestricted transfer of the explicit uniform matrix
radius in [PROOF.md](PROOF.md), while leaving a D₀-aware transfer as a
separate research target.

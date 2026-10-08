# Two reductions for the restricted seed-lifting problem

**Status.** The two lemmas below are proved. They do not yet prove a
uniform D₀-restricted lifting estimate, an R<20 threshold, or that seed
proximity alone implies carrier proximity. The whole-cell criterion in
Section 3 additionally requires certified side-block bounds. Its numerical tube constant is supplied by the completed
[PracticalTube certificate](../PracticalTube/PROOF.md). Neither lemma uses reconstruction identities.

## 1. Exactly two horizontal side blocks at a strict surface seed

Let ω=exp(2πi/3), |z|=|w|=1, and

    E = [[1,1,1],[1,ω,ω²],[1,z,w]].

Suppose R(E)>0 and the three rows of [E B] are flat and mutually
orthogonal, with the first row of B dephased to (1,1,1). Put

    S=1+z+w, T=1+ω²z+ωw, U=1+ωz+ω²w,
    α=S conjugate(T)/(conjugate(S) T), γ=−S/conjugate(S).

**Lemma.** Up to permuting the three columns, B is one of

    B_F = [[1,1,1],[1,ω,ω²],[−1,−z,−w]],
    B_A = [[1,1,1],[α,αω,αω²],[γ,γ/w,γ/z]].             (1)

Both displayed matrices have phase entries and satisfy BB†=6I−EE†.
They can coincide up to permutation; the assertion is at most two
possibilities, not two distinct branches. It classifies a horizontal
side, not full Hadamard completions or the sheet selected by H₊.

**Proof.** The first two rows of E are orthogonal. Three unit complex
numbers summing to zero form a rotated equilateral triple: after dividing
by the first, |1+u|=1 gives Re(u)=−1/2 and hence {u,v}={ω,ω²}.
Consequently the second row of B, after a column permutation, is
α(1,ω,ω²) for some unit α.

Write e₀=S/3, e₁=T/3, e₂=U/3, so that the last row of E is
`e₀+e₁ωʲ+e₂ω^(−j)`, j=0,1,2. These coefficients are nonzero: if
one vanishes, the same equilateral argument forces (z,w) to be one of
(1,1), (ω,ω²), (ω²,ω). At each of these R(E)=0, contrary to the
hypothesis. This also makes every division in (1) legitimate.

Row orthogonality fixes the first two Fourier coefficients of the last
row of B as −e₀ and −αe₁. Parseval and its row norm fix the modulus
of the third coefficient as |e₂|. Thus this row has the form

    −e₀−αe₁ωʲ−βe₂ω^(−j),       |α|=|β|=1.

Define A=e₀ conjugate(e₁), B₁=e₁ conjugate(e₂),
C=e₂ conjugate(e₀). Flatness of E and of the proposed B row is
respectively equivalent to

    A+B₁+C=0,
    A conjugate(α)+B₁ α conjugate(β)+C β=0.             (2)

The three nonzero summands in the second equation have prescribed
lengths |A|,|B₁|,|C|. An ordered closed triangle with those lengths is
a common rotation of either (A,B₁,C) or its conjugate. This includes
the collinear case: fix its first edge, and the real part and modulus
of its second edge leave at most the two conjugate choices.

The product of the three summands equals AB₁C=|e₀e₁e₂|²>0. Their
common rotation λ therefore satisfies λ³=1 in either case. A cyclic
permutation of the columns removes λ. In the direct case α=β=1,
which gives B_F. In the reflected case

    α=A/conjugate(A), β=conjugate(C)/C.

The last row then is −(e₀/conjugate(e₀)) times the conjugate of
the last row of E with j replaced by −j. This is exactly B_A in (1).
The same equations verify that both choices have the required Gram
matrix. ∎

**Why this helps D₀.** For every triple J of the six columns of [E B],
D₀ requires `R([E B]_:,J) ≤ R(E)`. Substituting B_A makes these finitely
many explicit rational inequalities in z,w. Thus, on the surface, the
horizontal branch-selection question reduces to two real parameters.
It is not legitimate to discard B_A merely because it differs from B_F.
The [subsequent six-corner theorem](ATLAS_RIGIDITY.md) proves that D₀ and
0<R≤20 force |S|²=|T|² on B_A, and hence force a Fourier-family carrier.
A bound for seeds off the atlas remains open.

## 2. Quantitative completion from the seed and two side blocks

Let H and H₀ be physical raw order-six Hadamard matrices, partitioned
into 3-by-3 blocks:

    H=[[E,B],[C,D]], H₀=[[E₀,B₀],[C₀,D₀]].

Here D₀ in the display denotes a matrix block, not the seed domain.
Suppose, after allowed row/column phases and permutations,

    ||E−E₀||F ≤ e, ||B−B₀||F ≤ b, ||C−C₀||F ≤ c,
    6I−EE† ≥ κ I,                    κ>0.             (3)

**Completion lemma.**

    ||D−D₀||F ≤ sqrt(6/κ)(e+b+c),                    (4)

and, if H₀ is equivalent to a Fourier-family member or its transpose,

    d_Four(H/sqrt(6))
       ≤ sqrt((e²+b²+c²)/6 + (e+b+c)²/κ).            (5)

**Proof.** Row orthogonality gives EC†+BD†=0 and its reference
analogue. Subtracting yields

    B(D†−D₀†)=−(E−E₀)C†−E₀(C−C₀)†−(B−B₀)D₀†.

Every block of a raw Hadamard has operator norm at most sqrt(6).
Also BB†=6I−EE†, so ||B⁻¹||op≤κ^(−1/2). Apply Frobenius/operator
norm product inequalities to obtain (4). Add the four squared block
errors and divide by six. Each column's projector distance is at most
its Euclidean distance, which is bounded by the whole Frobenius norm.
Minimizing over the Fourier orbit can only decrease the distance. ∎

This estimate has no derivative of H₊, division by R, or square root of
R. It remains valid at R=0 whenever the Gram lower bound in (3) holds.
One may certify κ from E alone. For example, if `det(6I−EE†)≥g₀>0`,
then κ=4g₀/81 is valid: the Gram matrix is positive semidefinite with
trace 9, so the product of its two largest eigenvalues is at most 81/4.
A direct lower eigenvalue bound may be much sharper.

## 3. A whole-cell criterion, with the missing hypothesis explicit

Let K be a closed seed box. For every physical completion with seed in
K∩D₀, require a certified side cover that supplies a reference H₀ in
the Fourier family and an allowed simultaneous alignment satisfying
(3). The reference and side permutations may depend on the completion;
the bounds e,b,c,κ must be uniform. If

    (e²+b²+c²)/6 + (e+b+c)²/κ ≤ δ₀²,                 (6)

then the uniform matrix exclusion theorem at radius δ₀ excludes every
quartet edge represented in K∩D₀. This is a whole-cell implication, not
a midpoint test. Sound side-column and side-triple covers can certify
the required bounds only if *every* retained, compatible side choice
is covered. Surviving alternatives cannot be ignored or selected by
sampling. The existing SideTriplePrune tests alone do not yet produce
these matched Fourier-reference bounds.

For a simple explicit version, suppose the four free seed entries and
every entry of B,C are within chordal distance η of their reference
entries. Then e≤2η, b,c≤3η, and

    d_Four ≤ η sqrt(11/3+64/κ).                        (7)

If κ≥1/2, the right side is strictly less than 12η for η>0. Thus
η≤1/196608 enters the certified δ₀=1/16384 tube. This η concerns all
three controlled blocks; it is **not** a proved seed-only radius.

A concrete reference with a well-conditioned Gram matrix is the ordered
Fourier corner

    E₀=[[1,1,1],[1,ω²,−ω],[1,1,−1]].

Its complementary Gram spectrum is {3,3−sqrt(5),3+sqrt(5)}, so its
least eigenvalue exceeds 3/4. If the seed's four entries are within η,
then `||E−E₀||F≤2η` and

    ||EE†−E₀E₀†||op ≤ 2sqrt(6)||E−E₀||F < 10η.

For η≤1/196608 this gives κ>1/2 automatically for physical
completions. The side-block matching remains a separate obligation.
The reference, its Gram spectrum, and the rational constants are checked
by verify.py.

## Remaining work

Prove quantitative bounds on the side choices from seed proximity and
D₀, uniformly over the necessary Fourier strata. Section 1 simplifies
one exact stratum; it supplies no transverse error estimate yet. Match
that estimate to T1′ and the matrix tube before enabling a seed prune.

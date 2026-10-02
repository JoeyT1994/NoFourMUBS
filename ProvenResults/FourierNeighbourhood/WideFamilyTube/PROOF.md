# Larger exclusion tubes on certified Fourier-family parameter regions

**Proved, computer-assisted, unconditional.** The retained
[data/regions.json](data/regions.json) lists 191 closed parameter boxes.
Around every Fourier-family member in their union, including transpose
and monomial equivalences, quartet edges have column-projector distance
strictly greater than **1/256**. On four listed boxes the larger radius
**1/128** holds. In the directly certified orientation, the corresponding
radii are **1/96** and **1/48**, respectively.

This is a **regional theorem**. The 79 other boxes of the 270-box coarse
parameter cover have no new certificate here. The previously proved
whole-family radius **1/16384 remains the uniform radius**. No larger
uniform whole-family radius is claimed.

## 1. Matrix and parameter convention

For parameters a,b in turns, define the raw matrix

    H(a,b)[i,j] = exp(2πi [ij/6 + (j mod 2) t_i]),
    t_i = 0 if i mod 3=0, a if i mod 3=1, b if i mod 3=2,
    0≤i,j≤5.                                             (1)

This is the transpose of the M convention in the existing
[PracticalTube parameter audit](../PracticalTube/audit.py), hence is a
Fourier-family representative. More explicitly,
`H(a,b)[i,j]=N(z,w)[floor(j/2)+3(j mod 2),i]`, where
`z=exp(2πi(a+1/6))` and `w=exp(2πi(b+1/3))`.
The independent [exact audit](audit.py) checks all 36 affine phase
identities, the generic row sums, and the transfer constants.
It is physical directly: split each row
inner product into even and odd j. Both three-term geometric sums vanish
unless the row indices agree modulo 3. In that remaining case t_i=t_k,
so distinct rows separated by 3 give sums 3 and −3; equal rows have
norm squared 6. Thus HH†=6I for every a,b.

A listed cell `(grid,A,B)` means the entire closed rectangle

    a∈[A/grid,(A+1)/grid], b∈[B/grid,(B+1)/grid].          (2)

All retained cells currently use grid=180. The literal list, rather
than a sampled or inferred region boundary, defines the theorem's scope.
The four stronger cells are `(A,B)=(0,0),(3,0),(5,0),(10,2)`.

## 2. Relaxed common rays and amplitude tolerances

For a cell with tolerance denominator t, set τ=1/t. The verifier covers
all flat rays `x=(1,exp(iu₁),…,exp(iu₅))/sqrt(6)` such that, for some
parameters in (2),

    ||sum_i exp(iu_i) conjugate(H(a,b)[i,j])|−sqrt(6)|≤τ
    for every j, with u₀=0.                               (3)

Here t=16 on 187 cells and t=8 on the four stronger cells. The parameter
midpoint phases and phase half-widths in (1) are exactly integer
multiples of `2π/218880`. The Family test widens each phase by the entire
parameter half-width before applying the previously audited integer
scalar rejection function. It may retain different parameter choices
for different equations, which enlarges the cover and is safe.

## 3. Complete confinement to supplied rational phase centres

Each cell has a separate list of exact rational unit-phase centres.
They were proposed numerically, but neither root accuracy nor root
completeness is an input to the proof. The verifier checks every rational
coordinate pair x,y satisfies x²+y²=1, and every ray's first entry is 1.

The integer confinement algorithm is the one in
[ClusterTube](../ClusterTube/PROOF.md), with a cell-dependent integer
radius denominator k≥6: every retained ray must lie in a projector ball
of radius ρ=1/k around one of the supplied centres.

The proof covers the entire five-dimensional phase torus, starting with
all 19⁵ closed cells. A cell is rejected only by the necessary scalar
tests (3), or is certified inside a centre ball. Otherwise it is split
into all 32 children. At the finest grid 2432, an undecided cell is a
failure. No retained certificate has an undecided cell.

The centre product and phase-cell error estimates are unchanged:

    lo=max(0,floor(integer_overlap_norm)−37),
    D(midpoint,centre)≤ceil(sqrt(36Q²−lo²))/(6Q),
    D(ray,midpoint)≤710h/(113L),
    Q=2²⁶, L=218880, h=L/(2n).

The strict sum of these bounds is checked against ρ in integers.
The integer square-root proposals are corrected by exact comparisons.
The replay checks the complete-forest identity

    31·nodes+19⁵ = 32·(rejected+included).

The scalar arithmetic source is extracted byte-for-byte from the
PracticalTube prefix. All 437760 trigonometric-coordinate inequalities
are regenerated with 100-bit Arb arithmetic. Explicit range bounds rule
out signed overflow; the whole C++ replay also runs with undefined
behaviour sanitization.

## 4. Exact exclusion of two compatible six-ray bases

For each pair of normalized rational centre rays, let p be their exact
squared overlap, computed as a rational number. Projective-angle triangle
inequalities give the same sharp necessary conditions as ClusterTube:

    possible orthogonality:
        p≤4ρ²(1−ρ²),

    possible unbiasedness:
        A≤0 or A²≤5p(1−p),
        A=3(1−2ρ²)²−5/2+2p.

Every edge that might satisfy these inequalities is retained. At these
radii no label can hold two orthogonal rays; the exact self-edge tests
are checked. Consequently a possible basis C must choose a six-clique
of distinct orthogonality labels.

For every such C clique, intersect its six unbiasedness-neighbour sets.
A basis D would need an orthogonality six-clique in that intersection.
The verifier excludes it by both literal enumeration of six-subsets
and a separate recursive clique search. No sampled ray selection or
preferred C basis is used. Thus the whole relaxed set (3) contains no
pair of orthogonal six-ray bases unbiased to each other.

## 5. Transfer to the matrix radii

The existing amplitude-transfer estimate gives raw amplitude error
strictly less than 6d for positive column-projector distance d≤1/8.
At d=0 the error is zero. Hence a quartet edge within

    d≤1/(6t)

of a directly represented H(a,b)/sqrt(6) would yield the forbidden
configuration in (3). This proves direct radii 1/96 for t=16 and 1/48
for t=8, including row monomial and column permutation equivalences.

For the opposite orientation, the proved transpose estimate in
[PracticalTube](../PracticalTube/PROOF.md) bounds the transposed projector
distance by `(5/2)d`, through a column-phase alignment and Frobenius
bound. Quartet extendibility is preserved by transposition. Therefore
raw amplitude error is less than 15d, and

    d≤1/(16t)  implies  15d<1/t.

This proves the claimed two-orientation radii 1/256 and 1/128. The
argument uses only physical basis identities and the integer certificates;
no reconstruction assumption or published exclusion theorem is required.

## 6. Independent controls and exact scope

For every rational centre, Arb verifies that it really satisfies the
relaxed inequalities at the exact parameter midpoint. The verifier
then encloses its five phases in phase cells at all eight subdivision
levels and checks that the C++ rejection routine retains every one.
Special rational unit phases are handled by exact fractional turns.
The all-ones ray supplies a negative control. These controls supplement,
rather than replace, the exhaustive phase cover.

The region manifest is checked exactly: 191 distinct retained coarse
boxes and 79 explicitly listed unresolved boxes form the original
270-box coarse parameter list without overlap in their indices. This
is an audit of the regional scope, not a claim to have solved the gaps.
The old full-family theorem supplies radius 1/16384 everywhere, including
those 79 boxes.

`verify.py` rebuilds the integer executable and repeats every cover and
graph. Its receipt records all cells, graphs, source hashes, positive
controls and node counts. `certificate.py` can replay an individual
retained cell. The numerical discovery scripts are not proof dependencies.

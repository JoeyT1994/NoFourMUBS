# A quantitative D₀ seed lift on a cube crossing R=0

**Proved, computer-assisted, unconditional for physical completions.**
Let ω=exp(2πi/3), and let θ be the four phase coordinates of a dephased
leading corner of a raw physical Hadamard H. Suppose that this corner
maximizes R among all 400 positional corners, and, modulo 2π,

    ||θ − (4π/3, 5π/3, 0, π)||∞ ≤ 1/2048.                 (1)

Then there is a raw matrix H₀ equivalent to F6, with a simultaneous
allowed alignment, such that

    ||H−H₀||F / sqrt(6) < 1/40.

In particular `d_F6(H/sqrt(6)) < 1/40 < 1/36`, so the proved
[ClusterTube theorem](../ClusterTube/PROOF.md) excludes a quartet edge
at every such H. No positive lower bound for R is assumed. The same
conclusion holds after a dephased row/column permutation of the leading
corner or transposition, provided the transformed seed satisfies (1).

The four-dimensional closed cube contains both signs of R, its centre
has R=0, and it contains a strict positive-R Fourier-family curve in
D₀∩F. Thus this is a nonvacuous seed-only exclusion across R=0, not a
domain prune or an estimate conditional on separately supplied side
matching. All side matching is certified below.

**Scope.** This is local to one F6 seed orbit. It is not a uniform
transverse estimate along the full Fourier family or a theorem for all
R<1/1000. Its half-width is about 12.6 times smaller than π/512, the
production half-width. No full retained production box lies in one of
these cubes, and no production-wide workload reduction is claimed.
The desired combined T1′/T2 theorem remains open.

## 1. Reference and seed conditioning

Put ζ=exp(πi/3). Take the Fourier matrix `(ζ^(rc))` with row order
`(0,5,3,1,2,4)` and column order `(0,2,1,3,4,5)`. This is a dephased raw
physical reference H₀. Its leading block is

    E₀ = [[1,1,1],[1,ω²,−ω],[1,1,−1]],

and the spectrum of `6I−E₀E₀†` is `{3,3−sqrt(5),3+sqrt(5)}`. In
particular its least eigenvalue is greater than 3/4. Its invariant R
is exactly zero. The verifier checks these statements symbolically.

Write h=1/2048. The chordal bound `|exp(it)−exp(is)|≤|t−s|` gives

    e = ||E−E₀||F ≤ 2h = 1/1024.

Every block of a raw physical Hadamard has operator norm at most sqrt(6).
Therefore

    ||EE†−E₀E₀†||op ≤ (||E||op+||E₀||op)||E−E₀||F
                     ≤ 4 sqrt(6) h < 10h,
    G = 6I−EE† ≥ κ I,       κ = 3/4−10/2048 > 0.         (2)

This lower bound is on the complementary Gram matrix, not on R.

## 2. Complete side covers from maximality

The outward Taylor bound of
[SideColumnPrune](../../CornerBounds/SideColumnPrune/PROOF.md) on the
16 half-width children gives, throughout the entire closed seed cube,

    R(E) ≤ M < 0.000631792 < 1/1000.                       (3)

The actual outward dyadic M, rather than the rounded displayed decimal,
is used in the computation. For a maximal physical completion, every
complementary mixed corner has R≤M. Consequently the moment and
complementary-corner tests in SideColumnPrune cover every column of B
and every row of C. They use only polynomial identities and maximality,
so no reconstruction or R-separated path is needed.

Run the complete torus cover at depth 20 after its initial 8×8
partition. Retain all side-label multisets permitted by
[SideTriplePrune](../../CornerBounds/SideTriplePrune/PROOF.md), including
repeated labels and all three moment sums. The replay records:

| Side | Cover nodes | Retained labels | Tested triples | Retained triples |
|---|---:|---:|---:|---:|
| B columns | 1860 | 164 | 15041 | 5017 |
| C rows | 2944 | 253 | 22692 | 8749 |

The closed cover is exhaustive; every label or resource-limit failure
prevents a certificate. No candidate root is chosen by numerical fitting.
The joint-side cross-edge test is not required for this particular cube.

## 3. Match every side to the same reference

Let `B₀,C₀` be the corresponding blocks of the reference H₀ in §1.
For each retained B triple, test all six permutations matching its
three interval vectors to the three fixed reference columns of B₀.
For each permutation, sum the three squared interval Euclidean error
bounds. Choose a valid upper bound from the best permutation, then
maximize over **all** retained triples. Do the same for C rows.

The outward results are

    b = ||B−B₀||F < 0.006592946 < 7/1000,
    c = ||C−C₀||F < 0.011906863 < 3/250.                  (4)

The B matching permutes only the last three columns, and the C matching
permutes only the last three rows. Thus both can be applied at once:
neither changes E or the opposite controlled block. The resulting D
block is unknown and will be controlled by physical orthogonality.
There is no assertion that each independent pair of retained triples
is physically realizable; bounding all of them is conservative.

A second audit uses a different matching procedure. Each active label
is assigned to its unique reference vector within Euclidean radius
1/16, using separate real and imaginary coordinate bounds. Every
retained triple uses all three reference vectors exactly once; the
resulting sums independently satisfy the rational bounds in (4).
The entire calculation and this audit are replayed at both 96 and
160 bits of Arb precision.

## 4. Completion and exclusion

Apply the unconditional [three-block completion lemma](PROOF.md#2-quantitative-completion-from-the-seed-and-two-side-blocks)
with the simultaneous side matching above. It gives

    ||D−D₀||F ≤ sqrt(6/κ)(e+b+c),
    ||H−H₀||F² / 6 ≤ (e²+b²+c²)/6 + (e+b+c)²/κ.

Substituting the rational constants

    e=1/1024, b=7/1000, c=3/250, κ=3/4−10/2048

makes the right side strictly less than `1/1600`. This final comparison
is checked with exact rational arithmetic. The maximum column-projector
distance is at most the normalized Frobenius error, which proves the
claimed lift and enters the F6 exclusion radius 1/36.

All reference changes in §3 are Hadamard equivalences. If the leading
corner was first transposed, transpose the aligned matrices back; the
Frobenius bound is unchanged and the transpose of F6 has the same orbit.
One need not assert transpose invariance of maximum-column distance.

## 5. Nonvacuity and both signs of R

The exact [CornerBounds curve](../../CornerBounds/PROOF.md#4-this-is-a-positive-sheet-example-in-d₀--f)
has seed

    θ(v)=(4π/3,5π/3+δ,0,π+δ),  δ=2 atan(v),
    R(θ(v))=max_c R_c=2304v²/(1+v²)⁴ > 0.

For example v=1/8192 has `0<δ<1/4096`, so this strict D₀∩F point
lies inside (1), together with a positive-width seed neighbourhood.
Its positive-sheet identification uses the already stated accepted
reconstruction inputs; its physical Fourier completion and maximality
are independently exact. The theorem above covers all physical
completions, irrespective of sheet.

The centre has R=0 exactly. At offsets `h·(−1,−1,−1,−1)` the verifier
certifies R>0, and at offsets `h·(−40,−98,−76,−4)/100` it certifies R<0.
Both points belong to the cube. No R>0 continuation across that cube
could have supplied this proof.

## 6. Whole-cell use

For a seed box K with centre t and half-widths r, first try any of the
72 exact dephasing maps associated with permutations of the three
leading rows, three leading columns and optional transpose. Each map
is an integer 4×4 matrix A. Enclose the transformed box by centre At
and widths `|A|r`. If integers n_i give

    |(At)_i − 2π n_i − θ₀_i| + (|A|r)_i ≤ 1/2048

for all four coordinates, every maximal physical carrier represented
in K is excluded as a quartet edge. The original seed box may contain
points outside D₀; the rule is applied only on the campaign's D₀ domain.

[rzero_lift.py](rzero_lift.py) exports `certify_box(centers,radii)` for
this inexpensive containment test. It checks the inequalities in Arb;
floating-point rounding only proposes periodic integers. `ok=False`
means the rule did not certify, never permission to discard a cell.
The theorem's complete finite proof is independently replayed by
`verify_rzero_lift.py`. The live production driver is unchanged.

**Dependencies:** physical flatness and orthogonality, the polynomial
side-cover theorems, the three-block completion lemma, and the proved
F6 ClusterTube certificate. No side-constructor exhaustion, radical
continuation, branch selection or strict-corner coverage is used in the
lifting theorem. Applying it specifically to H₊ uses only the accepted
fact that H₊ is a physical Hadamard on the intended strict domain.

## Subsequent extension

[MATCHED_COVER_LIFT.md](MATCHED_COVER_LIFT.md) enlarges this cube's
half-width to **1/512**, four times the radius above, and adds two other
F6 seed classes. It uses different column/row estimates and a complete
255-leaf partition. The stronger *Frobenius* bound <1/40 in the present
proof is not asserted for that larger cube; its separate row and column
projector bounds enter the same 1/36 tube.

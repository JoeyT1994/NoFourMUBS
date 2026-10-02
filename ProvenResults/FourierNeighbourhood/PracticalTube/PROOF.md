# An integer certificate for a uniform Fourier-family tube

**Status: proved, computer-assisted.** The completed replay covers all 270
parameter cells by 294 closed leaf rectangles in orientation 0. It excludes
all 2,178,035 retained candidate C six-cliques. The transpose lemma covers
the other orientation. Source/checkpoint hashes, the separate reduction
audit, and 408 feasible controls are retained in the
[certificate receipt](../../../Verification/T2_practical_partition_2026-09-28/README.md).

## 1. Statement and metric

Write F₃=(ωⁱʲ), ω=exp(2πi/3), and

    N(z,w) = [[F₃,F₃],[F₃ Z,−F₃ Z]],  Z=diag(1,z,w).

The family consists of N(z,w)/√6 and N(z,w)ᵀ/√6, with |z|=|w|=1.
For a unitary carrier U let

    d_Four(U) = min_(A,M,σ) max_j ||P_(U_j) − P_(M A_σ(j))||op,

where A ranges over this family, M over row monomial unitaries, σ over
column permutations, and P_v=vv†. The minimum is attained by compactness.

**Theorem.** If I,U,C,D are four mutually
unbiased orthonormal bases of C⁶, then

    d_Four(U) > 1/16384.

The same conclusion applies to every transition between bases in a quartet
by changing the reference basis. No reconstruction formula, side regularity,
D₀ assumption, or classification of order-six Hadamard matrices is used.

This is a matrix theorem. No seed radius η₂ or quantitative T1′ threshold m
is asserted. The existing counterexample to unrestricted seed lifting still
applies. The D₀-restricted seed-to-carrier estimate is a remaining task.

## 2. Moving a quartet to an amplitude tube

For unit vectors u,f with projector distance d, choose their phases so
f=√(1−d²)u+d v, where v⊥u and ||v||=1 (d=0 is immediate). If x is a
unit vector with |〈u,x〉|=1/√6, Cauchy–Schwarz on u⊥ gives

    ||〈f,x〉| − 1/√6|
      ≤ (1−√(1−d²))/√6 + d√(5/6).

For flat f,x, their raw phase sum is six times this inner product. Hence
its modulus differs from √6 by at most

    √6(1−√(1−d²)) + √30 d ≤ √6 d² + √30 d < 6d       (1)

for 0<d≤1/8: √6<5/2 and √30<11/2 suffice. Therefore, if d≤1/8192,
that raw modulus differs from √6 by less than

    6/8192 = 3/4096 < 1/1000.                         (2)

After the common row monomial change of coordinates and the matching of
carrier columns, every column of C and D remains flat in I, and satisfies
this tolerance against every column of the matched Fourier carrier.
Their within-basis orthogonality and their mutual unbiasedness remain exact.
The numerical certificate below excludes even this relaxed configuration
for the directly checked orientation.

### Transposition costs less than a factor 5/2

If a quartet contains I,V,C,D, apply V† to all four bases and conjugate
all entries. The resulting quartet contains I,Vᵀ. Thus transposition
preserves the property of being a quartet edge.

Suppose a unitary V is within maximum column-projector distance d≤1/8
of Aᵀ, with the columns already matched. Rephase the columns of V so that
all matched inner products are nonnegative. This preserves the quartet
property. The Frobenius distance then satisfies

    ||V−Aᵀ||F² ≤ 12d²/(1+√(1−d²))
                < (128/21)d² < (25/4)d²             (T1)

for d>0. Indeed √(1−d²)≥√(63/64)>31/32. Transposition preserves the
Frobenius norm, and the projector distance between two unit vectors is
at most their Euclidean distance, since
`1−|〈x,y〉|² ≤ 2−2Re〈x,y〉`. Consequently

    max_j ||P_((Vᵀ)_j)−P_(A_j)||op < (5/2)d.

The case d=0 is exact equality and immediate. Row monomial equivalences
are first applied to the whole quartet, and column phases/permutations
do not affect its unbiasedness. Hence the argument applies to the orbit
metric, not merely to already dephased matrices.

For d≤1/16384 the transposed carrier is therefore within ε≤(5/2)d<1/8
of the directly checked orientation. Formula (1) puts every additional
basis ray inside the raw amplitude tolerance

    6ε ≤ 15/16384 < 1/1000.                         (T2)

This proves the uniform radius 1/16384 for both orientations from a single
270-cell search. The directly checked orientation also has the stronger
radius 1/8192 from (2). No computation on the transposed parameter boxes
is needed for the stated uniform theorem.

## 3. Exact reduction of the whole parameter torus

Use turns p,q with z=exp(2πip), w=exp(2πiq). The following transformations
preserve the family up to Hadamard equivalence and, for the last one,
complex conjugation:

    (p,q) ↦ (p+1/2,q), (p,q+1/2), (p+1/3,q+2/3),
             (q,p), (−p,q−p), (−p,−q).              (3)

The first two exchange the two columns of the corresponding column pair.
The third cyclically permutes the lower three rows. The next two permute
Fourier column indices by j↦−j and j↦1−j; Fourier row permutations and
row phases restore F₃, and the common phase of the three entries of Z is
absorbed in the lower rows. Conjugation is followed by reversing the
Fourier row indices. The same operations transposed establish the reduction
for Nᵀ. All operations preserve the quartet property and projector metric.

The exact rational verifier `domain_audit.py` generates the affine group
of (3), with 144 elements modulo Z². It applies them to the closed triangle

    T′ = conv{(1/6,1/3),(1/3,1/3),(1/3,5/12)}.

It clips the translated images to the unit square using rational arithmetic,
obtaining 144 positive-area polygons with total area one and pairwise
zero-area intersections. These closed polygons cover the torus: otherwise
their open complement would have positive area. Thus T′ suffices.

Set p=a+1/6, q=b+1/3. A row permutation turns N into the raw matrix M with

    M_(j,i) = exp(2πi [ji/6 + [j odd]t_i]),
    (t₀,...,t₅)=(0,a,b,0,a,b),  0≤i,j≤5.             (4)

The corresponding region is T=conv{(0,0),(1/6,0),(1/6,1/12)}.
It is covered by the 270 closed rectangles

    [A/180,(A+1)/180] × [B/180,(B+1)/180],
    0≤A<30, 0≤B≤floor(A/2)+1.                       (5)

The replay uses the six rows of M as carrier vectors (`orientation=0`),
so its column-carrier matrix is Mᵀ. The transpose lemma covers the other
orientation of N. Boundary faces are included throughout.

The practical replay replaces the five coarse cells (28,0), (28,1),
(29,0), (29,1), (29,2) by their four half-width children on a 1/360 grid.
It further replaces the 1/360-grid children (58,0), (59,0), (59,1) by
four children each on a 1/720 grid. Thus 265 coarse cells, 17 cells on
1/360, and 12 cells on 1/720 give **294 closed leaf rectangles** covering
all 270 original cells. The unchanged scalar and ray algorithms apply.
For a grid denominator G, the three `L/360` expressions in the Family
constructor are replaced by `L/(2G)`. Each 2G divides L exactly; the
independent audit checks the physical matrix phases and endpoints for
all three grids. No completed coarse result is altered by refinement.

## 4. A rigorous scalar rejection test

Set L=218880=lcm(360,2·19·2⁷), Q=2²⁶. An Arb-checked table stores integers
(c_k,s_k), 0≤k<L, satisfying

    |c_k − Q cos(2πk/L)| < 1,
    |s_k − Q sin(2πk/L)| < 1.                        (6)

The table is regenerated and each inequality checked using 100-bit Arb
balls. Floating conversion only proposes an integer; acceptance is an
outward ball comparison. No elementary floating-point function supplies an
unverified trigonometric value to the C++ rejection tests.

A scalar product of dephased flat rays has raw sum

    S(t)=1+Σ_(i=1)^5 exp(it_i),
    |t_i−2πc_i/L|≤2πh_i/L,

where centers c_i and half-widths h_i are integers. Parameter dependence
between entries is enlarged to independent intervals, which is safe.
Let S₀ be the midpoint sum and H=Σh_i. Its variation is at most 2πH/L.
Use π<355/113 to enclose this by the integer

    E = ceil(710 Q H/(113 L)).                      (7)

When 710H<113L, this variation is strictly less than one. In this case
|S(t)−S₀| reaches its maximum at one of the 32 endpoints. Indeed, with
E(t)=S(t)−S₀, its squared norm has second derivative in each coordinate

    ∂²|E(t)|²/∂t_i² = 2(1−Re(exp(it_i) conjugate(E(t)))) > 0.

It is separately convex, so successively maximizing each coordinate puts
all coordinates at endpoints. Write D for the largest endpoint error norm.
A necessary condition for a target modulus ρ with tolerance τ is thus

    ||S₀|−ρ| ≤ min(2πH/L,D)+τ,

using D only under the stated small-width condition.

The implementation uses integer norms. If s is the integer midpoint sum,
its norm floor is r=floor(√(s_x²+s_y²)). Its error from Q|S₀| is less than
5√2+1<9. The target √6 Q is replaced by its exact integer floor (error<1),
or the target zero is exact. Consequently the midpoint-to-target distance
has error less than 10. An integer endpoint difference has coordinate
errors less than 10 each; its norm floor has error less than 10√2+1<16.
Thus these are sound rejection rules:

    |r−floor(Qρ)| > E + ceil(Qτ) + 10;              (8)
    |r−floor(Qρ)| > max_endpoint floor(norm)
                              + ceil(Qτ) + 26.    (9)

Rule (9) is used only when 710H<113L. The tested family tolerance is
ceil(Q/1000)/Q≥1/1000. Orthogonality and C–D unbiasedness use tolerance
zero. All acceptance/rejection comparisons are integers. `sqrt(double)`
only proposes an integer square root; integer corrections establish
r²≤s_x²+s_y²<(r+1)² before its use. All sums, squares and products fit
signed 64-bit integers: in particular the largest endpoint components
are bounded by 12Q+10, and their squared norm is below 2⁶¹.

## 5. Exhaustive coverage and graph exclusion

A dephased flat ray is represented by five closed phase intervals. Begin
with all 19⁵ coarse boxes. At each subdivision every interval is bisected,
giving exactly 32 closed children. Stop at denominator 19·2⁷=2432.
The routine returns `true` whenever any descendant is unresolved. It
returns `false` only after a sound scalar rejection or after all children
return false. Thus it never discards an actual feasible ray, including on
a face shared by boxes. Root counts and isolatedness are irrelevant.

First independently generate the coarse boxes that can contain a ray
orthogonal to the all-ones ray. This calculation uses target zero and
rules (8)–(9). For two coarse labels u,v the phase differences lie in

    [(u_i−v_i−1)/19,(u_i−v_i+1)/19].

The union of all retained orthogonality labels shifted coordinatewise
by zero or one therefore gives a conservative orthogonality graph on
coarse ray labels. The replay regenerates this graph, checks symmetry on
each candidate set, and checks the absence of loops. Distinct orthogonal
rays cannot share a coarse label.

For each parameter leaf case in orientation 0:

1. Retain every coarse box that survives the six carrier tests at
   tolerance 1/1000. Both hypothetical bases C,D must use these labels.
2. Enumerate every six-clique of the orthogonality graph as a possible C.
3. For each such C and every retained coarse label, subdivide a candidate
   D-ray box. At every node impose both the six carrier constraints and
   its six exact unbiasedness constraints against the six coarse C boxes.
   These constraints may each use different parameter/phase witnesses;
   this enlarges the feasible set and cannot invalidate an exclusion.
4. Retain the labels with an unresolved descendant. Check whether their
   orthogonality graph contains a six-clique. If none does, this C cannot
   have a fourth basis D. A remaining six-clique returns `INCONCLUSIVE`
   and a nonzero exit code; it is never counted as a proof.

Repeated family tests in step 3 are cached. The cache key packs the
subdivision level and the five interval indices into disjoint bit fields
(three level bits and five twelve-bit indices). Since the largest
denominator is 2432, the key is injective. At the initial denominator 19,
the family test is already known to pass for each retained candidate;
skipping its repeated evaluation is therefore sound. The individual C–D
scalar tests are cached with the same node key and a separate index for the
coarse C label. A bounded cache may omit new entries and recompute them.
These caches do not alter any rejection criterion.

A real quartet would choose a retained C six-clique and a retained D
six-clique. Thus all cases returning `result 1` prove the theorem.
The execution logs and source hashes are part of the retained receipt.

## 6. Provenance and scope

The discretization approach and the 180/19/seven-generation choices are
inspired by Section 3 of Jaming–Matolcsi–Móra–Szöllősi–Weiner,
[A generalized Pauli problem and an infinite family of MUB-triplets in
dimension 6](https://arxiv.org/abs/0902.0882). This implementation is a new
integer replay; the orthogonality table, symmetry tiling, and all rejection
bounds are verified here. The new matrix conclusion does not take their
Fourier exclusion theorem as an input.

Software dependencies are Python, python-flint/Arb, and a C++17 compiler.
The proof depends on the stated arithmetic and exhaustive program execution,
as with the project's other computer-assisted certificates. It does not
prove a seed lifting estimate or enable a seed-distance prune by itself.

**Positive controls.** The separate `verify_controls.py` compiles with
undefined-behavior checks and verifies 136 feasible cases per parameter grid (408 total) through the actual
rejection code. At a=b=0, the chirp columns

    C_(k,j) = exp(2πi(k²+2jk)/12)/√6

give an exact MUB triple with I,F₆. Their orthogonality follows from the
Fourier factors; Fourier unbiasedness follows by expanding the squared
Gauss sum and using zero nontrivial cyclic autocorrelations. All six
columns must survive every subdivision level, in both orientations.
The five nonconstant Fourier quotients likewise supply exact orthogonality
controls at all eight levels. These checks supplement the proof; they
do not replace the exhaustive exclusion replay.


**Independent reduction audit.** `audit.py` verifies all 216 affine-phase
identities implementing the six symmetry generators, the physical matrix
convention, the interval endpoints at all three parameter resolutions,
the exact closed-cell refinements, and the transpose/rounding arithmetic
bounds. Its checks are separate from the exhaustive search.

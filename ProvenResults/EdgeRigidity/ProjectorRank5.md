# Three-row projector rank is five on every non-Tao, zero3-free Hadamard

**Statement.** If H is not Tao and has no zero 3-minor, then for every three-row selection S the six centered qutrit projectors span a real space of dimension exactly 5. Section 1 proves the sharpened Fourier-block alternative (a 3-by-3 Hadamard block forces a zero 3-minor or Tao). Section 4 gives an exact extendible carrier on which no three-row projector normal is singular.

**Status.** Analytic proof with exhaustive exact finite checks (81 cases) and exact controls. Unconditional. Rank 5 holds on every quartet edge (quartet corollary + Tao exclusion).

**Dependencies.** [OneBinaryMatching.md](OneBinaryMatching.md), Section 1 (projector lemma). Section 1 overlaps with the active [FourierBlockClassification.md](../FourierBlocks/FourierBlockClassification.md), which it reproves in the form needed here. The reduction in Section 1 cites the classification supplement [supp_body.tex](../../ClassificationPaper/source/supp_body.tex). Quartet use: [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md), [Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md).

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/PROJECTOR_RANK5.md`, `verify_projector_rank5.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# Exact three-row projector rank on the quartet domain

9 September 2026.

**Theorem.** Let H be a physical order-six Hadamard, and let F(H,S) be the
six centered qutrit projectors obtained by restricting its columns to any
three rows S, normalized as in Section1 of ONE_BINARY_MATCHING.md. If H is
not Tao and has no zero ordinary 3-minor, then

    dim_R span F(H,S)=5                                    (1)

for EVERY S. Thus (1) holds on every actual quartet edge, including ordinary
zero2 loci and failed preferred product frames. It is not a generic-rank claim.

Equivalently, a rank at most four for even one such row selection forces
H to be Tao or to have a zero3. Both alternatives have accepted quartet
exclusions. The result does not force such a rank drop on a general triangle.

## 1. Sharpening the classification's Fourier-block alternative

**Theorem.** An order-six Hadamard containing an order-three Hadamard
submatrix either has a zero ordinary 3-minor or is equivalent to Tao.

This strengthens the classification's stated conclusion "Karlsson or Tao"
on this particular block locus. It does NOT exclude general Karlsson matrices.
We use the explicit calculation in Supplemental Section `sec:fourierblock`
of the [classification source](../../ClassificationPaper/source/supp_body.tex),
not an assumed all-parameter Karlsson nonextension theorem.

### Continuous branches

Complementary Gram identities make all four blocks Hadamard. The order-three
Fourier normalization, using only compatible row/column monomials, is

    H=[[F, D_v F], [F D_w, -F D_w F* D_v F/3]],
    F_jk=omega^(jk), omega^2+omega+1=0,
    v=(1,p,q), w=(1,r,t), |p|=|q|=|r|=|t|=1.             (2)

Put vhat_k=sum_l v_l omega^(kl), A_k=vhat_k conjugate(vhat_(k-1)),
and alpha=(1/r,r/t,t), with all indices modulo three. The last block is
flat if and only if alpha*A=0 for cyclic convolution. Its Fourier transform
is alphahat_j Ahat_j=0, and Ahat_0=0 identically. Only

    alphahat_1 Ahat_1=0,   alphahat_2 Ahat_2=0             (3)

remain. The normalizations and identities are independently checked in the
rational function field Q(omega)(p,q,r,t) by projector_rank5.py.

If both nonconstant Ahat coefficients vanish, then all A_k vanish, so at
most one vhat_k is nonzero. Hence v is a Fourier row. A permutation of the
right column triple changes (2) to [[F,F],[C,-C]]. Two columns coincide on
the top three rows, giving a zero3 directly.

If both nonconstant alphahat coefficients vanish, alpha is constant and
its product is one. Thus w is a Fourier row. A bottom-row permutation gives
[[F,B],[F,-B]], again with a zero3 directly. These arguments cover their
intersection as well; no division by a Fourier coefficient was used.

### Mixed branches: an exhaustive finite check

Otherwise (3) gives one mixed allocation. Up to order, the nonconstant
Ahat coefficients are

    3(q+omega/p+omega^2 p/q),
    3(p+omega q/p+omega^2/q).

Each parenthesis is a sum of three unit numbers of product one. If it is
zero, those numbers must be the three cubic roots, up to a rotation whose
cube is one. Therefore p and q are cubic roots. The identical argument for
alphahat forces r and t to be cubic roots. This covers both mixed allocations.

It remains to check only 3^4=81 quadruples in (2), not a sampled phase grid.
Exact arithmetic gives:

| Cases | Outcome |
|---:|---|
| 18 | The last block has a non-unimodular entry: not physical. |
| 45 | A zero3, in the already described pure branches. |
| 18 | Exact monomial equivalence to Tao. |

For each of the last18 matrices, the verifier constructs and checks explicit
row/column permutations and dephasing factors against the fixed Tao matrix.
The witnesses are pinned in `data/expected_results.json`. It also independently checks
that their top-three-row balanced first moment has squared modulus9, whereas
accepted balanced first moments vanish on every physical triangle edge.
Thus none of these18 matrices is an unowned triplet endpoint.

The continuous pure branches and both finite mixed allocations exhaust (3).
This proves the sharpened Fourier-block theorem.

## 2. Why rank four would produce such a block

Assume H has no zero3. The independent projector lemma in Section1 of
[OneBinaryMatching.md](OneBinaryMatching.md) proves that h is4 or5 and,
when h=4, gives a balanced sign vector e in the traceless projector kernel.
This lemma does not use the binary-matching theorem or the present result.

For the unit qutrit columns v_i, it gives

    sum_(e_i=+1) v_i v_i* = sum_(e_i=-1) v_i v_i* = I3,

because the total is2I3. Each sum has exactly three unit vectors; hence
each is an orthonormal basis. The corresponding3-by3 submatrix of the phase
Hadamard H is an order-three Hadamard block. Section1 therefore gives a
zero3 or Tao. The former contradicts the hypothesis, and excluding Tao leaves
h=5. This proves (1), uniformly in the chosen three rows.

## 3. Joint and product-coordinate consequences

For a hypothetical zero3-free physical triangle, every edge is non-Tao by
the Tao triangle exclusion ([Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md)) (also consistent with the balanced theorem).
For any common three-row selection on two outgoing normalized bases A,B,
their centered-projector cross Gram matrix therefore has

    rank C >= 5+5-6 = 4.                                 (4)

This uses the SAME physical row partition and the real six-dimensional
space of zero-diagonal Hermitian3-by3 matrices. A binary phase matching
would instead give C_ij=Re(p_i q_j)/3, of rank at most2. This is a shorter
proof of the one-binary exclusion. There is no circular dependency: the
present proof used only its preliminary single-Hadamard projector lemma.

*Remark (archive reconstruction coordinates; not re-verified here).* On a guarded
four-seed product frame, the corresponding six-row feature
matrix has columns

    (z,z^-1,w,w^-1,w/z,z/w)^T,
    (z,w)=(1,1),(a,c),(b,d),(x1,y1),(x2,y2),(x3,y3).

The x_j are the actual coordinate-cubic roots and the y_j are their
companion values, with quadratic product u and the matched completion in
RECONSTRUCTION.md. Its rank is exactly5 on the stated domain: its only
right-kernel direction is the constant vector, and its left kernel is one
dimensional. This gives a fully owned rank boundary for THIS small feature
map, not for Gamma3 or the triangle obstruction K. Both matched sheets and
all permitted row selections remain covered; no new guard is imposed.

**Open:** force a rank drop on some actual triangle edge/row selection, or
otherwise force a binary matching or antipodal edge. Equations (1)--(4)
are necessary structure, not proof that the rank-five triangle locus is empty.
No surviving triangle-nullity type is newly claimed excluded in full.

## 4. A prescribed carrier need not have a singular projector normal

**Refuted statement:** if H admits a full mate, then some three-row
selection of H or its transpose has a singular centered-projector normal.
Here the normal is the unique, up to real scale, nonzero zero-diagonal
Hermitian3-by3 matrix N satisfying v_j* N v_j=0 for all six restricted
columns. This is a DIFFERENT matrix from the six-column feature map.

Use the displayed H_X formula in [HXNonbinaryCounterexample.md](HXNonbinaryCounterexample.md),
but now with the different exact parameters

    a=i, b=(3-4i)/5, c=(-57-176i)/185,
    d=(2-12i+(6+i)sqrt(33))/37.

**Certified computation:** the verifier checks physicality, all400 nonzero
three-minors, rank5 on all20 row selections in BOTH orientations, and
nonzero determinants of all40 corresponding normals over Q(i,sqrt(33)).
It obtains each complex normal line by exact nullspace calculation, checks
the kernel equation, and arranges its coefficients as a zero-diagonal N.
The line contains a Hermitian representative because the feature equations
are closed under analytic conjugation. Singularity is independent of the
nonzero scalar used to represent that line.

Full mate existence is checked independently at this same carrier, not
inferred from a numerical search or an all-mates family claim. For all
three roots q of q^3=ac put

    u(q)=(1,a/q,q), v(q)=(1,d/q,bq/a),
    A_j=sum_i u_i/H[i,j],
    B_j=sum_i v_i/H[i+3,j],   i=0,1,2.

All entries are phases. Exact reduction modulo q^3-ac checks

    |A_j|^2+|B_j|^2=6,
    X_j conjugate(X_k)=X_k conjugate(X_j), X_j=A_j conjugate(B_j).

For each q choose z with z^2=-X_j/conjugate(X_j) at any nonzero pivot.
Both square roots have modulus one. If all pivots vanish, choose any unit z.
These identities imply |A_j+z B_j|^2=6 simultaneously for all j.
The six columns (u(q), plus-or-minus z v(q)) are mutually orthogonal, since
their exact overlap factors as

    (1+z'/z)(1+q'/q+q/q').

Distinct q roots kill the second factor; opposite signs at one root kill
the first. Thus this really is a complete physical mate. The verifier
checks all six modulus identities, all15 cross-pivot identities and the
overlap factorization, retaining the all-zero-pivot case.

Row phases conjugate N by a diagonal unitary; row permutations conjugate
it by a permutation; column monomials only permute the six projectors.
Consequently the40 nonzero determinants also cover every monomial frame,
including transposed frames, of this prescribed H.

This counterexample is NOT a counterexample to antipodal forcing on SOME
triangle edge: its explicitly constructed mate has antipodal column pairs.
It rules out forcing a singular normal on whichever edge was originally
chosen as H. The next constraint must couple actual edges, or quantify over
them; a change of frame on that prescribed edge cannot repair this shortcut.

## Verification

**Certified computation:** projector_rank5.py (sub-check `projector_rank5`) checks nine universal
modulus/autocorrelation identities, three convolution identities, all81
finite cases with explicit Tao-equivalence witnesses, and all400 Tao
three-minors. An exact non-Tao known triplet carrier over Q(i,sqrt(33)) has
all400 three-minors nonzero and rank5 for all20 row selections. That last
control is not the proof of the universal claim; Sections1--2 supply it.
No floating-point or unlifted modular result is used.

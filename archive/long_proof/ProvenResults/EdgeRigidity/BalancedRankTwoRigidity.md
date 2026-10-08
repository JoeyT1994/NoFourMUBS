# Rank-two boundary of the balanced product matrix

**Statement.** For a non-Tao order-six phase Hadamard H and any row labelling, the 4-by-6 matrix V of entrywise products of the rows in the triples 123,145,246,356 has rank at most three, and rank at most two forces an antipodal row or column pair. Hence all thirty such matrices, for H and H^T, have rank exactly three on every quartet edge.

**Status.** Analytic proof with exact controls. **Conditional** on the active balanced theorem, which is itself conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md).

**Dependencies.** [BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md) and [BalancedAllPartitionsExtension.md](../BalancedProducts/BalancedAllPartitionsExtension.md) (balanced first moments b_I=0 for non-Tao, rows and columns; conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md)); [CubicPairRigidity.md](CubicPairRigidity.md). Quartet use: [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md), [Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md).

**Provenance.** `NoFourMUBSArchive/03_algebraic/global_rigidity_2026_09_08/BALANCED_RANK_TWO_RIGIDITY.md`, `verify_balanced_rank_two.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# The rank-two boundary of the balanced product matrix

**Theorem.** Let H be a non-Tao order-six phase Hadamard. For any relabelling
of its rows, form the four-by-six matrix

    V = [ H_1 H_2 H_3 ; H_1 H_4 H_5 ; H_2 H_4 H_6 ; H_3 H_5 H_6 ],

where products are entrywise. Then rank V is at most three. If rank V is at
most two, H has an antipodal row or column pair. Consequently every such
matrix V, on H and its transpose, has rank exactly three on a quartet edge.
There are thirty distinct row-labelled patterns in either orientation.

This classifies a small rank boundary globally. It does **not** force an
actual triangle onto that boundary, exclude a complete matching-count case,
or prove no-four-MUBs. The full campaign goal remains **Open**.

## 1. Balanced isotropy

Put s_j=product_i H_ij, choose either square root t_j of s_j, and set
W_ij=V_ij/t_j. These choices do not affect rank. Every entry of W is a unit
phase and the product of its four entries in each column is one.

The balanced first-moment theorem ([BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md)) gives the diagonal entries of
WW^T as zero. Every off-diagonal entry is an ordinary row-orthogonality
sum: two of the displayed triples have one common row and omit one row.
Thus WW^T=0. A totally isotropic subspace of the nondegenerate symmetric
bilinear space C^6 has dimension at most three, proving rank W<=3.

The six products of different rows of W are, in order,

    W_1 W_2=H_1/H_6,  W_1 W_3=H_2/H_5,  W_1 W_4=H_3/H_4,
    W_2 W_3=H_4/H_3,  W_2 W_4=H_5/H_2,  W_3 W_4=H_6/H_1.       (1)

All square roots have disappeared from these identities. The balanced input
uses the global classification/product-reconstruction proof of [BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md),
which rests on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md); the
remaining argument is general Hadamard linear algebra. It introduces no
new guard or localization, and is not a new mate-specific seed equation.

## 2. A shared-quotient lemma

**Theorem.** If the six rows of an order-six Hadamard can be paired so that
all three oriented quotients are the same vector x, up to scalar phases,
then it has an antipodal row or column pair.

Rephase and reorder its rows to write them as F and F diag(x), where F has
three rows. Let U=range(F*) and D=diag(conjugate(x)). Orthogonality and
unitarity give D U=U-perp, hence D U-perp=U. Therefore the Hermitian unitary
Q=2P_U-I anticommutes with D. In the coordinate basis,

    (d_j+d_k) Q_jk=0.

Q pairs the eigenspaces of D at lambda and -lambda bijectively. Their
equal multiplicities partition three. If there is only one opposite pair,
x itself is binary and supplies an antipodal row pair. Otherwise the
partition is 2+1 or 1+1+1, so there is an opposite pair with multiplicity
one on each side, at coordinate indices p,q. On these coordinates Q is

    [ 0 z ; conjugate(z) 0 ],       |z|=1.

Every vector in U has the same coordinate ratio there. Consequently the
column ratio H_:p/H_:q is constant on the three F rows, and its negative
on the other three rows, since x_p/x_q=-1. This is an antipodal column pair.
Repeated eigenvalues are included in the multiplicity partition argument.

## 3. Exhausting rank at most two

Rows are considered up to nonzero scalar multiples. All such scalars here
are unit phases because the rows are unimodular.

### One projective row

Write W_ij=lambda_i r_j. The column-product identity makes r_j^4 constant.
Hence every product of two rows is a scalar times a binary vector r^2.
Equation (1) and ordinary row orthogonality give three occurrences of each
sign, hence an antipodal pair.

### Exactly two projective rows

Write the rows as scalar multiples of independent unimodular vectors r,s.
If their multiplicities are two and two, the column-product identity makes
(r_j s_j)^2 constant. A product of rows from different classes is binary;
every such product is an actual quotient in (1), giving an antipodal pair.

Otherwise the multiplicities are three and one. After exchanging r,s,
the column-product identity gives s_j=kappa r_j^-3. Each of the first three
quotients in (1) is therefore a scalar times r^2 or r^-2. Reverse the
orientation of the appropriate disjoint row pairs and absorb their scalar
phases. The shared-quotient lemma applies. This covers all four possible
locations of the singleton row.

### At least three projective rows

Choose independent rows r,s and another row alpha r+beta s, with
alpha beta nonzero. Unimodularity gives

    2 Re(alpha conjugate(beta) r_j/s_j)=1-|alpha|^2-|beta|^2.

A nontrivial real line intersects the unit circle in at most two points.
Independence forces exactly two ratio values. Thus the columns of W have
the form r_j A_g for two fixed independent vectors A_1,A_2 in C^4, with
g determined by a partition of the six columns. Each A_g has unit entries.

The column-product condition makes r_j^4 constant within each group. Also

    0=WW^T=sum_g (sum_(j in g) r_j^2) A_g A_g^T.

The two symmetric rank-one matrices A_g A_g^T are linearly independent:
apply a linear functional that vanishes on one A_g but not the other to
both sides. Hence each sum r_j^2 vanishes separately. In each group the
squares take two opposite values with equal multiplicities. Both group
sizes are positive and even, so their sizes are two and four.

In the group of four, choose two columns whose r_j^2 values agree. Their
W columns differ by a sign. Equation (1) then says that the corresponding
column quotient of H is constant on each of the three disjoint row pairs.
It has the form

    (z_1,z_2,z_3,z_3,z_2,z_1),       z_1+z_2+z_3=0, |z_i|=1.

The three values are a rotated cubic-root triple. The accepted
[actual three-valued quotient theorem](CubicPairRigidity.md)
forces Tao or an antipodal pair. Tao was excluded in the hypothesis.
This completes every rank-one and rank-two case, with no genericity premise.

## Verification and remaining obligation

**Refuted statement:** rank three on a physical no-zero3 carrier makes every
coefficient of the unique row relation nonzero. The already certified
[partial-three-corner carrier](PartialThreeCornerCounterexample.md),
with seeds (omega,omega^2,i,i) and all thirteen guards, provides a counterexample.
On its transpose, use the triples (in one-based indices)

    123, 145, 256, 346.

The last two product rows are identical. The restriction to the first three
columns has rank three, so the full matrix has rank three and its relation
is exactly (0,0,1,-1), up to scale. The equality holds on all three roots
of the exact vertical cubic, not just at a numerical reconstruction.
All400 ordinary three-minors of the carrier are nonzero. No full mate is
asserted for this control. Coefficient-zero cases therefore remain in any
rank-three analysis; they must not be removed by a new localization.

**Certified computation:** `balanced_rank_two.py` (sub-check `balanced_rank_two`) checks all thirty
patterns and their quotient exponents; the singleton, binary and column
allocation cases; the reflection identity; and exact physical rank controls.
It also runs the short cubic-pair endpoint verifier on which Section 3 relies.
The coefficient-zero control replays the exact guarded carrier and verifies
the two identical rows modulo its cubic, together with the rank-three minor.
The continuous rank and spectral arguments are the written proof above,
not a claim of formal proof-assistant verification.

**Open:** force rank<=2 for one such pattern on one actual edge of an
arbitrary physical triangle (or, sufficiently, a hypothetical quartet).
Neither balanced isotropy alone nor checking the three edges separately
proves this coupling. No new independent full-mate equation is asserted.

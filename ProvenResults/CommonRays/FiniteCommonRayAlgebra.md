# Finite common-ray algebra of a pair (I, H)

## Header

**Statement.** Let H be an order-six phase Hadamard (|H_ij|=1, HH†=6I) whose
400 ordinary 3-by-3 minors are all nonzero, and let m(H) be the number of its
zero 2-by-2 minors. Then:

1. the complex Laurent common-unbiased-ray scheme A_H (normalized x_0=1) is a
   finite complete intersection of length 252−2m(H); its projective closure
   in P^5×P^5 has length 252, with exactly 2m(H) reduced points on the
   boundary z_0w_0=0;
2. the 72 explicit spurious solutions with t²+4t+1=0 (never unimodular) are
   distinct; removing them by the canonical Gorenstein quotient leaves an
   algebra B_H of length 180−2m(H) through which every physical common ray
   factors, nonreduced local structure included;
3. m(H)≤45 (Tao attains 45).

Special case (Section 2, the "252-root completeness lemma"): if H is
full-spark, then m=0, there is no point on z_0w_0=0, and the fibre has
length exactly 252.

Section 9 also certifies a physical Hadamard with exactly one zero 2-by-2
minor, all 3-by-3 minors nonzero and no 2-by-2 Hadamard block. So a zero
2-by-2 minor does not force Karlsson (H2) structure.

**Status.**
- Items 1–3 and the full-spark lemma: analytic proofs (Sections 2–6).
  `finite_algebra/verify.py` replays exact finite controls over F_193513 and
  exact characteristic-zero Tao minor counts. The controls are regressions,
  not the proof.
- Section 9: certified interval computation (`finite_algebra/active_control.py`),
  **conditional on the accepted reconstruction inputs**
  ([ASSUMPTIONS.md](../../MinimalConstruction/ASSUMPTIONS.md)). Those inputs
  are what make the enclosed matrix an exact Hadamard.

**Dependencies.**
- Algebra theorem: none beyond linear algebra and Bézout's multihomogeneous
  count. The Varchenko cross-check in Section 5 is not used by the proof.
- Application to quartets (Section 1): every transition in a quartet has all
  3-by-3 minors nonzero. The ingredients are the elementary lemma that a
  zero 3-by-3 minor forces a 3-by-3 Hadamard block
  ([../EdgeRigidity/](../EdgeRigidity/), block/zero-minor equivalence, being
  imported separately), the [Fourier-block classification](../FourierBlocks/FourierBlockClassification.md)
  (block ⇒ Fourier family, transpose, or Tao), and the published quartet
  exclusions for those families (Jaming et al., arXiv:0902.0882;
  Brierley–Weigert, arXiv:0901.4051).
- Section 9: the accepted positive-sheet reconstruction inputs (accepted, not
  proved here).

**Provenance.** Archive `03_algebraic/minor_boundary_finite_algebra_2026_09_06/THEOREM.md`
(Sections 1, 3–7, 9 copied, with links edited), and
`90_replay_library/05_remaining_D2/fixed_carrier_constellations/SCOPED_THEOREMS.md`,
Section 2, "Why 252 isolated roots is complete here" (Section 2 below).
Section 9 was originally certified in the archive's CWT product coordinates
(`physical_control.py`, retained here as a cross-check). The active
certificate `active_control.py` recomputes the same seed in the active
reconstruction. The mathematics is unchanged.

**Relationship of the two imported lemmas.** The full-spark lemma is the m=0
case of the boundary resolution in Section 4. There the boundary is empty
because a full-spark vector with p nonzero coordinates has fewer than p
transform zeros. Section 4 treats the case where only 3-by-3 minors are
assumed nonzero. There 2-by-2 (and, by complementarity, 4-by-4) zero minors
do occur, and each contributes exactly two simple boundary points.

---

## 1. Statement and exact scope

**Theorem.** Let H be an order-six physical phase Hadamard, and suppose
every 3-by-3 minor is nonzero. Let

    m(H) = #{(I,J): |I|=|J|=2, det H[I,J]=0}.

There are 225 choices. Then:

1. The complex Laurent common-ray algebra A_H, normalized by x_0=1,
   is a finite complete-intersection algebra of length 252-2m(H).
2. Its 72 standard nonphysical evaluations are distinct. If I is the
   kernel of evaluation onto those points, the canonical unital quotient
   B_H=A_H/Ann(I) has length r=180-2m(H). Every physical common-ray
   evaluation factors through B_H. Nonreduced points are retained.
3. Define Gamma_3 from the r-dimensional coordinate multiplication
   representation as in Section 7 below. A quartet containing {I,H/sqrt(6)}
   forces rank Gamma_3<=r-12=168-2m(H). More strongly the concatenation
   [Gamma_0 ... Gamma_4] has rank at most r-12.

**Theorem (application to quartets).** Every transition matrix in a
hypothetical quartet has all 3-by-3 minors nonzero (see the header:
zero 3-minor ⇒ F3 block ⇒ Fourier/transposed Fourier/Tao, all excluded from
quartets by the published results). Hence the preceding theorem applies to
every edge of a hypothetical quartet, including edges with zero 2-by-2
minors. Their residual lengths are 180-2m(H), with the rank bounds above.

This exclusion is an explicit external dependency of the application, not
of the algebra theorem.

**Open:** exclusion of the resulting simultaneous physical rank loci. This
is a new finite-domain/rank constraint, not a nonexistence proof. In particular
no parameter-wide list of common rays, rank generators, or strata is claimed.

## 2. Full-spark case: 252 isolated roots are complete

(Imported lemma. Equations written as in its source; for a phase Hadamard
conjugate(H_jk)=1/H_jk, so they are the equations of Section 3.)

Use homogeneous variables `(z,w)` on `P^5 x P^5` and equations

`z_i w_i=z_0 w_0` for `i=1,...,5`,

`(sum_j conjugate(H_jk) z_j)(sum_j H_jk w_j)=6 z_0 w_0`
for `k=0,...,4`. The sixth column equation follows from the Hadamard identity.
All ten equations have bidegree `(1,1)`.

There is no point on `z_0 w_0=0`: if supports of `z,w` have sizes `p,q`,
they are disjoint, hence `p+q<=6`. Full spark implies the first transformed
vector has at most `p-1` zeros and the second at most `q-1` zeros. The six
vanishing products would require at least six zeros between them, whereas
`p+q-2<=4`. This is impossible. A projective algebraic set contained in an
affine chart is finite. The proper multihomogeneous intersection consequently
has length the coefficient of `x^5 y^5` in `(x+y)^10`, namely 252.

(In the source this lemma certified that 252 interval-isolated roots exhaust
a fibre. Sections 3–4 below extend it to H whose 2-by-2 minors may vanish.)

## 3. Keep the equations projective

Use two projective vectors z,w in P^5 and put tau=z_0*w_0. The ten
equations are

    z_i*w_i-tau=0,                              i=1,...,5,
    l_j(z)*g_j(w)-6*tau=0,                      j=0,...,4,
    l_j(z)=sum_i z_i/H_ij,   g_j(w)=sum_i H_ij*w_i.

These are exactly the common-ray equations in bidegree (1,1). The missing
sixth transform equation follows from sum_j l_j*g_j=6 sum_i z_i*w_i.
At tau!=0 one can set z_0=w_0=1; then w_i=1/z_i and the equations give the
original Laurent common-ray algebra. Every physical common ray lies in this
open set. In particular, tau=0 is an explicitly nonphysical boundary.

(In the source, H was the output of a guarded product reconstruction. The
argument below uses only that H is a phase Hadamard with nonzero 3-by-3
minors, and is stated for every such H.)

We will prove that the full projective scheme is finite of length 252
and that exactly 2m(H) of its points are on tau=0, each simple. This
identifies the loss from the affine length rather than assuming the old
252-monomial basis remains valid.

## 4. Classify and resolve every projective boundary point

Take the twelve covectors e_i and the columns of H#, where H# denotes
entrywise reciprocation. The type-II identity gives H(H#)^T=(H#)H^T=6I.

### 4.1 Every five covectors are independent

Suppose a set has c coordinate covectors and q=5-c transform covectors.
Eliminating the coordinate pivots leaves a (6-c)-by-q submatrix of H#.
For (c,q)=(2,3) or (3,2), full column rank follows from nonzero
3-by-3 minors. Those minors of H# are nonzero by Jacobi complementarity.
For (c,q)=(1,4), a dependence would give a combination of four columns
of H# supported in one coordinate. Applying (H#)^(-1)=H^T/6 would
force two entries of a column of that inverse to be zero, impossible.
The cases (4,1), (0,5), and (5,0) follow from nonzero entries and
invertibility. Every smaller set is independent by extension to five.
The same argument applies with H in place of H#.

A six-set can be dependent only with a 4+2 or 2+4 split: the 3+3
determinant and the 1+5/5+1 determinants are nonzero by hypothesis
and complementarity. Any dependent six-set has rank five. Every seven-set
contains an independent six-set: choose a 3+3 split if available, a
1+5/5+1 split otherwise, or six covectors of one kind.

### 4.2 Every boundary point has complementary supports of sizes two and four

At tau=0 let I=supp(z), K=supp(w), of sizes p,q. Coordinate equations
make them disjoint, so p+q<=6. A vector supported on p coordinates
cannot annihilate more than p transform covectors: together with its
6-p vanishing coordinates this would annihilate seven covectors spanning
the six-dimensional dual space. If p is odd, it cannot annihilate p either, because the
corresponding p-by-p minor is nonzero. Apply this to z,H# and to w,H.

All six transform products vanish. Their two sets of zero coordinates
therefore cover all six positions. The preceding bounds force p+q=6,
p and q even, and exactly p zeros of l and q zeros of g, disjoint.
Thus (p,q) is either (2,4) or (4,2), and K=I^c.

Write J for the zero positions of l, so |J|=p and J^c is the zero set
of g. The boundary point is characterized by

    (H#[I,J])^T z_I=0,       (H[I^c,J^c])^T w_(I^c)=0.

Both matrices have nullity one, by the five-covector lemma and Jacobi
complementarity. Their nullvectors have all coordinates nonzero: an
extra coordinate zero would annihilate seven covectors. No further l or
g coordinate vanishes, for the same reason. Hence each such zero minor
constructs exactly one boundary point and the displayed nullvectors
give its coordinates. There are no unspecified boundary components.

At p=2, a zero minor of H# is equivalent to the same zero 2-minor of H,
since entrywise reciprocation changes a 2-determinant by a nonzero factor.
At p=4, Jacobi complementarity identifies its zeros with the complementary
2-minors of H. There are therefore exactly 2m(H) distinct boundary points.

### 4.3 All these boundary points are simple

Linearize at one such point, and write dot(tau) for the variation of tau.
The six coordinate-product equations give

    dot(w_i)=dot(tau)/z_i for i in I,
    dot(z_i)=dot(tau)/w_i for i in I^c.

The six transform-product equations give

    dot(l_j)=6 dot(tau)/g_j for j in J,
    dot(g_j)=6 dot(tau)/l_j for j in J^c.

The identity dot(l)^T g=6 dot(z)^T w now has left side
6p dot(tau) and right side 6q dot(tau). Since p-q=+2 or -2,
dot(tau)=0. Thus dot(z) stays supported on I and annihilates J;
dot(w) stays supported on I^c and annihilates J^c. The two nullities
are one, so these variations are only the two projective scalings.
The projective tangent space is zero. The ten-equation Jacobian in any
valid affine chart has rank ten; each boundary point is reduced and isolated.

### 4.4 Finiteness and exact length, with no generic-fibre extrapolation

If the projective zero scheme had a positive-dimensional irreducible
component, it could not meet any boundary point, since each is isolated.
It would lie entirely in tau!=0, an affine chart. A positive-dimensional
projective variety cannot be affine. This proves finiteness.

Ten (1,1) divisors in P^5 x P^5 now meet in the expected codimension ten.
Their intersection length, including all local multiplicities, is

    coefficient of alpha^5 beta^5 in (alpha+beta)^10 = binomial(10,5) = 252.

This is the same projective complete-intersection argument as in the
full-spark case (Section 2), now with every boundary point explicitly
constructed and proved simple.
Removing those 2m(H) reduced points leaves length(A_H)=252-2m(H).
The finite scheme is a local complete intersection in a smooth ambient
space; in particular its affine open algebra A_H is Gorenstein.

This proof works algebraically in characteristic different from two and
three for a type-II matrix satisfying the same minor hypotheses. Physical
and nonphysical labels below concern characteristic zero only.

For reference m(H)<=45: a ratio between two physical rows can occur at
most twice, since three occurrences give a rank-one 2-by-3 block and a
singular 3-by-3 minor. Each of the fifteen row pairs supplies at most
three zero 2-minors. This bound is not needed for the boundary resolution.

## 5. Logarithmic-gradient cross-check (not an external theorem dependency)

Work over C with H fixed. Write H# for entrywise reciprocation, so
H(H#)^T=(H#)H^T=6I. For homogeneous coordinates x in P^5 put

    l_j(x)=sum_i x_i/H_ij,
    g_j(x)=sum_i H_ij/x_i,
    F_j(x)=l_j(x)*g_j(x)-6.

All six F_j sum to zero. Thus five define the usual Laurent common-ray
algebra. On a solution every l_j is a unit with inverse g_j/6. Localizing
also at the l_j loses no scheme-theoretic solution.

Let U be P^5 with the twelve hyperplanes x_i=0 and l_j=0 removed. Define
the single-valued logarithmic differential (not a choice of logarithm)

    omega = d log(product_j l_j / product_i x_i),
    R_i = sum_j (1/H_ij)/l_j - 1/x_i.

In column-vector notation, exactly

    F = -diag(l) H^T R,
    R = -(1/6) H# diag(1/l) F.

Also sum_i x_i R_i=0. After setting x_0=1, five gradient components
therefore generate the same localized ideal as the five common-ray
equations. This is an equality of ideals, not just of physical zero sets.
It follows directly from the type-II identity; no generic
rank assumption, root simplicity or total nonsingularity is introduced.

Inclusion-exclusion using the ranks proved in Section 4 gives

    chi(U) = sum_(k=0)^5 (-1)^k binomial(12,k)(6-k) + 2m(H)
           = -252 + 2m(H).

The twelve-hyperplane arrangement has only normal crossings and exactly
sixfold points. Assigning weights -1 to coordinates and +1 to transforms
gives nonzero dense-edge weights +/-1 and +/-2. Thus the same length also
follows from the unbalanced-arrangement theorem. The independent literature
cross-check is Varchenko,
*Critical Set of the Master Function and Characteristic Variety of the
Associated Gauss-Manin Differential Equations*, Lemma 2.8 and Section 2.12:
[author/journal text](https://armj.math.stonybrook.edu/html-articles/Files-2015-2024/15-20/),
[arXiv:1410.2438](https://arxiv.org/abs/1410.2438).
The main proof in Sections 3--4 does not depend on this external theorem.

## 6. Remove the same 72 nonphysical evaluations safely

For t^2+4t+1=0 define, for column j and coordinate k,

    z_i=(H_ij/H_0j)*t^(delta_ik-delta_0k).

The two choices of t, six columns and six coordinates give 72 solutions.
The direct verification uses (5+t)(5+1/t)=6 and
(t-1)(1/t-1)=6. It requires only the type-II identity, not nonzero
2-by-2 minors. Neither value of t has modulus one, so all are nonphysical.

They remain distinct here. A collision from different columns would
make those columns proportional on the at least four unaffected rows;
this forces a singular 3-by-3 minor. Within one column the exceptional
coordinate and the value of t distinguish the normalized vectors.

Evaluation A_H -> C^72 is consequently onto. If I is its kernel, the
Gorenstein perfect pairing identifies Ann(I) with the dual of A_H/I,
so dim Ann(I)=72. The unital quotient B_H=A_H/Ann(I) has the asserted
length. At a physical point I localizes to the whole local algebra;
Ann(I) localizes to zero. Hence B_H retains that entire physical local
algebra, not merely its reduced evaluation.

## 7. The rank constraint on B_H

Let T_0=I,T_1,...,T_5 be multiplication by x_0=1,x_1,...,x_5 in B_H.
All are invertible. With r=dim B_H, form the r-by-r matrix whose entries
are commuting r-by-r matrices

    L_ab = delta_ab I_r + sum_(i=1)^5 (T_i)_ab T_i^(-1),
    det_r(z I_r+L) = sum_(j=0)^r Gamma_j z^j.

This is the definition of [RankSpectralConditions.md](RankSpectralConditions.md),
now justified on the minor boundary with r=180-2m(H). At a physical common
ray x, evaluation turns L into I_r+sum_i x_i^(-1) T_i. If x belongs to an
additional orthonormal common basis, the other five basis rays give five
independent left zero eigenvectors, so the scalar determinant has a factor
z^5. Thus the evaluation at x annihilates Gamma_0,...,Gamma_4.

A quartet has twelve distinct such physical rays. Their evaluations are
independent (separate the points by one generic linear combination of the
coordinate multiplications). Therefore

    rank [Gamma_0 ... Gamma_4] <= 168-2m(H),
    rank Gamma_3 <= 168-2m(H).

This imports only the elementary evaluation argument of
[RankSpectralConditions.md](RankSpectralConditions.md), Sections 2–4, not its
original total-nonsingularity hypothesis. The finite-algebra proof above
is what licenses the extended domain.

## 8. What is and is not established

**Theorem:** every transition of a hypothetical quartet has a finite
common-ray algebra and the rank constraint above. No common-ray problem
can become infinite merely because 2-by-2 minors vanish.

**Open:** calculate and exclude the shared physical rank loci. The integer
m(H), hence the fibre length, changes when additional minors vanish.
Pointwise finiteness is NOT finite flatness over a parameter neighbourhood
crossing those loci. The old 252-coordinate basis/pencil cannot be used
there without a separate construction. No explicit global multiplication
tables, efficient algorithm, or solved carrier-stratum inventory is claimed.

**Certified computation:** `finite_algebra/verify.py` checks the complete
finite hyperplane incidence, every boundary point and its rank-ten
Jacobian for the frozen modular controls, plus negative and
characteristic-zero Tao controls. It does not compute the Gamma
matrices or prove physical nonextension at the modular controls. The
modular controls are not asserted to be reductions of physical
characteristic-zero carriers. The parameter-wide claim rests on the
written boundary-resolution proof.

## 9. A physical control on the single-minor boundary

**Theorem (certified physical control).** Take the exact rational-phase seed

    (a,b,c,d)=(1,(-24-7i)/25,(-8-15i)/17,-i).

Both matched sheets of the reconstruction are physical. Each has
exactly one zero order-two minor, in rows {0,1}, columns {0,1}; all 400
order-three minors are nonzero. Neither carrier is H2-reducible. Therefore
both have complex torus length 250 and canonical residual length 178 by
the theorem above. No assertion about existence of a third basis or
quartet exclusion at this seed is made.

**Certified computation (active).** `finite_algebra/active_control.py`
evaluates the active reconstruction H_±(a,b,c,d) of
[RECONSTRUCTION.md](../../MinimalConstruction/RECONSTRUCTION.md) in 256-bit
ball arithmetic at this exact seed. It certifies R>0 and every branch and
divisor decision in the explicit formulas, so the balls enclose the exact
entries. The accepted input that H_+ (and the opposite matched pairing) is
Hadamard on R>0 then gives actual phase Hadamards. The certificate bounds
every order-two minor except the exact identity 1*1-1*1=0 above 1/50 in
modulus, every order-three minor above 1/2, and every order-two permanent
above 1/50. The permanent test excludes every 2-by-2 Hadamard block, hence
Karlsson membership.

**Cross-check (archive coordinates).** `finite_algebra/physical_control.py`
replays the original certificate. It accepts frozen dyadic centres in the
archive's CWT product coordinates by strict complex-rectangle (Krawczyk)
contraction, and the same three bounds hold. Its physicality relied on the
archive's CWT/Omega reconstruction theorem, which is not an active accepted
input.

**Refuted statement:** a Hadamard with a zero order-two minor must be
Karlsson/H2-reducible. Either sheet of this seed is a counterexample.

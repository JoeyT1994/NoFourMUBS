# Cubic incidence bound C*C <= 18I

**Statement.** For every order-six phase Hadamard H whose twenty balanced first characters vanish (every non-Tao H, by the balanced theorem), the entrywise cube C satisfies 0<=C*C<=18I; hence 6<=FP3<=18 and 28/3<=FP2<=12 for A_m=H^(m)/sqrt6. If moreover H has no zero 3-minor, rank C>=3 and FP3<18, FP2<12.

**Status.** Analytic proof with exact checks. Sections 1-2 and 4 are unconditional given vanishing balanced characters; the application to "every non-Tao H" is **conditional** on the active balanced theorem, itself conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md).

**Dependencies.** [BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md)/[BalancedAllPartitionsExtension.md](../BalancedProducts/BalancedAllPartitionsExtension.md) (balanced characters; conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md)). FP3=(9/2)FP2-36 is the balanced case of the identity in [FramePotential.md](../SpectralMoments/FramePotential.md) (Phi_m=36 FP_m). Section 5 uses [FourierBlockClassification.md](../FourierBlocks/FourierBlockClassification.md) plus the antipodal pair of N, N^T (see [BlockZero3Equivalence.md](BlockZero3Equivalence.md)). Quartet use: [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md), [Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md). Section 6 refers to the covariance framework (N_full, J) of [CovarianceContraction.md](../Triples/CovarianceContraction.md); only its pinching identity is checked.

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/surviving_counts/cubic_incidence/PROOF.md`, `calculate.py` (the hash-authenticating `verify.py` wrapper is replaced by the local verifier).

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# Cubic incidence bound on every non-Tao carrier

**Theorem, conditional only on the balanced first-character input ([BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md)).**
Let H be an order-six phase Hadamard, H H*=6I, with all twenty balanced
first characters zero. Write C=H entrywise cubed. Then

    0 <= C* C <= 18 I,       0 <= C C* <= 18 I.                 (1)

Consequently, for A_m=H entrywise-to-power-m divided by sqrt(6),

    6 <= tr((A_3* A_3)^2) <= 18,
    28/3 <= tr((A_2* A_2)^2) <= 12.                           (2)

The second line uses the separately proved balanced norm identity
FP_3=(9/2)FP_2-36. All these bounds hold on every actual transition in
an MU triangle or quartet: the accepted balanced owner covers every
non-Tao class, and the accepted Tao owner excludes Tao from a triangle.
No cube-spectrum pairing theorem is assumed or proved here. No retained
triangle, full36 pattern, all-M5 extension, or quartet is excluded by (1).

## 1. One fixed positive certificate

Index the twenty rows of Y by triples E subset {0,...,5}, and put

    Y[E,j] = product_(i in E) H[i,j],       G=Y Y*.

G has diagonal 6. If |E intersect F|=2, G[E,F]=0 by row orthogonality.
If |E intersect F|=0, it is a balanced first character and also zero.
No other zero is asserted. Let V[i,E] be +1 for i in E and -1 otherwise.
The fixed real matrix T=(1/2)V^T V is positive semidefinite, with

    T[E,F]=2|E intersect F|-3.

Entry by entry, using only the stated zeros and diagonals,

    T entrywise-times G = 24 I_20 - G.                        (3)

The Schur product theorem proves the right hand side positive. More
explicitly, if D_i=diag(V[i,E]),

    24 I_20 - G = (1/2) sum_(i=0)^5 D_i G D_i.                (4)

Thus Y*Y<=24I_6. This certificate has no variable denominator, eigenvalue
simplicity hypothesis, selected-minor chart, or rank restriction.

## 2. Newton's exact six-by-six compression

For distinct columns j,k put z_i=conjugate(H[i,j]) H[i,k]. Column
orthogonality gives p_1(z)=0. Newton's identity is e_3(z)=p_3(z)/3.
Therefore the off-diagonal entries of Y*Y equal those of C*C/3.
The diagonal entries are respectively20 and6. Hence

    Y*Y=18 I_6+(1/3)C*C.                                    (5)

Combining (3) and (5) proves (1). The two orientations have the same
singular values; transpose or equality of the nonzero Gram spectra proves
the second inequality in (1). No independent relabelling of physical edges
is used. Since tr(C*C)=36, the normalized eigenvalues lie in [0,3], have
sum6, and give the first line of (2) by Cauchy--Schwarz and x^2<=3x.

For completeness the balanced norm identity follows by expanding
sum_E |g_E|^2: for any phase Hadamard, it equals
10(10 kappa_3-45 kappa_2-1). Here kappa_m is the averaged real mth power
of a four-cycle phase over distinct row and column pairs. Use
 e3(z^2)=e3(z)^2-2e2(z)e4(z)+2e1(z)e5(z)-2e6(z),
 e1=0, e2=-p2/2, e3=p3/3, e4=e6 conjugate(e2).
The diagonal column terms contribute120 and the other30 terms give this
formula. Also FP_m=11+25 kappa_m. The zero balanced norm gives the stated
FP relation. Fourier6 attains both upper bounds; Tao fails the premise and
has cube Gram eigenvalue36, so the exception is essential.

## 3. Thirty isotropic blocks, including every lower rank

For four triples pairwise intersecting in one element (there are thirty
such configurations), let Q consist of those four rows of Y and put
D=diag(1/product_i H[i,j]). Then Q D Q^T=0. Diagonal entries are balanced
characters; an off-diagonal entry is the ordinary row quotient between
the unique intersection row and the unique omitted row, summed over j.
D defines a nondegenerate symmetric bilinear form on C^6. Its totally
isotropic rowspace has dimension at most3. Thus rank Q<=3 on the WHOLE
carrier domain. Rank0,1,2 are retained, not declared impossible. This is
not a matching count, a full21/full36 inventory or an M5 defect rank.

## 4. Equality diagnostic, not a discarded boundary

Let M=C*C, S=Y*Y, and B_i=Y* D_i Y. Equation (4) gives

    sum_i B_i^2 = 2 S(24I-S).

Thus an eigenvector v of M at18 satisfies B_i v=0 for every i. Put
A=H entrywise squared, h_i=the ith row of H, and U_i=diag(h_i).
The same Newton calculation, including the diagonal separately, gives

    B_i=6I+2(h_i^3)*h_i^3-U_i* A*A U_i-M/3.                 (6)

If A were invertible, B_i v=0 and Mv=18v would imply
 A U_i v=2 (h_i^3 v)e_i.
Its ith coordinate is both h_i^3 v and twice that value, so C v=0,
a contradiction. Therefore equality in the operator upper bound requires
rank(H entrywise squared)<6. This boundary is RETAINED. Square singularity
has not been excluded on all original no-zero3 inputs. No uniform positive
gap or generic-to-global exclusion is inferred.

## 5. The entire cube-rank-at-most-two predicate is excluded on retained carriers

**Theorem.** If H is non-Tao and has no ordinary zero3, then rank(C)>=3.
Consequently the upper inequalities in (2) are STRICT on this entire
retained carrier domain. No uniform gap below18 or12 is claimed.

First, three projectively equal cubed rows are impossible. Divide columns
by the first of the three original rows and rephase the other two. Their
entries become (1,omega^a,omega^b). Let n_ab count their six columns.
Original pairwise row orthogonality says every row sum, every column sum,
and every cyclic diagonal sum (b-a fixed) of this3-by3 nonnegative integer
table is2. These are exactly the six tables

    n_ab=t_((a+b) mod3),   t_0+t_1+t_2=2,   t_s>=0 integers.

One can see completeness by the Fourier transform on (Z/3)^2: the uniform
marginals and cyclic diagonals remove all nonconstant modes except (1,1)
and (2,2). Integer nonnegativity then gives the six displayed tables.
For any t_s>0 the three columns (a,b)=(a,s-a) occur. Their3-by3 restriction
is, up to a row phase, exactly F3. The sharpened Fourier-block
theorem ([FourierBlockClassification.md](../FourierBlocks/FourierBlockClassification.md) with the antipodal pair of N, N^T, or
[ProjectorRank5.md](ProjectorRank5.md) Section 1) therefore gives Tao or an ordinary zero3.
This contradicts the retained hypotheses. Apply the same argument to H^T
for three projectively equal cubed columns.

Now any unimodular matrix of rank at most2 has three proportional rows
or three proportional columns when both sides have six entries. Rank1 is
immediate. At rank2, if there are at most two row rays, pigeonhole applies.
Otherwise choose independent unimodular rows u,v and a third row au+bv,
with a,b both nonzero. Flatness gives a fixed nonzero real linear equation
on u_j/v_j on the unit circle; it has at most two
solutions. Thus there are at most two column rays, and pigeonhole applies
there. This proof uses no orthogonality of the cubed matrix. Applying it to
C contradicts the preceding row/column conclusion and proves rank(C)>=3.

Finally equality FP3=18, under (1) and trace(C*C)=36, would require every
cube-Gram eigenvalue to be0 or18, hence precisely two18s and rank(C)=2.
This is excluded. The balanced FP relation gives FP2<12. This does not
make the OPERATOR upper bound strict at every rank: a single eigenvalue18
with at least two further nonzero eigenvalues is still retained. Section4
still only excludes that operator equality when H squared is invertible.

## 6. Direct map to the original full-minor covariance variables (archive framework)

*This section refers to the archive covariance programme (N_full, J, E_J); its contraction theorem is now [CovarianceContraction.md](../Triples/CovarianceContraction.md).
Only the identity K_J = row Gram of the entrywise cube for an actual pinching is checked
(`cubic_incidence.py`, all 30 entries on three exact controls).*

Use the SAME reconstructed triangle I,A,B, its actual W, and J in N_full.
Only at the target spectrum3[5],-1[15] does the accepted sufficiency recover
an actual pinching onto the unknown fourth basis L. It is

    E_J(X)=tr(X)I/6 + R_J(X)/4,
    R_J=Pi_W+Gamma_J.

In any one of the three measured frames define X_ij=|j><i| and a Hermitian
six-by-six matrix K_J by

    (K_J)_ii=6,
    (K_J)_ij=(27/2) tr(X_ij R_J(X_ij)^2), i!=j.             (7)

For a pinching, tr(X E_J(X)^2)=sum_l tr(X P_l)^3. Consequently K_J is
exactly the ROW Gram of the entrywise cube of the actual phase transition
sqrt(6)L in this measured frame. This proves the necessary quadratic
matrix inequalities

    18 I_6-K_J >=0                                         (8)

in all three actual frames. Equation (7) uses only the original J
coefficients, and introduces no unknown fourth-basis columns or spectral
field bound. Off the target, it is merely the explicitly defined Hermitian
quadratic matrix; it must not be called a physical cube Gram or a pinching.
No sufficiency or new retained-domain rejection is claimed for (8).

## Coordinate and evidence scope

The original eight seed phases, relative phases, ten placements, actual
transition, all thirteen guards, both sheets, product ramification and
all spectral collisions remain. The carrier result applies directly to
H, K and their actual derived transition; equation (7) uses the existing
full-minor switch back to the same triangle and arbitrary L. It needs no
extension of the rational r/z field to spectral data. Inputs are the balanced
theorem ([BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md)) and, for Section 6 only, the archive covariance map. No historical replay occurs.

This is a new universal quantitative carrier necessity, a complete cube-rank<=2
exclusion using the existing Fourier-block owner, and a compact
quadratic necessary test on J. It is NOT a global proof or a new excluded
retained coordinate region. Whether it forces the target spectrum to fail
is Open. Universal paired cube spectra also remain Open.

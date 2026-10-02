# Full-minor covariance contraction: the triple-to-fourth-basis reduction

**Statement.** Let I,A,B be any three mutually unbiased bases of C^6. Let W
be the 20-dimensional real space of Hermitian matrices with zero diagonal in
all three bases, and let N_full be the real symmetric 20-by-20 kernel of
all 225 rank-one minors (Section 1). Then:

1. (Completion lemma.) A fourth basis unbiased to I,A,B exists iff some J in
   N_full satisfies J^2-2J-3I=0.
2. (Contraction.) Every J in N_full with I+J PSD automatically satisfies
   J <= 3I and tr J^2 <= 60.
3. A fourth basis exists iff some J in N_full with I+J PSD has tr J^2=60.
   Equivalently, the spectrum of that J is 3^[5], -1^[15].
4. For any factorization I+J=sum_l v_l v_l^T with Y_l=sum_a (v_l)_a B_a,

       sum_(l,t) ||[Y_l,Y_t]||^2 = 2(60 - tr J^2).

5. The equality face (eigenvalue 3) has a canonical commuting central
   decomposition. If the edge A has no zero ordinary 3-minor, no central
   block has rank two.

**Status.** Items 1-5 are proved for every triple of MU bases. The universal
strict inequality max_{J in K} tr J^2 < 60, which would exclude a fourth
basis, is **open**.

**Dependencies.**
- Item 1 is proved in Section 2 below. It is the full-minor covariance
  completion lemma and is self-contained. It is *not* the Bloch-rank
  criterion of [../Completion/CRITERION.md](../Completion/CRITERION.md);
  that criterion concerns two bases plus four unbiased rays and is not used.
- Items 2-4 use only item 1 and linear algebra.
- Item 5 has the hypothesis "no zero ordinary 3-minor on A". On an actual
  quartet edge this hypothesis is supplied by the no-zero3 theorem being
  imported into [../EdgeRigidity/](../EdgeRigidity/) (archive
  `BLOCK_ZERO3_EQUIVALENCE.md`, with its singular-corner quartet
  exclusion). Item 5 is used only in that conditional form.

**Provenance.** Archive `03_algebraic/core/surviving_counts/covariance_contraction/PROOF.md`
(Sections 1-5 below), `.../count_six_attack/covariance_spectrum/PROOF.md`
(definition of N_full) and `.../covariance_spectrum/preceding_completion/PROOF.md`
(Sections 1-3, the completion lemma). The verifier is based on
`covariance_contraction/calculate.py`, `covariance_spectrum/calculate_spectrum.py`
and `preceding_completion/verify.py`. The archive's cubic-flattening test
(`ATTEMPT.md`) is not imported.

The archive applied these statements to reconstructed triangles, carrying
along seeds, sheets and guards. The proofs below use only the three actual
MU bases, so that framework is omitted.

---

## 1. Setting and the full-minor kernel

For three MU measured bases in dimension d=6, let W be their
twenty-dimensional real Hermitian common-zero-diagonal space. Choose a
known Hilbert-Schmidt orthonormal basis B_1,...,B_20 and write
rho(y)=I/6+sum_i y_i B_i. Complexify y independently when forming
polynomials. Use ALL 225 two-by-two minors of rho(y), not just the 300 orbit
equations, and write these minors as

    f_nu(y)=a_nu+b_nu^T y+y^T H_nu y,   H_nu=H_nu^T.

Define the real symmetric moment kernel

    N_full={J in Sym_20(R): tr(H_nu J)=0 for every nu},

imposing both real and imaginary equations. The 300 orbit equations are
constant-coefficient combinations of rank-one minors, so N_full is contained
in the larger orbit kernel N_orbit (at the product control of Section 9 the
dimensions are 12 and 26). In a
nonorthonormal basis with Gram G, a covariance K represents the operator
J=KG; positivity of I+J means G^{-1}+K>=0 by congruence.

## 2. The completion lemma

**Theorem.** On any actual order-six MUB triangle I,A,B,

    there exists J in N_full with J^2-2J-3I_20=0             (1)

if and only if a fourth basis unbiased to all three exists. The purity
combination of the diagonal minors gives tr J=0 automatically, so (1) has
eigenvalue 3 five times and -1 fifteen times, and S=(I+J)/4 is a rank-five
orthogonal projector.

### 2.1 The universal minor moment and necessity

For three MU measured bases in dimension d, let R_Dj be their projectors,
F the tensor swap, and D=sum_Dj R_Dj tensor R_Dj. An orthonormal basis of
the common-zero-diagonal Hermitian space satisfies

    sum_i B_i tensor B_i=F+(2/d)I tensor I-D.

This follows by removing the identity and the three orthogonal traceless
measured diagonal algebras from the full Hermitian matrix basis. The
functional omega(1)=1, omega(y_i)=0, omega(y_i y_j)=delta_ij/[d(d-2)]
therefore satisfies

    omega(rho tensor rho)=(I tensor I+F-D)/[d(d-2)].

Each R tensor R is supported on the symmetric tensor subspace, so this
moment annihilates every rank-one minor. At d=6 it gives

    tr H_nu=-24 a_nu.                                      (2)

For an actual fourth basis, let y_j be its six traceless projector vectors.
Their covariance S=sum_j y_j y_j^T is the rank-five orthogonal projection
onto that basis's traceless diagonal algebra. Averaging every minor and
using sum_j y_j=0 gives

    6a_nu+tr(H_nu S)=0.

Together with (2) this says J=4S-I is in N_full, which proves necessity.

### 2.2 Projection covariance forces commutativity

Now assume (1). Choose an orthonormal Hermitian basis X_1,...,X_5 of
range(S), viewed inside W, and put X_0=I/sqrt(6). Define

    T=sum_(a=0)^5 X_a tensor X_a.

This equals six times the tensor moment with constant, linear and quadratic
moments 1, 0 and S/6. By (2) and J in N_full, all 225 minors vanish under
this moment. In tensor form this says

    T F=T.                                                (3)

This is an exact linear identity: the (i,k;j,l) entry of T-TF is six times
the averaged minor rho_ij rho_kl-rho_il rho_kj. It is essential here that
all the minors are kept.

Since X_1,...,X_5 are traceless, the partial trace over the second tensor
factor is tr_2(T)=I. On the other hand tr_2((A tensor B)F)=AB, so (3) gives

    R:=sum_a X_a^2=I.                                     (4)

Orthonormality gives tr(T^2)=6. Finally, direct expansion gives

    sum_(a,b) ||[X_a,X_b]||_HS^2
      =2 tr(R^2)-2 tr(F T^2)
      =12-12=0.                                          (5)

The second equality uses (3) and (4). Every summand is nonnegative because
all X_a are Hermitian, so every X_a commutes with every X_b.

Six independent commuting Hermitian matrices, including I, form the full
diagonal algebra in a joint eigenbasis C. Its joint eigenspaces have rank
one; no individual simple spectrum is needed. The traceless part of this
algebra is exactly range(S), which lies in W. So each joint projector has
diagonal 1/6 in I, A and B, and the constructed C is unbiased to all three
ORIGINAL bases. This proves sufficiency of (1).

## 3. The same full-minor kernel, in operator form

In the orthonormal basis B_a, for a real symmetric coefficient matrix J
write

    Gamma_J(X) = sum_ab J_ab B_a tr(B_b X),
    Phi_J(X)   = sum_ab J_ab B_a X B_b,
    T_J        = sum_ab J_ab B_a tensor B_b.

Gamma_J acts as J on W and vanishes on W-perp. All these maps extend
complex-linearly to Mat_6. Membership in N_full means that the homogeneous
parts of ALL 225 rank-one minors vanish on J, equivalently

    T_J F = T_J,                                         (6)

where F is the tensor swap. The partial trace of T_J is zero because every
B_a is traceless. Taking the partial trace of (6) gives

    R_J = sum_ab J_ab B_a B_b = 0.                       (7)

In indices, (6) says that sum J_ab (B_a)_ij (B_b)_kl equals
sum J_ab (B_a)_il (B_b)_kj. Contracting against X_jk proves

    Phi_J = Gamma_J.                                    (8)

In particular tr J=tr R_J=0. Equations (7)-(8), together with the symmetry
of J, give the signed double-commutator identity

    D_J(X):=sum_ab J_ab [B_a,[B_b,X]] = -2 Gamma_J(X).   (9)

Identities (6)-(9) use no positivity of J, no simplicity of its spectrum and
no physical phase choice.

## 4. Positivity forces the missing upper bound

Let E_D(X) be diagonal pinching in measured basis D. The full Hermitian
Casimir identity, with the three measured traceless Cartans removed, is

    D_I20(X)=6X+2 sum_(D=I,A,B) E_D(X)-2 tr(X) I6.       (10)

For X in W this is exactly 6X. One direct derivation uses that the sum over
a full orthonormal Hermitian basis of [H,[H,X]] is 12X-2tr(X)I6. Each
measured traceless Cartan contributes 2(X-E_D(X)), and the scalar identity
direction contributes zero.

Define K = {J in N_full : I20+J is positive semidefinite}. For J in K put
M=I20+J>=0, and factor its coefficient matrix to write

    M = sum_l v_l v_l^T,   Y_l=sum_a (v_l)_a B_a.

Every Y_l is Hermitian and lies in W. Thus for Hermitian X,

    <X,D_M(X)> = sum_l ||[Y_l,X]||_HS^2 >=0.            (11)

Combining (9) and (10) on W gives

    D_M|W = 6I20-2J.                                   (12)

Therefore J<=3I20. The conclusion uses the actual three Cartans and ALL the
full-minor equations. It need not hold in N_orbit or for an arbitrary
trace-zero symmetric coefficient space. (The verifier includes a trace-zero
PSD-shift control, diag(19,-1^19), that violates it.)

For any nonzero J in N_full, trace zero makes m=-lambda_min(J)>0. Applying
the result to J/m gives the homogeneous spectral bound

    lambda_max(J) <= 3(-lambda_min(J)).                 (13)

Applying it to -J gives the reverse ratio bound. Equality is allowed; it is
not an exclusion certificate.

## 5. Exact scalar replacement and the defect identity

For J in K all twenty eigenvalues lie in [-1,3]. Since tr J=0,

    60-tr(J^2) = sum_i (lambda_i+1)(3-lambda_i) >=0.    (14)

Equality holds precisely when every eigenvalue is -1 or 3. Trace zero then
fixes the multiplicities at fifteen and five. The completion lemma
(Section 2) constructs the SAME actual fourth basis from the rank-five
positive eigenspace. Conversely, any fourth basis supplies such a J. So the
test is necessary AND sufficient.

The body K is compact and convex and contains zero. It is bounded by
-I20<=J<=3I20, including when N_full={0}. Hence the supremum below is
attained, and the exact remaining target can be written

    max_(J in K) tr(J^2) < 60                            (15)

for every triple. Maximizing this convex quadratic over K is NOT a
semidefinite program and is not claimed to be easy. No uniform positive gap
over all inputs is asserted.

There is also a useful exact nonnegative defect. With the same factor
M=sum v_l v_l^T used above,

    sum_(l,t) ||[Y_l,Y_t]||_HS^2 = 2(60-tr(J^2)).       (16)

Indeed the left side is tr(M D_M|W), which by (12) equals
tr((I+J)(6I-2J))=120-2tr(J^2). The identity does not depend on the chosen
factorization. It does not force the commutators to be nonzero globally.

## 6. The whole upper-bound equality case has a canonical center

**Theorem.** Suppose J in K has eigenvalue 3, and write E=ker(3I-J) inside
W. Then R I6 + E is an abelian unital real algebra, and its complex span is
an abelian unital complex algebra. There is a unique orthogonal joint
spectral decomposition I6=sum_alpha P_alpha such that

    E = span_R{P_alpha-(rank P_alpha)I6/6},
    diag(D*P_alpha D) = rank(P_alpha)/6 for D=I,A,B.     (17)

In particular dim E is the number of blocks minus one. The full matrix
algebra generated by range(M) has these blocks, with no multiplicity.

Proof: (11)-(12) show that every X in E commutes with every Y_l, hence with
range(M). Since E itself lies in range(M), its elements commute with each
other. Let P_alpha be their joint spectral projections; they commute with
all Y_l. On ALL of Mat_6, equations (9)-(10) give

    D_M(X)=8X-2 Gamma_M(X)-(4/3)tr(X)I6.               (18)

Substituting P_alpha in (18) yields
Gamma_M(P_alpha)=4(P_alpha-rank(P_alpha)I6/6). Its range is W, and
Gamma_M(I6)=0, so each displayed centered projector belongs to E.
Conversely, joint diagonalization puts every X in E in their real span.
This proves (17). More generally, if a Hermitian X commuting with all Y_l
has D_M(X)=0, then X-tr(X)I6/6 is in E by (18). Hence the Hermitian
commutant is exactly R I6+E. Its abelianness gives the last assertion,
equivalently the usual finite-dimensional double-commutant decomposition.

This is a decomposition of the equality face of K. It is not a claim that a
single top eigenvector has six distinct eigenvalues; all collisions are
kept. In the quartet case there are six rank-one blocks. The other block
patterns below are still possible relaxation branches until excluded.

## 7. No rank-two central block when A has no zero3

**Theorem.** If the actual edge A has no zero ordinary 3-minor, no P_alpha
in (17) has rank two. So, apart from six rank-one blocks, the only possible
upper-bound equality partitions are

    (5,1), (4,1,1), (3,3), (3,1,1,1).                 (19)

These four partitions are NOT excluded. The target quartet partition
(1,1,1,1,1,1) remains open.

First, for any balanced rank-two projector P (diagonal 1/3 in I, A and B),
put

    N_P = {X in W : X=PXP}.

We claim dim_R N_P<=1. Otherwise all centered projectors of the six vectors
P e_i in C2 are orthogonal to a common two-plane in Herm_0(2). Each vector
has squared norm 1/3, so their rank-one projectors lie at the two opposite
ends of one Bloch diameter. The tight-frame identity sum_i P e_i e_i* P=P
makes each end occur exactly three times. Let the corresponding orthogonal
unit vectors be u and v, with u supported on a three-element row set S and
v on its complement. Applying the SAME N_P conditions to the columns of A
gives the SAME two Bloch endpoints, again three of each. So three columns
indexed by T satisfy u* A_:T=0. Since u is nonzero and supported on S, the
ordinary submatrix A_(S,T) is singular, a contradiction. If the annihilator
had dimension zero, nonzero centered pure projectors would already be
impossible. This proves the claim without a fourth basis.

Now take a central block P=P_alpha of rank n. All Y_l are block diagonal.
For X supported in this block and traceless, Phi_M(X) is supported there.
Using Phi_M-Gamma_M=(2/3)(tr(X)I6-X), Gamma_M preserves the block-traceless
space and its range lies in N_P. Its restriction S_P=Gamma_M/4 is PSD and
satisfies

    tr_operator S_P=n-1,   0<=S_P<I on that block-traceless space.   (20)

For completeness: the central space in (17) has eigenvalue 4 for Gamma_M.
For an orthonormal central basis C_t, sum_t C_t^2 on the n-block is
(1/n-1/6)I_n. Also sum_l Y_l^2=(10/3)I6, by (7) and the dimension-20
identity for W. The remaining block Kraus squares therefore sum to
(4-4/n)I_n. Taking their trace gives
tr_operator(Gamma_M on Herm_0(block))=4(n-1). Eigenvalue 4 cannot occur in a
block-traceless direction, because all its eigenvectors already lie in the
scalar-on-each-block space E. This proves (20).

For n=2, rank S_P<=dim N_P<=1 while its trace is one and every eigenvalue is
strictly below one, which is impossible. The partitions (19) are exactly
the partitions of six with at least two parts and no part equal to two.

## 8. Scope

Before this result, a real J in N_full had to satisfy a full quadratic
matrix identity. After it, the exact extension decision is ONE scalar
quadratic equation tr(J^2)=60 together with ONE 20-by-20 LMI J+I>=0. No new
physical input, field bound, rank specialization or phase hypothesis is
introduced. The equality-center theorem is structural. It does not prove
strictness in (15), and its nonquartet strata must not be confused with the
target's five-dimensional top eigenspace. No new nonempty region of inputs
is claimed excluded.

## 9. Verification

    python3 CovarianceContraction.py

runs in about 70 s and exits nonzero on failure. Part A recomputes N_full
from scratch for the exact product triangle I, H2(x)F3, [[1,1],[i,-i]](x)(dF3)
over Q(sqrt3,i). This is a zero3 control, outside the quartet domain: all
225 minors, rank 198, dim N_full=12, real symmetric basis. On a nonzero
element of N_full, Part A checks (7) and (8) on all 36 matrix units, (9)
(including the nested-bracket sign), the Casimir value 6 on W,
sum_a B_a^2=(10/3)I, an explicit nonzero point of K with 0<tr J^2<60, and
the defect normalization (16). It also checks the polynomial identities
(14) and (16), the multiplicity count, the necessity of N_full for the upper
bound, and the constants in (20). Part B replays the completion-lemma
controls: tensor, partial-trace and commutator-norm identities on the actual
qutrit quartet, an order-six Cartan and a noncommuting five-plane. Part C
checks a d=4 Cartan and a fractional qutrit full-minor tensor that is
noncommuting and not PSD. The written proofs supply the universal
statements.

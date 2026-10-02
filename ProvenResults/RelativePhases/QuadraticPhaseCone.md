# Quadratic phase cone and the three-Hadamard coupling system

*Addendum to [RelativePhaseCompatibility.md](RelativePhaseCompatibility.md).
That file is unchanged, and this addendum only adds to it.*

**Statement.**

1. A zero-diagonal Hermitian 6-by-6 X satisfies X^2-4X-5I=0 iff X=dd*-I for
   a phase vector d.
2. Let W(A)=20 wedge^2 A+5 dLambda_2(A^2)-Tr(A^2)I_15 (15-by-15 and
   quadratic in A). For traceless Hermitian A,
   Tr(W(A)^2)=30(7Tr(A^2)^2-10Tr(A^4)). Moreover W(A)=0 iff A=c(dd*-I)
   with c real and d a phase vector.
3. For fixed order-six Hadamards V1,V2,V3, the basis I together with
   V1/sqrt6, diag(d)V2/sqrt6 and diag(e)V3/sqrt6 is a quartet for some
   phases d,e iff some nonzero real zeta in the coupling kernel has
   rank Z(zeta)=1, with W=0 on every row and column of Z.
4. This homogeneous quadratic system is decided exactly when the coupling
   kernel has dimension h=0, 1 or 2.
5. On the universal 10-dimensional self-overlap subspace U, contained in
   ker L_VV for every V,
   7Tr(A^2)^2-10Tr(A^4) >= (35/78)Tr(A^2)^2 > 0. So U contains no
   nonzero phase correlation.

**Status.** Proved for arbitrary fixed physical order-six Hadamards. The
statements are pointwise in the three Hadamards. Global emptiness of the
quadratic system over all carriers and relative permutations is **open**.

**Dependencies.** The pair lemma in
[RelativePhaseCompatibility.md](RelativePhaseCompatibility.md), Section 2.
Nothing else: no classification input, no Szollosi-family exclusion, and no
generic rank. The archive also states a global equivalence between "no four
MUBs" and emptiness of this system over all product-regular triples. That
statement uses classification reach and endpoint exclusions, and it is
**not** imported here (see Section 7).

**Provenance.** Archive `03_algebraic/quadratic_phase_compatibility/`:
`THEOREM.md` Sections 1-5 (accepted statements),
`supplied/quadratic/PROOF.md` Sections 1-6 (derivations), and
`supplied/sextic/PROOF.md` Sections 2-4 and 7 (coefficient tests and the
general-n trace lemma). The verifier is based on that folder's `verify.py`.
`pending_review/real_projection_PROOF.md` is deliberately not imported.

---

## 0. Relation to RelativePhaseCompatibility.md

Both files study the same object with different notation.

| Here | In RelativePhaseCompatibility.md |
|---|---|
| L_rs, the linear map on zero-diagonal Hermitian matrices | A_(H,K0) with H=V_r, K0=V_s. The defining formulas are identical: L_rs(X)_jk=(v^(jk))* X v^(jk), v^(jk)_p=(V_r)_pj conj((V_s)_pk) |
| X=dd*-I, the phase correlation | W=dd*-I there, the kernel element |
| "X^2-4X-5I=0 and L_12(X)=0 iff compatible" | the Lemma of Section 2 there, not re-proved here |
| rank L_rs <= 25 | rank(A)<=25 there |
| **W(A)**, the 15-by-15 exterior-square matrix | no counterpart. It is a *different* matrix from the W of that file |

The single-matrix phase cone is characterized in three equivalent ways:

- **Cubic, there:** Tr(W^3)<=120 on Tr(W^2)=30, with equality exactly at
  spectrum (5,-1^5). This fixes the scale and sign, c=+1.
- **Sextic, homogeneous:** D(A)=8(Tr A^2)^3-15(Tr A^3)^2 >= 0, with equality
  iff A=c(dd*-I) for some real c != 0 (Section 2.4). At Tr(A^2)=30, D=0 is
  exactly |Tr A^3|=120, the squared form of the cubic criterion. It admits
  both signs of c.
- **Quartic and quadratic, new here:** K(A)=7(Tr A^2)^2-10 Tr A^4 >= 0. Up to
  a factor of 30, K is a sum of squares of the real entries of W(A). Its zero
  set is the same cone, and W(A)=0 describes that cone by quadratic
  equations in the entries of A, with no normalization.

The following are new relative to the existing file: the quadratic
description W and its SOS quartic; the general-n equality lemma; the
three-Hadamard (quartet) coupling system; the exact h<=2 decision; the
coefficient-minor refutation tests; and the self-overlap subspace U with its
strict bound 35/78. The pair kernel lemma and the cubic bound are not
restated as new results.

## 1. Linearize phases, not the carrier domain

Let H0 be the real space of zero-diagonal Hermitian 6-by-6 matrices. Define

    L_rs(A)_jk = sum_(p!=q) conj(V_r[p,j]) V_r[q,j] V_s[p,k] conj(V_s[q,k]) A_pq.

Conjugate terms pair, so the output is real. Summing in j or k and using
Hadamard orthogonality gives zero, so 25 entries suffice and rank L<=25.
For X in H0, X^2-4X-5I=0 is equivalent to X=dd*-I for phases d. Indeed I+X
is Hermitian, squares to 6(I+X), and has trace six and diagonal one, so it
is positive of rank one. Its first column recovers d with d0=1.

Consequently I, V1/sqrt(6), diag(d)V2/sqrt(6), diag(e)V3/sqrt(6) is a quartet
exactly when X,Y satisfy those projector equations and

    L12(X)=L13(Y)=L23(conj(X) entrywise-product Y)=0.

This follows by direct expansion of the squared overlaps, whose diagonal
term is six. The verifier checks the expansion exactly at a sample point.

## 2. The exterior-square quadratic defect

Index the standard basis of wedge^2 C^n by i<j. Define

    (wedge^2 A)_ij,kl = A_ik A_jl - A_il A_jk,

and the additive compound

    dLambda_2(B)_ij,kl = B_ik delta_jl + B_jl delta_ik
                         - B_il delta_jk - B_jk delta_il.

The second operation is linear; it is not wedge^2 B. For n=6 put

    W(A) = 20 wedge^2 A + 5 dLambda_2(A^2) - Tr(A^2) I_15.     (2.1)

Every entry is homogeneous quadratic in the entries of A. If A is Hermitian,
so is W(A). Both compounds are unitarily covariant, so W transforms by
wedge^2 U under A -> U A U*.

### 2.1 Universal trace identity

For every traceless Hermitian 6x6 A,

    Tr W(A)^2 = 30 [ 7 (Tr A^2)^2 - 10 Tr A^4 ].              (2.2)

Proof. Diagonalize A, with real eigenvalues lambda_i summing to zero, and put
p2=sum lambda_i^2. The fifteen eigenvalues of W are

    w_ij=20 lambda_i lambda_j +5(lambda_i^2+lambda_j^2)-p2.

Expanding sum_(i<j) w_ij^2 with sum lambda_i=0 gives (2.2). The script checks
this identity symbolically with five independent eigenvalues and the sixth
equal to minus their sum. Unitary covariance gives the general Hermitian
identity. It is not inferred from a numerical spectrum.

Consequently the quartic

    K(A)=7(Tr A^2)^2-10 Tr A^4                                (2.3)

is nonnegative, and it is literally (1/30) times a sum of squares of real
quadratic entry polynomials (split complex entries into real and imaginary
parts).

### 2.2 Equality characterization

For nonzero traceless Hermitian A of order n>=4, define the general scaled
defect

    W_n(A)=(n-1)(n-2) wedge^2 A+(n-1)dLambda_2(A^2)-Tr(A^2)I.

Then W_n(A)=0 iff A has n-1 equal eigenvalues, with the remaining eigenvalue
fixed by trace zero.

To prove the nontrivial direction, work in an eigenbasis and divide the
diagonal entries by (n-1)(n-2). For distinct j,k and i outside {j,k},
subtracting entries gives

    (lambda_j-lambda_k)[lambda_i+(lambda_j+lambda_k)/(n-2)]=0.

Choose lambda_j != lambda_k. Then all n-2 remaining eigenvalues equal a
common value c. Suppose both distinguished eigenvalues differed from c.
Compare one of them with one c, and use a second index with value c
(available because n>=4). The same formula then forces the other
distinguished eigenvalue to equal c, a contradiction. Thus at least n-1
eigenvalues coincide. The converse is immediate by substitution. The
repeated eigenvalue is nonzero unless A=0.

For n=6 this is the same equality spectrum as the sextic

    D(A)=8(Tr A^2)^3-15(Tr A^3)^2.

Thus for a nonzero Hermitian zero-diagonal A,

    D(A)=0 <=> K(A)=0 <=> W(A)=0
           <=> A is a nonzero real multiple of d d*-I, |d_i|=1.  (2.4)

The exact reconstruction scale is

    lambda_A=4 Tr(A^2)/Tr(A^3),
    d=(I+lambda_A A)[:,0].                                  (2.5)

Tr(A^3) cannot vanish on a nonzero equality direction. Formula (2.5) is a
consequence of reconstruction; no denominator is assumed nonzero away from
the zero set. The restriction n>=4 matters: W_3 vanishes identically on
traceless Hermitian matrices and does not recognize rank-one correlations.

In summary, if W=0 and A is nonzero, the pair-entry identity forces the
other four eigenvalues to coincide, and one of the two chosen eigenvalues
joins them. Trace zero then forces spectrum c(5,-1,-1,-1,-1,-1) with c real
and nonzero. The zero diagonal forces the simple eigenvector to have all
magnitudes 1/sqrt(6). Hence W(A)=0 iff A=c(dd*-I).

### 2.3 Why the zero sets agree with the sextic

This section is from the sextic note. For a nonzero traceless Hermitian
n-by-n matrix A, n>2, write

    t2=Tr A^2,    t3=Tr A^3,
    D_n(A)=(n-2)^2 t2^3 - n(n-1) t3^2.

Then D_n(A)>=0. Equality holds exactly when the eigenvalues are proportional
to (n-1,-1,...,-1). If A also has zero diagonal, equality is equivalent to A
being a nonzero real multiple of d d^*-I for a unit-modulus vector d. The
correct scale is lambda=(n-2)t2/t3.

PROOF. Normalize t2=1 and extremize sum lambda_i^3 on the sphere with
sum lambda_i=0. The two constraint gradients are independent. At a
stationary point 3 lambda_i^2=alpha+2 beta lambda_i, so there are at most
two eigenvalues. With multiplicities m,n-m, the squared third moment is

    (n-2m)^2/[n m(n-m)] = n/[m(n-m)] - 4/n.

Its maximum occurs at m=1 or n-1 and equals (n-2)^2/[n(n-1)]. Equality has
exactly the claimed spectrum. Scaling by lambda makes the spectrum
(n-1,-1,...,-1). Thus I+lambda A is positive of rank one with diagonal one,
and its first column gives d. The converse is immediate. QED. For n=6 the
inequality, divided by two, is D(A)>=0.

## 3. Coefficient-minor refutation tests on one overlap kernel

### 3.1 Quadratic (W) form

Write A(t)=sum_(mu=1)^k t_mu E_mu for a real basis E of ker L_12. Expanding
W(A(t)) gives

    vec W(A(t)) = C_E m_2(t),                                (3.1)

where m_2 lists t_mu t_nu for mu<=nu, so there are k(k+1)/2 columns. Any
fixed real coordinate representation of Herm_15 may be used. For k=5 the
coefficient matrix has only 15 columns, compared with 21 for the
inhomogeneous projector equations in 3.2; for k=7 it has 28 columns. If C_E
has full column rank, (3.1) has no nonzero real solution. More explicitly,
let R be an invertible square row submatrix and let e_diag select
sum t_mu^2 from m_2. Then

    e_diag^T adj(R) [selected vec W(A(t))]
        =det(R) sum_mu t_mu^2.                              (3.2)

If W(A(t))=0 and det R !=0, this forces t=0, which contradicts a phase
correlation. This is a genuine homogeneous quadratic identity. It does NOT
allow det R to be inverted on its zero set. The coefficient matrix can have
a nontrivial kernel without containing any real Veronese vector m_2(t).
Full column rank is sufficient for exclusion, not necessary.

### 3.2 Inhomogeneous projector form

This section is from the sextic note, Section 2. Suppose rank L_12=25 and
choose a basis E_1,...,E_5 of its kernel. Put X(t)=sum t_mu E_mu and
m(t)=(1, t_1,...,t_5, {t_mu t_nu}_{mu<=nu}), which has 21 entries. Define the
36-by-21 coefficient matrix Q_E by its columns:

    constant: vec(-5I);  linear mu: vec(-4 E_mu);
    quadratic mu=nu: vec(E_mu^2);  quadratic mu<nu: vec(E_mu E_nu+E_nu E_mu).

Then vec(X(t)^2-4X(t)-5I)=Q_E m(t). If R is any 21-row square submatrix,
delta=det R and f_R the selected entries, then e_0^T adj(R) f_R(t)=delta.
When delta!=0 this is a rational certificate 1=sum lambda_a f_a, so no
complex solution t exists. Hence a phasable pair on a rank-25 overlap chart
makes every 21-by-21 minor of Q_E vanish.

An intrinsic version works for any kernel dimension. Let K=ker L_12 and
J(K)=span_R{E, EF+FE : E,F in K}. If I is not in J(K), separation gives a
Hermitian W' with Tr W'E=0 and Tr W'(EF+FE)=0 for all E,F in K, but
Tr W' != 0. Taking Tr(W' .) of X^2-4X-5I=0 gives -5 Tr W'=0, a
contradiction.

If rank Q_E=20, its kernel is spanned by one v. If v_0=0 there is no
solution. Otherwise normalize v_0=1. The only possible t is then its five
linear coordinates, and one checks whether every quadratic coordinate
equals the corresponding product (and that X is Hermitian). Ranks at most
nineteen are not classified by this argument.

### 3.3 Injective coupling

This section is from the sextic note, Section 3. With real bases E_mu
(mu=1..k) and F_nu (nu=1..l) of ker L_12 and ker L_13, define the real
25-by-kl coupling matrix

    M_(jk),(mu,nu) = L_23(conj(E_mu) entrywise_product F_nu)_(jk),

so that L_23(conj(X(t)) o Y(s))=M vec(t s^T). If M has full column rank,
this forces t=0 or s=0. Neither can satisfy the projector quadratic, which
is an immediate contradiction. When k=l=5, M is square. With p=M(t tensor s),
delta=det M, G_E=(Tr E_mu E_nu), G_F=(Tr F_mu F_nu), T_X=Tr X^2 and
T_Y=Tr Y^2,

    900 delta^2
     = (adj(M)p)^T (G_E tensor G_F) (adj(M)p)
       - delta^2 [ (T_X-30) T_Y + 30(T_Y-30) ].             (3.3)

Indeed adj(M)p=delta(t tensor s), whose quadratic form is delta^2 T_X T_Y.
A quartet makes p=0 and T_X=T_Y=30, so delta!=0 is impossible. This is a
genuine polynomial certificate on the specified nonsingular chart.

## 4. One homogeneous quadratic system for the whole coupling problem

Let Z_1,...,Z_h be a real basis of ker M, reshaped to k-by-l matrices, and
put Z(zeta)=sum_(r=1)^h zeta_r Z_r. For EVERY column nu and row mu define

    A_nu(zeta)=sum_mu Z_mu,nu(zeta) E_mu,
    B_mu(zeta)=sum_nu Z_mu,nu(zeta) F_nu.

Collect the following homogeneous quadratic polynomials:

    all 2-by-2 minors of Z(zeta);
    all real and imaginary entries of every W(A_nu(zeta));
    all real and imaginary entries of every W(B_mu(zeta)).    (4.1)

Call their coefficient matrix C, so that (4.1) reads

    C m_2(zeta)=0.                                          (4.2)

THEOREM. For fixed physical V1,V2,V3 and these full kernel bases, an actual
quartet exists iff (4.2) has a nonzero real solution zeta.

Necessity: a quartet gives the nonzero rank-one matrix t s^T of its two
kernel coordinates, and the correlation identities apply. Sufficiency: Z is
nonzero (the Z_r are independent) and all its minors vanish, so Z is rank
one, Z=t s^T with t,s real and nonzero. Some column is nonzero, so
W(A_nu)=0 forces W(A(t))=0; similarly some row forces W(B(s))=0. Equation
(2.5) gives real nonzero scales lambda_A,lambda_B. Rescaling the factors
independently preserves the two overlap kernels and keeps M vec(Z)=0. The
resulting X,Y therefore reconstruct actual diagonal phases solving all
quartet conditions. QED.

Requiring every row and column avoids the chart choices Z_ab=1. It also
avoids a spurious zero from a chosen pivot column that happens to vanish.
The zero vector is still excluded. No simplicity of algebraic roots and no
generic rank of L_rs is assumed. Kernel bases are chosen stratum by stratum.
Every equation is homogeneous quadratic in zeta. This is not a degree-two
bound in the reconstructed seed variables. The squared residual of (4.1) is
a homogeneous quartic sum of squares.

## 5. Exact elimination when h<=2

For h=0 no nonzero coupling vector exists, so no quartet exists. For h=1,
(4.2) has a nonzero real solution iff every coefficient in its single column
is zero. For h=2 put

    m_2(zeta)=(zeta_1^2,zeta_1 zeta_2,zeta_2^2)^T,   G=C^T C.     (5.1)

G is a 3-by-3 real positive-semidefinite matrix with ker G=ker C. The
following conditions are NECESSARY AND SUFFICIENT for a nonzero real
solution (zero-based indices):

| rank G | criterion |
|---|---|
| 3 | no solution |
| 2 | (adj G)_02-(adj G)_11=0 |
| 1 | G_11-4G_02>=0 |
| 0 | a solution exists |

Proof for rank two. Write ker C=span(a,b,c). Because G>=0 has rank two,
adj G=lambda (a,b,c)^T(a,b,c) with lambda>0 after scaling. A nonzero real
Veronese vector lies on this line iff ac=b^2. If a!=0 take zeta=(a,b); if
a=0 the condition forces b=0, and take zeta=(0,1). The scalar multiple on
the line may have either sign. This gives the adjugate test.

For rank one, a nonzero row is (a,b,c), and all equations are proportional
to a zeta_1^2+b zeta_1 zeta_2+c zeta_2^2=0. This has a nonzero real solution
iff b^2-4ac>=0. Since G is a positive multiple of that row's outer product,
its discriminant has the sign of G_11-4G_02. This includes the cases with
zero leading coefficient.

In particular every h=2 quartet point satisfies det G=0 and
(adj G)_02-(adj G)_11=0. The second condition vanishes automatically at
rank<=1, where the sign criterion must be used instead.

For larger h: if C has exactly one-dimensional kernel in quadratic-monomial
space, reshape a generator into a symmetric h-by-h matrix. A real projective
solution exists precisely when that matrix has rank one. All its 2-by-2
minors are linear functionals of adj(C^T C), so no null-vector normalization
is needed. Higher-dimensional coefficient kernels still require a genuine
real-algebraic calculation. No carrier-wide bound h<=2 is claimed.

## 6. A strict SOS exclusion on the universal self-overlap subspace

For every order-six Hadamard V there is a universal ten-dimensional subspace
U of ker L_VV:

    A(alpha,beta)_pq = alpha_p+alpha_q+i(beta_p-beta_q), p!=q,
    A_pp=0,
    sum alpha_p=sum beta_p=0, alpha,beta real.                (6.1)

The inclusion follows from column orthogonality of V in L_VV. Equivalently
(sextic note, Section 7), U is spanned by E_alpha=alpha 1^T+1 alpha^T-2
diag(alpha) and F_beta=i(beta 1^T-1 beta^T). Its symmetric-real and
skew-imaginary parts are independent, each of dimension five, so
rank L_VV<=20 for EVERY order-six Hadamard. Product regularity therefore
does not guarantee a five-dimensional overlap kernel.

Set P=sum alpha_i^2, Q=sum beta_i^2 and R=sum alpha_i beta_i. Direct trace
calculation gives

    Tr A^2=8P+12Q,
    Tr A^4=8P^2+64PQ+72Q^2
               +48 sum alpha_i^4+96 sum alpha_i^2 beta_i^2-16R^2. (6.2)

For each four-element index set, use its three pairings. Let the resulting
45 quadratics be

    q_a=(alpha_i-alpha_j)(alpha_k-alpha_l),
    q_ab=(alpha_i-alpha_j)(beta_k-beta_l)
              +(beta_i-beta_j)(alpha_k-alpha_l),

and let r_ij=alpha_i beta_j-alpha_j beta_i for i<j. Then the EXACT identity is

    K(A) - (35/78)(Tr A^2)^2
      = (8/39)(4P-33Q)^2
        +32 sum q_a^2
        +16 sum q_ab^2
        +352 sum_(i<j) r_ij^2
        +160 R^2.                                          (6.3)

Every coefficient on the right is positive. Therefore

    K(A)>=(35/78)(Tr A^2)^2>0 for nonzero A in (6.1).        (6.4)

So no direction of U is a physical phase correlation. Combining (2.2) with
(6.3) gives a literal real SOS refutation of W(A)=0 on U. Two intermediate
SOS identities are

    (7/10)P^2-sum alpha_i^4=(1/15) sum q_a^2,
    (7/10)PQ-sum alpha_i^2 beta_i^2
       =(1/60)sum q_ab^2+(11/30)sum r_ij^2.

The constant 35/78 is a convenient certified value, not claimed optimal.

SCOPE: ker L_VV can be strictly larger than U (dimension 14 at the retained
split witnesses of the archive). A nonlinear cone can meet mixed directions
of U plus another subspace, so U-components may NOT be quotiented away or
removed. (6.4) does not exclude every self-rephasing.

## 7. What is not imported

- **Global equivalence (archive THEOREM.md Section 6).** The archive states
  that "no four MUBs" is equivalent to real projective emptiness of (4.2)
  over every product-regular triple of representatives. Its reverse
  direction uses classification reach for the three edges from the identity
  together with the Tao and single H_x endpoint exclusions. The active
  project's accepted inputs are listed differently (non-F6, non-Tao
  reconstruction; see
  [SimultaneousReconstruction.md](SimultaneousReconstruction.md)). The
  statement is therefore left out. The pointwise theorem of Section 4 is
  unaffected.
- **Sextic chart formulation (sextic note Sections 5-6).** This is
  superseded by Section 4: the same decision appears there as a quadratic
  system with no pivot charts.
- **Modular seed checks** in both notes (15/28-column minors modulo 193513).
  Their programs were not supplied and have not been replayed.
- **Szollosi-family exclusion.** The notes took this as an input. It is not
  used anywhere above.
- `pending_review/real_projection_PROOF.md`.

**Open:** global real emptiness of the quadratic compatibility system over
all reconstructed carriers and relative row permutations, with every kernel
rank drop, sheet and reconstruction boundary included.

## 8. Verification

    python3 QuadraticPhaseCone.py

runs in about 20 s and exits nonzero on failure. In exact SymPy arithmetic it
checks: the trace identity (2.2) in five free eigenvalues; the diagonal form
of W in an eigenbasis; W=0 on the spectrum c(5,-1^5) and W!=0 on a control
spectrum; a nontrivial Q(i) phase correlation (W=0 along its whole real line,
projector quadratic, Tr=30 and 120, recovery by (2.5)); the complete
ten-variable identities (6.2)-(6.3) and the two intermediate SOS identities;
the E_alpha+F_beta parametrization; U in ker L_VV for V=F6 with symbolic
alpha,beta; the squared-overlap quartet expansion of Section 1 at an exact
sample; the rank-one and rank-two binary criteria and the symbolic adjugate
formula; the Segre minors; identity (3.3) for generic 4-by-4 data; and the
extremes in the general-n trace lemma for n=3,...,9. The written proofs
supply the universal statements.

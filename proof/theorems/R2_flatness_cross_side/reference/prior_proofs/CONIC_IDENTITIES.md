# Structural identities for a three-by-three phase side

## Status

The lemmas below are proved and checked exactly. They supply a compact conic
normal form for an actual side and express the supplied side label as a
determinant. They do **not** establish Handoff R's matched-flatness conclusion.
In particular, equality of the conjugate side labels has not yet been turned
into the required transport through `K = -E* G_h^{-1}`.

The verifier `verification/verify_conic_identities.py` uses only Python's standard library.
It implements integer Laurent polynomials independently of the supplied large
certificates. It checks the universal identities over nine independent phase
variables, and the normalized-side identities over six independent phase
variables. There are no numerical substitutions in these checks.

All matrix powers carrying a circle below are entrywise powers. A dagger is
the Hermitian adjoint. The operation `#` below is a quadratic coordinate map,
not complex conjugation and not the formal sharp convention used elsewhere.

## 1. Notation and the conic matrix

Let `A` be an invertible three-by-three matrix whose entries are unit phases.
Write

\[
G=AA^\dagger,\qquad
\delta=\det A,\qquad \pi=\operatorname{perm}A,
\]

\[
R_i=\prod_{j=0}^2 A_{ij},\qquad
p_j=\prod_{i=0}^2 A_{ij},\qquad
P=\prod_{i,j=0}^2 A_{ij}.
\]

For a vector `b=(b_0,b_1,b_2)^T`, set

\[
b^\#=(b_1b_2,b_0b_2,b_0b_1)^\mathsf T.
\]

Let `A#` be the matrix formed by applying this map to each column. Since all
entries are phases,

\[
A^\#=\overline A\,\operatorname{diag}(p_0,p_1,p_2),\qquad
\det A^\#=P\overline\delta\ne0.
\tag{1}
\]

Define

\[
L_A=A^{\circ2}(A^\#)^{-1},\qquad
\lambda_i=-\frac{P\overline\delta}{\delta R_i},\qquad
D_\lambda=\operatorname{diag}(\overline\lambda_0,
\overline\lambda_1,\overline\lambda_2).
\tag{2}
\]

For a normalized side `A=(1;x;y)`, the row products are
`R_0=1`, `R_1=U`, `R_2=V_0`, so these are exactly the lambda quantities in
`FLATNESS.md`, Section 3. Each lambda is a unit phase.

Every column `b` of `A` satisfies

\[
\boxed{b^{\circ2}=L_A b^\#.}
\tag{3}
\]

This is an identity by the definition of `L_A`; it has no square-root or
cube-root choices. The three homogeneous quadrics

\[
q_i(b)=b_i^2-\sum_{k=0}^2(L_A)_{ik}b_k^\#
\tag{4}
\]

are linearly independent: their coefficient matrix on the three square
monomials is the identity. The three columns of `A` define three distinct,
noncollinear projective points, because `A` is invertible. The space of
quadrics through these points has dimension three. Consequently the quadrics
in (4) form its basis, and generate the homogeneous ideal of the three
points. To see the last statement directly, change coordinates by `A^{-1}`;
the points become the three coordinate points, whose ideal is
`(u_0u_1,u_0u_2,u_1u_2)`.

## 2. The determinant is the side label

### Lemma 1: determinant/permanent identity

For any three-by-three matrix `X` with nonzero entries,

\[
\boxed{
\det X\,\operatorname{perm}X
=\det(X^{\circ2})
 +2\left(\prod_{i,j}X_{ij}\right)\det(X^{\circ(-1)}).
}
\tag{5}
\]

Here `X^{circ(-1)}` means reciprocal of each entry.

**Proof.** Multiply the two six-term permutation sums. Equal permutations
give `det(X^{circ2})`. If the relative permutation is a transposition, the
two orders of the pair cancel. The remaining pairs differ by a three-cycle.
They have equal parity, and their products are the products of all nine
entries divided by one permutation monomial. Each such monomial occurs
twice, giving the second term. The verifier checks the resulting polynomial
identity over nine independent variables.

For a phase side `A`, reciprocal entries are conjugate entries. Define its
label with the convention used in the supplied brief:

\[
z=\Theta(A)=-\frac{\pi\delta}{P\overline\delta}.
\]

Equations (1) and (5) give

\[
\boxed{\det L_A=-(z+2).}
\tag{6}
\]

Thus, for actual sides `B,V`, matching is equivalent to the single
determinant equality

\[
\Theta(V)=\overline{\Theta(B)}
\quad\Longleftrightarrow\quad
\det L_V=\overline{\det L_B}.
\tag{7}
\]

This is only a reformulation of matching. It is not a claim about
complementary subblocks of an arbitrary completed Hadamard matrix.

## 3. The diagonal is the lambda vector

### Lemma 2: diagonal identity

\[
\boxed{(L_A)_{ii}=\overline\lambda_i.}
\tag{8}
\]

**Proof.** Denote the signed cofactor of `A_{ij}` by `c_{ij}`. Its two-by-two
minor has unit entries, so

\[
c_{ij}=-\frac{P A_{ij}}{R_i p_j}\,\overline{c_{ij}}.
\tag{9}
\]

This follows immediately from
`overline(ad-bc)=-(ad-bc)/(abcd)` for unit phases. Combining (1) and (9),

\[
(L_A)_{ki}
=-\frac{R_i}{P\overline\delta}
\sum_j\frac{A_{kj}^2}{A_{ij}}c_{ij}.
\]

At `k=i`, the sum is the cofactor expansion of `det A`. Therefore

\[
(L_A)_{ii}=-\frac{R_i\delta}{P\overline\delta}
=\lambda_i^{-1}=\overline\lambda_i.
\]

The verifier checks all nine instances of (9), as well as the division-free
version

\[
\bigl(A^{\circ2}\operatorname{adj}(A^\#)\bigr)_{ii}
=-R_i\det A.
\tag{10}
\]

## 4. A metric identity involving only three-by-three matrices

### Lemma 3: metric identity

\[
\boxed{
L_A G^\mathsf T L_A^\dagger
  +2D_\lambda G^\mathsf T D_\lambda^\dagger
=G^{\circ2}.
}
\tag{11}
\]

The right-hand side is the entrywise square of the Gram matrix, not its
matrix square.

**Proof.** Equation (1) and the unit moduli of `p_j` imply

\[
A^\#(A^\#)^\dagger=\overline A A^\mathsf T=G^\mathsf T.
\]

Consequently

\[
L_A G^\mathsf T L_A^\dagger
=A^{\circ2}(A^{\circ2})^\dagger.
\tag{12}
\]

Fix row indices `i,k`, and put `r_j=A_{ij}/A_{kj}`. These are three unit
phases. The elementary symmetric-polynomial identity gives

\[
\sum_j r_j^2
=\left(\sum_jr_j\right)^2
-2\left(\prod_jr_j\right)\overline{\sum_jr_j}.
\]

Here

\[
\sum_jr_j=G_{ik},\qquad
\prod_jr_j=\frac{R_i}{R_k}
=\overline\lambda_i\lambda_k,
\]

so (12) is precisely (11), entry by entry. This also verifies the diagonal:
`9-2*3=3`. The verifier checks all nine Laurent-polynomial identities and
the Gram identity preceding (12).

## 5. A normalized expression with sparse Gram data

For a normalized phase side `A=(1;x;y)` use the supplied notation

\[
G=\begin{pmatrix}3&S&T\\s&3&Q\\t&r&3\end{pmatrix},\quad
s=\sum_jx_j,\quad t=\sum_jy_j,\quad r=\sum_jy_j/x_j,
\]

with `S=bar(s)`, `T=bar(t)`, `Q=bar(r)`. Define

\[
N_0(G)=
\begin{pmatrix}
ST&T&S\\
Q&sQ&s\\
r&t&tr
\end{pmatrix}.
\]

### Lemma 4: sparse expression

\[
\boxed{L_A G^\mathsf T=N_0(G)-\overline z D_\lambda.}
\tag{13}
\]

**Proof.** By definition,

\[
L_A G^\mathsf T
=A^{\circ2}\operatorname{diag}(p_j^{-1})A^\mathsf T.
\]

The off-diagonal entries are the indicated sums of one row ratio, hence
the six displayed Gram entries. The diagonal entries are

\[
ST-\overline\pi,\qquad
sQ-U\overline\pi,\qquad
tr-V_0\overline\pi.
\]

For instance, `ST` consists of the three terms `1/(x_jy_j)` plus the six
terms of `overline(perm A)`. Using the supplied actual-side identities

\[
\pi=z\lambda_0,\qquad
U=\lambda_0\overline\lambda_1,\qquad
V_0=\lambda_0\overline\lambda_2
\]

gives (13). The verifier checks all nine entries over six independent phase
variables before this final notational substitution.

## 6. What remains for Handoff R

On the strict domain, the supplied proof already gives `G_h,G_v>0` and
unit lambda vectors. The identities above turn the problem into transport
between two conic matrices with

\[
\operatorname{diag}L_h=\overline\lambda_h,\quad
\operatorname{diag}L_v=\overline\lambda_v,\quad
\det L_v=\overline{\det L_h},
\]

and with the metric constraints (11). Their off-diagonal entries can also
be obtained from the sparse expression (13).

The unproved step remains: derive, using the actual corner `E` and
`K=-E^dagger G_h^{-1}`, that the cubic modulus defect

\[
(v^\mathsf T Kb)
\bigl((v^\#)^\mathsf T\overline K b^\#\bigr)
-v_0v_1v_2b_0b_1b_2
\]

vanishes whenever `b,v` satisfy the two side conic ideals and the labels are
conjugate. For unit `b,v`, this polynomial is
`(prod_i v_i)(prod_j b_j)(|v^T Kb|^2-1)`. Its required vanishing would prove
the per-entry fallback in the brief. No proof of that step is asserted here.

The separate `diagnostics/check_rejected_claim.py` concerns an earlier, untrusted claim
that **every** complementary pair of blocks in a completed Hadamard has
conjugate signatures. It disproves that earlier claim exactly. It is not a
counterexample to Handoff R, whose hypothesis explicitly assumes matching.

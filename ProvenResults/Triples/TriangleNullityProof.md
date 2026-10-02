# Proof: excluding triangle-kernel nullity three (reproduced)

- **Statement.** dim ker K is in {0,1,2,6} for every aligned order-six
  Hadamard triangle. Three matchings force six.
- **Status.** Proved (analytic). This proof was supplied to the archive and
  reviewed there; the review notes are in
  [TriangleNullities.md](TriangleNullities.md), Section 3.
- **Dependencies.** None beyond elementary linear algebra. The closing
  "Sources and provenance" section names archive notes and papers that are
  used only for definitions and context. The proof does not use their
  theorems.
- **Provenance.** Archive
  `03_algebraic/core/provenance/supplied/MUB6_nullity_three_exclusion.md`,
  reproduced verbatim below the rule. The file names it mentions are
  archive files.
- **Verifier.** [TriangleNullities.py](TriangleNullities.py) checks the
  finite steps and controls.

---

## Excluding triangle-kernel nullity three in dimension six

**Research note — 8 September 2026**

## Result and scope

Let `A,B,X` be any three fixed, aligned, normalized complex Hadamard matrices of order six. Define

\[
(T_k)_{ij}=\frac{\overline{A_{ki}}B_{kj}}{X_{ij}},
\qquad G_k=T_1^\dagger T_k,
\]

and the stabilized positive semidefinite triangle obstruction

\[
K_0=\sum_{2\le j<k\le6}[G_j,G_k]^\dagger[G_j,G_k],
\]
\[
K_{t+1}=K_t+\sum_{k=2}^{6}
\bigl(G_k^\dagger K_tG_k+G_kK_tG_k^\dagger\bigr),
\qquad K=K_6.
\]

The new result proved below is

\[
\boxed{\dim\ker K\ne3.}
\]

Together with the previous elementary exclusions of nullities four and five, this gives

\[
\boxed{\dim\ker K\in\{0,1,2,6\}.}
\]

Equivalently, the normalized phase-matching set

\[
\mathcal Z(A,B;X)=\left\{z\in\mathbb T^6:z_1=1,
\quad A^\dagger D(z)B=D(p)XD(q)
\text{ for some }p,q\in\mathbb T^6\right\}
\]

has cardinality in `{0,1,2,6}`. In particular,

\[
\boxed{\text{Three distinct matchings force six matchings.}}
\]

This is a new working derivation, not a result quoted from the supplied classification paper. The argument is analytic and does not depend on numerical searches, product-regularity, a preferred corner, a genericity assumption, or an assumed block-circulant form. It has not been formally verified or independently refereed.

**Nullity one is not excluded here.** The final appendix gives an exact nullity-one example for the weaker abstract orthogonal-unitary axioms, not for a Hadamard triangle. It identifies an obstruction to extending the old operator-span argument without using additional tensor structure.

The proof actually applies to the larger class of complex `6 x 6 x 6` arrays whose entries have modulus `1/sqrt(6)` and whose two-dimensional coordinate slices are all unitary.

---

## 1. The three-directional unitary array

Throughout, a normalized order-`d` Hadamard is unitary and has all entries of modulus `1/sqrt(d)`. Hatted matrices are unnormalized: `Ahat=sqrt(d) A`.

Define

\[
t_{kij}=(T_k)_{ij}
=\frac1{\sqrt d}\overline{\widehat A_{ki}}
\widehat B_{kj}\overline{\widehat X_{ij}}.
\tag{1.1}
\]

Every entry has modulus `1/sqrt(d)`. More importantly, every coordinate slice is unitary:

- For fixed `k`, the matrix in `(i,j)` is a diagonal-unitary multiple of `conjugate(X)` on each side.
- For fixed `i`, the matrix in `(k,j)` is a diagonal-unitary multiple of `B` on each side.
- For fixed `j`, the matrix in `(k,i)` is a diagonal-unitary multiple of `conjugate(A)` on each side.

These assertions follow directly from (1.1); no triangle matching is being assumed.

In particular,

\[
\operatorname{tr}(T_k^\dagger T_l)
=\operatorname{tr}(G_k^\dagger G_l)=d\delta_{kl}.
\tag{1.2}
\]

For example, fix `i` and use the orthogonality of the rows of the `(k,j)` slice to obtain

\[
\sum_j\overline{t_{kij}}t_{lij}=\delta_{kl};
\]

summing over `i` gives (1.2).

Independent permutations and phase changes in the three tensor coordinates preserve all these properties. They also preserve the number of common input/output eigenlines described below. The argument is allowed to use such tensor transformations: it never assumes that unrelated edge matrices can be simultaneously dephased.

## 2. Common eigenlines and orthogonal tensor components

### 2.1 Stabilized kernels

The kernels in the definition of `K_t` form a decreasing sequence. If two consecutive kernels agree, the common kernel is invariant under every `G_k` and `G_k^dagger`; it is then stable at every later step. At most `d` strict dimension drops can occur.

On the stabilized kernel the original commutators vanish, so the restricted unitaries commute and have a common orthonormal eigenbasis. Conversely every common eigenvector is annihilated by every `K_t`. Thus

\[
\ker K_d=\operatorname{span}\{\text{common eigenvectors of all }G_k\}.
\tag{2.1}
\]

### 2.2 Frobenius-norm saturation

Suppose `v` is a common unit eigenvector:

\[
G_kv=\lambda_kv,\qquad |\lambda_k|=1,\qquad\lambda_1=1.
\]

By (1.2),

\[
M=\sum_k\overline{\lambda_k}G_k
\quad\text{satisfies}\quad
Mv=dv,\qquad \|M\|_F^2=d^2.
\]

Choose an orthonormal basis starting with `v`. The first column of `M` already contributes `d^2` to its squared Frobenius norm, so every other column vanishes. Consequently,

\[
\boxed{
vv^\dagger=\frac1d\sum_k\overline{\lambda_k}G_k.
}
\tag{2.2}
\]

In particular, each common joint eigenspace is one-dimensional. Distinct joint eigencharacters have orthogonal eigenvectors, and (1.2), (2.2) imply

\[
\sum_k\overline{\lambda_k^{(\alpha)}}\lambda_k^{(\beta)}
=d\delta_{\alpha\beta}.
\tag{2.3}
\]

Put `u=T_1v`. Multiplying (2.2) by `d T_1` gives

\[
\sum_k\overline{\lambda_k}T_k=d\,uv^\dagger.
\tag{2.4}
\]

The other two slice-unitarity conditions show that every row and column of the left side has squared norm `d`. The row norms on the right are `d^2 |u_i|^2`, and the column norms are `d^2 |v_j|^2`. Therefore

\[
|u_i|=|v_j|=\frac1{\sqrt d}.
\tag{2.5}
\]

### 2.3 Tensor decomposition

Let `r` be the number of common eigenlines. For their unit eigenvectors `v_alpha`, define

\[
a_\alpha=\frac1{\sqrt d}(\lambda_1^{(\alpha)},\ldots,
\lambda_d^{(\alpha)})^T,
\quad b_\alpha=T_1v_\alpha,
\quad c_\alpha=\overline{v_\alpha}.
\]

Each of the three lists is orthonormal and consists of flat vectors. The array has the decomposition

\[
\boxed{
t=\sqrt d\sum_{\alpha=1}^r
 a_\alpha\otimes b_\alpha\otimes c_\alpha+t_R,
}
\tag{2.6}
\]

where, writing `E_a=span{a_alpha}` and similarly for `E_b,E_c`,

\[
t_R\in E_a^\perp\otimes E_b^\perp\otimes E_c^\perp.
\tag{2.7}
\]

For the second and third modes, this follows from

\[
T_kv_\alpha=\lambda_k^{(\alpha)}b_\alpha,
\qquad
T_k^\dagger b_\alpha=\overline{\lambda_k^{(\alpha)}}v_\alpha.
\]

For the first mode, it follows from (2.4). Thus (2.7) asserts orthogonality in all three modes, not just in the two matrix coordinates of a chosen slice.

### 2.4 The count is independent of tensor direction

Each component displayed in (2.6) supplies a common input/output eigenline when slices are taken in either of the other two directions. For instance, the slice indexed by `i` maps `v_alpha` to `sqrt(d) (b_alpha)_i a_alpha`; the coefficient has modulus one because `b_alpha` is flat.

Hence the number of common eigenlines in a second direction is at least `r`. Applying the same construction starting in that direction gives the reverse inequality. Therefore the count is exactly the same in all three directions.

This symmetry is indispensable below. It allows us to prove a coordinate pairing in each of the three modes; it is not an assumed symmetry of the edge matrices.

### 2.5 Relation to phase matching

For `z_k=conjugate(lambda_k)`, equation (2.4) says that

\[
(A^\dagger D(z)B)\oslash X=d\,uv^\dagger.
\]

By (2.5) the right side is a rank-one phase matrix, so it factors into row and column phase vectors. Thus `z` is a matching.

Conversely, a matching makes this quotient a rank-one phase matrix with nonzero singular value `d`. Equality in the triangle inequality for

\[
\sum_k z_kT_kv
\]

at a unit right singular vector implies `z_kT_kv=T_1v` for every `k`, after `z_1=1`. Hence `v` is a common eigenvector of the `G_k`. This proves

\[
\#\mathcal Z(A,B;X)=\dim\ker K.
\tag{2.8}
\]

## 3. Reminder: the one- and two-dimensional residual exclusions

Let

\[
\mathcal S=\operatorname{span}_{\mathbb C}\{G_1,\ldots,G_d\}.
\]

It has dimension `d` by (1.2), and contains each common eigenprojection by (2.2). Restricting it to the orthogonal complement of the common eigenvectors has a kernel consisting exactly of the span of those `r` projections. Therefore the compressed operator space has dimension `d-r`, as does its underlying vector space. It contains the identity and is spanned by unitary restrictions.

If `d-r=1`, the residual line is another common eigenline. If `d-r=2`, the residual operator space is `span{I,U}` for a nonscalar unitary `U`; an eigenbasis of `U` diagonalizes every restriction. Both cases contradict the definition of `r`.

Thus in dimension six nullities four and five are impossible. We now exclude nullity three.

---

## 4. A four-unitary lemma in dimension three

### Lemma 4.1

Let `V` be a three-dimensional complex linear subspace of `M_3(C)` containing the identity. Suppose it contains four unitaries whose projective points have no collinear triple. Then every operator in `V` has a common eigenvector.

Equivalently, if `V` has no common eigenvector, any four unitary projective points in it contain a collinear triple.

### Proof

The four matrices span `V` and have a linear dependence with all four coefficients nonzero. Absorb coefficient phases into the matrices and multiply all four on the left by the adjoint of the first. The relation becomes

\[
aI+bU=cV+dW,\qquad a,b,c,d>0,
\tag{4.1}
\]

with all four matrices unitary. We temporarily use `V` here as a matrix name.

Set

\[
M=aI+bU=cV+dW,
\qquad R=M^\dagger M=MM^\dagger.
\]

The equality of the two products follows because `M=aI+bU` is normal. The matrices `I,U,V,W` all commute with `R`. For example,

\[
VRV^\dagger=MM^\dagger=R,
\]

as is seen by expanding `M=cV+dW`; the calculation for `W` is identical.

If `R` is not scalar, it has a one-dimensional eigenspace, since it is Hermitian of order three. That eigenspace is common to all four matrices.

Suppose instead `R=rho I`. If `rho=0`, the relation forces `U` to be scalar and `W` to be proportional to `V`, contradicting the three-dimensional span. If `U` is scalar, (4.1) likewise gives a span of dimension at most two. Hence `rho>0` and `U` is nonscalar.

The identity

\[
(aI+bU)^\dagger(aI+bU)=\rho I
\]

makes `U+U^dagger` scalar. Therefore

\[
U=\alpha I+i\beta S,
\]

with `S` a Hermitian involution and real `alpha,beta`, `beta != 0`.

Put `Q=M/sqrt(rho)`. It is a unitary function of `S`. The relation

\[
cQ^\dagger V+dQ^\dagger W=\sqrt\rho I
\]

shows that `Z=Q^dagger V` also has scalar Hermitian part. Thus `Z` is either scalar or is of the form `gamma I+i delta T` with `T` a Hermitian involution.

Two nonscalar Hermitian involutions on a three-dimensional space each have a two-dimensional eigenspace. Those eigenspaces intersect nontrivially. A vector in their intersection is common to `S,T`, hence to `U,Q,V,W`. The scalar alternative for `Z` is even simpler.

We have proved a common eigenline after multiplying all original matrices on the left by one unitary. Returning to the original matrices gives a common input/output line: each sends some `v` into the same line `C u`. Since the identity belongs to their original linear span, `v` itself lies in `C u`. Thus they have a common eigenline before the left multiplication too. As they span the original three-dimensional operator space, this proves the lemma. ∎

## 5. Three common components force pairs of tensor coordinates

Assume for contradiction that `d=6` and `r=3`.

In the orthogonal bases adapted to (2.6), each slice `T_k` has a three-dimensional diagonal common part and a residual `3 x 3` unitary part `U_k`. After multiplying the residual matrices on the left by `U_1^dagger`, put

\[
V_k=U_1^\dagger U_k,\qquad V_1=I_3.
\]

Their span `V` has dimension three and has no common eigenvector; a common eigenvector would be an additional common eigenline of the original `G_k`.

Let

\[
\chi_k=(\lambda_k^{(1)},\lambda_k^{(2)},\lambda_k^{(3)})\in\mathbb T^3.
\]

The residual Gram identity is

\[
\boxed{
\operatorname{tr}(V_k^\dagger V_l)
=6\delta_{kl}-\chi_k^\dagger\chi_l.
}
\tag{5.1}
\]

The `6 x 3` character matrix `Lambda=(lambda_k^(alpha))` satisfies `Lambda^dagger Lambda=6 I_3`. Consequently the Gram matrix of the six vectors `V_k` in their Hilbert–Schmidt space has three eigenvalues equal to six and three equal to zero. Equivalently, they form the tight frame

\[
\sum_{k=1}^6\langle V_k,M\rangle_{HS}V_k=6M
\qquad(M\in\mathcal V).
\tag{5.2}
\]

Each `V_k` has squared Hilbert–Schmidt norm three.

### 5.1 A projective-geometric consequence

By Lemma 4.1, the projective points of the `V_k` contain no four points in general position. A finite spanning set of points in a projective plane with this property lies on one projective line together with one point outside that line.

Here is the elementary argument. Choose three noncollinear points `A,B,C`. Every other point lies on one of their three joining lines, or it would complete a quadrangle. If two further nonvertex points lie on different joining lines, those two points together with the opposite two vertices form a quadrangle. Thus all additional nonvertex points lie on a single joining line. The third vertex is the only point outside it. Repeated projective points cause no change to this argument.

Hence the six matrices lie in a two-dimensional linear plane `W` or in a single line `L` outside it. The tight-frame identity (5.2) forces

\[
\mathcal L\perp\mathcal W.
\tag{5.3}
\]

Indeed, the off-diagonal block of the frame operator relative to `W` and `W^perp` receives no contribution from the vectors in `W`. All remaining vectors are proportional, so their positive rank-one contributions cannot cancel this block unless their `W` component vanishes.

There are exactly two frame vectors on `L`: restriction of (5.2) to `L` gives `3 times their number = 6`.

### 5.2 Flat character rows give three pairs

Let these two indices be `p,q`, with `V_q=rho V_p`, `|rho|=1`. Equation (5.1) gives

\[
\chi_p^\dagger\chi_q=-3\rho,
\qquad\text{hence}\qquad \chi_q=-\rho\chi_p.
\tag{5.4}
\]

For every other index `k`, (5.3) and (5.1) give

\[
\chi_k\perp\chi_p.
\]

A flat vector in `C^3` perpendicular to a fixed flat vector lies on one of exactly two phase lines. After coordinate phases send the fixed vector to `(1,1,1)`, these are the lines through

\[
(1,\omega,\omega^2),\qquad(1,\omega^2,\omega),
\quad \omega=e^{2\pi i/3}.
\]

This follows because three unit complex numbers sum to zero only when they form a rotated equilateral triple.

Thus the six rows `chi_k` lie on three mutually orthogonal phase lines. The identity `Lambda^dagger Lambda=6 I_3`, and the squared row norm three, force two rows on each line.

Therefore the six coordinates in the first tensor mode split into three pairs, with a fixed phase ratio within each pair for every vector in `E_a`. Coordinate phasings make these ratios one. In that gauge, `E_a` is exactly the three-dimensional space of vectors constant on each pair, and `E_a^perp` is the space antisymmetric on each pair.

By the directional invariance proved in Section 2.4, exactly the same argument applies in the other two modes. We obtain paired coordinates in all three modes.

## 6. The forced paired normal form

Label the coordinates in each mode by `(a,epsilon)`, where `a in Z_3` and `epsilon in {+1,-1}`. Then

\[
\boxed{
t_{(a,\varepsilon),(b,\delta),(c,\eta)}
=\frac12\bigl(P_{abc}+\varepsilon\delta\eta\,Q_{abc}\bigr).
}
\tag{6.1}
\]

The three common components give

\[
P_{abc}=\sqrt3\sum_{\alpha=0}^2
F^{(1)}_{a\alpha}F^{(2)}_{b\alpha}F^{(3)}_{c\alpha},
\tag{6.2}
\]

where each `F^(m)` is a normalized order-three complex Hadamard. The residual tensor occupies the antisymmetric pair spaces and gives `Q`.

Applying the two-point Fourier transform within the paired row and column coordinates of a fixed slice of (6.1) gives a block diagonal matrix with blocks `P_a` and `epsilon Q_a`. Therefore **every coordinate slice of both `P` and `Q` is unitary**. The argument applies in each of the three directions.

### 6.1 Fourier form of the common part

Every order-three complex Hadamard can be transformed, using row phases and row permutations, into `F_3 D`, with `D` a diagonal phase matrix. To verify this directly, dephase an order-three Hadamard: each noninitial row is a permutation of `(1,omega,omega^2)`, and orthogonality fixes the relative ordering. Finally, every permutation of the three Fourier columns is affine modulo three and can be absorbed into row phases and a row permutation.

Apply these row operations independently in the three tensor modes, equally on the two coordinates of each pair. The column phases combine into three phases `rho_alpha`. Thus

\[
\boxed{
P_{abc}=p_{a+b+c},\qquad
p_s=\frac13\sum_{\alpha=0}^2\rho_\alpha\omega^{s\alpha},
\quad|\rho_\alpha|=1.
}
\tag{6.3}
\]

We do not discard the phases `rho_alpha`. In particular, we do not assume that `P` is a permutation tensor.

### 6.2 Flatness leaves only signs in the residual

For each triple `(a,b,c)`, both signs in (6.1) occur among the original entries. Their squared moduli are `1/6`, so

\[
\boxed{
|P_{abc}|^2+|Q_{abc}|^2=\frac23,
\qquad \operatorname{Re}(P_{abc}\overline{Q_{abc}})=0.
}
\tag{6.4}
\]

Consequently,

\[
|Q_{abc}|=q_{a+b+c},\qquad
q_s=\sqrt{\frac23-|p_s|^2}.
\tag{6.5}
\]

### 6.3 No zero-value exception is lost

All three `p_s` are nonzero. Otherwise the orthogonality of two cyclic rows of a `P` slice forces a second `p_s` to vanish. Row normalization would make the sole remaining value have modulus one, contrary to `|p_s|^2 <= 2/3` from (6.4).

All three `q_s` are also nonzero. If exactly one vanished, two cyclic-modulus rows of a `Q` slice would overlap in exactly one nonzero position, contradicting orthogonality. If two vanished, the third would have modulus one by row normalization, again contrary to (6.4).

Thus the quantities

\[
w_s=i\,q_s\frac{p_s}{|p_s|}
\]

are well defined and nonzero. The second identity in (6.4) now gives

\[
\boxed{Q_{abc}=\sigma_{abc}w_{a+b+c},
\qquad\sigma_{abc}\in\{+1,-1\}.}
\tag{6.6}
\]

## 7. Rigidity of the signed cyclic tensor

### Lemma 7.1

Suppose `w_0,w_1,w_2` are nonzero, and

\[
Q_{abc}=\sigma_{abc}w_{a+b+c},\qquad\sigma_{abc}\in\{+1,-1\},
\]

has unitary coordinate slices in all three directions. Then there are signs `xi_a,chi_b,psi_c,tau_s` such that

\[
\boxed{Q_{abc}=\xi_a\chi_b\psi_c\,w'_{a+b+c},
\qquad w'_s=\tau_s w_s.}
\tag{7.1}
\]

In particular, `Q` is equivalent by separate coordinate phases to a cyclic tensor, and has three mutually orthogonal flat rank-one tensor components.

### Proof

Set

\[
z_s=w_s\overline{w_{s+1}},\qquad s\in\mathbb Z_3.
\]

All three values are nonzero. Orthogonality of adjacent rows of a slice gives a sign relation

\[
h_0z_0+h_1z_1+h_2z_2=0,\qquad h_s\in\{+1,-1\}.
\tag{7.2}
\]

For three nonzero complex numbers `z_s`, a relation of this form has at most one sign pattern up to an overall minus sign. Indeed, two patterns that are not equal or opposite either differ in exactly one position, or become so after negating one pattern. Subtracting the corresponding zero sums would make one `z_s` vanish.

Choose one such pattern `h`. Applying uniqueness to every adjacent-row orthogonality equation gives

\[
\sigma_{abc}\sigma_{a,b+1,c}=\kappa_{ab}h_{a+b+c},
\tag{7.3}
\]

where `kappa_ab` is independent of `c`. Use the slices with `c` fixed instead: their adjacent-column equations express the same left side with a sign independent of `a`. Comparing the two expressions shows that `kappa_ab` depends only on `b`; call it `kappa_b`. The corresponding facts hold for increments in `a` and `c`.

Let `H=h_0h_1h_2`. Choose signs `tau_s` satisfying

\[
\tau_s\tau_{s+1}=Hh_s.
\tag{7.4}
\]

Such signs exist because the product of the three right-hand sides is one. Replace

\[
\sigma_{abc}\mapsto\sigma'_{abc}=\sigma_{abc}\tau_{a+b+c},
\quad w_s\mapsto w'_s=\tau_s w_s;
\]

the tensor is unchanged. Its adjacent sign ratios now satisfy

\[
\sigma'_{abc}\sigma'_{a,b+1,c}=H\kappa_b,
\]

and analogously in the other directions. Each ratio depends only on the coordinate being changed. Therefore

\[
\sigma'_{abc}=\xi_a\chi_b\psi_c.
\]

This proves (7.1).

After removing these coordinate signs, the cyclic slice with entries `w'_(b+c)` is unitary. Its Fourier coefficients

\[
\theta_\alpha=\sum_{s=0}^2 w'_s\omega^{-s\alpha}
\]

therefore have modulus one. Hence

\[
Q_{abc}=\sqrt3\sum_{\alpha=0}^2\theta_\alpha
\bigl(\xi_a(F_3)_{a\alpha}\bigr)
\bigl(\chi_b(F_3)_{b\alpha}\bigr)
\bigl(\psi_c(F_3)_{c\alpha}\bigr).
\tag{7.5}
\]

Each of the three factor lists is an orthonormal flat basis. This is the asserted three-component orthogonal decomposition. ∎

## 8. Completion of the contradiction

Lemma 7.1 supplies three flat orthogonal components for the residual tensor `Q`. Lift them into the antisymmetric pair spaces by replacing an order-three factor `f_a` with the order-six factor

\[
\widetilde f_{(a,\varepsilon)}=\frac{\varepsilon f_a}{\sqrt2}.
\]

These lifted vectors are flat, have norm one, and are orthogonal to all three original common components, which are constant on the pairs.

The normalization in (6.1) gives precisely

\[
\frac12\varepsilon\delta\eta Q_{abc}
=\sqrt6\sum_{\alpha=0}^2\theta_\alpha
\widetilde a_\alpha\otimes\widetilde b_\alpha\otimes\widetilde c_\alpha.
\]

Thus the residual contributes three further common eigenlines of the original slice family. The original three plus these three give six, contradicting the assumption `r=3`.

We have proved

\[
\boxed{r\ne3.}
\]

Combining this with Section 3,

\[
\boxed{r\in\{0,1,2,6\}.}
\]

If at least three matchings exist, all six exist, the `G_k` are simultaneously diagonalizable, and already

\[
K_0=0.
\]

Equivalent ways to state the result on the physical Hadamard-triangle domain are

\[
\boxed{\operatorname{rank}K\in\{0,4,5,6\},}
\qquad
\boxed{e_4(K)=0\ \Longrightarrow\ K=0.}
\]

Here `e_4(K)` is the sum of the principal fourth-order minors. Since `K` is positive semidefinite, its vanishing means `rank K <= 3`.

## 9. What this does and does not settle

This globally removes the nullity-three physical system

\[
e_4(K)=0,\qquad e_3(K)>0
\]

from the reconstruction-coordinate program. There is no need to enumerate product sheets or corner frames to exclude it: the proof applies before making those choices.

The nullity-one system

\[
\det K=0,\qquad e_5(K)>0
\]

remains undecided for physical Hadamard triangles. In particular, the rank-five adjugate reduction in the preceding research note remains potentially relevant.

Excluding nullity three does not prove nonexistence of four MUBs. A hypothetical quartet would have compatible triangles with nullities in `{1,2,6}`. Their shared matching choices must still satisfy the final transition's flatness equations. No implication that a quartet must contain a nullity-three triangle is being asserted.

---

## Appendix A. Why the abstract unitary axioms do not exclude nullity one

Let `P_k` be the permutation matrices whose action is

\[
(P_kv)_j=v_{p_k(j)},
\]

where the six rows below give `p_k(j)` with zero-based indices:

\[
\begin{pmatrix}
0&1&2&3&4&5\\
1&2&3&4&5&0\\
2&3&5&0&1&4\\
3&0&4&5&2&1\\
4&5&0&1&3&2\\
5&4&1&2&0&3
\end{pmatrix}.
\tag{A.1}
\]

These are six unitary matrices with

\[
P_0=I,
\qquad\operatorname{tr}(P_k^\dagger P_l)=6\delta_{kl}.
\]

They have exactly one common eigenline. To see this, `P_1` is a six-cycle, with simple Fourier eigenvectors `v_j=exp(2 pi i m j/6)`. For such a vector also to be an eigenvector of `P_2`, the values

\[
m(p_2(j)-j)\pmod6
\]

must be constant. The differences include two and three, forcing `m=0`. Thus the only common line is the all-ones line, which every permutation matrix fixes.

An exact calculation gives the initial commutator obstruction

\[
K_0=\begin{pmatrix}
12&-1&-3&-1&-4&-3\\
-1&12&-3&-3&-4&-1\\
-3&-3&16&-3&-4&-3\\
-1&-3&-3&12&-4&-1\\
-4&-4&-4&-4&20&-4\\
-3&-1&-3&-1&-4&12
\end{pmatrix},
\]

with characteristic polynomial

\[
\lambda(\lambda-11)(\lambda-15)^2(\lambda-19)(\lambda-24).
\]

Its kernel is exactly the all-ones line and remains so under stabilization.

**This is not a Hadamard-triangle counterexample.** The permutation slices are not flat, and no realization of this example in the full triangle form is claimed. It proves only that Hilbert–Schmidt orthogonality, unitarity, identity in the span, and a flat common eigenvector do not by themselves rule out nullity one. Any physical nullity-one exclusion needs further structure.

## Sources and provenance

- `MUB6_product_regular_compatibility.md`: prior triangle-matching definitions and the spectral correspondence.
- `MUB6_triangle_coordinates_and_adjugate_reduction.md`: the previous residual-dimension gap, reconstruction equations, and rank-stratum residuals. The present note improves its global list by excluding nullity three.
- Cárdenes Wuttig and Tindall, *A Complete Classification of Complex Hadamard Matrices of Order Six*, arXiv:2608.18053v2: the supplied reconstruction framework. Its Outlook explicitly distinguishes individual Hadamard classification from the remaining joint MUB compatibility problem. None of its classification or product-reach theorems is needed for the exclusion proved here.
- Matolcsi, Matszangosz, Varga and Weiner, *Triplets of Mutually Unbiased Bases*, arXiv:2503.14752v2, Proposition 3.1: related Hadamard-cube formalism and slice properties. The array in Section 1 need not satisfy their piercing-sum convention before a compatible matching and gauge are selected; only the explicitly proved flatness and slice-unitarity properties are used here.

The nullity-three proof is a mathematical derivation in this note, not a conclusion attributed to either external paper. The numerical explorations performed while developing it are not used as premises.

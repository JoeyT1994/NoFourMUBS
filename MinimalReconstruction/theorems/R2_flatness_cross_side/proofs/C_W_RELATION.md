# Exact relation between the conic contraction and weighted defect

All transposes in this note are ordinary transposes, except the explicitly
written Hermitian star. Indices of the normalized sides are 0, 1, 2, with
constant row 0. The two conic coordinates are indexed 1, 2.

## 1. The change of coordinates

Let `A=(1;x;y)` be either normalized invertible phase side, and define

\[
\Psi_A=\begin{pmatrix}
\bar x_0-S/3&\bar x_1-S/3&\bar x_2-S/3\\
\bar y_0-T/3&\bar y_1-T/3&\bar y_2-T/3
\end{pmatrix},
\qquad M_A=\Psi_A\Psi_A^{\mathsf T}.
\]

The second expression is a **bilinear** covariance, not a Hermitian Gram.
Its explicit formula in the input's affine quantities is

\[
\boxed{M_A(z)=\begin{pmatrix}
\tfrac23 S^2-2s u_1(z)&\tfrac23 ST-\beta(z)\\
\tfrac23 ST-\beta(z)&\tfrac23 T^2-2t u_2(z)
\end{pmatrix}.}
\tag{1}
\]

Indeed the entries are the centered sums of `bar(x)^2`, `bar(x)bar(y)`,
and `bar(y)^2`. The uncentered sums are `S^2-2s bar(U)`, `ST-bar(pi)`,
and `T^2-2t bar(V_0)`, respectively.

Because `Psi_A 1=0`,

\[
\boxed{\bar A\Psi_A^{\mathsf T}=J M_A,\qquad J=\begin{pmatrix}0&0\\1&0\\0&1\end{pmatrix}.}
\tag{2}
\]

Thus this product has a zero first row and the 2 by 2 block M_A as its
last two rows.

Using the already established identity
`Delta=Psi_v^T C Psi_h`, equation (2) gives

\[
\boxed{W=\bar V\Delta\bar B^{\mathsf T}
 =J M_v\mathcal C M_h^{\mathsf T}J^{\mathsf T}.}
\tag{3}
\]

Thus, writing W_b for its lower-right 2 by 2 block,

\[
\boxed{W_b=M_v\mathcal C M_h^{\mathsf T},\qquad
\mathcal C=M_v^{-1}W_bM_h^{-\mathsf T}.}
\tag{4}
\]

### Invertibility introduces no excluded locus

Subtract S/3 and T/3 multiples of the first row from the other two rows
of bar(A), producing N with rows `1, Psi_1, Psi_2`. Then

\[
NN^{\mathsf T}=\operatorname{diag}(3,M_A),\qquad
\det N=\det\bar A.
\]

Consequently

\[
\boxed{\det M_A=\frac{(\det\bar A)^2}{3}
=-\frac{g\lambda_1\lambda_2}{3\lambda_0}\ne0,
\qquad |\det M_A|=g/3.}
\tag{5}
\]

The phase form uses `g=delta bar(delta)`,
`lambda_0=-UV_0 bar(delta)/delta`,
`U=lambda_0/lambda_1`, and `V_0=lambda_0/lambda_2`.
Strictness already gives `g>0`; no extra nonvanishing assumption is needed.

## 2. What one universal entry means

At a fixed corner, W_11 is generally a mixture of all four contractions:

\[
W_{11}=\sum_{p,q=1}^2(M_v)_{1p}\mathcal C_{pq}(M_h)_{1q}.
\tag{6}
\]

Neither (3) nor (4) identifies W_11 with a scalar multiple of C_11.
Thus a proof of just one vanishing scalar at one fixed corner does not
supply all entries in either representation.

The **universal** reduction works separately for both representations.
Let S_h,S_v be independent 3 by 3 permutation matrices that fix coordinate
0 and optionally exchange 1 and 2. Set

\[
E'=S_h E S_v^{\mathsf T},\quad B'=S_h B,\quad V'=S_v V,
\quad K'=S_vKS_h^{\mathsf T}.
\]

These preserve the normalized corner form, strict-domain hypotheses,
invariants, and side labels. They also preserve the forced block D. Let
J_h,J_v be the corresponding 2 by 2 permutation matrices. The centered
functions transform by `Psi_h'=J_h Psi_h` and `Psi_v'=J_v Psi_v`; the sparse
coefficient matrices transform by coordinate conjugation and relabelling.
It follows that

\[
\boxed{\mathcal C'=J_v\mathcal C J_h^{\mathsf T},\qquad
W_b'=J_vW_bJ_h^{\mathsf T}.}
\tag{7}
\]

A universal C_11 identity therefore gives C_12,C_21,C_22 by the two swaps.
A universal W_11 identity similarly gives all W entries; equation (4) then
gives all C entries. The same argument applies to ideal membership in the
two matching generators, not only to evaluation at matched labels.

## 3. The affine assertion must mean quadratic reduction

Put h=chi/g and q(t)=t^2-ht+eta. For each side define

\[
a_i(t)=\frac{g+c_i t}{P_i},\qquad
\beta_i(t)=\frac{\chi+c_i\eta-gt}{P_i}.
\]

Since `bar(lambda_i)=a_i(t)` and the conjugate label equals `h-t`,
reducing `(h-t)a_i(t)` modulo q gives beta_i. Therefore the actual conic
matrix has the affine representative

\[
\boxed{L(t)=\bigl(\mathcal T(G)-\operatorname{diag}(\beta_i(t))\bigr)
G^{-\mathsf T},\qquad
[t]L(t)=\operatorname{diag}(P_i^{-1})\operatorname{adj}(G^{\mathsf T}).}
\tag{8}
\]

The sparse R formulas contain products of entries of L and a division by
L_00. These are not literally affine expressions in a free variable t
before reduction. In the quadratic algebra their inverse factor is

\[
L_{00}^{-1}=\lambda_0(t)
=\frac{g+c_0(h-t)}{\bar P_0}.
\tag{9}
\]

Indeed `(g+c_0t)(g+c_0(h-t))` reduces to
`g^2+c_0 chi+c_0^2 eta=P_0 bar(P_0)`. Thus insert (9), multiply, and
reduce modulo q. Every entry has a unique affine representative. This is
the appropriate interpretation of the independent-label C(z,w) target:
use these affine representatives separately in z and w. The divisors are
exactly the already guarded g, P_i and their conjugates.

## 4. A small exact ideal-transfer calculation

This section transfers an existing W certificate; it does **not** prove
the missing cross-side cancellation independently of that certificate.

Let F be the rational coefficient field, and work first in

\[
\mathscr A=F[z,w]/(q(z),q(w)).
\]

Put `S=z+w-h` and `T=zw-eta`. Direct use of the two quadratics gives

\[
zS=wS=T,\qquad zT=wT=hT-\eta S,
\]
\[
zwS=hT-\eta S,\qquad
zwT=(h^2-\eta)T-h\eta S.
\tag{10}
\]

Hence the matching ideal in this four-dimensional algebra is the
two-dimensional F-space spanned by S and T. It is closed under
multiplication by both labels.

Assume an already proved 2 by 2 matrix certificate

\[
W_b(z,w)=B_W S+D_W T.
\]

Let the inverses of the affine covariance matrices have the reduced forms

\[
M_v(w)^{-1}=V_0+wV_1,\qquad
M_h(z)^{-\mathsf T}=H_0+zH_1.
\]

### Explicit inverses using only established divisors

Let `red_q` denote the affine remainder modulo q. The actual-side
determinant formula (5) yields, in the side quadratic algebra,

\[
d(t):=\operatorname{red}_q\det M(t)
=-\frac{g\lambda_1(t)\lambda_2(t)}{3\lambda_0(t)}.
\tag{10a}
\]

This can be justified by (5) on both strict side branches and uniqueness
of affine interpolation. The included `verification/check_covariance_norm.py` also
verifies (10a) directly over six independent Gram variables, so this
identity does not require an unverified inference about side existence.

The individual lambda norm identity gives

\[
\lambda_j(t)\lambda_j(h-t)
=\frac{(g+c_jt)(g+c_j(h-t))}{\bar P_j^{\,2}}
=\frac{P_j}{\bar P_j}
\quad\pmod{q(t)}.
\]

It follows immediately that

\[
\boxed{d(t)d(h-t)=\mathcal N_A,
\qquad
\mathcal N_A=\frac{g^2}{9}
\frac{P_1P_2\bar P_0}{\bar P_1\bar P_2P_0}.}
\tag{10b}
\]

Swapping the label does not conjugate the Gram coefficients, so the
unit-phase ratio in (10b) is essential. All of its factors are already
nonzero throughout the strict domain. In particular,

\[
\boxed{M(t)^{-1}=
\frac{9\bar P_1\bar P_2P_0}{g^2P_1P_2\bar P_0}
\operatorname{red}_q\!\left[
\operatorname{adj}(M(t))\,d(h-t)\right].}
\tag{10c}
\]

There is no new determinant guard hidden in this inverse. For explicit
affine coefficients, write `M(t)=M_0+tM_1`, and put

\[
\begin{aligned}
d_0&=\det M_0-\eta\det M_1,\\
d_1&=\operatorname{tr}(\operatorname{adj}(M_0)M_1)+h\det M_1,\\
J_0&=\operatorname{adj}(M_0),\qquad J_1=\operatorname{adj}(M_1).
\end{aligned}
\]

The adjugate is linear for 2 by 2 matrices. Thus

\[
\boxed{\begin{aligned}
[M^{-1}]_0&=\mathcal N_A^{-1}
\bigl((d_0+hd_1)J_0+\eta d_1J_1\bigr),\\
[M^{-1}]_1&=\mathcal N_A^{-1}
\bigl(-d_1J_0+d_0J_1\bigr).
\end{aligned}}
\tag{10d}
\]

Use these coefficients for V_0,V_1 and H_0,H_1 above. Since M is symmetric,
its inverse transpose is the same matrix.

Define linear matrix operators

\[
\mathfrak L_0(X)=V_0XH_0,\quad
\mathfrak L_1(X)=V_1XH_0+V_0XH_1,\quad
\mathfrak L_2(X)=V_1XH_1.
\]

Equations (4) and (10) give explicit coefficients

\[
\boxed{\begin{aligned}
B_C={}&\mathfrak L_0(B_W)-\eta\mathfrak L_2(B_W)
-\eta\mathfrak L_1(D_W)-h\eta\mathfrak L_2(D_W),\\
D_C={}&\mathfrak L_1(B_W)+h\mathfrak L_2(B_W)
+\mathfrak L_0(D_W)+h\mathfrak L_1(D_W)
+(h^2-\eta)\mathfrak L_2(D_W).
\end{aligned}}
\tag{11}
\]

Thus `C=B_C S+D_C T` in the quadratic algebra. Both the direct affine-R
contraction and this last expression are bilinear in the independent labels.
The four monomials `1,z,w,zw` are a basis of A, so this is also an identity
of their bilinear polynomial representatives in F[z,w].

These formulas explain exactly how the existing universal W_11 certificate,
its coordinate relabellings, and the conic projector formulas imply the
requested ideal membership. They do not replace the existing W coefficient
identities with a new structural proof of those identities.

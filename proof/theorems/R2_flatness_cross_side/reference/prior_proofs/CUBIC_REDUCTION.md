# A conic normal form for the matched-flatness problem

## Status and scope

This note proves a structural description of the *representation* of
third moments. It does **not** prove the matched horizontal/vertical
cancellation requested in Handoff R. In particular, none of the statements
below removes `FlatCheckW11` on its own.

The result is a pair of explicit five-entry matrices per side, with a
unit-phase denominator, such that matched flatness is equivalent to four
scalar contractions. Universal relabelling reduces the task to one universal
contraction. The missing statement is displayed explicitly in Section 7.

The conic normal form, its full point ideal, and its cubic remainders have
short algebraic proofs. The cubic remainder is checked with **nine
algebraically independent entries of L**, not just sampled phase sides.

All indices are 0, 1, 2. A star denotes conjugate transpose; a bar denotes
entrywise conjugation. For a column vector, put

\[
v^\#=(v_1v_2,v_0v_2,v_0v_1)^{\mathsf T},\qquad
p(v)=v_0v_1v_2.
\]

## 1. The normal form of an invertible phase side

Let A be an invertible 3 by 3 phase matrix. Write

\[
\delta=\det A,\quad P=\prod_{i,j}A_{ij},\quad
r_i=\prod_j A_{ij},\quad c_j=\prod_i A_{ij},
\]

and define

\[
\lambda_i=-\frac{P\bar\delta}{\delta r_i},\qquad
M_A=A^{\circ2}\operatorname{diag}(c_j^{-1}),\qquad
\boxed{L_A=M_A\bar A^{-1}.}
\tag{1.1}
\]

Every lambda is a unit phase. Let A# denote the matrix whose columns are the
sharp vectors of the columns of A. Since the entries of A are phases,

\[
A^\#=\bar A\operatorname{diag}(c_j),\qquad
\det A^\#=P\bar\delta\ne0.
\tag{1.2}
\]

Consequently

\[
\boxed{L_A=A^{\circ2}(A^\#)^{-1}},\qquad
\boxed{a_j^{\circ2}=L_A a_j^\#}
\tag{1.3}
\]

for each side column a_j.

### 1.1 Its diagonal consists of unit phases

For the cofactor C_ij of a phase matrix, the two terms in its 2 by 2 minor
have product P A_ij/(r_i c_j). If those two terms are u and v, their unit
moduli give u-v=-uv conjugate(u-v). Thus

\[
C_{ij}=-\frac{P A_{ij}}{r_i c_j}\bar C_{ij}.
\tag{1.4}
\]

Equivalently,

\[
(A^{-1})_{ji}=\frac{\lambda_i A_{ij}}{c_j}
  (\bar A^{-1})_{ji}.
\]

Using this in the diagonal of (1.1) yields

\[
(L_A)_{ii}
=\sum_j\frac{A_{ij}^2}{c_j}(\bar A^{-1})_{ji}
=\lambda_i^{-1}\sum_j A_{ij}(A^{-1})_{ji}
=\bar\lambda_i.
\tag{1.5}
\]

In particular, **(L_A)_00 is nonzero and has modulus one.** All divisions by
this entry in the cubic reduction below are valid, including at sides where
some other off-diagonal conic coefficient vanishes.

### 1.2 The label is a shifted determinant

The universal 3 by 3 Laurent identity

\[
\det(A)\operatorname{perm}(A)
=\det(A^{\circ2})+2P\det(A^{\circ-1})
\tag{1.6}
\]

follows by grouping the two-permutation terms in the determinant times
permanent. For a phase matrix A, A^(circ -1)=bar A. Hence, with

\[
z=-\frac{\operatorname{perm}(A)\det A}{P\overline{\det A}},
\]

equations (1.2) and (1.6) give

\[
\boxed{\det L_A=-(z+2).}
\tag{1.7}
\]

For horizontal label z and vertical label conjugate(z), matching therefore
has the particularly simple form

\[
\det L_h=\overline{\det L_v}.
\tag{1.8}
\]

Equation (1.8) is a necessary restatement of matching, not a proof that the
transport contractions below vanish.

## 2. Computing L from the supplied Gram and lambda data

Now normalize the first row of A to ones and use the brief's notation

\[
G=AA^*=\begin{pmatrix}3&S&T\\s&3&Q\\t&r&3\end{pmatrix}.
\]

Put D_lambda=diag(conjugate(lambda_i)) and

\[
\mathcal T(G)=
\begin{pmatrix}
ST&T&S\\
Q&sQ&s\\
r&t&tr
\end{pmatrix}.
\]

Directly multiplying M_A A^T gives

\[
\boxed{L_A G^{\mathsf T}=\mathcal T(G)-\bar z D_\lambda},\qquad
\boxed{L_A=(\mathcal T(G)-\bar z D_\lambda)G^{-\mathsf T}.}
\tag{2.1}
\]

For example, an off-diagonal entry is a sum of one row divided by the third
row, hence an entry of G. The three diagonal entries of M_A A^T are

\[
ST-\bar\pi,\quad sQ-U\bar\pi,\quad tr-V_0\bar\pi.
\]

Here pi is the permanent, U and V_0 are the two nonconstant row products,
and the supplied actual-side identities give

\[
\bar\pi=\bar z\bar\lambda_0,\quad
U\bar\pi=\bar z\bar\lambda_1,\quad
V_0\bar\pi=\bar z\bar\lambda_2.
\]

Thus (2.1) uses only the already supplied Gram, lambda and label data. On
the strict domain, the existing theorem supplies invertibility of G and
nonzero P_j, so this construction adds no exceptional locus.

## 3. These conics generate the entire three-point ideal

For L=L_A, define

\[
q_i(v)=v_i^2-(L v^\#)_i.
\tag{3.1}
\]

The conics q_i vanish at the three projective side columns by (1.3).
They are linearly independent: their coefficients on the three square
monomials (v0^2,v1^2,v2^2) form the identity matrix.

Because A is invertible, its three projective columns are noncollinear.
The vector space of quadrics vanishing at three noncollinear projective
points has dimension 6-3=3. Hence q0,q1,q2 form its basis. Moreover they
generate the full homogeneous ideal of these three points: after the
invertible change of variables u=A^-1 v, the ideal is

\[
(u_0u_1,u_0u_2,u_1u_2),
\]

which is generated in degree two. This argument does not require any
unproved independence claim for a different set of cofactor conics.

## 4. A complete cubic reduction with an explicit remainder

This section is valid for an **arbitrary** 3 by 3 matrix L with
alpha=L00 nonzero; no Gram or phase identities are needed.

Set

\[
\mu(v)=(p(v),v_0^2v_2,v_0^2v_1)^{\mathsf T}.
\]

For t=(t0,t1,t2), define linear forms

\[
\begin{aligned}
r_{10}(t)&=L_{10}t_0+L_{11}t_1+L_{12}t_2,\\
r_{20}(t)&=L_{20}t_0+L_{21}t_1+L_{22}t_2,\\
r_{12}(t)&=\frac{t_2-L_{01}t_0-L_{02}r_{10}(t)}{\alpha},\\
r_{21}(t)&=\frac{t_1-L_{02}t_0-L_{01}r_{20}(t)}{\alpha},
\end{aligned}
\]

and the matrix pencil

\[
\mathcal R_L(t)=
\begin{pmatrix}
t_0&t_1&t_2\\
r_{12}(t)&t_0&r_{10}(t)\\
r_{21}(t)&r_{20}(t)&t_0
\end{pmatrix}.
\tag{4.1}
\]

The exact remainder identity is

\[
\boxed{v(v^\#)^{\mathsf T}=\mathcal R_L(\mu(v))+\mathcal E_L(v,q(v)),}
\tag{4.2}
\]

where

\[
\mathcal E_L(v,q)=
\begin{pmatrix}
0&0&0\\
-(v_1q_0+L_{02}v_0q_1)/\alpha&0&v_0q_1\\
-(v_2q_0+L_{01}v_0q_2)/\alpha&v_0q_2&0
\end{pmatrix}.
\tag{4.3}
\]

For a short proof, q1 times v0 and q2 times v0 give the (1,2) and (2,1)
entries. Then q0 times v1 and q0 times v2 give the (1,0) and (2,0)
entries. All other entries are equal by their definitions.

This is an explicit ideal-membership certificate for every cubic used in
the norm-defect calculation, rather than an assertion that a remainder
vanishes on sampled points.

Writing R_L(t)=R0 t0+R1 t1+R2 t2 gives

\[
R_0=
\begin{pmatrix}
1&0&0\\
-(L_{01}+L_{02}L_{10})/\alpha&1&L_{10}\\
-(L_{02}+L_{01}L_{20})/\alpha&L_{20}&1
\end{pmatrix},
\tag{4.4}
\]

\[
\boxed{R_1=
\begin{pmatrix}
0&1&0\\
-L_{02}L_{11}/\alpha&0&L_{11}\\
(1-L_{01}L_{21})/\alpha&L_{21}&0
\end{pmatrix},}
\tag{4.5}
\]

\[
\boxed{R_2=
\begin{pmatrix}
0&0&1\\
(1-L_{02}L_{12})/\alpha&0&L_{12}\\
-L_{01}L_{22}/\alpha&L_{22}&0
\end{pmatrix}.}
\tag{4.6}
\]

R1 and R2 each have at most five nonzero entries. Their traces are zero;
the trace of R0 is 3.

## 5. Centered projectors

Return to an actual normalized phase side A. On a side column
v=(1,x,y)^T, one has

\[
v^\#=p(v)\bar v,\qquad
\mu(v)/p(v)=(1,\bar x,\bar y)^{\mathsf T}.
\]

Consequently (4.2) gives the projector identity

\[
vv^*=R_0+R_1\bar x+R_2\bar y.
\tag{5.1}
\]

The three coefficient functions (1,conjugate(x),conjugate(y)) form an
invertible evaluation matrix: that matrix is conjugate(A). Equivalently,
the cubic interpolation basis mu has determinant P conjugate(delta), by
(1.2). Thus this is a genuine three-dimensional interpolation basis, with
no further nonvanishing assumption.

Averaging (5.1) over the three side columns shows

\[
R_0+(S/3)R_1+(T/3)R_2=G/3.
\]

Define the centered functions

\[
\psi_1(v)=\bar x-S/3,\qquad
\psi_2(v)=\bar y-T/3.
\]

Then

\[
\boxed{vv^*=G/3+R_1\psi_1(v)+R_2\psi_2(v).}
\tag{5.2}
\]

Besides trace(Rp)=0, these matrices satisfy

\[
\operatorname{tr}(G^{-1}R_p)=0,\qquad p=1,2.
\tag{5.3}
\]

Indeed A*G^-1 A=I, so v*G^-1 v=1 on every side column. Substituting
(5.2), and using independence of the three evaluation functions, proves
(5.3).

## 6. Exact equivalence with four scalar transport identities

Use the brief's E, Gh, Gv, F=Gv^T, B, V and K=-E*Gh^-1. Let b_j and v_i
be the side columns, so Dij=v_i^T K b_j. Compute Rp,h and Rp,v using
(2.1), (4.5) and (4.6). Define

\[
\boxed{\mathcal C_{pq}
=\operatorname{tr}\!\left((R_{p,v})^{\mathsf T}
 K R_{q,h}K^*\right),\qquad p,q\in\{1,2\}.}
\tag{6.1}
\]

The transpose, rather than conjugate transpose, in this contraction is
essential. The exact defect formula is

\[
\boxed{|D_{ij}|^2-1
=\sum_{p,q=1}^2\mathcal C_{pq}\,
 \psi_{p,v}(v_i)\psi_{q,h}(b_j).}
\tag{6.2}
\]

Here is the complete reduction of the constant and linear terms. The block
Gram identities give

\[
K G_h K^*=6F^{-1}-I,\qquad
K^*F K=6G_h^{-1}-I.
\tag{6.3}
\]

The constant contraction of (5.2) on both sides is

\[
\frac19\operatorname{tr}(F K G_h K^*)
=\frac19\operatorname{tr}(6I-F)=1,
\]

since trace(F)=9. A vertical linear term is

\[
\frac13\operatorname{tr}\!\left(R_{p,v}^{\mathsf T}
 (6F^{-1}-I)\right)=0
\]

by (5.3) and trace(Rp)=0. The horizontal linear terms vanish in the same
way, using the second identity in (6.3). The remaining four terms are
precisely (6.1), proving (6.2).

For each side let Psi_A be the 2 by 3 matrix of the two centered functions
on its columns. Its row rank is two because adjoining the constant row
gives an invertible row transformation of conjugate(A). Therefore

\[
\Delta=\Psi_v^{\mathsf T}\mathcal C\Psi_h,
\qquad
\boxed{\Delta=0\ \Longleftrightarrow\ \mathcal C=0.}
\tag{6.4}
\]

The reverse implication follows by applying a left inverse of Psi_v^T and
a right inverse of Psi_h. Thus no completion hypothesis is hidden in the
scalar reduction.

The two nonconstant coordinates can be swapped independently on the
horizontal and vertical sides. The horizontal swap is accompanied by the
same corner-row swap; the vertical swap is accompanied by the same
corner-column swap. The centered functions and their coefficient matrices
are then relabelled. As in Handoff M, a **universal** proof of C11=0, valid
for all allowed corners and side labels, supplies C12 and C21 by the two
individual swaps and C22 by applying both. C11=0 at a single fixed corner
is not claimed to imply all four contractions.

## 7. The precise remaining matched coupling

The reduced unresolved statement is

\[
\boxed{
\operatorname{tr}\!\left[
R_1\!\left(L(G_v,\bar z)\right)^{\mathsf T}
K\,R_1\!\left(L(G_h,z)\right)K^*
\right]=0,
}
\tag{7.1}
\]

where

\[
L(G,z)=(\mathcal T(G)-\bar z\operatorname{diag}(\bar\lambda))G^{-\mathsf T},
\]

the lambdas are the actual-side lambdas from the brief, and E is a phase
corner with complementary Grams. Matching can be expressed by

\[
\bar z=h-z,\quad z^2=hz-\eta,
\quad\hbox{or equivalently on actual sides}\quad
\det L_h=\overline{\det L_v}.
\]

Per-side commutativity, the conic equations, the unit diagonal of L, and the
shifted determinant identity establish the reductions above. They have not
yet been combined into a proof of (7.1). Asserting that they imply this
cross-side identity without that argument would leave the central gap in
Handoff R unchanged.

There is also a useful exact trace rewriting of the original weighted
third-moment contraction. Define

\[
X_q=G_h^{-1}Q_h^{(q)},\qquad
Y_p=F^{-1}(Q_v^{(p)})^{\mathsf T}.
\]

Since K*F=-E, cyclicity of trace gives

\[
W_{pq}=\operatorname{tr}(Y_p E^* X_q E)
       -\operatorname{tr}(Y_p)\operatorname{tr}(X_q).
\tag{7.2}
\]

The actual-side multiplication algebras satisfy Xq e0=e_q and Yp e_p=e0.
This removes two inverse factors from the original expression, but likewise
does not establish its matched cancellation.

## 8. Exact verification

`verification/verify_cubic_reduction.py` uses SymPy with six independent Laurent variables
for the nonconstant entries of a normalized phase side. It checks all nine
cofactor phase identities, (2.1), the diagonal of L, the shifted determinant,
and the simultaneous-diagonalization formula for the multiplication
matrices. It separately uses nine algebraically independent entries of L
and three independent coordinates to check (4.2)-(4.6) after multiplying by
L00. It also checks the interpolation-basis determinant.

The delivered `verification_results.json` records the full replay output
and elapsed time. The paper arguments give the interpolation, ideal, and
transport consequences; the script checks the algebraic identities described
above. It does not certify (7.1) or claim to complete Handoff R.

Run from the package root after installing `requirements.txt`:

```sh
python verify_all.py
```


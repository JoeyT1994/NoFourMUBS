# Exact conditioning on the affine Fourier family, and at Tao

## Result and status

This note proves Task D on an entire two-parameter family and verifies the Tao spectrum. All acceptance is exact. It does **not** prove the proposed conditioning assertions on every other Hadamard.

Write brackets for multiplicities. The exact horizontal squared singular spectra are

\[
\begin{array}{c|c|c|c}
H&\operatorname{spec}(J^TJ)&\operatorname{rank}J&\sigma_{\min}^{+}(J)\\ \hline
H(z)&0^{[4]},\ 3^{[4]},\ 9^{[12]},\ 12^{[5]}&21&\sqrt3\\
S_6&(9/2)^{[16]},\ 12^{[9]}&25&3/\sqrt2.
\end{array}
\]

Here

\[
H(z)_{pa,qj}=(-1)^{pq}\omega^{aj}z_j^p,
\quad p,q\in\{0,1\},\quad a,j\in\mathbb Z/3,
\quad\omega=e^{2\pi i/3},\quad |z_j|=1.
\tag{1}
\]

Equivalently,
\(H(z)=\begin{pmatrix}F_3&F_3\\F_3D_z&-F_3D_z\end{pmatrix}\).
A common multiplier of all three \(z_j\) is a row gauge, leaving two essential parameters. The Fourier class is included when all three parameters coincide. Thus equality in the proposed lower bound holds on the whole affine Fourier family, not just at the Fourier matrix.

`verify_conditioning.py` checks symbolic Laurent identities for the family and an exact rational characteristic polynomial for Tao. No floating-point eigensolver is used.

## 1. An exact full-domain Jacobian identity

Use the convention of `toolkit/conditioning.py`: one complex constraint for each unordered row pair, split into its real and imaginary parts. Let \(\mathcal J\) be the Jacobian on the full real phase space \(\mathbb R^{6\times6}\). For any Hadamard \(H\), define

\[
T_{(a,j),(b,k)}
=\operatorname{Re}\bigl(H_{aj}\overline{H_{bj}}H_{bk}\overline{H_{ak}}\bigr).
\tag{2}
\]

The real symmetric Gram identity is

\[
\boxed{\mathcal J^T\mathcal J=6I_{36}-T.}
\tag{3}
\]

Indeed, put \(X=H\circ u\) and \(A=XH^*\), with \(u\) real. The derivative of the row Gram matrix is \(i(A-A^*)\), with zero diagonal. Hence

\[
\begin{aligned}
\|\mathcal Ju\|^2
&=\tfrac12\|A-A^*\|_F^2\\
&=\|A\|_F^2-\operatorname{Re}\operatorname{tr}(A^2)\\
&=6\|u\|_F^2-
\sum_{a,j,b,k}u_{aj}u_{bk}
\operatorname{Re}\bigl(H_{aj}\overline{H_{bj}}H_{bk}\overline{H_{ak}}\bigr).
\end{aligned}
\]

The last step uses \(H^*H=6I\). Polarization proves (3).

The row/column gauge subspace
\(\mathcal G=\{u_{aj}=r_a+c_j\}\)
has dimension eleven and lies in \(\ker\mathcal J\). Its orthogonal complement is exactly the 25-dimensional horizontal phase space. Therefore restriction to that space preserves all nonzero eigenvalues of (3) and removes eleven zeros.

The singular spectrum is invariant under Hadamard equivalence: row and column phase multiplication rotates output complex coordinates or leaves the Gram unchanged, while permutations induce orthogonal transformations of domain and output. Conjugation likewise preserves the real singular spectrum.

## 2. The family is Hadamard

The inner product of rows \((p,a)\), \((r,b)\) is

\[
\sum_{q=0}^1(-1)^{(p-r)q}
\sum_{j=0}^2\omega^{(a-b)j}z_j^{p-r}.
\]

For \(p\ne r\), the first sum vanishes. For \(p=r\), the phases disappear and the expression is \(6\delta_{ab}\). Thus (1) is Hadamard for every allowed parameter.

## 3. Orthogonal block decomposition

Substitute (1) in (2):

\[
T_{(p,a,q,j),(r,b,s,k)}
=(-1)^{(p-r)(q-s)}
\operatorname{Re}\left[
\omega^{(a-b)(j-k)}(z_j\overline{z_k})^{p-r}
\right].
\tag{4}
\]

Take the normalized sum and difference across the two values of the column-block index \(q\). This is an orthogonal decomposition into two real 18-dimensional spaces.

On the sum space, cross terms \(p\ne r\) vanish and

\[
T_+=\operatorname{diag}(2A,2A),
\qquad A_{(a,j),(b,k)}=\operatorname{Re}\omega^{(a-b)(j-k)}.
\tag{5}
\]

On the difference space, terms \(p=r\) vanish and

\[
T_-=\begin{pmatrix}0&2B\\2B^T&0\end{pmatrix},
\qquad B_{(a,j),(b,k)}
=\operatorname{Re}\left[\omega^{(a-b)(j-k)}z_k/z_j\right].
\tag{6}
\]

## 4. Fixed spectra of the nine-dimensional blocks

Apply the unitary three-point Fourier transform in the row indices \(a,b\) of \(B\). It preserves the singular values of the original real matrix. The frequency-\(\ell\) block is

\[
(B_\ell)_{jk}=\frac32\left[
(z_k/z_j)\mathbf1_{\ell=j-k}
+(z_j/z_k)\mathbf1_{\ell=k-j}\right],
\tag{7}
\]

with indices modulo three. Define

\[
C=\mathbf1\mathbf1^T-I_3,
\qquad D=\operatorname{diag}(z_2/z_1,z_0/z_2,z_1/z_0).
\]

Directly from (7),

\[
\boxed{B_0=3I_3,\quad B_1=\tfrac32DCD,\quad
B_2=\tfrac32D^{-1}CD^{-1}.}
\tag{8}
\]

Both diagonal matrices are unitary. Since \(C\) has eigenvalues \(2,-1,-1\), (8) proves

\[
\operatorname{sing}(B)=3^{[5]},(3/2)^{[4]}.
\tag{9}
\]

Setting all \(z_j=1\) also gives
\(\operatorname{spec}(A)=3^{[5]},(-3/2)^{[4]}\).
Consequently,

\[
\operatorname{spec}(T_+)=6^{[10]},(-3)^{[8]},
\]

and the standard singular-value decomposition of the symmetric off-diagonal block in (6) gives

\[
\operatorname{spec}(T_-)
=6^{[5]},(-6)^{[5]},3^{[4]},(-3)^{[4]}.
\]

Using (3),

\[
\operatorname{spec}(\mathcal J^T\mathcal J)
=0^{[15]},3^{[4]},9^{[12]},12^{[5]}.
\]

Remove eleven gauge zeros to obtain the claimed horizontal spectrum.

## 5. Exact Tao certificate

Take \(S_{aj}=\omega^{e_{aj}}\), with

\[
e=\begin{pmatrix}
0&0&0&0&0&0\\
0&0&1&1&2&2\\
0&1&0&2&2&1\\
0&1&2&0&1&2\\
0&2&2&1&0&1\\
0&2&1&2&1&0
\end{pmatrix}.
\]

For every distinct row pair, the exponent differences contain each residue class modulo three twice, so the inner product is \(2(1+\omega+\omega^2)=0\). All entries of \(T\) in (2) are rational, equal to either \(1\) or \(-1/2\). Direct exact arithmetic yields

\[
\det(xI-(6I-T))=x^{11}(x-12)^9(x-9/2)^{16}.
\tag{10}
\]

The verifier constructs all entries of this 36 by 36 matrix from the displayed exponent table and checks (10). Real symmetry makes the factored characteristic polynomial an exact spectral certificate. Removing eleven gauge zeros proves rank 25 and minimum singular value \(3/\sqrt2\).

## 6. Limits for atlas Records

The family theorem gives uniform linear normal conditioning on a positive-dimensional sector. It does not show that the nonlinear Hadamard variety is a smooth four-dimensional manifold near every such point. A four-dimensional Jacobian kernel alone does not prove that all tangent directions integrate, or that the local solution set has one branch. The nonlinear fixed-point and enclosure requirements in Task C must still be checked.

The proof excludes neither rank changes nor smaller positive singular values elsewhere. Those global parts of Task D remain open in this deliverable.

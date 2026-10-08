# Global confinement on the entire three-by-three Hadamard-block locus

## Statement

Let \(\mathcal B\) be the set of order-six Hadamard matrices containing at
least one \(3\times3\) submatrix \(A\) with \(AA^*=3I\). This is an
intrinsic, equivalence-invariant condition. It does not specify a corner,
a reconstruction sheet, a choice of parameters, or a neighborhood of a
particular matrix.

**Theorem.** If \(H\in\mathcal B\) and \(M(H)\le m<108\), then

\[
\nu(H)\le\sqrt{\frac23}\arcsin\frac{\sqrt m}{12},\qquad
d_F(H)\le\sin\left(\frac16\arcsin\frac{\sqrt m}{12}\right).
\tag{1}
\]

In particular,

\[
M(H)<26\quad\Longrightarrow\quad
\nu(H)<0.358338,\qquad d_F(H)<0.073081.
\tag{2}
\]

Both constants in (1) at \(m=26\) are sharp over \(\mathcal B\).
Furthermore, no point of \(\mathcal B\) with \(0<M(H)<243\) is a local
minimum of \(M\) on the full Hadamard set.

The key structural statement is stronger than is needed for (1):

> Every \(H\in\mathcal B\) either belongs, up to equivalence, to the
> affine Fourier family or its transpose, or has \(M(H)=243\).

The exceptional alternative is retained throughout the proof. In
particular, the existence of a three-by-three Hadamard block alone is not
a Fourier-family classification. This theorem does not cover arbitrary
Hadamards that have no such block.

## 1. Exact normal form

Write \(\omega=e^{2\pi i/3}\) and
\(F=(\omega^{jk})_{0\le j,k<3}\). Move the specified block to the top left.
Every order-three Hadamard is equivalent to \(F\): after dephasing, the
two noninitial rows have the form \((1,z,z')\) with \(1+z+z'=0\), so
\(\{z,z'\}=\{\omega,\omega^2\}\), and the two row orientations are
opposite by orthogonality. Thus normalize the upper-left block to \(F\).

If

\[
H=\begin{pmatrix}F&B\\ C&D\end{pmatrix},
\]

orthogonality gives \(BB^*=C^*C=3I\). Both \(B\) and \(C\) are therefore
order-three Hadamards. Operations on the last three columns and on the
last three rows put them in the forms

\[
B=D_vF,\qquad C=FD_w,
\qquad v=(1,p,q),\quad w=(1,r,s),\quad |p|=|q|=|r|=|s|=1.
\]

For completeness, the usual left row permutation in a three-by-three
Hadamard equivalence can be moved through \(F\) to a monomial column
operation: every permutation of three labels is affine over
\(\mathbb Z/3\mathbb Z\). This justifies normalizing \(B\) without
changing the already fixed top-left block. Transposition gives the same
argument for \(C\). Scalar phases in the last three columns and rows
make \(v_0=w_0=1\).

The off-diagonal column-orthogonality equation forces the final block:

\[
\boxed{H(v,w)=
\begin{pmatrix}
F&D_vF\\
FD_w&-\frac13FD_wF^*D_vF
\end{pmatrix}.}
\tag{3}
\]

For arbitrary phase vectors \(v,w\), this block matrix satisfies
\(HH^*=6I\). Its first three blocks have unit entries; the remaining
condition is that the last block has unit entries.

## 2. The two scalar product conditions for flatness

Use subscripts modulo three and the unnormalized Fourier transform
\(\widehat x_j=\sum_{k=0}^2x_k\omega^{jk}\). Define

\[
A_k=\widehat v_k\overline{\widehat v_{k-1}},\qquad
\alpha_m=w_m\overline{w_{m+1}}.
\tag{4}
\]

Column \(k\) of the lower-right block in (3) is
\(-\widehat z^{(k)}/3\), where

\[
z_m^{(k)}=w_m\widehat v_{k-m}.
\]

Parseval gives \(\sum_j|\widehat z_j^{(k)}|^2=27\). Hence the three
entries in that column all have modulus one precisely when the two
nonzero cyclic autocorrelations of \(z^{(k)}\) vanish. Those
autocorrelations are conjugates. The shift-one correlation is

\[
\sum_m z_m^{(k)}\overline{z_{m+1}^{(k)}}
=\sum_m\alpha_m A_{k-m}=(\alpha*A)_k.
\]

Taking a Fourier transform turns the three conditions into
\(\widehat\alpha_j\widehat A_j=0\). But

\[
\widehat A_0=\sum_k\widehat v_k\overline{\widehat v_{k-1}}
=3\sum_m|v_m|^2\omega^m=0.
\]

Thus the lower-right block is flat if and only if

\[
\boxed{\widehat\alpha_1\widehat A_1=0,\qquad
\widehat\alpha_2\widehat A_2=0.}
\tag{5}
\]

This is an exact condition for all parameters, including intersections
and degenerate cases.

## 3. All continuous branches are affine Fourier branches

If \(\widehat A_1=\widehat A_2=0\), then \(A=0\). Consequently at most
one Fourier coordinate of \(v\) is nonzero. Inverting the Fourier
transform, using \(|v_m|=1\) and \(v_0=1\), shows that
\(v_m=\omega^{\ell m}\) for some integer \(\ell\). A cyclic permutation
of the last three columns makes \(D_vF=F\). Formula (3) becomes

\[
\begin{pmatrix}F&F\\ FD_w&-FD_w\end{pmatrix}.
\tag{6}
\]

This is an affine Fourier matrix for every phase pair \((r,s)\). To make
the identification explicit, interleave top row \(i\) as row \(2i\)
and bottom row \(i\) as row \(2i+1\), leaving the column order unchanged.
The result is exactly

\[
F_6\circ e^{i(a t_1+b t_2)},\qquad
e^{ia}=r e^{-i\pi/3},\quad e^{ib}=s e^{-2i\pi/3}.
\tag{7}
\]

If \(\widehat\alpha_1=\widehat\alpha_2=0\), the vector \(\alpha\) is
constant. Its coordinate product equals one, so its common value is a
cube root of unity; then \(w\) is a Fourier row. A bottom-row permutation
makes \(FD_w=F\), and (3) becomes

\[
\begin{pmatrix}F&D_vF\\F&-D_vF\end{pmatrix},
\tag{8}
\]

the transpose of a matrix of the form (6).

## 4. The remaining branches are finite and have \(M=243\)

If neither of the two pure cases applies, (5) forces one of the two mixed
allocations

\[
(\widehat A_1,\widehat\alpha_2)=(0,0),\qquad
(\widehat A_2,\widehat\alpha_1)=(0,0).
\tag{9}
\]

The two nonconstant Fourier coefficients of \(A\), in some order, are

\[
3\left(q+\frac\omega p+\frac{\omega^2p}{q}\right),\qquad
3\left(p+\frac{\omega q}{p}+\frac{\omega^2}{q}\right).
\tag{10}
\]

The corresponding coefficients of \(\alpha=(\bar r,r\bar s,s)\) are

\[
\bar r+\omega r\bar s+\omega^2s,\qquad
\bar r+\omega^2r\bar s+\omega s.
\tag{11}
\]

Each parenthesis in (10) and each expression in (11) is a sum of three
unit complex numbers whose product is one. If three unit numbers sum to
zero, they are a rotated copy of \(1,\omega,\omega^2\). Their product
condition makes the common rotation itself a cube root of unity. Thus
either vanishing coefficient in (10) forces \(p,q\) to be cube roots;
either vanishing coefficient in (11) forces \(r,s\) to be cube roots.

It remains to check only \(3^4=81\) parameter quadruples. This is the
only finite computation in the structural reduction. The supplied
`verify_fourier_block_locus.py` evaluates (3) in the exact field
\(\mathbb Q[\omega]\), verifies its Gram matrix, tests every entry norm,
and evaluates all 400 corner invariants of every flat matrix directly
from the defining polynomial for \(R\). It also checks F2 on all those
corners as an independent cross-check. The exhaustive result is:

| Branch type | Number | Result |
|---|---:|---|
| At least one of \(v,w\) is a Fourier row | 9 | Flat, \(M=0\) |
| At least one of \(v,w\) is a Fourier row | 36 | Flat, \(M=243\) |
| Neither is a Fourier row | 18 | Not flat |
| Neither is a Fourier row | 18 | Flat, \(M=243\) |

All 81 cases are retained. Every nonpure flat branch has \(M=243\), which
proves the structural statement. The complete exact case records are in
`fourier_block_exact_data.json` and are regenerated by the verifier.

## 5. Quantitative conclusion and sharpness

For \(M\le m<108\), the finite nonpure branches are impossible. Apply
the full-torus theorem in `fourier/FOURIER_CONFINEMENT.md` to the remaining
affine Fourier or transposed affine Fourier matrix. This proves (1).
The interval bounds on its constants are established there by rational
Taylor-series comparisons.

The extremal curve \(H(a,-a)\) belongs to \(\mathcal B\): its even-row,
even-column submatrix is an order-three Hadamard. Along the relevant
interval it has

\[
M=144\sin^2(3a),\qquad \nu=\sqrt6\,a,\qquad d_F=\sin(a/2).
\]

The affine-sector proof verifies the two distance equalities against
every allowed equivalence. Taking \(a\) to
\(\frac13\arcsin(\sqrt{26}/12)\) from below establishes sharpness for
the strict cutoff as well.

Finally, if \(H\in\mathcal B\) and \(0<M(H)<243\), it lies in one of
the two continuous families. The exact signed-sine formula shows that
every positive point in either family has arbitrarily close points of
strictly smaller \(M\). Such a point cannot be a local minimum on the
ambient Hadamard set.

## Inputs and verification

The continuous reduction uses only unit-entry Hadamard orthogonality,
elementary three-point Fourier identities, and the elementary description
of three unit numbers with zero sum. The finite exceptional check uses
the defining formula for \(R\); F2 is cross-checked, not required to decide
the exceptional values. The quantitative affine theorem uses **F2**.
No use is made of F1, F3, F4, F5, F6's floating-point evidence, F7, or F8.

Run:

```sh
python3 verify_fourier_block_locus.py
python3 fourier/verify_fourier.py
```

All acceptance comparisons in these two verifiers use integer or rational
arithmetic. There is no numerical sampling in this theorem.

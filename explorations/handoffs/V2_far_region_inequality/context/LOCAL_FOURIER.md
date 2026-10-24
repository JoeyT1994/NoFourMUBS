# Quantitative strict-corner coverage near the Fourier class

## 1. Result and status

**PROVED, using the exact finite certificates below.** Let H be any complex Hadamard matrix of order 6, with unit-modulus entries. Let

\[
d=d([H],[F_6])=\min_{U,V\text{ monomial unitary}}\|H-UF_6V\|_F.
\]

For every \(0\le d\le1/10\),

\[
\boxed{\quad\sum_C R_C(H)\ge81d^2,\qquad
\max_C R_C(H)\ge\frac{81}{400}d^2\ge\frac15d^2.\quad}
\]

The sums and maximum run over all 400 positional 3-by-3 corners. No atlas, Stage C result, tangent-space assumption, or classification theorem is used. In fact, the coercivity calculation holds on the whole 25-dimensional quotient of the phase torus near Fourier; Hadamard orthogonality is used only to identify the signature sum of squares with the requested corner invariants.

The finite certificates use integer and exact rational arithmetic and are replayed by

```sh
python verify_local_fourier.py
```

The script has no third-party dependency. The terminal result is `PASS`. Its two finite spectral checks are detailed below. This is a written analytic proof supported by an exact finite computation, rather than an interval or floating-point computation.

## 2. Replace the corner polynomial by side signatures

**PROVED from the supplied side-signature identity.** For a 3-by-3 phase matrix B define

\[
\Psi(B)=\frac{\operatorname{perm}(B)\det(B)^2}
{\prod_{i,j}B_{ij}}.
\]

The supplied side quadratic gives, for every actual Hadamard corner \(C=(I,J)\),

\[
R_C(H)=4\bigl(\operatorname{Im}\Psi(H[I,J^c])\bigr)^2.
\]

**CERTIFIED independently in this return.** `verify_side_identity.py` checks
this identity directly in the integer Laurent ring of four dephased unit
variables. It verifies `g=|det B|^2`, `eta=|perm B|^2`,
`chi=-(Psi+conjugate(Psi))`, and
`R=-(Psi-conjugate(Psi))^2`. The identity includes singular sides; no
continuity or nonsingular Hadamard approximation is needed.

Complementing J permutes the 20 column triples. Therefore, if

\[
G_{I,J}(H)=\operatorname{Im}\Psi(H[I,J]),\qquad
G(H)\in\mathbb R^{400},
\]

then

\[
S(H):=\sum_C R_C(H)=4\|G(H)\|_2^2.
\tag{1}
\]

All these quantities are unchanged under row/column phases and are permuted by row/column permutations.

We take the following representative of the Fourier class, with \(\omega=e^{2\pi i/3}\):

\[
F_{3a+b,\,3c+e}=(-1)^{ac}\omega^{be},
\qquad a,c\in\{0,1\},\quad b,e\in\{0,1,2\}.
\]

This is \(F_2\otimes F_3\), equivalent to \(F_6\). Put \(H(x)=F\circ e^{ix}\), where x is a real 6-by-6 phase matrix.

## 3. The exact local algebra

### 3.1 A universal 55-term Laurent polynomial

**CERTIFIED.** Expanding permanent times determinant squared gives

\[
\Psi(z)=\sum_{\alpha\in\mathcal A}c_\alpha z^\alpha,
\]

with 55 nonzero integer coefficients. A completely explicit specification, used by the replay script, is

\[
\alpha_{ij}=-1+\mathbf1_{j=p(i)}+\mathbf1_{j=q(i)}+
\mathbf1_{j=r(i)},\qquad
c_\alpha=\sum_{(p,q,r)\mapsto\alpha}\operatorname{sgn}(q)\operatorname{sgn}(r),
\]

where \(p,q,r\in S_3\). Every exponent matrix has zero row sums and zero column sums. If \(P_n=I_n-\mathbf1\mathbf1^T/n\), the exact identities checked are

\[
\sum_\alpha|c_\alpha|=108,\qquad
\max_\alpha\|\alpha\|_F^2=18,
\tag{2}
\]

and, using vectorized 3-by-3 matrices,

\[
\sum_\alpha|c_\alpha|\,\alpha\alpha^T
=162(P_3\otimes P_3).
\tag{3}
\]

### 3.2 Uniform first-derivative coercivity

**CERTIFIED.** Let \(L=DG(0)\), with derivatives in all 36 phase variables. Then for every horizontal x, meaning \(P_6xP_6=x\),

\[
\boxed{\|Lx\|_2\ge27\|x\|_F.}
\tag{4}
\]

Here is an explicit integer certificate, not a numerical diagonalization. Let \(f_{ij}=3\lfloor i/3\rfloor\lfloor j/3\rfloor+2(i\bmod3)(j\bmod3)\pmod6\), and \(r=(2,1,-1,-2,-1,1)\). For each corner (I,J) and each local index k, the corresponding entry of \(A=2L\) is

\[
A_{(I,J),\,I_{\lfloor k/3\rfloor},J_{k\bmod3}}
=\sum_\alpha c_\alpha\alpha_k\,
r_{\sum_\ell\alpha_\ell f_{I_{\lfloor\ell/3\rfloor},J_{\ell\bmod3}}\bmod6}.
\]

Let \(M=A^TA\), \(P=P_6\otimes P_6\), and

\[
q(t)=(t-2916)(t-10692)(t-11556)(t-15552)(t-29376)(t-55296).
\]

The script verifies the two integer matrix identities

\[
A(36P)=36A,\qquad
36q(M)=q(0)(36I-36P).
\tag{5}
\]

Consequently M preserves the horizontal subspace and its eigenvalues there belong to the six positive roots of q. Every one is at least \(2916=4\cdot27^2\), proving (4). The gauge kernel is exactly the 11-dimensional space of row-plus-column phases. No assertion about the tangent space of the Hadamard variety is needed.

The same exact expansion verifies \(G(0)=0\) at all 400 corners.

### 3.3 Uniform second-derivative bound at Fourier

**CERTIFIED.** In the nine local phase variables of each corner,

\[
\|D^2G_{I,J}(0)\|_{\rm op}<33.
\tag{6}
\]

To verify this, put \(s=(0,1,1,0,-1,-1)\) and form the integer symmetric matrix

\[
B_{k\ell}=\sum_\alpha c_\alpha\alpha_k\alpha_\ell\,
s_{\sum_m\alpha_m f_{I_{\lfloor m/3\rfloor},J_{m\bmod3}}\bmod6}.
\]

Then the actual Hessian is \(-\sqrt3 B/2\). Across all 400 corners there are 67 distinct matrices B. Exact rational \(LDL^T\) factorization verifies that both \(38I+B\) and \(38I-B\) are positive definite for each. Thus \(\|B\|_{\rm op}<38\), and

\[
\|D^2G_{I,J}(0)\|_{\rm op}<19\sqrt3<33.
\]

The smallest positive diagonal pivot across those checks is \(50806/30083\). The matrices are regenerated from the permutation formula above, so the verifier does not trust an externally supplied matrix table.

## 4. Taylor remainder on the whole phase quotient

**PROVED.** Let x be horizontal and write \(t=\|x\|_F\). For a corner (I,J), set

\[
y_{I,J}=P_3x[I,J]P_3,\qquad u_{I,J}=\|y_{I,J}\|_F.
\]

Row and column phase invariance means that every exponent dot product depends only on y. Restriction and orthogonal projection are contractions, so \(u_{I,J}\le t\). Also

\[
\sum_{I,J}u_{I,J}^2=64t^2.
\tag{7}
\]

For completeness, the sum of the twenty 3-row restriction/projector matrices is \(8P_6\): its diagonal entries are \(10(2/3)=20/3\), and its off-diagonal entries are \(4(-1/3)=-4/3\). Applying the same identity in rows and columns gives (7). This identity is also replayed exactly by the script.

For every real z and base phase \(\phi\), the scalar Taylor theorem gives

\[
\left|\sin(\phi+z)-\sin\phi-z\cos\phi
+\frac{z^2}{2}\sin\phi\right|\le\frac{|z|^3}{6}.
\]

Use this for each Laurent term. By (2)-(3), the cubic remainder for one signature obeys

\[
\begin{aligned}
|\mathcal R_{I,J}|&\le\frac16\sum_\alpha|c_\alpha|\,|\alpha\cdot y_{I,J}|^3\\
&\le\frac{\sqrt{18}\,u_{I,J}}6
\sum_\alpha|c_\alpha|(\alpha\cdot y_{I,J})^2\\
&=81\sqrt2\,u_{I,J}^3.
\end{aligned}
\]

The quadratic term is at most \((33/2)u_{I,J}^2\) by (6). Since (7) and \(u_{I,J}\le t\) imply

\[
\left(\sum u_{I,J}^4\right)^{1/2}\le8t^2,
\qquad
\left(\sum u_{I,J}^6\right)^{1/2}\le8t^3,
\]

we obtain the explicit vector remainder bound

\[
\boxed{\|G(H(x))-Lx\|_2\le132t^2+648\sqrt2\,t^3
\le132t^2+918t^3.}
\tag{8}
\]

Combining (4) and (8), whenever the bracket is nonnegative,

\[
\boxed{\|G(H(x))\|_2\ge t\bigl(27-132t-648\sqrt2\,t^2\bigr).}
\tag{9}
\]

This lower bound holds for every horizontal phase x, without requiring H(x) to be Hadamard.

## 5. Conversion to the requested quotient distance

**PROVED.** The monomial-unitary minimization is over a compact set, so choose an equivalent H with \(\|H-F\|_F=d\). Let \(\alpha_{ij}\in[-\pi,\pi]\) be the entrywise principal phase differences. Set \(x=P_6\alpha P_6\). The difference \(\alpha-x\) is a row-plus-column phase matrix, so \(H(x)\) is equivalent to H. Moreover,

\[
d\le\|H(x)-F\|_F\le\|x\|_F=t.
\tag{10}
\]

For any entry, let \(h=|H_{ij}-F_{ij}|\le d\). If \(d\le1/10\),

\[
|\alpha_{ij}|=2\arcsin(h/2)
\le\frac{h}{\sqrt{1-h^2/4}}
\le\frac{501}{500}h.
\]

The last inequality follows from \(399/400>(500/501)^2\). Projection decreases the Frobenius norm, giving

\[
d\le t\le\frac{501}{500}d\le\frac{501}{5000}.
\tag{11}
\]

The decreasing bracket in (9) satisfies the exact rational bound

\[
27-132t-648\sqrt2t^2
\ge27-132\frac{501}{5000}-918\left(\frac{501}{5000}\right)^2
=\frac{56960541}{12500000}>\frac92.
\]

Therefore \(\|G(H)\|_2\ge(9/2)d\). Equation (1) gives \(S(H)\ge81d^2\), and dividing by 400 gives the theorem.

## 6. A stronger explicit radius-dependent profile

**PROVED.** Set

\[
b(r)=\frac{r}{\sqrt{1-r^2/4}},\qquad
c(r)=\frac{\bigl(27-132b(r)-648\sqrt2\,b(r)^2\bigr)^2}{100}.
\]

For every \(0<r<2\) such that the bracket is positive, and every Hadamard H with \(d([H],[F_6])\le r\),

\[
\max_C R_C(H)\ge c(r)d([H],[F_6])^2.
\]

This follows by retaining the square-root gauge bound and (9), rather than rounding to rational constants. The proof is uniform on the entire radius-r neighborhood. It is not restricted to a particular Fourier-family path or tangent direction.

**PROVED; rational arithmetic replayed.** Convenient weaker constants at three smaller radii are:

| Radius r | Valid c in max R >= c d² for every d <= r |
|---|---:|
| 1/100 | 6 |
| 1/20 | 3 |
| 2/25 | 1 |
| 1/10 | 81/400 |

For the first three rows the script substitutes t <= (501/500)r into the rational bracket 27 - 132t - 918t² and verifies its square is at least 100c. These constants require no additional geometric hypothesis.

## 7. Scope

**NOT ESTABLISHED by this local argument alone.** This result does not exclude a second small value of \(\max R_C\) outside the radius-1/10 neighborhood. A global quantitative theorem needs either an effective outer-region minimum or another global argument. The local result gives a non-circular interface for such a theorem and answers Q1, and the local form of Q3, with explicit useful constants.

# A practical certified Fourier annulus

## 1. Result

**PROVED with exact finite certificates.** Let H be any complex Hadamard matrix of order six, and let \(d=d([H],[F_6])\) be the unnormalized Frobenius quotient distance in the brief. Then

\[
\boxed{d\le\tfrac12\ \Longrightarrow\ \max_C R_C(H)\ge4d^2,}
\tag{A1}
\]

and

\[
\boxed{d\le\tfrac47\ \Longrightarrow\ \max_C R_C(H)\ge\tfrac{81}{400}d^2.}
\tag{A2}
\]

Consequently there is a useful, explicit uniform annular margin:

\[
\boxed{\frac1{10}\le d\le\frac47
\quad\Longrightarrow\quad
\max_C R_C(H)\ge\frac1{25}=0.04.}
\tag{A3}
\]

The first bound gives 0.04 for \(1/10\le d\le1/2\). For \(1/2\le d\le4/7\), the second gives \(81/1600>0.04\).

**NOT ESTABLISHED:** the same margin, or any comparable practical margin, for all \(d\ge1/10\). In particular this theorem leaves the outer region \(d>4/7\) unresolved. It does not turn the global coverage task into a completed practical finite cover.

The computation is replayed by

```sh
python verify_practical_annulus.py
```

It requires NumPy, used solely with integer arrays and Python arbitrary-precision object integers. The script verifies an absolute bound excluding every possible signed-int64 overflow. No floating-point eigenvalues, trigonometric evaluations, numerical optimization, or atlas data are used.

## 2. Signature setup and horizontal gauge

Use the definitions and the side-signature identity of `LOCAL_FOURIER.md`:

\[
S(H)=\sum_C R_C(H)=4\|G(H)\|_2^2,
\qquad G_{I,J}(H)=\Im\Psi(H[I,J]).
\]

Take

\[
F_{3a+b,3c+e}=(-1)^{ac}\omega^{be},\qquad \omega=e^{2\pi i/3}.
\]

The cyclic Fourier equivalence is explicit: use row indices \(3a+4b\pmod6\) and column indices \(3c+2e\pmod6\). Their product modulo six is \(3ac+2be\), the exponent defining F. Both lists are permutations. The script verifies this as integer arithmetic.

Write \(H(x)=F\circ e^{ix}\), with x horizontal, and let \(t=\|x\|_F\). For an optimally aligned Hadamard at distance d, the projection of its principal phases gives an equivalent H(x) satisfying

\[
d\le t\le b(d):=\frac{d}{\sqrt{1-d^2/4}}\qquad (d<2).
\tag{2.1}
\]

This is the same elementary arcsine bound proved in the local report. All estimates below are in the horizontal phase gauge.

## 3. Actual Hadamards have only a quadratic normal displacement

### 3.1 Exact linear algebra

**CERTIFIED.** Let K be the linearized complex row-orthogonality map,

\[
(Kx)_{ij}=\sum_{k=0}^5F_{ik}\overline{F_{jk}}(x_{ik}-x_{jk}),
\qquad 0\le i<j\le5.
\]

Its squared singular values off its kernel are exactly among \(3,9,12\), and in particular

\[
\|Kx\|_2\ge\sqrt3\|x_N\|_F.
\tag{3.1}
\]

Here \(x_N\) is the orthogonal projection of horizontal x onto the orthogonal complement of the four-dimensional tangent space T. The following four integer matrices form an orthogonal basis of T. Let \(u=(1,-1,0)\), \(v=(1,1,-2)\); using \(i=3a+b\), \(j=3c+e\), put

\[
D_1(i,j)=(-1)^a u_e,\quad D_2(i,j)=(-1)^a v_e,
\quad D_3(i,j)=(-1)^c u_b,\quad D_4(i,j)=(-1)^c v_b.
\]

Their squared norms are \(24,72,24,72\).

The verification is an integer spectral identity. Set \(N=4K^TK\), which is integer after summing real and imaginary parts, and let \(P\) and \(P_T\) be the orthogonal projectors onto the horizontal space and T. For

\[
q(z)=(z-12)(z-36)(z-48),
\]

the script verifies

\[
72q(N)=q(0)(72I-72P+72P_T),\qquad NP=N,
\tag{3.2}
\]

with every displayed matrix integral after multiplying by 72. Thus the kernel is exactly the gauge space plus T, and the nonzero eigenvalues of N are among 12,36,48. This proves (3.1).

### 3.2 Nonlinear orthogonality estimate

**PROVED.** If H(x) is Hadamard, its exact row orthogonality, Fourier row orthogonality, and

\[
|e^{iz}-1-iz|\le z^2/2
\]

give

\[
|(Kx)_{ij}|\le\tfrac12\sum_k(x_{ik}-x_{jk})^2.
\]

Set \(a_{ij}=\|x_{i,:}-x_{j,:}\|_2^2\). Since x has zero column sums,

\[
\sum_{i<j}a_{ij}=6t^2,\qquad \max_{i<j}a_{ij}\le2t^2.
\]

Therefore

\[
\|Kx\|_2^2\le\tfrac14\sum a_{ij}^2\le3t^4.
\]

Combining with (3.1) yields the useful physical restriction

\[
\boxed{\|x_N\|_F\le t^2,\qquad
\|x_T\|_F\ge t\sqrt{1-t^2}\quad(t\le1).}
\tag{3.3}
\]

This is where the full Hadamard equations improve the earlier estimate on the unrestricted phase torus.

## 4. Project signatures onto the tangent image

Let \(L=DG(0)\), and let Q be the orthogonal projector in \(\mathbb R^{400}\) onto L(T).

**CERTIFIED.** With \(A=2L\), the four basis columns D above obey

\[
A^TAD=15552D.
\tag{4.1}
\]

Their image columns \(V=AD\) are orthogonal, with squared norms \(15552\cdot(24,72,24,72)\). Consequently

\[
\boxed{\|QLx\|_2=36\sqrt3\,\|x_T\|_F.}
\tag{4.2}
\]

There is no contribution from the normal component: (4.1) makes the tangent and normal images orthogonal. Both (4.1) and the image Gram matrix are checked exactly.

## 5. A high-order remainder with small projected coefficients

### 5.1 Exact tensor certificates

The 55-term Laurent expansion and its coefficient bounds are those of `LOCAL_FOURIER.md`. Write its exponents as \(\alpha\in\mathbb Z^9\), and embed them into the 36 ambient coordinates of each corner. Denote the embedded exponent by \(\alpha_C\). At F all Laurent monomials are sixth roots of unity.

For each order \(k=2,\dots,10\), define an integer derivative tensor \(T_k\) with one output coordinate per corner:

\[
(T_k)_C=\sum_\alpha w_{C,\alpha}\,\alpha_C^{\otimes k},
\]

where

\[
w_{C,\alpha}=
\begin{cases}
2c_\alpha\Re(F_C^\alpha),&k\text{ odd},\\
(2/\sqrt3)c_\alpha\Im(F_C^\alpha),&k\text{ even}.
\end{cases}
\]

Signs from differentiating sine are irrelevant for the norm. The true kth Taylor tensor is therefore \(T_k/(2k!)\) for odd k or \(\sqrt3 T_k/(2k!)\) for even k, up to a sign.

Its Gram matrix is calculated without allocating a large tensor:

\[
(\Gamma_k)_{C,D}
=\sum_{\alpha,\beta}w_{C,\alpha}w_{D,\beta}
\langle\alpha_C,\beta_D\rangle^k.
\tag{5.1}
\]

**CERTIFIED.** The script verifies the exact integer identity

\[
V^T\Gamma_kV=\lambda_k V^TV
\tag{5.2}
\]

for the following values:

| k | \(\lambda_k\) | Valid bound \(a_k\) for the norm of the projected kth Taylor term divided by \(t^k\) |
|---:|---:|---:|
| 2 | 888 | 13 |
| 3 | 918360 | 80 |
| 4 | 68856 | 10 |
| 5 | 111534072 | 45 |
| 6 | 8567448 | 4 |
| 7 | 22160867160 | 15 |
| 8 | 1028224056 | 1 |
| 9 | 5718617236152 | 4 |
| 10 | 115463842008 | 1 |

Indeed, after normalizing the four orthogonal columns of V, (5.2) says that the projected tensor Gram matrix is exactly \(\lambda_k I_4\). Its operator norm is \(\sqrt{\lambda_k}\). The coefficient bounds are verified by squaring the rational inequalities

\[
\frac{\sqrt{\lambda_k}}{2k!}\le a_k\ (k\text{ odd}),
\qquad
\frac{\sqrt{3\lambda_k}}{2k!}\le a_k\ (k\text{ even}).
\]

**Arithmetic assurance.** Each exponent has squared norm at most 18, so \(|\langle\alpha_C,\beta_D\rangle|\le18\). Every coefficient weight vector has absolute sum at most 216. Therefore every intermediate partial sum in the integer Gram-kernel products is bounded by \(216^2 18^k<2^{63}\) for \(k\le10\). This bound is checked before each product. The subsequent projected contractions use arbitrary-precision Python integers.

### 5.2 Uniform order-eleven remainder

**PROVED.** For a corner let \(u_C=\|P_3x_CP_3\|_F\). The scalar sine Taylor theorem, the exponent bound \(\|\alpha\|\le\sqrt{18}\), and the universal second-moment identity give

\[
|\mathcal R_{11,C}|\le
\frac{162\,18^{9/2}}{11!}u_C^{11}.
\]

Using \(u_C\le t\) and \(\sum_Cu_C^2=64t^2\) gives

\[
\|\mathcal R_{11}\|_2\le
\frac{1296\,18^{9/2}}{11!}t^{11}<15t^{11}.
\tag{5.3}
\]

The last inequality is checked by squaring integer expressions. Projection Q cannot increase this remainder.

Combining the exact tensor bounds and (5.3),

\[
\|Q(G(H(x))-Lx)\|_2\le E(t),
\]

where

\[
E(t)=13t^2+80t^3+10t^4+45t^5+4t^6+15t^7+t^8+4t^9+t^{10}+15t^{11}.
\tag{5.4}
\]

By (3.3) and (4.2),

\[
\boxed{\|G(H(x))\|_2\ge t\,h(t),\qquad
h(t)=36\sqrt{3(1-t^2)}-E(t)/t,}
\tag{5.5}
\]

whenever \(t\le1\) and the bracket is positive. The function h decreases on \((0,1)\).

## 6. Exact radius calculations

**PROVED; rational checks replayed.** If \(d\le1/2\), (2.1) gives

\[
t\le2/\sqrt{15}<517/1000.
\]

Substituting \(T=517/1000\), the script checks

\[
3888(1-T^2)>\bigl(E(T)/T+20\bigr)^2,
\]

so \(h(t)>20\). Hence \(\|G(H)\|_2\ge20d\), and

\[
\max_C R_C(H)\ge S(H)/400=\|G(H)\|_2^2/100\ge4d^2.
\]

If \(d\le4/7\), then

\[
t\le4/\sqrt{45}<597/1000.
\]

At \(T=597/1000\), the exact check is

\[
3888(1-T^2)>\bigl(E(T)/T+9/2\bigr)^2.
\]

Thus \(\|G(H)\|_2\ge(9/2)d\), proving (A2). Combining the two regimes proves (A3).

## 7. What this changes for coverage

The practical remaining global statement is now an outer-region problem: prove a comparable bound for \(d([H],[F_6])>4/7\). The annulus from radius 0.1 to radius 4/7 already has the certified margin 0.04, derived solely from Hadamard geometry. Any practical global proof with margin at most 0.04 can therefore use this theorem for its entire Fourier interface and focus its new argument on the far region.

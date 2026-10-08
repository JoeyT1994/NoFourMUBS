# A certified 0.042 phase tube around the complete Fourier families

This extends `CONFINEMENT_FOURIER.md` from the two Fourier families to a neighborhood in the **full Hadamard set**. The neighborhood is measured in the Frobenius norm of an entrywise phase perturbation. It does not impose that the perturbation remain tangent to a Fourier family.

## The result

Let \(\mathcal A\) be the union of the complete two-parameter affine Fourier family, its transpose, and all their Hadamard equivalents. Suppose an order-six Hadamard \(H\) has a representation

\[
H\cong K\circ e^{iV},\qquad K\in\mathcal A,
\quad V\in\mathbb R^{6\times6},\quad
\|V\|_F\le\frac{21}{500}=0.042.
\tag{T1}
\]

Then

\[
\boxed{M(H)<26\quad\Longrightarrow\quad\nu(H)<0.55.}\tag{T2}
\]

Using the supplied local lemma F4, the conclusion improves to \(\nu(H)\le0.451\).

The raw phase matrix \(V\) in (T1) need not already be horizontal: double centering is accomplished by row and column rephasings and cannot increase its norm.

The key quantitative improvement is the following bound on all nine **ambient** entry-phase derivatives of each 3-by-3 corner function

\[
d_B=2\operatorname{Im}\left(
\frac{\operatorname{perm}(B)\det(B)^2}{\prod_{i,j}B_{ij}}
\right).
\]

At every corner of every \(K\in\mathcal A\),

\[
\boxed{\|\nabla_{\phi\in\mathbb R^9}d_B(K)\|_2^2
\le1767,\qquad
\|\nabla d_B(K)\|_2<42.04.}\tag{T3}
\]

This gradient is taken before restricting the nine entry phases to the two Fourier parameters. The result therefore controls arbitrary ambient phase perturbations.

## 1. Exact classification of ambient gradient norms

For a generic 3-by-3 unit-modulus matrix with phases \(\phi_1,\ldots,\phi_9\), expand

\[
q(\phi)=\sum_{\ell\in\mathbb Z^9}c_\ell e^{i\ell\cdot\phi}.
\]

The integer coefficients \(c_\ell\) come directly from the six permanent terms and the two copies of the six determinant terms, followed by subtraction of one from every entry exponent for the denominator. There are 55 nonzero terms after collection. Then

\[
\frac{\partial d}{\partial\phi_j}
=\sum_\ell c_\ell\ell_j
\left(e^{i\ell\cdot\phi}+e^{-i\ell\cdot\phi}\right).
\tag{T4}
\]

The exact Laurent-ring implementation evaluates (T4) on every affine-family corner and adds the squares of its nine components. The 400 squared norms have the following classification:

| Type | Number of corners | Exact uniform upper bound |
|---|---:|---:|
| Zero | 40 | 0 |
| \(960+768\cos(2x+2k\pi/3)\), or the same expression with \(x\) replaced by \(y\) or \(x-y\), \(k=0,1,2\) | 24 for each of nine types, 216 total | 1728 |
| Twelve translations \(P(x+m\pi/3,y+n\pi/3)\), with \(0\le m,n<6\) and \(m+n\equiv0\pmod3\) | 12 for each type, 144 total | 1767 |

For the last line, set

\[
p=\cos\frac{x+y}{2},\qquad q=\cos\frac{x-y}{2}.
\]

The common polynomial is

\[
\begin{aligned}
P={}&1248p^4-5376p^3q^3+3744p^3q\\
&+19968p^2q^6-31104p^2q^4+11808p^2q^2-2184p^2\\
&-1152pq^5+3648pq^3-1512pq\\
&-15360q^6+23040q^4-8064q^2+1296.
\end{aligned}\tag{T5}
\]

The verifier proves this polynomial identity, every translation, every multiplicity, and every squared-gradient expression in exact arithmetic. Row or column rephasings do not change the norm because \(q\) is gauge-invariant. Row and column permutations or transposition permute its ambient gradient components. Thus the same classification and bound apply to all \(K\in\mathcal A\).

### The small exact inequality certificate

To prove \(P\le1767\), it suffices to cover the full square \((p,q)\in[-1,1]^2\). Substitute \(p=2s-1\), \(q=2t-1\), and convert (T5) to its tensor Bernstein representation of degrees \((4,6)\) on \([0,1]^2\). Its values lie between the minimum and maximum Bernstein coefficients because the basis functions are nonnegative and sum to one.

Whenever the maximum coefficient exceeds 1767, subdivide the current rectangle at its midpoint, alternating the two axes, and compute the child Bernstein coefficients by exact de Casteljau averaging. Stop on a rectangle when all its coefficients are at most 1767.

`gradient_bernstein.py` performs this deterministic exact calculation with rational numbers. It terminates with **88 rectangles**, maximum binary depth **14**. The largest final coefficient is

\[
\frac{74112791499}{41943040}<1767.
\]

This is a full-square proof, including all boundaries. No floating-point candidate or numerical optimization is used to decide an inequality. The complete run and all ambient identities take about one second in the supplied environment.

For context only, numerical optimization suggests that the actual maximum is approximately \(1766.4074576\). That decimal plays no role in the certificate.

## 2. A global ambient Hessian bound

The same generic Laurent expansion has

\[
q-\overline q=\sum_{\ell\in L}\epsilon_\ell e^{i\ell\cdot\phi},
\quad |L|=48,\quad\epsilon_\ell\in\{\pm1\}.
\]

The exact frequency second moment is

\[
\sum_{\ell\in L}\ell\ell^T
=144(P_3\otimes P_3),
\qquad P_3=I_3-\frac13\mathbf1\mathbf1^T.
\tag{T6}
\]

`verify_ambient_gradient.py` checks every entry of (T6) from the generic expansion. The tensor product is the orthogonal projector onto the 3-by-3 horizontal subspace. Since \(d=(q-\overline q)/i\), for every real vector \(w\),

\[
|w^T\nabla^2d(\phi)w|
\le\sum_{\ell\in L}(\ell\cdot w)^2
\le144\|w\|^2.
\]

The Hessian is real symmetric, hence

\[
\|\nabla^2d(\phi)\|_{\rm op}\le144
\quad\text{for every ambient phase point }\phi.
\tag{T7}
\]

Consequently Taylor's theorem and (T3) give, for a phase perturbation \(v\) of any Fourier-family corner,

\[
|d_B(K\circ e^{iv})-d_B(K)|
\le\sqrt{1767}\,\|v\|+72\|v\|^2.
\tag{T8}
\]

Intermediate points along this Taylor path need only have unit-modulus entries, so no assumption that they remain Hadamard is involved.

## 3. Proof of the tubular confinement theorem

Write \(\eta=21/500\). Every 3-by-3 restriction of \(V\) in (T1) has norm at most \(\eta\). The square identity F2 states that, at a Hadamard endpoint,

\[
\sqrt{M(H)}=\max_B|d_B(H)|.
\]

Using (T8) simultaneously for all 400 corners therefore gives

\[
\sqrt{M(K)}
\le\sqrt{M(H)}+\sqrt{1767}\,\eta+72\eta^2
<\sqrt{26}+\sqrt{1767}\,\eta+72\eta^2<12.
\tag{T9}
\]

The complete-family theorem (3) of `CONFINEMENT_FOURIER.md` applies to \(K\). Adding phase witnesses, with the required permutations and rephasings, gives the triangle inequality

\[
\nu(H)\le\eta+\nu(K).
\]

Hence

\[
\nu(H)<\eta+
\sqrt{\frac23}\arcsin\left(
\frac{\sqrt{26}+\sqrt{1767}\,\eta+72\eta^2}{12}
\right)<\frac{11}{20}.
\tag{T10}
\]

The middle expression is approximately \(0.5498261986602007\). Its strict comparison with \(11/20\) is certified entirely by rational arithmetic as follows.

Use

\[
\sqrt{26}<\frac{51}{10},\qquad
\sqrt{1767}<\frac{1051}{25}=42.04.
\]

Define the rational numbers

\[
Q=\frac{51/10+(1051/25)\eta+72\eta^2}{12},
\qquad T=\frac32\left(\frac{11}{20}-\eta\right)^2.
\]

Here \(0<T<1\), \(0<Q<1\), and the alternating sine-series bound gives

\[
\sin(\sqrt T)\ge\sqrt T
\left(1-\frac T6+\frac{T^2}{120}-\frac{T^3}{5040}\right).
\]

The exact positive difference between the square of the right side and \(Q^2\) is

\[
\frac{13278955123282452720908972031249061243}
{149536132812500000000000000000000000000000}>0.
\]

This proves the last inequality in (T10), including the strict margin, without numerical transcendental comparisons. It proves (T2). The supplied F4 then gives \(\nu(H)\le0.451\) when \(M(H)<26\).

## Verification and remaining gap

Run:

```sh
python3 verify_ambient_gradient.py
```

Dependencies are the Python standard library and the three companion source files in this directory: `explore_exact.py`, `ambient_gradient.py`, and `gradient_bernstein.py`. The script checks all nine ambient phase derivatives for all 400 corner types, the exact Bernstein cover, the global Hessian matrix, and the strict scalar inequality.

The tubular theorem uses the exact complete-family confinement result, the supplied square identity F2, and optionally F4 for the sharper final radius 0.451. Everything else is derived or checked here.

This result still leaves a genuine global question: an arbitrary Hadamard with \(M<26\) has not been shown to satisfy (T1). A hypothetical counterexample to global confinement must be more than 0.042 away, in the stated phase norm modulo equivalence, from both complete affine Fourier families. Excluding such distant components remains necessary.

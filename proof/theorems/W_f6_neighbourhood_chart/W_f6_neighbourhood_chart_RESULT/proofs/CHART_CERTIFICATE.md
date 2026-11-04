# Exact continuation certificate for U's augmented side system

## Result

**CERTIFIED.** Let

\[
 p=(u_1,u_2,u_3,y)=(a+c,b,d,24(-a+b/2+c-d/2)).
\]

For every point of the ellipsoid

\[
 D=\{p:2(a^2-ab+b^2+c^2-cd+d^2)\le 1/25\},
\]

U's seven-equation system (20) has a unique solution in the explicit polynomial tube below. This is a **horizontal tangent radius of 1/5**, not a raw dephased phase radius. In coordinates \(q=(u_1,u_2,u_3,\tau=y/24)\), this is equivalently

\[
q^T\begin{pmatrix}1&-1/2&-1/2&0\\-1/2&7/4&1/4&0\\-1/2&1/4&7/4&0\\0&0&0&1\end{pmatrix}q\le1/25.
\]

Write

\[
a=z_1+z_2/\sqrt3,\quad b=2z_2/\sqrt3,\quad
c=z_3+z_4/\sqrt3,\quad d=2z_4/\sqrt3.
\]

Then \(2\|z\|_2^2\le1/25\). The seven unknowns are
\(x=(t,\varphi_1,\ldots,\varphi_6)\). Define

\[
x_{\rm lin}=(0,c,a,b+c,d,0,d),\quad
x_{\rm pred}(z)=x_{\rm lin}(z)+V_2(z)+V_3(z).
\]

The exact coefficients of \(V_2+V_3\) are in `../data/predictor.json`. Each record is `[multiindex, rational_part, sqrt3_part]`, describing a coefficient in \(\mathbb Q(\sqrt3)\). The standard-library verifier independently regenerates them from the 55-term signature polynomial and the exact base inverse; they are not trusted input.

The unique solution satisfies, componentwise,

\[
|x-x_{\rm pred}|\le
(0.00185,0.00147,0.00137,0.00162,0.00185,0.00197,0.00165)=:w.
\]

All seven solutions are analytic on an open neighborhood of the compact parameter ellipsoid. The contraction proof gives uniqueness in this tube. Its Jacobian bound also gives uniqueness for any two zeros in the larger convex box \(\|x-x_{\rm lin}\|_\infty\le0.0153\), for a fixed parameter.

## Replay and certificate arithmetic

Run:

```sh
python3 ../scripts/verify_chart.py
```

Only the Python standard library is required. Runtime in the present environment is approximately ten seconds. Outputs are `../certificates/chart.json` and `../data/predictor.json`. The printed decimals and elapsed time are informational; every acceptance comparison uses exact fractions and arithmetic in \(\mathbb Q(\sqrt3)\).

The verifier checks the rational enclosure

\[
\frac{1732050807568877293}{10^{18}}<\sqrt3<
\frac{1732050807568877294}{10^{18}}
\]

by squaring. All square-root bounds used for norms are rounded upward to rational multiples of \(10^{-10}\) and checked by squared inequalities. Quadratic form norms are bounded by exact positive definiteness tests of \(sI\pm A\); the bisection is entirely rational/algebraic.

For a homogeneous polynomial \(P(z)=\sum_{|\alpha|=k}c_\alpha z^\alpha\), the verifier uses

\[
|P(z)|\le\|z\|^k
\sqrt{\sum_{|\alpha|=k}\frac{c_\alpha^2}{\binom{k}{\alpha}}}.
\]

This is the Frobenius norm of the associated symmetric tensor, followed by Cauchy--Schwarz against \(z^{\otimes k}\). For quadratic polynomials, an independently proved spectral bound replaces this Frobenius bound.

## Cubic predictor

Let \(M=\mathcal H_x(0,0)^{-1}\), whose exact entries are constructed in the verifier, and let \(F=M\mathcal H\). The verifier checks all constant and linear cancellations exactly, including the explicit \(y/48\) term. In the \(z\) variables, that term is \((z_3-z_1)/2\).

The homogeneous corrections are defined recursively by

\[
V_2=-[F(p,x_{\rm lin})]_2,\qquad
V_3=-[F(p,x_{\rm lin}+V_2)]_3.
\]

The verifier checks that the residual of \(x_{\rm pred}\) has identically zero coefficients of degrees zero through three. It then collects its Taylor coefficients through degree six and bounds every omitted composition term, using

\[
\left|e^{it}-\sum_{j=0}^{m}\frac{(it)^j}{j!}\right|
\le\frac{|t|^{m+1}}{(m+1)!}\qquad(t\in\mathbb R).
\]

On the whole ellipsoid the certified preconditioned residual bounds are smaller than

\[
b=(0.000426,0.000304,0.000279,0.000428,
0.000370,0.000344,0.000349).
\]

The exact stronger rational values are recorded in `../certificates/chart.json` and used in the acceptance inequalities. The cubic predictor correction is bounded componentwise by

\[
(0.012617,0.009666,0.008406,0.011689,
0.012922,0.013199,0.012749).
\]

## Contraction

For all parameters in the ellipsoid and all \(\|v\|_\infty\le153/10000\), the verifier derives an entrywise nonnegative bound \(K\) for

\[
|I-M\mathcal H_x(p,x_{\rm lin}+v)|.
\]

It does this by collecting the first four parameter Taylor orders at \(v=0\), bounding the fifth-order exponential remainder, and then integrating an explicit bound on the second derivatives in \(v\) along the segment from zero to \(v\).

The acceptance checks are, exactly,

\[
\|V_2+V_3\|_\infty+\max_jw_j<0.0153,
\quad b+Kw<w,
\quad \max_i\frac{(Kw)_i}{w_i}<\frac{163}{200}=0.815.
\]

The actual largest weighted contraction bound is below \(0.814381\). The Newton map with fixed base inverse,

\[
T_p(x)=x-M\mathcal H(p,x),
\]

therefore maps the polynomial tube strictly into itself and contracts in the weighted sup norm. Banach's theorem and the analytic implicit-function theorem prove the asserted unique analytic branch, including a neighborhood of boundary parameter points.

## Side invertibility

**CERTIFIED.** On the complete polynomial tube,

\[
|\det B|>0.7293>0.7.
\]

The verifier derives the following particularly short estimate from the six determinant monomials. With \(r=1/5\) the horizontal tangent radius and \(\epsilon=0.0153\),

\[
|\det B-\det B_0|
\le \sqrt{10}\,r+\frac{14}{3}r^2+12\epsilon.
\]

Here \(\det B_0=-i\sqrt3\), the linear determinant derivative has norm \(\sqrt{10}\) in orthonormal horizontal tangent coordinates, and the quadratic exponential remainder gives \(14r^2/3\). The last term bounds the change from the linear tangent predictor to the full tube. The exact replay uses \(z\)-radius \(141421357/10^9\), proves that its square is at least \(1/50\), and verifies a lower bound exceeding \(7/10\).

Transposition acts on natural tangent coordinates by
\((a,b,c,d)\mapsto(c,d,a,b)\), preserving \(D\). Thus the same estimate applies to \(C\).

## Analytic completion on all of D

**PROVED relative to the supplied U germ theorem.** Solve the horizontal system at \((u_1,u_2,u_3,y)\) and the vertical system at \((u_1,u_3,u_2,-y)\). Both are analytic on a connected open neighborhood of \(D\). Their normal seed coordinates agree on a neighborhood of the origin by the supplied U theorem. The real-analytic identity theorem makes them agree everywhere on the connected domain. No new finite-radius lower bound for \(\partial_4R\) is required.

Define \(E,B,C\) using those common seed coordinates and side phases, and set

\[
D_{\rm block}=-CE^*(B^*)^{-1}.
\]

The determinant bound makes this real analytic throughout the parameter ellipsoid and an open neighborhood. All Hadamard and flatness identities hold on the supplied U germ. Each identity is real analytic, and hence holds throughout the connected domain. This proves a dephased Hadamard completion on all of \(D\). This argument relies only on the accepted local U construction and analytic continuation, not any global atlas or MUB assertion.

## Explicit derivative bounds

**CERTIFIED / PROVED.** For the original parameter convention \(p=(u_1,u_2,u_3,y)\), all the following bounds are uniform:

\[
\|\mathcal H_x^{-1}\|_\infty<20,
\qquad \|D_px\|_\infty<60,
\qquad \|D_p^2x\|_{\infty,\infty\to\infty}<5,328,000.
\]

For the inverse, the certificate verifies \(\|M\|_\infty<2.537\). With \(w_{\max}/w_{\min}=197/137\) and contraction at most \(163/200\),

\[
\|\mathcal H_x^{-1}\|_\infty
\le\frac{197}{137}\frac{2.537}{1-0.815}<20.
\]

Directly from the equations, \(\|\mathcal H_p\|_\infty\le3\). The global raw joint Hessian bound \(74\) is also replayed from the 55 signature coefficients; all six Gram components have the simpler bound \(20\). Thus the implicit second derivative is at most
\(20\cdot74\cdot60^2=5,328,000\).

A very conservative, fully explicit completion bound is

\[
\boxed{\|D_p^2\,h(Q(p)-Q(0))\|_{2,2\to2}<150,000,000,000.}
\]

This is a bound on the framed horizontal phase map, before the finite isotropy quotient. For completeness, use \(\|(B^*)^{-1}\|_2<9\), since every entry of \(\operatorname{adj}B\) has modulus at most two and \(|\det B|>0.7\). For raw parameter directions of sup norm at most one, set \(W=(B^*)^{-1}\). Product differentiation gives

| Quantity | Upper bound in matrix operator norm |
|---|---:|
| \(E,C,B\) | 3 |
| \(E'\) | 120 |
| \(B',C'\) | 150 |
| \(E''\) | 10,663,200 |
| \(B'',C''\) | 13,329,000 |
| \(W'\) | 12,150 |
| \(W''\) | 1,112,454,000 |
| \(D_{\rm block}'\) | 116,640 |
| \(D_{\rm block}''\) | 10,679,882,400 |

For a unit-modulus scalar entry, \(|Q''|\le|H''|+|H'||H'|\). Consequently the full 36-entry phase Frobenius bound is at most

\[
6\bigl(10,679,882,400+116,640^2\bigr)
=145,708,632,000<1.5\times10^{11}.
\]

The horizontal projection is an orthogonal contraction, and Euclidean unit parameter directions have sup norm at most one. This establishes the displayed bound. It is deliberately conservative; the existence and coverage certificate does not need this large Hessian bound.

## Companion geometry certificates

The tangent-radius \(1/5\) ellipsoid is a parameter domain. Its existence certificate alone does not show that its image covers every phase-metric ball of radius \(1/5\), nor that the boundary has a specified quotient distance. Those require the separate coverage/graph argument. The companion `verify_block_phase.py` and `BLOCK_PHASE.md` now supply a finite-radius separation input: every lower-right phase remainder from the dephased tangent matrix is below 0.22 radians, with all other phase remainders below 0.0153. This feeds the independent exact stabilizer census. The consolidated report gives the resulting coverage, 72-fold finite quotient, and boundary conclusions; these statements do not follow from side-system existence alone.

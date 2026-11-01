# W — a fixed U chart covering the entire radius-0.15 Fourier neighbourhood

Date: 25 October 2026.

## 1. Outcome and precise scope

**PROVED, with the exact finite checks supplied here, relative to the accepted local U germ theorem.** The same corner and the same augmented system (20) from U extend over the explicit ellipsoid below. Their image contains **every** Hadamard equivalence class at horizontal phase quotient distance at most

\[
\boxed{\rho=\frac3{20}=0.15}
\]

from the Fourier class. This exceeds both the requested minimum 0.13 and the old record radius 0.125.

The parameter domain has radius 0.2 in the **linear Fourier tangent metric**. The certified coverage radius in the **actual phase quotient metric** is 0.15. These are different assertions; the parameter radius is not being used as a substitute for coverage.

| Requirement | Result | Status |
|---|---|---|
| One fixed U chart, on an explicit parameter region | The ellipsoid (1) below | PROVED / CERTIFIED |
| Existence and uniqueness of system (20) | Uniform cubic predictor tube; contraction less than 0.815 | CERTIFIED |
| A genuine dephased Hadamard completion | Analytic continuation from the supplied U germ; side determinant greater than 0.7 | PROVED with CERTIFIED determinant bound |
| Coverage of every nearby class | All classes with phase quotient distance at most 0.15 | PROVED with CERTIFIED constants |
| Framed injectivity | Exact parameter extraction on all of the ellipsoid | PROVED |
| Quotient injectivity modulo Fourier isotropy | All identifications in the domain come from the 72 Fourier stabilizers | PROVED with CERTIFIED exhaustive permutation check |
| Lower derivative bound, raw U parameters | \(s=1/265\) | PROVED with CERTIFIED coefficient identities |
| Upper second derivative bound, raw U parameters | \(L=150{,}000{,}000{,}000\) | PROVED with CERTIFIED input constants; conservative |
| Boundary bonus | Every boundary parameter has class distance strictly greater than 0.15 | PROVED |
| Coverage radius 0.2 for this fixed U chart | Not proved by this package | NOT ESTABLISHED |

**Dependency.** U's assertion that the full dephased Hadamard germ at F6 is an analytic four-manifold, realized by its matched completion, is used as the accepted input theorem. It is reproduced in `input/U_REPORT.md`, especially §§3.2 and 4.1–4.3, with the supplied review in `input/U_REVIEW.md`. The earlier side/flatness verifiers cited by U were not included in W's attachment and are not represented as independently replayed here. The new finite checks in this return are regenerated from their definitions and are all included. No MUB atlas, Stage C calculation, or global classification is used. This package is not a Lean formalization.

## 2. Coordinates, metric, and the explicit region

All phases are in radians. Write

\[
F_{ij}=\exp(\pi\mathrm i\,ij/3),\qquad 0\le i,j\le5,
\]

and let \(h(X)=P_6XP_6\), where \(P_6=I-\mathbf1\mathbf1^T/6\). Thus \(h\) is the orthogonal projection onto real phase matrices with zero row and column sums.

The metric in this report is

\[
d_{\rm ph}([K],[F])=
\min\{\|z\|_F:h(z)=z,\ K\simeq F\circ e^{\mathrm iz}\}.
\]

Here equivalence permits row and column permutations and unitary diagonal factors; all phase windings are included in the minimization. There is no division by 6 or by \(\sqrt6\). This is a Frobenius norm of horizontal **phase increments**.

Keep exactly U's corner, base seeds, and side phases:

\[
\theta^0=(1,2,2,4)\pi/3,\qquad
\phi^0=(3,4,5,0,2,4)\pi/3.
\]

The raw parameters are \(p=(u_1,u_2,u_3,y)\). Put \(\tau=y/24\) and \(q=(u_1,u_2,u_3,\tau)\). The requested explicit region is

\[
\boxed{
D=\left\{p:
u_1^2-u_1u_2-u_1u_3+
\frac74(u_2^2+u_3^2)+\frac12u_2u_3+
\frac{y^2}{576}\le\frac1{25}\right\}.}
\tag{1}
\]

Equivalently \(q^TWq\le1/25\), where

\[
W=\begin{pmatrix}
1&-1/2&-1/2&0\\
-1/2&7/4&1/4&0\\
-1/2&1/4&7/4&0\\
0&0&0&1
\end{pmatrix}.
\tag{2}
\]

For the natural Fourier tangent coordinates write

\[
\begin{aligned}
\alpha&=u_1/2+u_2/4-u_3/4-y/48,&\beta&=u_2,\\
\gamma&=u_1/2-u_2/4+u_3/4+y/48,&\delta&=u_3.
\end{aligned}
\tag{3}
\]

Then (1) is exactly

\[
2(\alpha^2-\alpha\beta+\beta^2+
\gamma^2-\gamma\delta+\delta^2)\le1/25.
\tag{4}
\]

The dephased tangent predictor is

\[
V_g(p)_{ij}=\mathbf1_{i\ \mathrm{odd}}f(j\bmod3)
 +\mathbf1_{j\ \mathrm{odd}}g(i\bmod3),
\quad f=(0,\alpha,\beta),\quad g=(0,\gamma,\delta).
\tag{5}
\]

Its horizontal norm is the square root of (4). In particular this construction permits \(|y|\le24/5=4.8\), rather than restricting the unscaled signed-root coordinate to 0.05. The individual seed bounds are

\[
|u_1|\le\frac{2}{5\sqrt3}<0.231,\qquad
|u_2|,|u_3|\le\frac{\sqrt{2/3}}5<0.164.
\tag{6}
\]

## 3. The exact augmented-system certificate

### 3.1 The unchanged equations

**PROVED / CERTIFIED.** For \(x=(t,\varphi_1,\ldots,\varphi_6)\), set

\[
\theta=\theta^0+(u_1,u_2,u_3,t),\qquad
\phi=\phi^0+\varphi.
\]

Let \(E(\theta)\) be U's dephased 3-by-3 seed, \(B=X(\phi)\) its normalized horizontal side, and

\[
\gamma(\phi)=(\Re s,\Im s,\Re t_s,\Im t_s,\Re r,\Im r),
\quad s=\sum_jx_j,\quad t_s=\sum_jy_j,\quad
r=\sum_j\overline{x_j}y_j.
\]

Let \(\Gamma_h(\theta)\) be the corresponding lower off-diagonal entries of \(6I-EE^*\), in the same real-imaginary ordering. With

\[
S(\phi)=\Im\Psi(X(\phi)),\qquad
\Psi(B)=\frac{\operatorname{perm}(B)\det(B)^2}{\prod B_{ij}},
\]

the equations are exactly

\[
\mathcal H(p,x)=
\begin{pmatrix}
\gamma(\phi)-\Gamma_h(\theta)\\
S(\phi)/24+y/48
\end{pmatrix}=0.
\tag{7}
\]

### 3.2 Explicit polynomial tube

Use real variables \(z\in\mathbb R^4\) given by

\[
\alpha=z_1+z_2/\sqrt3,\quad \beta=2z_2/\sqrt3,
\quad\gamma=z_3+z_4/\sqrt3,\quad\delta=2z_4/\sqrt3.
\]

Then \(D\) is \(2\|z\|^2\le1/25\). The linear predictor is

\[
x_{\rm lin}=(0,\gamma,\alpha,\beta+\gamma,\delta,0,\delta).
\]

Set \(M=\mathcal H_x(0,0)^{-1}\). The script constructs its entries in \(\mathbb Q(\sqrt3)\), checks the full constant and linear cancellations, and defines exact homogeneous corrections

\[
P_2=-[M\mathcal H(p,x_{\rm lin})]_2,\qquad
P_3=-[M\mathcal H(p,x_{\rm lin}+P_2)]_3.
\tag{8}
\]

The coefficients of \(P_2+P_3\) are supplied in `data/predictor.json`, with an exact monomial/\(\mathbb Q(\sqrt3)\) encoding. They are regenerated by the verifier rather than trusted as input.

For every \(p\in D\), (7) has a unique root in

\[
\boxed{|x-x_{\rm lin}-P_2-P_3|\le w,\quad
w=(.00185,.00147,.00137,.00162,.00185,.00197,.00165).}
\tag{9}
\]

Every decimal in (9) denotes the exact terminating rational. Moreover,

\[
\|x-x_{\rm lin}\|_\infty<\epsilon:=153/10000.
\tag{10}
\]

### 3.3 What the verifier actually proves

**CERTIFIED.** The signature polynomial is regenerated from permanent times determinant squared and has 55 nonzero terms. The predictor residual vanishes identically through degree three. The verifier collects degrees four through six and bounds the omitted terms using the real exponential Taylor remainder. It computes an entrywise matrix \(K\) bounding \(|I-M\mathcal H_x|\) on the full enlarged tube (10), not just at sampled solutions.

The decisive exact inequalities are

\[
b+Kw<w,\qquad
\max_i\frac{(Kw)_i}{w_i}<\frac{163}{200}=0.815.
\tag{11}
\]

Here \(b\) bounds \(|M\mathcal H(p,x_{\rm lin}+P_2+P_3)|\). Its largest component is below 0.000428. The weighted contraction bound is below 0.814381. Exact stronger rational values for every component and every entry of \(K\) are written to `certificates/chart.json`.

The fixed-inverse Newton map \(x\mapsto x-M\mathcal H(p,x)\) therefore maps (9) strictly into itself and contracts. The root is unique in (9), and also unique among any roots in the larger convex tube (10). Uniform strict inequalities give analytic dependence on an open neighborhood of the whole closed ellipsoid, including its boundary.

This is one certificate for the full ellipsoid; it does not sample a grid of parameters.

### 3.4 Invertibility and completion

**CERTIFIED.** A six-monomial determinant calculation gives, with tangent radius \(r=1/5\),

\[
|\det B-\det B_0|
\le\sqrt{10}\,r+\frac{14}{3}r^2+12\epsilon.
\]

Since \(\det B_0=-\mathrm i\sqrt3\), the exact replay proves

\[
\boxed{|\det B|>0.7293286>0.7.}
\tag{12}
\]

The transpose transformation \((u_1,u_2,u_3,y)\mapsto(u_1,u_3,u_2,-y)\) preserves (1), so the same certificate supplies the vertical side \(C\).

**PROVED relative to U.** Both solved fourth-seed phases are analytic on the connected parameter domain and agree on the accepted U germ. The real-analytic identity theorem makes them agree throughout \(D\). The forced block

\[
D_b=-CE^*(B^*)^{-1}
\tag{13}
\]

is analytic by (12). All entrywise-flatness and Hadamard identities are real-analytic identities that hold near zero by U; hence they hold on all of \(D\). This avoids needing a large independent seed box on which \(\partial_4R\) stays positive.

## 4. Coverage of every class at phase distance at most 0.15

This is the part that does not follow merely from the preceding root certificate.

### 4.1 A quantitative normal graph

Let \(\mathcal O(z)\in\mathbb R^{30}\) be the real and imaginary parts of the 15 off-diagonal row inner products of \(F\circ e^{\mathrm iz}\). Let \(J_0=D\mathcal O(0)\). Work on the horizontal phase space, with tangent kernel \(T\) and orthogonal normal complement \(N\).

**CERTIFIED.** Exact integer matrix identities give

\[
\operatorname{spec}(J_0^TJ_0)=
\{0^{(15)},3^{(4)},9^{(12)},12^{(5)}\}.
\tag{14}
\]

The zero eigenspace consists of the 11 gauge directions and the four tangent directions (5). Thus \(\sigma_{\min}(J_0|_N)=\sqrt3\).

**PROVED.** Globally in the phase variables,

\[
\|D^2\mathcal O\|\le2\sqrt2.
\tag{15}
\]

For a centered real six-vector \(a\),
\(\sum_{i<j}(a_i-a_j)^4=6\sum_i a_i^4+3\|a\|^4\le8\|a\|^4\).
The last inequality follows from \(a_i^2\le(5/6)\|a\|^2\). Cauchy–Schwarz over row pairs bounds each column's product of two row differences by \(2\sqrt2\|a\|\|b\|\); Minkowski and Cauchy–Schwarz over columns give (15).

For \(\eta\in T\), solve the projected equations

\[
J_0^+\mathcal O(\eta+\nu)=0,\qquad\nu\in N.
\]

The fixed-point map is \(\nu\mapsto\nu-J_0^+\mathcal O(\eta+\nu)\). Put \(b_0=\sqrt{2/3}\). On

\[
\|\eta\|\le\frac14,\qquad \|\nu\|\le\frac{11}{200},
\]

its image has norm at most \(b_0(\|\eta\|^2+\|\nu\|^2)<11/200\), and its contraction factor is below \(21/50\). These rational/radical comparisons are replayed exactly. Therefore there is a unique analytic projected graph on this entire tangent ball.

**PROVED relative to U.** Near zero, the supplied full Hadamard germ projects locally diffeomorphically onto \(T\), so it agrees with this projected graph. Every component of \(\mathcal O\) then vanishes on an open subset of the graph's connected parameter domain. The identity theorem makes all 30 equations vanish everywhere. Thus the projected graph is a genuine Hadamard graph.

The normal graph is unique among genuine Hadamards of ambient norm at most \(3/5\) with the same tangent coordinate: the averaged normal Jacobian has lower bound \(\sqrt3-2\sqrt2(3/5)>0\). Consequently every actual Hadamard lift with norm at most 0.15 lies on this graph.

### 4.2 Returning to U's fixed parameters

Let \(A=Dq(0)\), and let \(V:\mathbb R^4\to T\) be the tangent inverse, so \(AV=I\), \(V^TV=W\), and \(VA\) is the identity on \(T\). Write \(v=V_{\cdot4}\), whose norm is one. For horizontal increments \(z\), define

\[
\mathcal E(z)=
-VAJ_0^+\bigl(\mathcal O(z)-J_0z\bigr)
-\frac v{12}\bigl(S(z)-S(0)-DS(0)z\bigr).
\tag{16}
\]

Here \(S(z)\) is the side signature of the top-right block of \(F\circ e^{\mathrm iz}\). For every actual Hadamard increment \(z=\eta+\nu\), the normal equation gives the exact cancellation

\[
\boxed{Vq(z)-\eta=\mathcal E(z).}
\tag{17}
\]

This combines the orthogonality remainder with the nonlinear signed-root extraction. Bounding the two pieces separately loses the margin needed below.

**CERTIFIED.** Exact four-by-four positive-definiteness checks and exact tensor Gram contractions give

\[
\|VAJ_0^+\|<1,\quad
\|D^2\mathcal E(0)\|_{\rm flattened}<\frac83,
\quad \|D^3\mathcal E(0)\|_F^2=\frac{17135}{48}<400.
\tag{18}
\]

All tensor inputs in (18) are horizontal. The signature's regenerated absolute coefficient covariance has norm 162, and its maximum squared frequency norm is 18. These give \(\|D^4S\|\le162\cdot18\). The proof of (15) with two extra row-difference factors gives \(\|D^4\mathcal O\|\le4\sqrt2\). Therefore

\[
\sup_z\|D^4\mathcal E(z)\|<4\sqrt2+243<249.
\]

Since \(\mathcal E(0)=D\mathcal E(0)=0\), Taylor's theorem yields

\[
\boxed{\|\mathcal E(z)\|\le f(\|z\|),\qquad
f(t)=\frac43t^2+\frac{10}{3}t^3+\frac{249}{24}t^4.}
\tag{19}
\]

### 4.3 The explicit margin and path argument

**CERTIFIED.** Over the smaller tangent ball \(\|\eta\|\le3/20\), the same graph lies in

\[
\|\nu\|<\frac{187}{10000},\qquad
\|\eta+\nu\|<\frac{189}{1250}=0.1512.
\tag{20}
\]

The fixed-point enclosure inequality is checked by squaring positive rational quantities. Uniqueness identifies this smaller tube with the graph already constructed.

Combining (17)–(20), throughout every radial graph path,

\[
\begin{aligned}
\|Vq\|
&\le\frac3{20}+f(189/1250)\\
&=\frac{3855986956803}{19531250000000}\\
&<0.197427<\frac15.
\end{aligned}
\tag{21}
\]

Thus the extracted U parameters stay **strictly inside the explicit ellipsoid (1)**. The gap from 0.2 is greater than 0.002573 in tangent-norm parameter units.

**PROVED.** Given any class at distance at most 0.15, choose a horizontal lift \(z\) of that norm and put \(\eta=P_Tz\). It is the genuine graph point at \(\eta\). Consider the analytic graph path at \(t\eta\), \(0\le t\le1\), and extract its U parameters \(p(t)\). Equation (21) puts this entire path inside \(D\).

The graph's dephased matrices and the matrices obtained from the fixed U chart at \(p(t)\) are analytic functions of \(t\). They agree near zero by the accepted U germ theorem and uniqueness of the new local branch. The real-analytic identity theorem makes them agree through \(t=1\). Therefore the original class belongs to \(\Phi(D)\).

This proves the quantified assertion

\[
\boxed{d_{\rm ph}([K],[F])\le0.15
\quad\Longrightarrow\quad
\exists p\in\operatorname{int}D:\ [K]=\Phi(p).}
\tag{22}
\]

## 5. Injectivity and the 72-element isotropy on all of D

### 5.1 Framed injectivity

**PROVED.** A dephased output matrix recovers \(u_1,u_2,u_3\) from its three selected seed entries, without winding ambiguity by (6), and recovers \(y=-2\Im\Psi(B)\). Hence equal dephased outputs have equal parameters. This proves global framed injectivity on \(D\).

### 5.2 A completion-phase bound

**CERTIFIED.** Relative to the tangent predictor (5), every phase outside the lower-right 3-by-3 block has error less than \(153/10000\). A separate exact residual calculation proves

\[
\left|H_{ij}(p)-F_{ij}e^{\mathrm iV_g(p)_{ij}}\right|
<\frac{109}{500}\quad (i,j\ge3).
\tag{23}
\]

To obtain this without an excessive inverse estimate, use

\[
\mathcal R_b=CE^*+D_{\rm tan}B^*,\qquad
D_b-D_{\rm tan}=-\mathcal R_b(B^*)^{-1}.
\]

The verifier expands nine six-term residuals through degree six with the exact cubic side predictors, and adds all actual tube errors. Its three residual row norms are below 0.052947535, 0.035056584, and 0.044884807. Each inverse column has norm at most \(3/|\det B|\), because its squared norm is a diagonal cofactor of \((B^*B)^{-1}\). Together with (12), these imply (23).

Both entries in (23) have modulus one. The rational inequality

\[
2\left(\frac{11}{100}-\frac{(11/100)^3}{6}\right)>\frac{109}{500}
\]

implies that their phase difference has magnitude less than \(11/50=0.22\). Continuity from zero selects the same real phase branch everywhere on the connected ellipsoid.

### 5.3 Exhaustive elimination of every other permutation pair

**CERTIFIED.** Every rectangle phase functional has squared dual norm at most \(4/3\) on the Fourier tangent space. For two chart matrices, the sum of their tangent contributions to any cross-ratio comparison is therefore at most \(4/(5\sqrt3)\).

For a proposed row/column permutation pair \((r,c)\), and a rectangle \((i,k;j,l)\), its two Fourier cross ratios have circular phase gap \(a\pi/3\), where

\[
a=\min(d,6-d),\quad
d=((i-k)(j-l)-(r_i-r_k)(c_j-c_l))\bmod6.
\]

If \(m\) of the eight entry occurrences in the two rectangles lie in a lower-right block, their error is at most

\[
\frac4{5\sqrt3}+(8-m)\frac{153}{10000}+m\frac{11}{50}.
\tag{24}
\]

The verifier exhausts all \(720^2=518400\) permutation pairs and generates a rectangle whose bound (24) is strictly smaller than \(a\pi/3\) for every nonstabilizing pair. It excludes 518228 pairs using only visible-block entries, and the remaining 100 nonstabilizing pairs using (23). All used inequalities have margin greater than \(1/20\) radians.

Exactly 72 pairs remain:

\[
\boxed{r_i=ui+b,\quad c_j=uj+d\pmod6,
\quad u\in\{1,-1\},\quad b,d\in\mathbb Z/6.}
\tag{25}
\]

They are precisely the Fourier stabilizers. The census regenerates every witness and its digest, rather than trusting a list of excluded pairs.

**PROVED.** Thus all identifications between parameters in \(D\) come from the 72 Fourier stabilizers. Together with framed injectivity, this is injectivity modulo the prescribed isotropy, with at most 72 representatives of a class in \(D\).

The particular ellipsoid has not been proved invariant under the induced nonlinear parameter action. Consequently this report does not say that every generic fiber in the entire ellipsoid contains exactly 72 points. The familiar generic multiplicity 72 holds on a sufficiently small invariant neighborhood of zero, as in U.

## 6. Boundary separation

**PROVED.** The requested boundary bonus holds on the full explicit ellipsoid:

\[
\boxed{p\in\partial D\quad\Longrightarrow\quad
d_{\rm ph}(\Phi(p),[F])>\frac3{20}.}
\tag{26}
\]

Suppose instead that a boundary image has distance at most 0.15. By (22), its Fourier-aligned small representative is the dephased output at an interior parameter. Section 5 shows that the equivalence to the boundary output uses a Fourier stabilizer. Such a stabilizer preserves the horizontal norm of the aligned increment, so the boundary output is represented by a transformed increment \(z'\) with \(\|z'\|\le0.15\).

There is no seed-angle ambiguity: chart seed displacements have magnitude below 0.231, and the selected rectangle functionals of \(z'\) have magnitude at most 0.3. Equality modulo \(2\pi\) is therefore equality of these real displacements. The signature is gauge invariant and recovers the same \(y\).

Apply (17)–(19) directly to this actual Hadamard increment. The exact resulting estimate is

\[
\|Vq(p)\|\le\frac3{20}+f(3/20)
=\frac{251523}{1280000}<\frac15.
\tag{27}
\]

This contradicts \(p\in\partial D\). No upper ambient-radius bound on the entire chart image, and no invariance of \(D\) under the stabilizer, is needed for this argument.

## 7. Conditioning and derivative conventions

The derivative bounds refer to the **framed horizontal phase map**

\[
\Phi_h(p)=h(Q(p)-Q(0)),
\]

using the analytic real phase lift through zero and Euclidean raw parameter norm on \((u_1,u_2,u_3,y)\). They are not derivatives in an ordinary smooth coordinate system on the finite quotient.

### 7.1 Uniform lower singular value

**PROVED with CERTIFIED identities.** The regenerated signature polynomial satisfies

\[
\sum|c_\alpha|=108,\qquad
\sum|c_\alpha|\alpha\alpha^T=162(P_3\otimes P_3).
\]

Weighted Cauchy–Schwarz gives \(\|DS\|^2\le108\cdot162\) globally. Thus the extraction derivative for \(y=-2S\) has norm below 265. The three selected seed extraction derivatives have smaller operator norm; their support is disjoint from that of the side signature. Exact extraction composed with \(\Phi_h\) is the identity. Hence

\[
\boxed{\sigma_{\min}(D_p\Phi_h)\ge\frac1{265}\quad\hbox{on all of }D.}
\tag{28}
\]

For scaled parameters \((u_1,u_2,u_3,y/24)\), the corresponding global bound is \(1/12\).

### 7.2 Explicit upper Hessian bound

**CERTIFIED / PROVED.** The tube contraction gives

\[
\|\mathcal H_x^{-1}\|_\infty<20,\qquad
\|D_px\|_\infty<60,\qquad
\|D_p^2x\|_{\infty,\infty\to\infty}<5{,}328{,}000.
\tag{29}
\]

The verifier checks \(\|M\|_\infty<2.537\), and the weighted-to-unweighted conversion uses \(w_{\max}/w_{\min}=197/137\). The raw joint Hessian of (7) has global bound 74, and \(\|\mathcal H_p\|_\infty\le3\). These give (29) by implicit differentiation.

Since each adjugate entry of a 3-by-3 phase matrix has modulus at most two, (12) gives \(\|(B^*)^{-1}\|_2<9\). Differentiating (13), and then the unit-modulus entry phases, gives the explicit safe bound

\[
\boxed{\|D_p^2\Phi_h\|_{2,2\to2}
<L:=150{,}000{,}000{,}000.}
\tag{30}
\]

The product-rule constants are detailed in `proofs/CHART_CERTIFICATE.md`. This bound is conservative and is not a practical enclosure bound for large Taylor boxes. Existence, coverage, isotropy, and boundary separation do not use it. The explicit residual tube and per-component derivative bounds are the useful computational interface.

For the auxiliary intrinsic normal graph, the much sharper bounds
\(\sigma_{\min}\ge1\), \(\|DG\|<10/9\), and \(\|D^2G\|<7/2\) hold on tangent radius 1/4. Those are stated separately because they use different input coordinates.

## 8. Replay, files, and use in the atlas

Run from this package directory:

```sh
python3 -I scripts/verify_all.py
```

Only Python's standard library is needed. The driver checks the chart, lower-right completion phases, Fourier spectrum, coordinate-error tensors, extraction derivatives, all 518400 permutation pairs, and the final scalar assembly. Every acceptance check is exact integer/rational arithmetic or exact arithmetic in \(\mathbb Q(\sqrt3)\). Printed floating-point summaries and elapsed times are informational and never determine acceptance.

The package contains:

- `REPORT.md`: the consolidated theorem and proof, including the dependency on U.
- `scripts/verify_all.py` and six component verifiers: regeneration and replay of all new finite checks.
- `data/predictor.json`: the exact cubic predictor coefficients.
- `certificates/`: replay receipts, with exact rational bounds.
- `proofs/`: the detailed chart, graph, coordinate, completion-phase, and isotropy calculations.
- `input/`: the supplied brief and the local U theorem/review used as inputs.

**PROVED implication for W's geometry.** The fixed chart now contains the whole phase-distance ball of radius 0.15, and its parameter boundary lies beyond that ball. The shell ending at 0.125 is therefore no longer a gap caused by the chart's certified extent. The same linear U coordinates can be used for transfers between edge balls.

**NOT ESTABLISHED here.** This does not independently check any existing seed-atlas boundary-transfer list, prove coverage at fixed-chart radius 0.2, or produce a practical small global Hessian constant in raw U coordinates. The supplied atlas files and Stage C are not used in these conclusions.

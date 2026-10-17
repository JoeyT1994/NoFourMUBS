# N1: independent proof audit and explicit support bounds

**Status:** the analytical statements in Sections 1–8 below are proved. The
floating-point discussion specifies a bounded numerical implementation and an
error budget; it is not a substitute for running an independent interval or
integer checker on a changed atlas. No numerical reduction in atlas cost is
asserted in this note.

The inputs used are `BRIEF.md`, `inputs/proof/atlas/STAGEC.md`,
`inputs/proof/atlas/RIGOUR.md`, `inputs/proof/atlas/ballrecord.py`, and the integer
checker interfaces in `inputs/kernel_atlas/lean/KernelAtlas/Tangent2*.lean`.
All phase displacements in this note are in **cycles**.

## 1. Exact second-order expansion, with the sign checked

Fix one column, write \(q_j=e(u_j-P_{ji})/\sqrt6\), and put
\(S=\sum_jq_j\). Define the real symmetric matrix

\[
 H_{jk}=\operatorname{Re}(q_j\overline q_k)
 -\mathbf1_{j=k}\operatorname{Re}(\overline S q_j).
\]

Its row sums vanish. In particular, for every real \(w\),

\[
\begin{split}
Q(w)&=\pi w^THw\\
&=\pi\left(\left|\sum_jq_jw_j\right|^2
 -\sum_j\operatorname{Re}(\overline S q_j)w_j^2\right)\\
&=-\pi\sum_{j<k}\operatorname{Re}(q_j\overline q_k)(w_j-w_k)^2.
\end{split}                                                    \tag{1}
\]

Thus \(Q\) is invariant under adding the same scalar to all coordinates.
The linear coefficient is \(J_j=-\operatorname{Im}(\overline S q_j)\), and
\(\sum_jJ_j=0\).

For \(S'=\sum_jq_je(w_j)\), expand the ordered-pair expression
\(|S'|^2=\sum_{j,k}q_j\overline q_k e(w_j-w_k)\). The constant, linear,
and quadratic terms give the **exact identity**

\[
 \frac{|S'|^2-1}{4\pi}=c+J\cdot w+\pi w^THw+\rho,\qquad
 c=\frac{|S|^2-1}{4\pi}.                                      \tag{2}
\]

Taylor's integral remainder for \(e(t)=\exp(2\pi it)\) gives

\[
 |e(t)-1-2\pi it+2\pi^2t^2|\le\frac{(2\pi)^3}{6}|t|^3.
\]

Using \(|q_j\overline q_k|=1/6\) and dividing by \(4\pi\),

\[
 |\rho|\le\frac{\pi^2}{18}\sum_{j,k}|w_j-w_k|^3
 =\frac{\pi^2}{9}\sum_{j<k}|w_j-w_k|^3.                        \tag{3}
\]

There is no missing factor of two in either (1) or (3). The sign in the
definition of \(J\) is negative; this makes the tangent coefficient below
\(-B^Ty\), not \(+B^Ty\).

## 2. A sharp universal Hessian bound

Let \(C_0=I-\mathbf1\mathbf1^T/6\) be the centring projector. Since
\(|\operatorname{Re}(q_j\overline q_k)|\le1/6\), (1) implies

\[
 |v^THv|\le\frac16\sum_{j<k}(v_j-v_k)^2=\|C_0v\|^2.
                                                               \tag{4}
\]

Equivalently,

\[
 -C_0\preceq H\preceq C_0,\qquad \|H\|_{\rm op}\le1.           \tag{5}
\]

This constant is sharp uniformly in the phases: when all \(q_j\) are equal,
\(H=-C_0\). A bound \(1+|S|/\sqrt6\) is valid but unnecessarily loses up to
a factor of two.

The bilinear version needed below can be proved without spectral theory:

\[
 |v^THz|\le\frac16\sum_{j<k}|v_j-v_k||z_j-z_k|
 \le\|C_0v\|\,\|C_0z\|.                                      \tag{6}
\]

## 3. Exact quadratic polynomial on the box times the tangent ball

Write \(d=(0,d_1,\ldots,d_5)\), \(|d_j|\le a\),
\(x=C_0d\), \(h=r_H\), and \(\|\eta\|\le h\). The frame \(T\) here is
the **actual frame used by the test**, including its float rounding if that is
the representation being checked. Let \(T_i\) be its \(6\times4\) column
block and \(w_i^0=x-T_i\eta\).

For a real multiplier \(y\), define

\[
\begin{aligned}
 l_j&=\sum_i y_iJ_{ij}, &&1\le j\le5,\\
 b&=-\sum_i y_iT_i^TJ_i=-B^Ty,\\
 A&=\pi\sum_i y_iH_i[1{:}5,1{:}5],\\
 C&=-\pi\sum_i y_iH_i[1{:}5,:]T_i,\\
 D&=\pi\sum_i y_iT_i^TH_iT_i.
\end{aligned}                                                  \tag{7}
\]

Both \(A\) and \(D\) are symmetric. The zero row sums of \(H_i\) and \(J_i\)
remove the centring projector exactly, so

\[
\begin{split}
p_y(d,\eta)&=\sum_i y_i\{J_i\cdot w_i^0+Q_i(w_i^0)\}\\
&=l^Td+b^T\eta+d^TAd+2d^TC\eta+\eta^TD\eta.                    \tag{8}
\end{split}
\]

The matrix \(C\) is the coefficient of **half** the mixed term: the polynomial
contains \(2d^TC\eta\). Neither a factor of two nor a centring correction may
be omitted when implementing (8).

### 3.1 Cheap one-sided support

For symmetric \(D\), define the Gershgorin upper bound

\[
 g(D)=\max_k\left(D_{kk}+\sum_{m\ne k}|D_{km}|\right),\qquad
 g_+(D)=\max(0,g(D)).                                           \tag{9}
\]

Then the following number is an explicit upper bound on \(\sup p_y\):

\[
\begin{split}
U(l,b,A,C,D)={}&a\|l\|_1+h\|b\|_2\\
&+a^2\left[\sum_j(A_{jj})_++2\sum_{j<k}|A_{jk}|\right]\\
&+2ah\sum_j\|C_{j,:}\|_2+h^2g_+(D).                            \tag{10}
\end{split}
\]

Proof: bound the linear terms by the support functions of the box and ball.
For the diagonal box terms use \(A_{jj}d_j^2\le(A_{jj})_+a^2\); for
off-diagonal terms use \(|d_jd_k|\le a^2\). For the mixed term,
\(|d^TC\eta|\le ah\sum_j\|C_{j,:}\|\). Finally
\(\eta^TD\eta\le g(D)\|\eta\|^2\le g_+(D)h^2\). The Gershgorin
inequality also has the elementary proof
\(2D_{km}\eta_k\eta_m\le|D_{km}|(\eta_k^2+\eta_m^2)\).

This support evaluation involves only the 45 independent quadratic
coefficients (15 in \(A\), 20 in \(C\), and 10 in \(D\)), absolute values,
positive parts, row sums, and six Euclidean norms of dimensions at most four.
The cost of **forming** those coefficients is additional and must be included
in a kernel performance claim; it is not automatically a few hundred
operations merely because their final support evaluation is cheap.

The mixed block admits the further valid alternatives

\[
\sup|d^TC\eta|\le ah\min\left\{
 \sum_j\|C_{j,:}\|_2,\ \sqrt5\,\|C\|_F\right\}.                \tag{11}
\]

The implementation's still cheaper cross bound is

\[
 \sup|d^TC\eta|\le ah\left\|\left(\sum_j|C_{jk}|\right)_k\right\|_2.
                                                               \tag{11a}
\]

Indeed each coordinate of \(C^Td\) has modulus at most
\(a\sum_j|C_{jk}|\). By the triangle inequality, (11a) is no larger
than the row-norm alternative in (10), and by Cauchy–Schwarz it is also
no larger than the Frobenius alternative in (11). Thus one such norm can
replace the five row norms in the basic support evaluation.

There is also an elementary traceless-Frobenius eigenvalue bound. If
\(k\) is the tangent dimension, \(t=\operatorname{tr}(D)/k\), and
\(E=D-tI\), then

\[
 \lambda_{\max}(D)\le t+\sqrt{(k-1)/k}\,\|E\|_F.               \tag{11b}
\]

For \(k>1\), the largest eigenvalue \(\mu\) of the traceless matrix
\(E\) is nonnegative, the remaining eigenvalues sum to \(-\mu\), and
their squares sum to at least \(\mu^2/(k-1)\). This proves (11b).
For \(k=1\) it is equality. The minimum of (9) and (11b) is valid.
For \(k=0\), all tangent terms are zero.

Any checked upper bound on \(\lambda_{\max}(D)\), for example a rational
positive-semidefiniteness certificate for \(\lambda I-D\), may replace
\(g(D)\). An unchecked numerical eigenvalue is not such a certificate.

### 3.2 A stronger scalar-diagonal variant

The exact maximum of \(ut+vt^2\) on \([-a,a]\) is

\[
m_a(u,v)=
\begin{cases}
 a|u|+va^2,&v\ge0\text{ or }|u|\ge-2av,\\
 -u^2/(4v),&v<0\text{ and }|u|<-2av.
\end{cases}                                                    \tag{12}
\]

Replacing the first box-linear term plus its diagonal contribution in (10)
by \(\sum_jm_a(l_j,A_{jj})\) is valid and never larger. This captures a
negative diagonal's cancellation with the linear term. In exact integer
arithmetic the interior case can be checked after multiplying by the
positive denominator \(-4A_{jj}\); a division routine need not be trusted.

### 3.3 Optional 32-vertex tightening

Define \(\kappa=\sum_j(-A_{jj})_+\). Then

\[
\begin{split}
\sup p_y\le a^2\kappa+h^2g_+(D)
+\max_{\epsilon\in\{-1,1\}^5}\bigl[
 a l^T\epsilon+a^2\epsilon^TA\epsilon
 +h\|b+2aC^T\epsilon\|_2\bigr].                               \tag{13}
\end{split}
\]

To prove (13), first take the ball-linear support. Add
\(\sum_j(-A_{jj})_+d_j^2\) to the resulting box function. This only
increases it, and makes the resulting function convex in each coordinate
separately: its quadratic coordinate coefficient is nonnegative and its
norm term is convex. Replacing coordinates successively by endpoints proves
the maximum is attained at a vertex. At a vertex the added term is exactly
\(a^2\kappa\).

Gray-code traversal updates \(C^T\epsilon\), \(A\epsilon\), and
\(l^T\epsilon\) cheaply, but (13) still needs 32 four-dimensional norm
checks. It is a tightening option, not the promised minimal-cost kernel
test. The minimum of (10), its scalar-diagonal improvement, and (13) is valid.

### 3.4 Forcing dominant coordinates to endpoints

Let \(F\) be the set of coordinates satisfying

\[
 |l_j|>2a\sum_k|A_{jk}|+2h\|C_{j,:}\|_2.                       \tag{13a}
\]

The partial derivative of the original polynomial (8) has the sign of
\(l_j\) everywhere in its domain. For any fixed \(\eta\), replacing
\(d_j\) by \(a\operatorname{sign}(l_j)\) increases the polynomial.
Coordinates in \(F\) may therefore be fixed to these endpoints before
forming an upper bound. The vertex bound can be sharpened to

\[
\begin{split}
\sup p_y\le{}&a^2\left[\sum_j(A_{jj})_+
 +\sum_{j\in F}\min(A_{jj},0)\right]+h^2g_+(D)\\
&+\max_{\substack{\epsilon\in\{-1,1\}^5\\
 \epsilon_j=\operatorname{sign}(l_j)\ (j\in F)}}
 \left[a l^T\epsilon+a^2\epsilon^TA_{\rm off}\epsilon
       +h\|b+2aC^T\epsilon\|_2\right].                         \tag{13b}
\end{split}
\]

Here \(A_{\rm off}\) has zero diagonal. For forced coordinates even a
negative diagonal contributes its true constant \(A_{jj}a^2\). For
unforced coordinates remove a negative diagonal to obtain a separately
convex function, then maximize at endpoints as in (13). This proves (13b).
In a numerical implementation, only call a coordinate forced after an
extra positive derivative margin that dominates coefficient errors; the
v2 implementation uses \(10^{-8}\).

## 4. A weighted Frobenius lemma, with the formal-domain repair

The existing Lean predicate `Admissible` does **not** assert horizontality,
and `StageCCert.hleaf` quantifies over all displacements satisfying that
predicate. To preserve this interface, the implementation uses a row-sum
defect allowance. Let

\[
 e_\Sigma\ge\left\|\sum_i\delta_{:,i}\right\|_2.
\]

For an unrestricted admissible decomposition \(\delta=T\eta+\nu\), a
valid choice is

\[
 e_\Sigma=h\left\|\sum_iT_i\right\|_{\rm op}+\sqrt6\,n.
                                                               \tag{14a}
\]

The operator norm may be replaced by the Frobenius norm. For physical
horizontal displacements, \(e_\Sigma=0\) is valid; for the unchanged
`Admissible` interface use (14a). Even if \(T\) is exactly horizontal,
unrestricted \(\nu\) requires the \(\sqrt6n\) term.

For every nonnegative six-vector \(v\), put

\[
\begin{split}
W(v)=\min\{&\|v\|_\infty(6X^2+2Xe_\Sigma+r_F^2),\\
           &\|v\|_1(X+r)^2,\\
           &\|v\|_1X^2+2X\left[r_F\|C_0v\|_2
                    +\frac{\|v\|_1}{6}e_\Sigma\right]
                    +\|v\|_\infty r_F^2\},
\qquad X=\sqrt{29/6}\,a.                                      \tag{14}
\end{split}
\]

For every displacement \(\delta\) satisfying the column, Frobenius,
and row-sum-defect bounds, and \(w_i=x-\delta_{:,i}\),

\[
 \sum_i v_i\|w_i\|^2\le W(v).                                 \tag{15}
\]

The proof of the first branch uses the common vector displacement:

\[
 \sum_i\|x-\delta_i\|^2
 =6\|x\|^2-2x^T\sum_i\delta_i+\|\delta\|_F^2
 \le6X^2+2Xe_\Sigma+r_F^2.
\]

The second branch is the per-column bound. For the third, expand the
weighted sum and use

\[
\delta v=\delta(C_0v)+\frac{\|v\|_1}{6}\delta\mathbf1,\quad
 |x^T\delta v|\le X\left[r_F\|C_0v\|+
                           \frac{\|v\|_1}{6}e_\Sigma\right],\quad
 \sum_iv_i\|\delta_i\|^2\le\|v\|_\infty r_F^2.
\]

The horizontal specialization \(e_\Sigma=0\) is sharper but must not be
used in the unchanged `Admissible` leaf interface without a new semantic
bridge. The rounded frame itself does not need to have exactly zero row or
column sums. Replacing \(r_F\) by the per-column \(r\) in the first or
third branch is invalid.

## 5. Explicit cubic remainder

For all pairs \(j,k\),

\[
 |w_{ji}-w_{ki}|
 \le |d_j-d_k|+|\delta_{ji}-\delta_{ki}|
 \le D_*=2a+\sqrt2\,r.                                        \tag{16}
\]

In general
\(\sum_{j<k}(w_{ji}-w_{ki})^2=6\|C_0w_i\|^2\le6\|w_i\|^2\).
Equations (3), (14),
and (16) therefore give the fully explicit bound

\[
 \left|\sum_i y_i\rho_i\right|
 \le E_3(y):=\frac{2\pi^2}{3}(2a+\sqrt2r)W(|y|).                \tag{17}
\]

For comparison, the unweighted norm estimate
\(\sum_{j,k}|w_j-w_k|^3\le12\sqrt2\|C_0w\|^3\) also gives
\(|\rho_i|\le(2\sqrt2\pi^2/3)\|w_i\|^3\). Formula (17) retains
the sharper box difference \(2a\), as well as Frobenius/horizontal
information across columns.

### 5.1 Split cubic bound preserving cancellation in the vector displacement

There is a sharper alternative which needs no horizontality assumption.
Let \(\kappa=2\pi\),

\[
 R_2(t)=e(t)-1-i\kappa t,\qquad
 R_3(t)=e(t)-1-i\kappa t+\kappa^2t^2/2.
\]

The following algebraic identity is exact:

\[
 R_3(v-t)=R_3(v)+R_3(-t)
 +R_2(v)(e(-t)-1)+i\kappa vR_2(-t).                            \tag{17a}
\]

For each pair \(j<k\), let \(v=d_j-d_k\),
\(t_i=\delta_{ji}-\delta_{ki}\), and

\[
 g_{jk}=\left|\sum_i y_iq_{ji}\overline q_{ki}\right|.
\]

The pair's contribution to the weighted Taylor remainder is
\((2\pi)^{-1}\operatorname{Re}\sum_i y_iq_{ji}\overline q_{ki}R_3(v-t_i)\).
Applying (17a) before taking absolute values bounds the four contributions by

\[
 \frac{2\pi^2}{3}g_{jk}|v|^3,
 \quad\frac{\pi^2}{9}\sum_i|y_i||t_i|^3,
 \quad\frac{\pi^2}{3}\sum_i|y_i|v^2|t_i|,
 \quad\frac{\pi^2}{3}\sum_i|y_i||v|t_i^2.                       \tag{17b}
\]

The pure-vector term is convex in \(d\), so its maximum occurs at one
of the 32 vertices. Since \(d_0=0\), this maximum is

\[
 a^3\left[\sum_{j>0}g_{0j}+8\operatorname{MaxCut}_{K_5}(g)\right].
                                                               \tag{17c}
\]

Here `MaxCut` is simply the maximum over the 16 distinct bipartitions of
five vertices; no optimization oracle is needed. Equivalently, enumerate
all 32 sign vectors and evaluate the 15 nonnegative pair terms.

For the other terms, use

\[
\begin{gathered}
 \max_{i,j,k}|t_i|\le\sqrt2r,\qquad
 \sum_{j<k,i}t_i^2\le6r_F^2,\\
 \max_{|d_j|\le a,\ d_0=0}\sum_{j<k}(d_j-d_k)^4=101a^4.
\end{gathered}
\]

The last equality follows by convexity and evaluation at vertices: the
five pairs involving 0 contribute \(5a^4\), and at most six pairs
between the two sign classes contribute \(16a^4\) each. Cauchy–Schwarz
over pairs and columns gives

\[
 \sum_{j<k,i}|y_i|v^2|t_i|
 \le\sqrt{606}\,\|y\|_2a^2r_F.
\]

Consequently the valid alternative cubic budget is

\[
\begin{split}
 E_{3,\mathrm{split}}={}&\frac{2\pi^2}{3}a^3
   \left[\sum_{j>0}g_{0j}+8\operatorname{MaxCut}_{K_5}(g)\right]\\
 &+\frac{2\sqrt2\pi^2}{3}\|y\|_\infty r r_F^2\\
 &+\frac{\pi^2}{3}\sqrt{606}\,\|y\|_2a^2r_F
   +4\pi^2a\|y\|_\infty r_F^2.                               \tag{17d}
\end{split}
\]

Use \(\min(E_3,E_{3,\mathrm{split}})\). In particular, the first
term keeps the cancellation of \(\sum_i y_iq_{ji}\overline q_{ki}\)
across columns. Multiplying the original complete remainder by an empirical
factor does not implement this bound.

### 5.2 Optional pure-vector sine/cosine tightening — theorem only

This refinement is **proved but not implemented or benchmarked** in the
delivered numerical module. It reuses the same weighted Gram entries and
32 vertices, so it is a reasonable candidate for a later controlled
experiment.

Write \(G_{jk}=\sum_i y_iq_{ji}\overline q_{ki}\). The real and
imaginary parts of \(R_3(v)\) are
\(\cos(2\pi v)-1+2\pi^2v^2\) and
\(\sin(2\pi v)-2\pi v\). Scalar Taylor remainders give, for every real v,

\[
\begin{aligned}
 |\sin(2\pi v)-2\pi v|&\le(2\pi)^3|v|^3/6,\\
 |\cos(2\pi v)-1+2\pi^2v^2|&\le(2\pi)^4v^4/24.
\end{aligned}
\]

Consequently each pure-vector pair contribution is bounded by

\[
 \frac{2\pi^2}{3}|\operatorname{Im}G_{jk}|\,|v|^3
 +\frac{\pi^3}{3}|\operatorname{Re}G_{jk}|\,v^4.                \tag{17e}
\]

The sum of these nonnegative convex functions of pair differences is
convex in \(d\), hence attains a maximum at a box vertex. For
\(\epsilon_0=0\), \(\epsilon_{1:5}\in\{-1,1\}^5\), and
\(\Delta_{jk}=|\epsilon_j-\epsilon_k|\), a valid alternative to
the first term of (17d) is therefore

\[
 E_{x,\mathrm{RI}}=
 \max_\epsilon\sum_{j<k}\left[
 \frac{2\pi^2}{3}a^3|\operatorname{Im}G_{jk}|\Delta_{jk}^3
 +\frac{\pi^3}{3}a^4|\operatorname{Re}G_{jk}|\Delta_{jk}^4
 \right].                                                     \tag{17f}
\]

Take the minimum of this value and the existing pure-vector cubic budget;
leave all three mixed/pure-displacement terms of (17d) unchanged. Formula
(17f) can be particularly useful when the weighted Gram entries have small
imaginary parts, since their real parts enter one order later. No uniform
speedup or survivor-count improvement follows from the theorem alone.

## 6. All normal and frame-rounding errors

Assume the input decomposition is

\[
 \delta=T\eta+\nu,\qquad \|\eta\|\le h,\quad\|\nu\|_F\le n.
\]

There is no requirement here that \(\nu\) belongs to an exact normal space.
This matters because `ballrecord.py` folds the frame-rounding discrepancy
into this vector. With \(w_i=x-\delta_i\), one has \(w_i^0=w_i+\nu_i\),
hence

\[
 Q_i(w_i^0)-Q_i(w_i)=2\pi w_i^TH_i\nu_i+\pi\nu_i^TH_i\nu_i.
                                                                  \tag{18}
\]

Expanding around **actual** \(w_i\) rather than around \(w_i^0\) is useful:
it makes (15), with the generic-interface defect allowance, available and
avoids any unjustified assumption that a float frame is horizontal.

Define

\[
 N_y=\left(\sum_i\sum_j y_i^2J_{ij}^2\right)^{1/2},
\qquad m=\|y\|_\infty.
\]

Equations (6), (15), (18), and Cauchy–Schwarz over columns prove

\[
 E_\nu(y):=nN_y+2\pi n\sqrt{W(y^2)}+\pi n^2m                  \tag{19}
\]

is an upper bound on the error made when replacing
\(\sum_i y_i[J_iw_i+Q_i(w_i)]\) by \(p_y(d,\eta)\). Explicitly,

\[
\begin{split}
 \left|\sum_i y_iJ_i\nu_i\right|&\le nN_y,\\
 \left|\sum_i y_iw_i^TH_i\nu_i\right|
 &\le\left(\sum_i y_i^2\|w_i\|^2\right)^{1/2}\|\nu\|_F
 \le n\sqrt{W(y^2)},\\
 \left|\sum_i y_i\nu_i^TH_i\nu_i\right|&\le mn^2.
\end{split}
\]

### Exact-frame to rounded-frame transfer

Let \(T_e\) be the exact rational frame and \(T_f\) the frame used by the
test. If \(\delta=T_e\eta+\nu_e\), define
\(\nu_f=\nu_e+(T_e-T_f)\eta\). Then

\[
 \|\nu_f\|\le n_e+\|T_e-T_f\|_{\rm op}h
 \le n_e+d_T h,
 \quad d_T\ge\sum_{e,k}|(T_e-T_f)_{ek}|.                       \tag{20}
\]

This is the correction computed by `ballrecord.py` before Stage C is called.
Use its **full corrected** \(n\) in all three terms of (19), and use
\(T=T_f\) in every block of (7). Do not use the pre-correction normal radius
in the quadratic terms. No further frame error term is then needed: (18)
accounts for the entire combined residual. The transfer and division of all
displacement radii by \(2\pi\) must be performed with valid upper bounds.

## 7. Proved exclusion theorem

For any multiplier \(y\), any actual unbiased vector in the bin and any
Hadamard in the Record ball would satisfy

\[
 0=y\cdot c+p_y(d,\eta)+e,\qquad
 |e|\le E_3(y)+E_\nu(y).                                       \tag{21}
\]

### Original absolute-value N1 formulation

Let

\[
 U_{\rm abs}(y)=\max\{U(l,b,A,C,D),U(-l,-b,-A,-C,-D)\}.
\]

Then

\[
 |y\cdot c|>U_{\rm abs}(y)+E_3(y)+E_\nu(y)                    \tag{22}
\]

implies that the bin contains no vector unbiased to the standard basis and
to any Hadamard in the Record ball. This is N1 with an explicit, proved
box-times-ball supremum bound.

### Stronger oriented formulation

For either \(s\in\{-1,1\}\), the sharper sufficient rejection is

\[
 s(y\cdot c)>U(-sl,-sb,-sA,-sC,-sD)+E_3(y)+E_\nu(y).           \tag{23}
\]

To prove it, multiply (21) by \(s\) and obtain
\(s(y\cdot c)=-s p_y-se\), whose right side is bounded by the right
side of (23). Usually take \(s=\operatorname{sign}(y\cdot c)\).
Only the one-sided upper support of the negative oriented polynomial is
needed. Using absolute eigenvalues or absolute diagonal coefficients throws
away this gain. Equation (23) remains valid for either externally proposed
sign; the checker need not trust a sign-selection procedure.

## 8. Exact or dyadic evaluation

The support calculation can use only integer arithmetic and small
certificates:

1. Store dyadic centres and entrywise error bounds for \(c,l,b,A,C,D,J\).
   Form the exact quadratic blocks from Gaussian-integer approximations to
   the six row values and the rational frame. Since \(q=z/\sqrt6\), both
   \(J\) and \(H\) are obtained from quadratic products in \(z\), divided
   by 6; there is no new transcendental evaluation per bin.
2. For each Euclidean norm, supply an integer upper square root \(s\), then
   check \(s\ge0\) and that the squared argument is at most \(s^2\).
3. Evaluate the Gershgorin expression using exact diagonal signs, absolute
   off-diagonal entries, additions, and maxima. Entry uncertainty must be
   included before taking its positive part.
4. Use rational upper bounds on \(\pi\), \(\sqrt2\), and
   \(\sqrt{29/6}\); precompute depth/radius products when possible.
5. Compare a lower enclosure of \(s(y\cdot c)\) strictly with the upper
   support and error sum. A failed check retains the bin.

A useful alternative for the ball-linear plus ball-quadratic part is a
trust-region certificate. For any \(\lambda\ge0\) with
\(\lambda I-D\succ0\),

\[
 b^T\eta+\eta^TD\eta
 \le\lambda h^2+\frac14 b^T(\lambda I-D)^{-1}b.                 \tag{24}
\]

This follows by completing the square. A proposed rational upper value can
be checked by a \(5\times5\) Schur-complement positive-semidefiniteness
certificate; the optimizer's eigenvalues or inverse need not be trusted.
It is optional, since the much cheaper Gershgorin version already proves
N1.

### Block formation and cost

For implementation efficiency let \(z_{ji}=\operatorname{Re}(\overline S_iq_{ji})\)
and \(v_i=T_i^Tq_i\). The rank-two factorization of
\(\operatorname{Re}(q_iq_i^*)\) gives

\[
\begin{aligned}
C_{jk}&=-\pi\sum_i y_i\left[
 \operatorname{Re}(q_{ji}\overline{v_{ik}})-z_{ji}T_{jik}\right],\\
D_{km}&=\pi\sum_i y_i\left[
 \operatorname{Re}(v_{ik}\overline{v_{im}})
 -\sum_j z_{ji}T_{jik}T_{jim}\right].                           \tag{25}
\end{aligned}
\]

The products \(T_{jik}T_{jim}\) are fixed per Record and may be
precomputed. This avoids multiplying dense \(6\times6\) matrices for each
bin. Nevertheless, claiming a kernel speedup requires measuring the entire
coefficient construction, certificate handling, and traversal. Survivor
counts alone do not establish a kernel runtime improvement.

## 9. Bounded binary64 implementation and a new error budget

The following is an explicit sufficient numerical regime for the requested
experiments. The error analysis is conditional on the stated table-input
model and IEEE binary64 round-to-nearest arithmetic, including the usual
basic-operation and square-root error bounds. Its input conditions are:

- all inputs and proposed directions are finite;
- \(6\le M\le96\), with the supported midpoint table denominators;
- \(T\in\mathbb R^{36\times k}\) with \(0\le k\le4\);
- \(0\le h,r,r_F,n\le0.03\) cycles and \(|T_{ek}|\le1\);
- require the proposed finite float direction to satisfy
  \(\max_i|y_i|\le1\), treating those float values as exact reals;
  zero and arbitrarily small directions are allowed;
- form symmetric quadratic coefficients, use Gershgorin or another checked
  bound, and use basic arithmetic with sums of nonnegative squares for norms.

The physical radii \(R\le0.16\) radians correspond to less than 0.026 cycles;
the numerical guards should nevertheless be checked, not inferred from a
radius name alone.

The final public module checks the supported levels, radii, frame dimensions
and frame entries. The correspondence of the supplied midpoint and centre
tables to the stated phases is a caller precondition; the public function
does not independently validate that correspondence. Its clipped
normalization enforces \(\max_i|y_i|\le1\). The analysis does not require
any accuracy claim for the least-squares proposal.

Use the table-input error from `RIGOUR.md` conservatively as a complex
\(q\)-error at most \(2\times10^{-15}\). Summation and the binary64 basic
operation model then give the following entrywise absolute error budget.
The constants are deliberately rounded up; no relative conditioning of the
least-squares direction is assumed.

| Quantity | Sufficient error bound | Reason |
|---|---:|---|
| \(S_i\) | \(2\times10^{-14}\) | Six complex terms, \(|q|=1/\sqrt6\) |
| \(c_i\) | \(5\times10^{-14}\) | Squared norm and division by \(4\pi\) |
| \(J_{ij}\) | \(2\times10^{-14}\) | One product of \(S_i\) and \(q_{ji}\) |
| \((H_i)_{jk}\) | \(5\times10^{-14}\) | One Gram product and a diagonal subtraction |
| \(l_j\) | \(2\times10^{-13}\) | Six terms |
| \(b_k\) | \(2\times10^{-12}\) | 36 products, \(|T_{ek}|\le1\) |
| \(A_{jk}\) | \(2\times10^{-12}\) | Six Hessian entries and \(\pi\) |
| \(C_{jk}\) | \(10^{-11}\) | 36 Hessian/frame products and \(\pi\) |
| \(D_{km}\) | \(10^{-10}\) | At most 216 Hessian/frame/frame products and \(\pi\) |

These bounds cover direct summation of (7). They also cover the factored
construction (25) used by the audited v2 module: each \(v_{ik}\) has
modulus at most \(\sqrt6\) and absolute error below
\(2\times10^{-14}\); each precomputed frame product has error at most
\(u\). The two parts of an entry of \(D/\pi\) have errors below
\(7\times10^{-13}\) and \(9\times10^{-13}\), respectively,
so the displayed \(10^{-10}\) bound is conservative. The corresponding
factored \(C\) bound is below \(10^{-12}\), also comfortably below
the displayed allowance.

The contribution from coefficient errors to (10) is bounded by

\[
 5a\epsilon_l+2h\epsilon_b+25a^2\epsilon_A
 +20ah\epsilon_C+6h^2\epsilon_D<2\times10^{-12}                \tag{26}
\]

under the numerical guards above. The coefficient 6 covers the
traceless-Frobenius alternative in (11b), as well as Gershgorin's coefficient
4. Small rounding errors in the final norms
and sums bring this to less than \(3\times10^{-12}\). The left-side
error is less than \(4\times10^{-13}\). Euclidean norms are
1-Lipschitz in their vector inputs; this remains true at the zero vector, so
no division by a potentially tiny norm belongs in this argument.

The forced-endpoint derivative is separated from its threshold by
\(10^{-8}\), while the coefficient-error contribution to either side
of (13a) is below \(4\times10^{-12}\) under these guards. Thus a
declared forced coordinate remains forced for the exact coefficients.
Taking maxima over 32 vertices does not multiply an entrywise value-error
bound by 32: the maximum is 1-Lipschitz in the sup norm of its inputs.
The same observation applies to the pure-vector cubic maximum. Its
coefficient matrix is another six-term Gram sum; a generous entry error
of \(10^{-12}\), multiplied by the at most \(53a^3\) sum of cubed
vertex differences and \(2\pi^2/3\), contributes less than
\(3\times10^{-13}\).

Compute \(\|C_0v\|\) by explicitly centring six entries and taking their
norm. Do **not** compute it as
\(\sqrt{\sum v_i^2-(\sum v_i)^2/6}\): that expression has avoidable
cancellation. The direct nonnegative branches in (14), including their
radius products, admit the generous bound \(|\Delta W|\le10^{-13}\)
uniformly for \(\|y\|_\infty\le1\).
For the special case \(\|y\|_\infty=1\) and \(v=y^2\), every branch
of (14) is at least \(X^2\), so

\[
 W(y^2)\ge X^2\ge\frac{29}{6\cdot192^2}>1.31\times10^{-4}.
\]

The square-root error in (19) is then below \(5\times10^{-12}\);
it is multiplied by \(2\pi n<0.189\). The cubic error (17) has a
coefficient smaller than 1.38 multiplying \(W(|y|)\). Together with the
norm error in \(N_y\), these bounds leave the total comparison error below
\(10^{-10}\) in this unit-normalized case.

The public normalization divides by
\(\max(\|z\|_\infty,10^{-300})\) before clipping. It can therefore
produce a nonzero direction with \(\|y\|_\infty<1\); no property of the
least-squares solve should be used to rule this out. For all such directions,
including the zero direction, use the uniform square-root inequality

\[
 \left|\sqrt{\max(\widehat W,0)}-\sqrt W\right|
 \le\sqrt{|\widehat W-W|}\le\sqrt{10^{-13}},\qquad W\ge0.
                                                               \tag{27}
\]

Projection onto the nonnegative half-line cannot increase the distance to
\(W\ge0\), and \((\sqrt u-\sqrt v)^2\le|u-v|\) for nonnegative
\(u,v\). These two elementary facts prove (27), including at zero.

The resulting error in the square-root part of the normal budget is at most

\[
 2\pi n\sqrt{10^{-13}}
 \le0.06\pi\sqrt{10^{-13}}<5.961\times10^{-8}.
                                                               \tag{28}
\]

All remaining coefficient, final-arithmetic, cubic and normal-norm errors
above total less than \(10^{-10}\). Consequently the complete comparison
error is less than \(6.1\times10^{-8}<10^{-7}\) for every finite proposed
direction with \(\|y\|_\infty\le1\), under the stated input and arithmetic
assumptions. This proves that the existing \(10^{-7}\) rejection margin
is sufficient without any lower bound on the size of the proposed direction.

The floating orientation is safe under the same budget. If the computed
sign of \(y\cdot c\) differs from its exact sign, the computed absolute
constant is at most its \(4\times10^{-13}\) error allowance. For either
orientation, the exact support-plus-remainder right side is nonnegative:
the origin belongs to the box and tangent ball, so the polynomial support
is at least zero. The computed right side is therefore greater than
\(-6.1\times10^{-8}\). After adding the \(10^{-7}\) guard it exceeds
\(3.9\times10^{-8}\), and such a tiny computed constant cannot reject.
Every accepted floating comparison consequently has a valid orientation.

This discussion also identifies what requires a fresh audit if the code
changes: higher levels beyond 96, multipliers with \(\|y\|_\infty>1\), unguarded
radii, a numerical eigenvalue routine used as if certified, or an algebraic
rearrangement with substantially different intermediate magnitudes. An
independent Arb replay is still useful evidence; it does not turn a sampled
check into verification of every new atlas rejection.

## 10. Integration cautions

- Preserve the existing Stage C admissible-displacement interpretation. The
  first-order and second-order tests may be combined by discarding a bin
  when either proved test rejects it.
- An N2 normal estimate applies to actual Hadamards; it cannot automatically
  replace the normal radius in a LeafRej statement quantified over a larger
  linear admissible tube. That is a separate interface question.
- Per-column bounds use \(r\); sums across columns use \(r_F\), or a
  separately proved weighted/per-column alternative.
- Equation (23) is stronger than bounding the absolute value of the
  quadratic polynomial. The signs of its diagonal and tangent quadratic
  terms must follow the orientation \(-s\).
- Every occurrence of \(n\) includes the rounded-frame discrepancy.
- The second-order theorem is proved independently of whether it achieves
  the proxy's numerical savings. Such a savings claim must come from the
  requested atlas measurements and, ultimately, a recertification.

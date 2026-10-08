# Rigorous auxiliary results for global confinement

## Scope

This note proves an improved projector-to-phase estimate, proves the continuity and attainment needed in the proposed local-minimum reformulation, and gives an exact nonsmooth descent criterion. It also records two exact complementary-minor identities. It **does not prove global confinement at cutoff 26**: the required global descent/cover computation remains absent.

The improved estimate is strong enough to justify the advertised terminal condition

\[
d_F(H)\le 0.0914\quad\Longrightarrow\quad\nu(H)<0.55.
\]

The displayed formula F3 in the handoff does not itself justify that implication: its value at 0.09138 already exceeds 0.55. The estimate below repairs this issue.

The definitions of equivalence, \(\nu\), \(d_F\), and \(M\) are those in the supplied `PROMPT.md`. No global classification or chart-completeness assertion is used in Sections 1–4. Section 3 uses the supplied certified local lemma F4; Section 4 uses F8 only for its final sum rule.

## 1. Improved gauge theorem

**Theorem 1.** For a unit-entry \(6\times6\) matrix \(H\), if \(d_F(H)\le r\le1/10\), then

\[
\boxed{\quad
\nu(H)\le
6\sqrt{\frac56\left(1-\sqrt{1-\frac{12}{5}r^2}\right)}.
\quad} \tag{1}
\]

The proof does not require the rows of \(H\) to be orthogonal. In particular,

\[
d_F(H)\le\frac{457}{5000}=0.0914
\quad\Longrightarrow\quad
\nu(H)<\frac{11}{20}=0.55. \tag{2}
\]

The largest radius established by (1) for the non-strict conclusion \(\nu\le0.55\) is exactly

\[
r_{\rm gauge}=\sqrt{\frac{2889359}{345600000}}
=0.0914352982887251708\ldots. \tag{3}
\]

### 1.1 An exact centered fourth-moment inequality

For six real numbers with \(\sum_i z_i=0\),

\[
\sum_i z_i^4\le\frac7{10}\left(\sum_i z_i^2\right)^2. \tag{4}
\]

Here is an elementary proof, including all stationary cases. Normalize \(\sum z_i^2=1\). A maximum of the fourth moment exists on the compact sphere in the mean-zero hyperplane. The gradients of the two constraints are independent there. Lagrange multipliers therefore imply that every coordinate is a root of one cubic of the form \(4x^3-2\lambda x-\mu=0\). There are at most three distinct coordinate values.

If there are two values, with multiplicities \(p,6-p\), the mean-zero constraint gives the fourth-moment ratio

\[
\frac{p^3+(6-p)^3}{36p(6-p)}.
\]

For \(p=1,2,3\), its values are respectively \(7/10,1/4,1/6\), and the remaining cases are symmetric.

If there are three distinct values \(a,b,c\), their sum is zero because the cubic has no quadratic coefficient. The multiplicity partitions of six into three positive parts are:

* \(4+1+1\): combining \(4a+b+c=0\) with \(a+b+c=0\) gives \(a=0\), \(c=-b\), and fourth-moment ratio \(1/2\).
* \(3+2+1\): the two linear relations give \(b=-2a\) and \(c=a\), contradicting distinctness.
* \(2+2+2\): the identity \(a^4+b^4+c^4=(a^2+b^2+c^2)^2/2\) for \(a+b+c=0\) gives ratio \(1/4\).

There cannot be a one-value configuration after normalization. This proves (4). Equality occurs for a permutation of \((5a,-a,-a,-a,-a,-a)\).

### 1.2 One column

Choose an equivalent Fourier matrix attaining the minimum in \(d_F\); attainment follows from compactness of the finite union of monomial Fourier orbits. Multiply its individual columns by phases so each column overlap with \(H\) is nonnegative real. Let \(\alpha_i\in[-\pi,\pi]\) be the phase differences in one column. Put

\[
\bar\alpha=\frac16\sum_i\alpha_i,\qquad
z_i=\alpha_i-\bar\alpha,\qquad
t=\frac16\sum_i z_i^2,
\]

and let \(r_j\) be this column's projector distance. The exact identity is

\[
r_j^2=\frac1{36}\sum_{i,k}\bigl(1-\cos(z_i-z_k)\bigr). \tag{5}
\]

For every real \(x\),

\[
1-\cos x\ge x^2/2-x^4/24. \tag{6}
\]

For example, for \(x\ge0\), the fourth derivative of \(1-x^2/2+x^4/24-\cos x\) is \(1-\cos x\ge0\), and its first four initial data through degree three vanish; integrate four times. Evenness covers negative \(x\).

Writing \(S_k=\sum_i z_i^k\), direct expansion and \(S_1=0\) give

\[
\sum_{i,k}(z_i-z_k)^2=12S_2,\qquad
\sum_{i,k}(z_i-z_k)^4=12S_4+6S_2^2.
\]

Combining (4)–(6),

\[
\boxed{\quad r_j^2\ge t-\frac35t^2.\quad} \tag{7}
\]

To select the small root of this quadratic, an explicit initial bound is necessary. The column phase alignment gives

\[
\sum_i|e^{i\alpha_i}-1|^2
=12\left(1-\sqrt{1-r_j^2}\right)
\le12\left(1-\sqrt{99/100}\right)<1/10.
\]

Since \(|\alpha|\le(\pi/2)|e^{i\alpha}-1|\) on \([-\pi,\pi]\) and \(\pi<4\), it follows that

\[
t\le\frac16\sum_i\alpha_i^2<\frac1{15}<\frac56.
\]

Thus \(t\mapsto t-(3/5)t^2\) is increasing on the relevant interval, and (7) implies

\[
t\le T(r):=\frac56\left(1-\sqrt{1-\frac{12}{5}r^2}\right).
\]

### 1.3 Horizontal gauge and the cutoff

Form the real matrix \(\alpha\) of these column phases. Subtracting each column mean gives the matrix \(z\). Its squared Frobenius norm is at most \(36T(r)\). Let \(\Pi\) be orthogonal projection onto the horizontal matrices. Since \(\Pi\alpha=\Pi z\),

\[
\|\Pi\alpha\|^2\le\|z\|^2\le36T(r).
\]

The removed phases are row and column phases, so this is an admissible representation in the definition of \(\nu\). This proves (1).

For the entirely rational cutoff check, set \(t_0=(11/120)^2\). Then

\[
t_0-\frac35t_0^2=\frac{2889359}{345600000}
>\left(\frac{457}{5000}\right)^2.
\]

Monotonicity gives \(T(457/5000)<t_0\) and hence (2). This comparison, the fourth-moment cases, and the sum expansions are replayed in `verify_auxiliary.py`. Arb also encloses the numerical constants in (1)–(3), but those decimals are unnecessary for the cutoff proof.

## 2. The horizontal phase infimum is finite, attained, and continuous

These assertions hold on the full compact torus of unit-entry matrices, not only its Hadamard subset.

**Finiteness.** Choose any entrywise real argument \(\theta\) of \(H/F\). The matrix \(u=\Pi\theta\) is horizontal, and \(\theta-u\) is a sum of a row phase and a column phase. Thus \(H\cong F\circ e^{iu}\). In particular, \(\nu\) never equals \(+\infty\) in the stated domain.

**Attainment.** Take admissible \(u_n\) with norms tending to \(\nu(H)\), and choose corresponding monomial equivalences. The \(u_n\) lie in a bounded subset of a finite-dimensional horizontal space; the diagonal-unitary factors lie in compact tori, and there are finitely many permutations. A subsequence of all these data converges. Its limit is an admissible horizontal representation of \(H\), with norm exactly \(\nu(H)\).

**Continuity, with a global bound.** If \(H'_{ij}=H_{ij}e^{i\epsilon_{ij}}\), with \(\epsilon_{ij}\in[-\pi,\pi]\), applying the same monomial alignment as in an optimal representation of \(H\), and projecting the additional phases horizontally, shows

\[
\nu(H')\le\nu(H)+\|\epsilon\|.
\]

Interchanging \(H,H'\) gives

\[
\boxed{\quad
|\nu(H')-\nu(H)|\le\|\epsilon\|
\le\frac\pi2\|H'-H\|_F.
\quad} \tag{8}
\]

This proves continuity without choosing continuous global arguments or relying on numerical orbit alignment. It also proves \(\nu(H)=0\) exactly when \(H\cong F\).

### Optional finite lattice formulation

After dephasing, let \(\phi\in\mathbb R^{25}\) be a lift of the lower-right phase entries, and let \(\mathcal O\) be the finite set of dephased row/column permutations of \(F\). Write \(\phi_K\) for a lift of \(K\in\mathcal O\), and

\[
A=I_5-\frac16\mathbf1\mathbf1^T,\qquad G=A\otimes A.
\]

Then

\[
\nu(H)^2=\min_{K\in\mathcal O}\min_{n\in\mathbb Z^{25}}
(\phi-\phi_K+2\pi n)^TG(\phi-\phi_K+2\pi n). \tag{9}
\]

The eigenvalues of \(G\) are \(1\) (multiplicity 16), \(1/6\) (multiplicity 8), and \(1/36\) (multiplicity 1). If the initial coordinate difference is chosen in \([-\pi,\pi]^{25}\), the zero lattice vector gives an upper bound \(5\pi\) on the norm. The lower eigenvalue then implies that every minimizer has \(n_{ij}\in\{-15,\ldots,15\}\). Thus (9) is a literal finite minimization, although that elementary enumeration would be prohibitively inefficient. This formula is a mathematical audit of the norm definition, not a proposed global numerical algorithm.

## 3. A rigorous and simpler local-minimum reformulation

**Theorem 2 (using F4).** The global confinement assertion in the prompt is equivalent to the absence of a local minimum of \(M\), relative to the Hadamard set, with \(M<26\) and \(\nu>0.55\).

The reverse implication is immediate: such a point would itself violate global confinement. For the forward reduction, suppose \(H_0\) violates confinement. Consider

\[
K=\{H\in\mathcal H:\nu(H)\ge0.55\}.
\]

This is compact by (8). The continuous function \(M\) attains its minimum on \(K\), at some \(H_*\), and \(M(H_*)\le M(H_0)<26\). Attainment of \(\nu\), together with F4, excludes \(\nu(H_*)=0.55\), since F4 would give \(M(H_*)\ge26.28\). Therefore \(\nu(H_*)>0.55\). Continuity of \(\nu\) provides a relative neighborhood of \(H_*\) entirely contained in \(K\), so \(H_*\) is a local minimum on \(\mathcal H\).

This proof does not require assertions about boundaries of connected components of open subsets, local connectedness, smoothness, or a global chart. The component proof can also be repaired using semialgebraic local connectedness of \(\{M<26\}\), but that machinery is unnecessary.

## 4. Exact complementary-minor identities

For any unit-entry \(3\times3\) matrix \(B\), let its Gram off-diagonal entries be \(s,t,r\), and put \(p=|s|^2+|t|^2+|r|^2\), \(J=2\operatorname{Re}(sr\bar t)\). Direct expansion gives

\[
|\det B|^2=27-3p+J,\qquad
|\operatorname{perm}B|^2=9-p+J. \tag{10}
\]

The identities are Laurent-polynomial identities in nine unit phases. They are independently expanded and checked exactly in `verify_auxiliary.py`.

If \(A,B\) are same-row complementary blocks of a Hadamard matrix, then \(AA^*+BB^*=6I\). For \(d=|\det A|^2\) and \(g=|\det B|^2\), (10) yields

\[
\boxed{\quad
|\operatorname{perm}B|^2=\frac{2g-d}{3},\qquad
|\operatorname{perm}A|^2=\frac{2d-g}{3}.
\quad} \tag{11}
\]

Consequently

\[
\frac12d\le g\le2d, \tag{12}
\]

including the singular case: one of these complementary determinants vanishes if and only if the other does. Combining (11) with F8 and summing over column triples gives the additional exact row-triple sum rule

\[
\boxed{\quad
\sum_{|T|=3}|\operatorname{perm}H[S,T]|^2=72.
\quad} \tag{13}
\]

These identities alone do not prove a quantitatively near-Fourier \(3\times3\) block when \(M<26\). F8 by itself gives only \(\max_T|\det H[S,T]|^2\ge54/5\), whereas a unit-entry \(3\times3\) Hadamard block has determinant squared 27. A substantial additional use of the small signed invariants is required to bridge that gap.

## 5. Nonsmooth descent without a manifold assumption

Let \(U\subset\mathbb R^m\) be open and \(\Psi:U\to\mathcal H\) be any differentiable family of actual Hadamard matrices. Neither injectivity nor local surjectivity of \(\Psi\) is required. Put \(f_c(x)=R_c(\Psi(x))\), \(F(x)=\max_c f_c(x)\), and

\[
I(x)=\{c:f_c(x)=F(x)\}.
\]

The one-sided directional derivative is

\[
F'(x;v)=\max_{c\in I(x)}\nabla f_c(x)\cdot v. \tag{14}
\]

To verify (14), inactive corners have a positive finite gap at \(x\), so remain inactive for sufficiently small displacement; differentiability of the finitely many active functions then gives the displayed derivative.

**Proposition 3.** If \(0\notin\operatorname{conv}\{\nabla f_c(x):c\in I(x)\}\), then \(\Psi(x)\) is not a local minimum of \(M\) on \(\mathcal H\).

Indeed, strict finite-dimensional separation produces \(v\) and \(\delta>0\) with \(\nabla f_c(x)\cdot v\le-\delta\) for every active corner. Equation (14) implies \(F(x+tv)<F(x)\) for all sufficiently small positive \(t\). The feasible curve is supplied by \(\Psi\).

Conversely, a local minimum on \(\mathcal H\) pulls back to a local minimum under every such family. Hence its active gradients must contain zero in their convex hull. By Caratheodory's theorem, at most \(m+1\) active corners are needed to witness this necessary condition. For a differentiable four-parameter family, the necessary stationarity system therefore uses at most five corners:

\[
f_{c_1}=\cdots=f_{c_k}=F,\quad
f_c\le F\ \forall c,\quad
\lambda_i\ge0,\quad\sum_i\lambda_i=1,\quad
\sum_i\lambda_i\nabla f_{c_i}=0,\quad k\le5. \tag{15}
\]

This is a correct necessary condition at points where the family itself is differentiable, even if the quotient Hadamard space is singular. It should not be replaced by gradients of a smooth approximation of the maximum. Nor does checking stationarity with respect to a numerically projected tangent space certify feasible descent.

### A finite-cell acceptance rule

Let \(B\) be a closed chart box, with an open neighborhood on which \(\Psi\) is a differentiable Hadamard family. Suppose outward interval arithmetic gives \(f_c(B)\subset[L_c,U_c]\). Set \(L=\max_c L_c\) and keep every corner with \(U_c\ge L\). Every corner active anywhere in \(B\) is in this retained set.

If a fixed rational vector \(v\) and an exact rational \(\delta>0\) satisfy

\[
\sup_{x\in B}\nabla f_c(x)\cdot v\le-\delta
\]

for every retained corner, then \(B\) contains no pullback of an ambient local minimum. The proof applies Proposition 3 pointwise. There is no need to establish a quantitative step length or to keep the short descent path inside the closed box; the family is defined on an open neighborhood.

With F7 restricted to a proved complete family collection, this provides a rigorous form of Route B. It still requires an exhaustive cover, all near-zero/vanishing-denominator strata, valid differentiable local lifts of radical branches, and an exact terminal norm bound. No such global cover has been constructed here.

## 6. Scoped input audit

* The handoff's F3 formula simplifies to \(2\sqrt6\arcsin(\sqrt\kappa/2)\). At \(r=0.09138\) its value lies strictly between 0.55000910049904 and 0.55000910049906, so that particular value does not imply \(\nu\le0.55\). The largest radius justified by the original formula is approximately 0.0913784975325. Theorem 1 independently fixes the intended 0.0914 terminal criterion.
* The function `u_norm` is a numerical upper-bound search. A value larger than 0.55 is not a lower bound on \(\nu\), and cannot classify a point as globally outside the tube. Even though its final wrapped residual need not be horizontal, projecting it once more gives a horizontal equivalent residual with no greater norm, so this issue does not invalidate its upper-bound interpretation.
* In `selftest.py`, the chart example is not part of the accumulated boolean `ok`, and entrywise flatness is not checked. Its `SELFTEST PASS` message therefore does not certify the chart. The supplied code is expressly exploratory, so this is a scope observation, not an interval-verification failure.
* At the exact seed \((a,b,c,d)=(1,\omega^2,\omega,\omega^2)\), with \(\omega=e^{2\pi i/3}\), a corner occurring in Tao's matrix has \(R=243\), \(g=9\), while the internal real sign-selection quantity `dF` in the chart is exactly zero. This demonstrates an internal sign-selection degeneracy with \(R,g\ne0\). It does not by itself disprove low-cutoff coverage or imply that no differentiable local branch can be selected there. The seed lies above the target cutoff. The exact values are checked in `verify_chart_seed.py`.

## Verification

Run:

```bash
python3 verify_auxiliary.py
python3 verify_chart_seed.py
```

The first script uses rational arithmetic and exact Laurent-polynomial arithmetic for all logical comparisons and verifies the reported decimals with Arb. The second uses exact symbolic algebra. Neither script tests or claims the still-open global cover.

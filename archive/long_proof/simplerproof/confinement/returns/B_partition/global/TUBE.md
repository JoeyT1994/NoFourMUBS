# A uniform Fourier-family tube and global derivative bounds

## Statement

Let \(\mathcal F\) be the union of all monomial equivalents of the two-parameter
Fourier family and of its transpose. For two unimodular matrices define the
horizontal phase distance

\[
\Delta(H,K)=\inf\{\|v\|_F: v\text{ is real and horizontal},\quad
H\cong K\circ e^{iv}\}.
\]

The equivalences in this definition are row and column permutations and
rephasings, as in the prompt. This is a metric on equivalence classes, induced
by the flat quotient metric on the phase torus. In particular,
\(\nu(H)=\Delta(H,F)\), and

\[
\nu(H)\le\nu(K)+\Delta(H,K).
\tag{1}
\]

**Theorem.** Every order-six complex Hadamard matrix satisfying

\[
M(H)<26,\qquad \Delta(H,\mathcal F)\le\frac1{40}
\]

satisfies

\[
\nu(H)<0.548503<0.55.
\tag{2}
\]

Using the supplied local lemma F4, the conclusion improves to
\(\nu(H)\le0.451\).

This theorem covers the whole indicated tube, including matrices outside the
Fourier families. It does **not** prove that every matrix with \(M<26\) enters
this tube.

## 1. A global Lipschitz estimate

For any unimodular \(3\times3\) matrix \(B\), put

\[
d(B)=2\operatorname{Im}\left(\frac{\operatorname{perm}(B)
\det(B)^2}{\prod B_{ij}}\right).
\]

Writing \(B_{ij}=e^{i\theta_{ij}}\), direct integer expansion gives

\[
d(B)=-i\sum_{\ell\in L}a_\ell e^{i\ell\cdot\theta},
\qquad |L|=48,\quad a_\ell\in\{-1,1\},
\tag{3}
\]

where \(a_{-\ell}=-a_\ell\). Each \(\ell\), viewed as a \(3\times3\)
integer matrix, has zero row and column sums. More strongly,

\[
\sum_{\ell\in L}\ell\ell^{\mathsf T}=144P_3,
\tag{4}
\]

where \(P_3\) is the orthogonal projection to the four-dimensional space
of \(3\times3\) real matrices with zero row and column sums.
Both identities are regenerated and checked coefficient by coefficient in
`verify_tube.py`, using only integer and rational arithmetic.

Differentiate (3) in a real direction \(w\). Cauchy--Schwarz and (4) give

\[
\begin{aligned}
|D d(\theta)[w]|
&=\left|\sum_{\ell\in L}a_\ell e^{i\ell\cdot\theta}
 (\ell\cdot w)\right|\\
&\le\sqrt{48}\left(\sum_{\ell\in L}(\ell\cdot w)^2\right)^{1/2}
\le48\sqrt3\,\|w\|_F.
\end{aligned}
\tag{5}
\]

The same argument applies after embedding a corner into a \(6\times6\)
phase matrix. Integration along the straight phase segment is allowed even
when its interior matrices are not Hadamard: (3)--(5) hold on the entire
unimodular torus.

For actual Hadamards the supplied square identity F2 gives
\(\sqrt{M(H)}=\max_B|d(B)|\). Taking the maximum and then the infimum over
phase alignments proves the global estimate

\[
\boxed{\left|\sqrt{M(H)}-\sqrt{M(K)}\right|
\le48\sqrt3\,\Delta(H,K).}
\tag{6}
\]

This proof uses F2 only at the two endpoints, not on the interpolating path.

For completeness, the same coefficient identity yields the global Hessian
bound

\[
|D^2d(\theta)[w,w']|\le144\|w\|_F\|w'\|_F.
\tag{7}
\]

Indeed, bound the absolute sum of
\((\ell\cdot w)(\ell\cdot w')\) by Cauchy--Schwarz and apply (4) twice.
Equation (7) is useful for interval Taylor estimates but is not needed in (2).

## 2. Metric details

Let \(P_6\) denote horizontal projection. Choose real phase lifts of the
entrywise quotient \(H/K\). For fixed row and column permutations the phase
distance is the distance of \(P_6\theta\) to the lattice
\(2\pi P_6\mathbb Z^{36}\). This is a discrete lattice because the
coefficients of \(P_6\) are rational; for example
\(36P_6\mathbb Z^{36}\subseteq\mathbb Z^{36}\).
The minimum is attained. Taking the minimum over the finitely many row and
column permutations preserves attainment and continuity.

Row/column permutations preserve horizontal projection, the integer lattice,
and the Frobenius norm. Row/column rephasings disappear under projection.
Consequently the metric descends to the equivalence quotient and obeys the
triangle inequality. This proves (1). The Fourier parameter torus is compact,
so \(\Delta(H,\mathcal F)\) is attained as well.

## 3. Applying the exact Fourier-family theorem

The independent exact computation and proof in
`../fourier/CONFINEMENT_FOURIER.md` establish

\[
\nu(K)\le \sqrt{\frac23}\arcsin\left(\frac{\sqrt{M(K)}}{12}\right)
\quad(K\in\mathcal F,\ M(K)<144).
\tag{8}
\]

Choose \(K\in\mathcal F\) with \(\Delta(H,K)\le1/40\).
Equations (6) and \(M(H)<26\) imply

\[
\sqrt{M(K)}<\sqrt{26}+\frac{6\sqrt3}{5}<12.
\]

Thus (8) applies, and (1) gives

\[
\nu(H)<\frac1{40}
+\sqrt{\frac23}\arcsin\left(
\frac{\sqrt{26}+6\sqrt3/5}{12}\right)
<\frac{548503}{10^6}<\frac{11}{20}.
\tag{9}
\]

The last comparisons are certified by rational square-root enclosures and the
positive Taylor series for arcsine, with an explicit geometric bound for the
remaining terms. No floating-point comparison is used. Finally take a
minimizing horizontal representative in F4: since \(M<26<26.28\), F4
forces its norm to be at most \(0.451\).

## Inputs and scope

- The definitions of Hadamard equivalence, \(M\), and \(\nu\).
- **F2**, to identify the maximum of the signed invariants with \(\sqrt M\)
  on Hadamard matrices.
- The exact Fourier-family theorem supplied in this return package.
- **F4**, only for the final improvement from \(0.548503\) to \(0.451\).
- Elementary finite-dimensional linear algebra and compactness.

Replay: `python3 verify_tube.py`.

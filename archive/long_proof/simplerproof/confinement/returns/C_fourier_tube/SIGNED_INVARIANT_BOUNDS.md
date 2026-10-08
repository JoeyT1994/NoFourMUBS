# Universal derivative bounds and confinement in a full neighborhood

Let A denote the union of the complete affine Fourier family
F circ exp(i(x t1+y t2)), its transpose, and all their equivalents.
This set is compact. The phase metric d_ph is defined and proved to be
attained in `GEOMETRY_AND_GAUGE.md`. Put

\[
\delta_{\mathcal A}(H)=\min_{K\in\mathcal A}d_{\rm ph}([H],[K]).
\]

This definition includes arbitrary non-affine Hadamards H. It measures
distance to the whole family, not just distance to one chosen parameter
value, and it is independent of a reconstruction sheet.

## 1. Exact derivatives of the signed corner invariant

For a unimodular 3-by-3 matrix B(theta), let

\[
q(B)=\frac{\operatorname{perm}(B)\det(B)^2}{\prod_{ij}B_{ij}},
\qquad d(B)=2\operatorname{Im}q(B).
\]

Expanding the six terms in each permanent and determinant, then subtracting
the conjugate, gives

\[
q(B)-\overline{q(B)}
=\sum_{\ell\in\mathcal L}c_\ell e^{i\ell\cdot\theta},
\qquad |\mathcal L|=48,\quad c_\ell\in\{-1,1\}.
\]

All frequency matrices ell have zero row and column sums. If P_3 is the
orthogonal projection onto horizontal real 3-by-3 matrices, exact integer
arithmetic gives

\[
\sum_{\ell\in\mathcal L}\ell\ell^T=144P_3.
\]

For completeness, 36 frequencies have squared norm 10 and 12 have squared
norm 18. The diagonal entries of the displayed Gram matrix are 64; entries
sharing a row or column are -32; the other entries are 16. This specifies
the entire 9-by-9 matrix. `verification/verify_signed_bounds.py` regenerates
all 48 terms directly from the definition, rather than loading a fitted
coefficient table.

Since d = (q-conjugate(q))/i, differentiation and Cauchy–Schwarz give, for
all real directions v,w and at every phase theta,

\[
|D d(\theta)[v]|
\le\sqrt{48}\sqrt{144}\,\|P_3v\|
=48\sqrt3\,\|P_3v\|,
\]

\[
|D^2d(\theta)[v,w]|
\le\sqrt{v^T(144P_3)v}\sqrt{w^T(144P_3)w}
\le144\|v\|\|w\|.
\]

The derivatives are ambient phase derivatives, not derivatives restricted
to a family of Hadamards. The bounds hold even along phase segments whose
interior points are not Hadamard.

## 2. A Lipschitz bound for the square root of M

For actual Hadamards, F2 gives

\[
\sqrt{M(H)}=\max_B|d(B)|,
\]

where the maximum is over all 400 submatrices; complementation merely
permutes their indices. Embedding a corner's phase direction in the
36-entry phase space cannot increase its norm. It follows that for any
two Hadamards

\[
\boxed{\left|\sqrt{M(H)}-\sqrt{M(K)}\right|
\le48\sqrt3\,d_{\rm ph}([H],[K]).}
\]

Indeed, apply the preceding derivative bound along a minimizing phase
segment, take the maximum of the absolute values, and use invariance under
equivalence. No Hadamard condition on the interior of this segment is used.

More generally, if all corner ambient gradients at K have norm at most L,
the second derivative bound gives

\[
\boxed{\sqrt{M(K)}\le\sqrt{M(H)}+L\epsilon+72\epsilon^2,
\quad \epsilon=d_{\rm ph}([H],[K]).}
\]

## 3. A uniform theorem including non-affine Hadamards

The exact full-family result in `fourier_sector/CONFINEMENT_FOURIER.md`
states that, for K in A and M(K)<144,

\[
\nu(K)\le\sqrt{2/3}\arcsin(\sqrt{M(K)}/12).
\]

Combining it with the Lipschitz estimate and the metric triangle inequality
gives this global conditional statement:

\[
\nu(H)\le\epsilon+
\sqrt{2/3}\arcsin
\left(\frac{\sqrt{M(H)}+48\sqrt3\,\epsilon}{12}\right),
\quad \epsilon=\delta_{\mathcal A}(H),
\]

provided the arcsine argument is less than one. In particular,

\[
\boxed{M(H)<26,\quad\delta_{\mathcal A}(H)\le1/40
\quad\Longrightarrow\quad \nu(H)<11/20.}
\]

An exact rational certificate avoids relying on decimal evaluation. Use
sqrt(26)<51/10, sqrt(3)<17321/10000, sqrt(2/3)<817/1000. For epsilon=1/40
the resulting arcsine argument is less than sin(321/500), as certified by

\[
\sin t\ge t-t^3/6+t^5/120-t^7/5040,\qquad t=321/500.
\]

The final norm bound is then less than

\[
1/40+(817/1000)(321/500)=549514/1000000<11/20.
\]

The same inequalities hold for every smaller epsilon by monotonicity.
They are replayed in `verification/verify_signed_bounds.py`.

Assuming the supplied F4, the conclusion strengthens to nu <= 451/1000.
This result covers a uniform neighborhood of the entire family in the
space of all Hadamards. It does not prove that every Hadamard with M<26
belongs to that neighborhood. The enlarged neighborhood established by
the separate Fourier gradient certificate is recorded in the main report.

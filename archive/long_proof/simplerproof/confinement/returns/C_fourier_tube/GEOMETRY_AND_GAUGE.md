# The phase metric, the minimum reduction, and a corrected gauge bound

These arguments use the definitions in the handoff. The minimum reduction
uses F4 as a supplied theorem; its external finite certificate is not part of
this handoff and is not independently replayed here. The improved gauge
bound does not need F1–F8.

## 1. The infimum in nu is finite and attained; nu is continuous

Let V be the Euclidean space of real 6-by-6 matrices, let

\[
\mathcal G=\{(\alpha_i+\beta_j)_{ij}:\alpha,\beta\in\mathbb R^6\},
\qquad \mathcal N=\mathcal G^\perp,
\]

and write P for the orthogonal projection onto the horizontal space N:

\[
(Pv)_{ij}=v_{ij}-\frac16\sum_k v_{ik}-\frac16\sum_k v_{kj}
+\frac1{36}\sum_{k,l}v_{kl}.
\]

The group Lambda = 2 pi P Z^36 is a discrete subgroup of N: every entry of
P has denominator dividing 36, so Lambda is contained in
(pi/18) Z^36. It spans N, because P maps the standard coordinate vectors
onto a spanning set. Thus Lambda is a full lattice in N.

Fix one row permutation and one column permutation of H and choose any
real entrywise argument theta of its quotient by F. Its horizontal phase
representatives, allowing diagonal rephasing, are exactly

\[
P\theta+\Lambda.
\]

Indeed, changing an argument adds an element of 2 pi Z^36, and applying P
removes precisely the row and column phases. Conversely every such
projected argument is obtained by permitted rephasings. The least norm of
this set is the distance of -P theta to Lambda, and is attained. Minimizing
over the finitely many row and column permutations gives exactly nu(H).
In particular nu is always finite, with the simple bound nu <= 6 pi obtained
by taking an entrywise argument in [-pi,pi] and using that P is a contraction.

Locally the arguments theta can be chosen continuously. Distance to a fixed
lattice is a continuous function, and a finite minimum of continuous
functions is continuous. This proves continuity of nu without a regularity
assumption on the Hadamard variety. The same construction gives a metric
d_ph on equivalence classes of unimodular matrices, with

\[
d_{\rm ph}([H],[K])=
\min\{\|u\|:u\in\mathcal N,\ H\cong K\circ e^{iu}\},
\qquad \nu(H)=d_{\rm ph}([H],[F]).
\]

For the triangle inequality, compose two minimizing phase representations.
The intermediate row/column permutations act isometrically on horizontal
phase matrices; their diagonal phases are absorbed into equivalence. The
combined horizontal phase is the sum of one phase and a permuted copy of
the other, whose norm is at most the sum of their norms. This also proves
directly every triangle inequality used in the tube theorem.

## 2. A rigorous version of the proposed minimum reduction

**Theorem.** Assuming F4, these assertions are equivalent:

1. Every order-six Hadamard with M < 26 has nu <= 11/20.
2. M has no local minimum on the Hadamard set at a point with M < 26 and
   nu > 11/20.

Here a local minimum is an ordinary, possibly non-strict local minimum.

**Proof.** The Hadamard set is compact: it is a closed subset of the compact
torus of 36 unimodular entries. M is continuous, since it is the maximum of
400 continuous functions. The preceding section proves continuity and
attainment for nu.

At any point with nu = 11/20, a minimizing horizontal representative has
norm exactly 11/20. F4 therefore gives M >= 657/25 = 26.28, because the
alternative norm <= 451/1000 contradicts minimality.

If assertion 1 fails, the compact set

\[
\mathcal K=\{H:\nu(H)\ge11/20\}
\]

contains a point with M < 26. Let H_* minimize M on K. Its minimum is
strictly below 26, so H_* cannot lie on nu = 11/20. Therefore
nu(H_*) > 11/20. Continuity provides a neighborhood of H_* in the Hadamard
set entirely inside K. Thus H_* is a local minimum on the full Hadamard
set, disproving assertion 2. The other direction is immediate: a point
excluded by assertion 1 cannot be a local minimum. QED.

This proof avoids assumptions about openness of connected components,
smoothness of the Hadamard set, or existence of a single global chart.
It also proves the useful consequence

\[
M<26,\quad \nu\le11/20
\quad\Longrightarrow\quad \nu\le451/1000.
\]

The reduction does not itself exclude an outer minimum. Any use of a
descent direction still requires proof that the direction is realized by
nearby actual Hadamards, including at singular points.

## 3. A sharper phase gauge from column-projector distance

The displayed F3 formula in the handoff does **not**, by itself, justify
the decimal 0.09138: substituting that number gives a value strictly above
0.55. The following refinement proves that even 0.0914 is sufficient.

**Theorem.** For 0 <= r <= 1/10, define

\[
\kappa=12(1-\sqrt{1-r^2}),\qquad
b=12-\sqrt{144-20\kappa},
\]

\[
\widetilde\rho(r)=
\sqrt{6\kappa}\,
\frac{\arcsin(\sqrt b/2)}{\sqrt b/2},
\]

where the ratio is interpreted as 1 when r=0. Then

\[
d_F(H)\le r\quad\Longrightarrow\quad
\nu(H)\le\widetilde\rho(r).
\]

In particular,

\[
\boxed{d_F(H)\le\frac{457}{5000}=0.0914
\quad\Longrightarrow\quad \nu(H)<\frac{11}{20}.}
\]

**Proof.** The Fourier equivalence orbit is compact, so the minimization
defining d_F is attained. Choose an achieving K equivalent to F, and
multiply each column of K by a phase so that the sum of its six entrywise
phase ratios with H is nonnegative real. For each column write these
ratios as z_i = exp(i theta_i), using principal arguments. Then

\[
\sum_i z_i=6m,\quad m\ge\sqrt{1-r^2},\quad
\sum_i\sin\theta_i=0,
\]

\[
\sum_i|z_i-1|^2=12(1-m)\le\kappa<1.
\]

The inequality kappa < 1 follows already at r=1/10 by squaring
sqrt(99/100) > 11/12. Fix one entry and put x=|z_i-1|^2. The vanishing
imaginary sum and Cauchy–Schwarz give

\[
x(1-x/4)=\sin^2\theta_i
\le5\sum_{k\ne i}\sin^2\theta_k
\le5(\kappa-x).
\]

Consequently 6x-x^2/4 <= 5 kappa. Since 0 <= x <= kappa < 1 and this
quadratic is increasing on that interval, its smaller inverse root gives
x <= b. The function arcsin(t)/t is increasing on [0,1); hence

\[
\sum_i\theta_i^2
\le\kappa\left(
\frac{\arcsin(\sqrt b/2)}{\sqrt b/2}\right)^2.
\]

Sum over all six columns, and project the resulting real phase matrix
horizontally. This projection is a contraction and removes only allowed
diagonal phases. The norm after projection is a valid upper bound on nu,
which proves the formula. QED.

### An entirely rational certificate for 0.0914

For r=457/5000, put K_0=5023/100000 and B_0=21/500. Direct rational
squaring gives kappa < K_0. The preceding quadratic inequality also gives

\[
x\le\frac{5\kappa}{6-\kappa/4}
<\frac{5K_0}{6-K_0/4}<B_0.
\]

For 0 <= t < 1, the arcsine series has first nonconstant coefficient 1/6
and all later coefficients at most 1/6. Therefore

\[
\frac{\arcsin t}{t}\le1+\frac{t^2}{6(1-t^2)}.
\]

It follows that

\[
\nu(H)^2\le6K_0
\left(1+\frac{B_0}{6(4-B_0)}\right)^2
<\left(\frac{11}{20}\right)^2.
\]

The exact positive margin in the last comparison is

\[
\frac{1661639}{31331528000}>0.
\]

`verification/verify_geometry.py` checks the projection and all these
rational comparisons. Optional interval evaluations in
`verification/verify_intervals.py` distinguish the original F3 formula
from the improved formula; those evaluations are not needed for the
rational proof.

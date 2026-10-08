# A precise first-order descent test and its exploratory use

## Exact criterion

Let `Theta:U -> H` be any differentiable physical chart on an open set
`U` in `R^4`, and put `f_c(theta)=R_c(Theta(theta))`. At a point `theta_0`
let

\[
m=\max_c f_c(\theta_0),\qquad
I=\{c:f_c(\theta_0)=m\}.
\]

There exists a vector `v` with

\[
\nabla f_c(\theta_0)\cdot v<0\qquad(c\in I)          \tag{1}
\]

if and only if

\[
0\notin\operatorname{conv}\{\nabla f_c(\theta_0):c\in I\}. \tag{2}
\]

This is finite-dimensional strict separation. Under (1), Taylor
expansion for the finite active set and continuity for the finite
inactive set give

\[
M(\Theta(\theta_0+t v))<M(\Theta(\theta_0))
\]

for every sufficiently small positive `t`. Thus (1) is a sufficient
physical descent certificate. No assertion that the complete Hadamard
set is globally a manifold is required.

Conversely, if `Theta(theta_0)` is a local minimum of `M` on the Hadamard
set, condition (2) cannot hold. By Caratheodory's theorem, there exist at
most five active corners, and nonnegative weights summing to one, whose
chart gradients sum to zero. This necessary condition remains valid if
the chosen chart is not an immersion: a minimum on the whole physical
set is a minimum after precomposition with every physical chart.

This reduction does not establish the requested global confinement.
One must still exclude the necessary condition throughout the uncovered
maximal-corner region, or provide descent certificates there. A critical
point of a smooth sum or smooth maximum surrogate does not by itself
classify a local minimum of the actual maximum.

## Exact phase derivatives useful in a certificate search

Let `B` be a 3-by-3 corner, and write

\[
P=\operatorname{perm}B,\quad D=\det B,\quad
T=\prod_{ij}B_{ij},\quad q=PD^2/T.
\]

Let `P_ij` and `D_ij` denote the sums of permanent and signed determinant
monomials, respectively, that contain the cell `B_ij`. If `phi_ij` is its
phase, direct differentiation gives

\[
\frac{\partial q}{\partial\phi_{ij}}
=i\frac{P_{ij}D^2+2PD D_{ij}-PD^2}{T}.
\]

For the signed invariant `s_B=2 Im q(B)`,

\[
\frac{\partial s_B}{\partial\phi_{ij}}
=2\operatorname{Re}
\frac{P_{ij}D^2+2PD D_{ij}-PD^2}{T}.                \tag{3}
\]

Consequently `R_c=s_B^2`, with the same-row complementary assignment
from F2, has derivative `2 s_B ds_B` along every physical phase curve.
Formula (3) divides only by the unimodular monomial `T`, and remains
valid even when the corner determinant or permanent vanishes. It avoids
finite differences and division by a possibly small determinant.

For an actual chart certificate, compose these derivatives with the
chart derivative, use exact or outward interval arithmetic, and check
(1) for all corners that may be active in the cell. The denominator
theorem in `CHART_DENOMINATORS.md` controls the displayed chart factors
on every set with `R>=epsilon>0`.

## Numerical exploration, not proof

`numerical_descent.py` implements (3) in floating-point arithmetic. It
estimates a tangent basis from the nullspace of the Hadamard constraint
Jacobian, minimizes a linearized epigraph over a bounded trust region,
and retracts tentative steps by the supplied Gauss--Newton projection.
These choices do not certify chart coverage, rank, or the exact
existence of a physical retraction.

The preserved `numerical_runs.json` contains eight reproducible trial
records with initial and final phase arrays and iteration histories.
Six ended below `M=1e-11`; two ended at a repeated numerical stationarity
level near `205.4213185894`. Those two points are candidates for
nonsmooth local minima, not proved local minima. They lie well above the
threshold `26`. No classification of low local minima follows from the
sample.

`seed_stationary.py` records a separate floating-point search for zeros
of the distinguished corner gradient. It is explicitly noncertifying.
One of its low stationary seeds led to the exact golden-ratio example
proved in `CHART_DENOMINATORS.md`; the other numerical candidates are not
used as facts in any theorem.

Replays preserve the archived evidence by default. The generic script writes
`numerical_runs_replay.json`; the seed script writes
`seed_stationary_candidates_replay.json`. Both accept `--output PATH`.
The generic script reads the unchanged supplied toolkit from
`output/input_data/toolkit`.

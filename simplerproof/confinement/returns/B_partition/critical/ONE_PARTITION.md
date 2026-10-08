# Combined exclusion when all active corners belong to one 3+3 partition

## Assembly status

The argument below combines the exact modules listed in the table. All
of their verification scripts pass, including the transverse
double-zero calculation in `../global/CAYLEY_SMOOTH.md`, independently
read and replayed for this assembly. No stronger active-set statement
is implicit here.

## The theorem

Assume F2, the restricted reconstruction coverage F7 on \(0<M<26\),
the analytic provider lemma in `CHART_REGULARITY.md`, and the exact
critical-point inputs in the table below.

For a physical order-six Hadamard \(H\), let

\[
\mathcal A(H)=\{(S,T):R(H[S,T])=M(H)\}
\]

be its **entire** active corner set. Suppose there are row and column
partitions into triples for which every active corner is one of the
four blocks

\[
H=\begin{pmatrix}A&B\\C&D\end{pmatrix}.
\]

Then

\[
\boxed{\quad 0<M(H)<26
\quad\Longrightarrow\quad
H\text{ is not a local minimum of }M.\quad}
\tag{1}
\]

More precisely, there is an actual local analytic Hadamard arc along
which every active corner invariant strictly decreases. The statement
includes all singular strata of the seed-to-Gram-invariant map and
requires no smoothness assumption on the entire Hadamard variety.

## Exact inputs used

Put \(\Delta=4XYZ-J^2\), \(Q=R(X,Y,Z,-J)\), and let
\(R_+=R(X,Y,Z,J)\) be the chosen maximal seed invariant.

| Active functions and stratum | Exact exclusion input |
|---|---|
| Only \(R_+\); \(\Delta>0,Q>0\) | `../global/REGULAR_CRITICAL_POINTS.md`: no polynomial stationary value in \((0,26)\), and the exact invariant Jacobian is nonsingular. |
| Only \(R_+\); \(\Delta=0,Q>0\) | `CHIRALITY_CRITICAL.md`: no stationary maximal seed below 26; the only small positive constrained critical value has a complementary corner above 26. |
| Only \(R_+\); \(\Delta>0,Q=0\) | `../critical_exceptions/QZERO_CRITICAL.md`: every positive stationary value exceeds 30, including rank-two and rank-three exceptional images. |
| Only \(R_+\); \(\Delta=Q=0\), transverse | `../global/CAYLEY_SMOOTH.md`: the smooth Cayley restriction has no critical seed with \(0<R_+<26\). |
| Only \(R_+\); \(\Delta=Q=0\), nontransverse | `DOUBLE_ZERO.md`: a Lorentzian Hessian forces the actual seed image to contain the double-Cayley curve tangent; its critical-value polynomial has no zero in \((0,26)\). |
| Both \(R_+,R_-\); \(\Delta>0\) | `../mc1/complement_minimax/COMPLEMENT_MINIMAX.md`: every convex balance of the two gradients has common value at least \((233472\sqrt6-488448)/3125>26\). |
| Both \(R_+,R_-\); \(\Delta=0\) | `CHIRALITY_PAIR.md`: the two gradients have no convex balance at a common value in \((0,26]\). |

The table covers every possibility: \(\Delta\ge0\) by definition, and
\(Q\ge0\) for a physical completion by F2. A positive tie
\(R_+=R_->0\) automatically has \(Q>0\), so no q-zero tie case is
missing. In the regular positive-tie case, \(\Delta>0\) gives
\(X,Y,Z>0\), and positivity of both branches gives
\(9-p>|J|\), hence \(p<9\). Thus all interior hypotheses of the
complementary-minimax input are satisfied.

## Proof

Restricted F7 supplies some maximal corner whose seed provider
represents \(H\) up to equivalence. Since the **whole** active set is
contained in the stated partition, whichever maximal corner F7 supplies
is one of \(A,B,C,D\). Its natural complementary partition is therefore
exactly the same four-block partition, possibly reordered. Use it as
the top-left seed corner and apply the corresponding fixed equivalence.

The analytic branch construction in `CHART_REGULARITY.md` gives a
genuine four-seed Hadamard family through this representative. F2 holds
identically on this family and gives

\[
R(A)=R(D)=R_+,\qquad R(B)=R(C)=R_-.
\]

Every corner outside these four blocks is strictly below \(M\) at the
central point. There are finitely many such corners, so continuity
preserves a positive inactive-corner gap in a sufficiently small
neighborhood. Consequently the full maximum on that neighborhood is
the maximum of whichever of \(R_+,R_-\) are active at the center.

If only one is active, orient the seed so it is \(R_+\). The first five
rows of the table prove that its seed gradient is nonzero in every
stratum. The negative gradient is a strict descent direction.

If both are active, the last two rows prove

\[
0\notin\operatorname{conv}
\{\nabla R_+,\nabla R_-\}.
\]

Strict finite-dimensional separation supplies one direction decreasing
both. The analytical provider realizes that seed direction as a
feasible Hadamard arc. F2 decreases all active opposite-block copies,
and the inactive-corner gap proves strict decrease of the full \(M\).
This proves (1).

## Global consequence and precise remaining obligation

The 400 corners split into 100 four-block classes, one for each unordered
row partition into two triples and unordered column partition into two
triples. If global confinement were false, the compact-minimum argument
using F4 would produce an exterior local minimum with \(M<26\).
F1 makes its value strictly positive, since \(M=0\) is the Fourier
equivalence class and has \(\nu=0\).
The theorem above forces its full active corner set to meet at least
two different four-block classes.

Thus the remaining first-order obstruction is a balance of active
corner gradients from more than one \(3+3\) partition. No boundary or
rank-drop exception within a single partition needs to be set aside.

This conclusion concerns the **entire active set**. It does not assert
that every Caratheodory subset of at most five gradients must have a
particular partition structure, nor that an arbitrary chosen active
corner is a valid provider for the same local image. The proof uses the
maximal provider actually guaranteed by F7 and the full active-set
hypothesis to ensure its partition is the relevant one.

The restricted F7 coverage is still an input. Its literal global version
cannot be used because it conflicts with the isolated Tao matrix; that
issue and the target-region scope are recorded in `CHART_REGULARITY.md`.

# Compactness, attained phase distance, and valid descent tests

## 1. The horizontal phase infimum is finite, attained, and continuous

Let \(V\subset\mathbb R^{6\times6}\) be the 25-dimensional space of real
matrices whose row and column sums vanish. Its orthogonal projection is

\[
(P\theta)_{ij}=\theta_{ij}-\frac16\sum_k\theta_{ik}
-\frac16\sum_k\theta_{kj}+\frac1{36}\sum_{k,l}\theta_{kl}.
\tag{1}
\]

Fix row and column permutations \(\pi,\tau\) of \(H\), and any real phase
lift \(\theta_{\pi,\tau}\) satisfying

\[
e^{i(\theta_{\pi,\tau})_{ij}}=
\frac{(P_\pi H P_\tau)_{ij}}{F_{ij}}.
\]

The horizontal phases representing this alignment, after arbitrary allowed
row and column rephasings, are exactly

\[
P\theta_{\pi,\tau}+\Lambda,
\qquad
\Lambda=2\pi P\mathbb Z^{36}.
\tag{2}
\]

Indeed, changing the phase lift adds \(2\pi n\); applying \(P\) kills
precisely the row-plus-column gauge. Conversely each vector in (2) is the
projection of a lift of the original ratios and thus gives an equivalent
matrix. Every representation from the definition of \(\nu\) can be
brought to one of these finitely many row/column alignments.

Every entry of \(P\) is a multiple of \(1/36\). Therefore

\[
\Lambda\subset (2\pi/36)\mathbb Z^{36}\cap V,
\]

so \(\Lambda\) is discrete. The distance from a fixed vector to this
lattice is attained: within any bounded ball there are only finitely many
lattice points. There are finitely many alignments, giving

\[
\boxed{\quad
\nu(H)=\min_{\pi,\tau}\operatorname{dist}
\bigl(P\theta_{\pi,\tau},\Lambda\bigr)<\infty,
\quad}\tag{3}
\]

with an attaining horizontal representative. A principal phase lift even
gives the crude universal bound \(\nu\le6\pi\).

Around any fixed matrix with unit entries, each entry has a continuous
local phase lift. Distances to a fixed closed set are 1-Lipschitz, and
\(P\) is a contraction. The finite minimum in (3) is therefore continuous.
More explicitly, if \(H'=H\circ e^{i\Delta}\) with a small real phase
increment, then

\[
|\nu(H')-\nu(H)|\le\|\Delta\|.
\tag{4}
\]

No local smoothness of the Hadamard set is used here.

## 2. A shorter and stronger repair of the local-minimum reduction

Let \(\mathcal H\) be the compact set of order-six Hadamards and suppose
F4 is available exactly as supplied. By the attainment just proved,

\[
0.451<\nu(H)\le0.55\quad\Longrightarrow\quad M(H)\ge26.28.
\tag{5}
\]

The application of F4 to the infimum is legitimate precisely because an
attaining phase matrix exists.

Suppose confinement is false. Then some \(H_0\) has \(M(H_0)<26\) and
\(\nu(H_0)>0.55\). Minimize \(M\) on the compact nonempty set

\[
K=\{H\in\mathcal H:\nu(H)\ge0.55\}.
\]

Let \(H_*\) be a minimizer. Its value is at most \(M(H_0)<26\). Equation
(5) rules out \(\nu(H_*)=0.55\), so \(\nu(H_*)>0.55\). Continuity of
\(\nu\) gives a relative neighborhood of \(H_*\) in \(\mathcal H\)
contained in \(K\). Consequently \(H_*\) is a local minimum of \(M\)
on the full Hadamard set.

Conversely, any local minimum satisfying \(M<26\) and \(\nu>0.55\) is
itself a counterexample to confinement. Thus the equivalence proposed in
the handoff is **correct**, with the compact-set proof above avoiding its
unnecessary assumptions about connected components.

For completeness, the component sketch can also be repaired. The
Hadamard set and \(\{M<26\}\) are semialgebraic in real and imaginary
entry coordinates and thus locally path connected; their relative
components are open. A boundary point of such a component cannot have
\(M<26\), since a sufficiently small connected open neighborhood would
then belong to the same component. Continuity gives \(M=26\) on its
boundary. But neither semialgebraic topology nor this boundary argument
is needed for the compact minimization proof.

Using the sharpened gauge in `GAUGE.md`, any such exterior minimizer also
satisfies \(d_F(H_*)>0.09141\).

## 3. A descent criterion that remains valid at singular Hadamards

Let \(X\) be any subset of a finite-dimensional real vector space,
\(f=\max_{1\le j\le N}f_j\), with each \(f_j\) continuously
differentiable near \(x\in X\). Write

\[
A(x)=\{j:f_j(x)=f(x)\}.
\]

If \(v\) is an **actual contingent tangent vector**, meaning that there
exist \(x_k\in X\), \(t_k\downarrow0\) with
\((x_k-x)/t_k\to v\), and

\[
\nabla f_j(x)\cdot v<0\qquad(j\in A(x)),
\tag{6}
\]

then \(x\) is not a local minimum. Indeed, differentiability gives a
strict decrease for all active terms along this sequence. The finitely
many inactive terms have a positive gap at \(x\), so continuity preserves
their separation for large \(k\).

An explicit differentiable feasible arc \(\gamma\), with
\(\gamma(0)=x\), \(\gamma'(0)=v\), is a sufficient way to prove actual
contingent tangency. A vector in the kernel of the *linearized equations*
alone is insufficient at a singular point: for the cusp
\(X=\{(x,y):y^2=x^3\}\), the linearized equation at the origin imposes no
condition, but \((-1,0)\) is not a feasible tangent and \(f(x,y)=x\) has
a minimum there.

The reconstruction-based analytic families established in
`CHART_REGULARITY.md` supply such actual arcs in the target region
\(0<M<26\), conditional on the stated restricted F7 coverage input.
They are sufficient even if the entire Hadamard set has other branches
through the point.

## 4. At most five active gradients are needed at a candidate minimum

Let \(\Psi:U\subset\mathbb R^4\to\mathcal H\) be any differentiable
four-seed family through \(H\), and define

\[
f_c(\theta)=R_c(\Psi(\theta)),\qquad
g_c=\nabla_\theta f_c(\theta_0).
\]

A local minimum of \(M\) on \(\mathcal H\) must satisfy

\[
0\in\operatorname{conv}\{g_c:c\in A(H)\}.
\tag{7}
\]

Otherwise strict finite-dimensional separation gives a \(d\in\mathbb R^4\)
with \(g_c\cdot d<0\) for every active corner, and
\(\Psi(\theta_0+td)\) is a decreasing feasible arc.

Caratheodory's theorem reduces (7) to **at most five corners**:

\[
\begin{gathered}
1\le k\le5,\quad R_{c_1}=\cdots=R_{c_k}=M,
\quad R_c\le M\text{ for all }c,\\
\lambda_i\ge0,\quad\sum_i\lambda_i=1,\quad
\sum_i\lambda_i\nabla_\theta R_{c_i}=0.
\end{gathered}
\tag{8}
\]

These are necessary equations for every exterior counterexample minimum;
they do not assume that a single maximal corner is differentiable as a
function of the matrix. By F2, one may equivalently use signed gradients
of \(\operatorname{Im}q(B)\), since every active invariant has the same
nonzero absolute value when \(M>0\).

## 5. A rigorous finite-cell acceptance rule

Suppose an interval box has a validated differentiable provider
\(\Psi\) on an open neighborhood, and a lower bound \(L\) for
\(M\circ\Psi\) throughout that box. A fixed rational direction \(d\)
certifies absence of local minima throughout the box if every corner
has at least one of the two verified properties

\[
\sup R_c<L,
\qquad\text{or}\qquad
\sup \nabla_\theta R_c\cdot d<0.
\tag{9}
\]

Every actually active corner must satisfy the second test. A lower bound
on the seed corner is an admissible \(L\), regardless of whether that
corner is maximal. The provider must extend to a neighborhood of the box;
otherwise an outward pointing seed direction at a boundary would not be
an established feasible direction.

At a singular parameter representation, one must supply the analytic
branch provider from `CHART_REGULARITY.md`, another explicit feasible
arc, or a genuine tangent-cone certificate. An unvalidated numerical
projection onto the Hadamard equations does not establish (6).

## Inputs and remaining obligation

Sections 1 and 3 are elementary and independent of F1–F8. Section 2 uses
F4. Four-seed applicability in section 4 uses the reconstruction theorem
F7 through `CHART_REGULARITY.md`; its signed-invariant variant uses F2.

**No elimination of all systems (8), and no covering by boxes satisfying
(9), is proved here.** The global no-exterior-minimum claim remains an
independent, substantive obligation. The corrected reduction and the
five-active-gradient condition do not by themselves establish it.

> **Note (17 Oct 2026):** this is the bundle's own README. Its links point into `L_global_F_progress.zip`, which is kept
> with the owner, not in git; see `REVIEW.md` here for what was checked.

# Global F progress: a complete component and quartet constraints

**17 October 2026 · Exact algebra plus explicit analytic proofs**

The main advance is a theorem about an entire connected component of the
space of mutually unbiased triples in dimension six. The component containing
the supplied exact Diţă triple has **at least two Fourier edges everywhere**.
The proof includes the whole compact continuous family, all repeated-root
parameters, and the full local solution set at every trace-zero crossing.

**Global F and Global F′ are not proved here.** A counterexample to F would
have to belong to a different component. Combined with the earlier
Fourier-edge exclusion E, a hypothetical quartet must have all four of its
triple faces outside the component completed here.

This bundle is a separate follow-up to `L_fourier_edge_return.zip`. The new
component theorem and the new quartet inequalities can be reproduced without
that archive. The corollaries invoking E explicitly retain E as an earlier
dependency; its full-domain exclusion certificate is not rerun here.

## 1. Definitions and the precise theorem

Use raw phase matrices, with

\[
|H_{ij}|=|K_{ij}|=1,\qquad H^\dagger H=K^\dagger K=6I,
\qquad L=H^\dagger K/\sqrt6,
\]

where every entry of \(L\) also has modulus one. The corresponding triple is
\(\{I,H/\sqrt6,K/\sqrt6\}\).

A Fourier edge means a transition monomially equivalent to

\[
N(z,w)=\begin{pmatrix}F_3&F_3\\F_3D&-F_3D\end{pmatrix},
\qquad D=\operatorname{diag}(1,z,w),\quad |z|=|w|=1,
\]

or its transpose. This is the same Fourier predicate used in the earlier
bundle; that bundle also established the equivalent singular-three-minor
routing criterion. Its elementary proof is included here as
[FOURIER_PREDICATE.md](algebra/FOURIER_PREDICATE.md), so this dependency is
self-contained. Balanced Fourier-character vanishing, used later in this
report, is a different property.

Here \(F_3\) is unnormalized:
\((F_3)_{rj}=\omega^{rj}\), \(\omega=e^{2\pi i/3}\), and
\(r,j\in\{0,1,2\}\).

Global F states that every MUB triple has a Fourier edge. Global F′ states
that every MUB quartet has a Fourier edge. E excludes a quartet containing
any Fourier edge.

Let \(V\subset\mathbb T^{55}\) be the full canonically dephased triple
space: the first row and column of \(H\), and the first row of \(K\), are
fixed to one. Let \(M\) be the embedded compact bicirculant companion surface
constructed below, and \(G\) the finite action of ray permutations and basis
relabeling after rebasing and dephasing.

**Theorem.** The finite equivalence orbit \(\mathscr O=GM\) is both open
and closed in \(V\). Every triple in \(\mathscr O\) has at least two
Fourier edges. Its image in \(V/G\) is one whole connected component.
The supplied exact triple belongs to \(\mathscr O\).

Thus no continuous path of exact triples from the starting triple can lose
the Fourier-edge property. The conclusion is about the full triple space,
with all 55 phase variables free; it is not a completeness statement only
within a chosen matrix ansatz.

The full proof is [COMPONENT_THEOREM.md](root/COMPONENT_THEOREM.md).

## 2. The compact family and its geometry

Put

\[
\phi(x,y)=x+y+(xy)^{-1},\qquad
S=\{(x,y,u,v)\in\mathbb T^4:\phi(x,y)+\phi(u,v)=0\}.
\]

With circulant convention \(\operatorname{circ}(a)_{rc}=a_{c-r\bmod3}\),
define

\[
A=\operatorname{circ}(1,x^{-1},(xy)^{-1}),\quad
B=\operatorname{circ}(1,u^{-1},(uv)^{-1}),\quad
\widehat H=\begin{pmatrix}A&B\\B^\dagger&-A^\dagger\end{pmatrix}.
\]

Write \(\lambda_j,\mu_j\) for the circulant eigenvalues, and set

\[
\tau_j=i\overline{\lambda_j\mu_j}/|\lambda_j\mu_j|,
\qquad
\widehat K=\begin{pmatrix}F_3&F_3\\
F_3\operatorname{diag}\tau&-F_3\operatorname{diag}\tau\end{pmatrix}.
\]

The construction is classical; see
[Szöllősi, arXiv:0811.3930v2](https://arxiv.org/html/0811.3930v2), especially
Sections 2 and 4. This bundle supplies the global geometric and Jacobian
arguments needed for its completeness in the component under study. No
novelty priority claim is made.

Let \(r=\phi(x,y)\). Its exact domain is the intersection of two opposite
deltoids. In polar coordinates it is

\[
\Omega=\{\rho e^{i\theta}:
\rho^4+18\rho^2+8\rho^3|\cos3\theta|\le27\}.
\tag{1}
\]

This is a star-shaped disk with six boundary arcs and six corner points.
The real differential of the combined trace equation has rank two
everywhere, even when both cubics have repeated roots. The apparent boundary
belongs to the trace projection, not to the smooth surface \(S\).

Over the interior there are 36 labelled sheets. Boundary transpositions join
all of them. The exact cell count is 36 faces, 108 edges, and 54 vertices,
so \(S\) is compact, connected, orientable, and has genus ten.

The fixed-order dephased \(H\)-only map has precisely a free common
cube-root kernel, so its image has genus four. The companion \(K\)
separates those three sheets, making the dephased pair map an embedding of
the genus-ten surface. These genus statements are not about the quotient
by every possible MUB equivalence.

Throughout the closed domain,

\[
s=|r|^2\le6\sqrt3-9<\tfrac32,
\qquad |\lambda_j|^2,|\mu_j|^2>\tfrac12,
\qquad |\lambda_j\mu_j|^2>3.
\tag{2}
\]

Thus every companion denominator stays nonzero, and the formula is analytic
on all of \(S\). Every companion triple has Fourier transitions \(K,L\).

See [GLOBAL_BICIRCULANT_GEOMETRY.md](globalization/GLOBAL_BICIRCULANT_GEOMETRY.md)
and its exact algebraic and combinatorial verifier. The figure
[global_trace_domain.png](figures/global_trace_domain.png) illustrates the
projection; its floating-point drawing is not used as proof.

## 3. The global rank calculation

The complete triple equations have 96 real residuals in 55 dephased phase
variables. Their Jacobian satisfies

\[
\boxed{\operatorname{rank}J=53\quad(r\ne0),\qquad
\operatorname{rank}J=51\quad(r=0).}
\tag{3}
\]

This holds on the entire compact surface. There is no excluded boundary
or genericity condition.

The decisive simplification is to rebase at the common endpoint of the
known Fourier edges:

\[
U=K^\dagger,\qquad V=L^\dagger,\qquad U^\dagger V/\sqrt6=H.
\]

The proof explicitly constructs inverse maps on the full linearized
solution kernels. It does not assume that rebasing sends unrestricted
phase matrices to unrestricted phase matrices.

A cyclic action splits the 72 raw phase variables into three
24-dimensional character spaces. The trivial real mode has rank 13
uniformly. In each nontrivial complex mode the two individual Hadamard
conditions have rank 18, leaving four column gauges and two physical
parameters. Cross-flatness on those two parameters is a 12-by-2 matrix
\(P\), after clearing a common positive factor.

Its entries lie in the integer Laurent ring over \(\mathbb Z[\omega]\).
The exact certificate proves

\[
\boxed{\det(P^\dagger P)=46656\,s(9-s)^2(9-5s)
\left((9-s)^3+16(\operatorname{Im}(r^3))^2\right).}
\tag{4}
\]

By (2), every factor other than \(s\) is strictly positive. At \(r=0\),
\(\operatorname{tr}(P^\dagger P)=393660>0\), so the reduced rank is
exactly one. The full ranks are therefore
\(13+20+20=53\) off the center and \(13+19+19=51\) at the center.

The finite Laurent checker reconstructs the full Gram identities before
substituting the trace relation. It uses no divisions by discriminants and
no sampling. Independent review checked the analytic reduction, its signs,
and the common scaling factor.

See [GLOBAL_RANK_THEOREM.md](globalization/GLOBAL_RANK_THEOREM.md),
[TRIVIAL_MODE_RANK.md](triple_algebra/TRIVIAL_MODE_RANK.md), and
[MODE_RANK_AUDIT.md](quartet_constraints/MODE_RANK_AUDIT.md).

## 4. Every central crossing is completely resolved

There are exactly 36 trace-zero parameter points. At the representative
\(A=B=\operatorname{circ}(1,1,\omega^2)\), exact elimination gives
Jacobian rank 51 and a four-dimensional kernel.

On the four-dimensional partial implicit-function manifold, the remaining
quadratic obstructions span

\[
x_0^2-x_1^2,\quad
(x_0+x_1)x_2-2x_1x_3,\quad
(x_0-x_1)x_3,\quad x_3(x_2-x_3).
\]

In linear coordinates \(u=x_0+x_1,\ s=x_3,\ v=x_0-x_1,\ t=x_2-x_3\),
their ideal is

\[
(uv,vs,ut,st)=(u,s)\cap(v,t).
\tag{5}
\]

Both complementary tangent planes are realized by actual analytic families:
the original surface and an explicitly certified basis-exchanged copy.
An analytic coordinate change straightens the two surfaces to the two
coordinate planes. Four reduced equations then factor as

\[
g(\xi,\eta)=C(\xi,\eta)
(\xi_1\eta_1,\xi_1\eta_2,\xi_2\eta_1,\xi_2\eta_2)^T,
\]

with \(C(0,0)\) invertible. It remains invertible nearby. Hence every exact
solution lies on one of the two known surfaces. This controls all higher
orders and establishes full local completeness; a quadratic cone by itself
would not do so.

All 36 centers are exactly equivalent to the representative, with entrywise
witnesses. The two-branch result consequently holds at every center. It
asserts the existence of appropriate neighborhoods, without claiming a
computed numerical radius.

An independent exact argument also proves

\[
\widehat H\text{ is Fourier type}\quad\Longleftrightarrow\quad r=0.
\tag{6}
\]

Thus the constructed surface has exactly two Fourier edges off the center
fiber and three on it. Szöllősi's original paper explicitly expected this
family intersection to occur only at trace zero; (6) proves it in the
normalization used here.

See [CENTRAL_CROSSING_THEOREM.md](root/CENTRAL_CROSSING_THEOREM.md),
[FOURIER_LOCUS.md](root/FOURIER_LOCUS.md), and the all-center witnesses.

## 5. Why this closes a whole component

At a rank-53 point, the implicit-function theorem makes the known embedded
two-dimensional surface locally the full triple variety. At a center, the
preceding analysis makes the full local variety exactly two allowed
equivalence images of the surface. Thus every point of \(GM\) has a
relative neighborhood in the full triple space contained in \(GM\).

The action is genuinely finite: it is induced by
\((S_6)^3\rtimes S_3\) on ordered ray configurations after continuous
phases and common unitary gauges are removed. Consequently \(GM\) is a
finite union of compact sets, hence closed, and the local argument makes it
open. Its quotient image is connected because it is the image of connected
\(M\). This proves the component theorem.

The actual starting pair is placed in the family by an exact monomial
witness at \((x,y,u,v)=(-i,1,-1,1)\), with trace \(r=1\). The checker
also verifies the companion signs and the column-pair swaps needed for the
all-positive-sign convention.

## 6. Additional global results relevant to F′

### A symmetry criterion that forces a Fourier edge

An unbiased pair is Fourier type if and only if there is a nonscalar
unitary that is diagonal in one basis and monomial in the other. Flatness
forces every cycle of such a monomial to have the same length and phase
product; the possible cycle lengths divide six and yield the required
Fourier block structure.

Two projectively distinct common skew-monomial antiunitaries with the same
perfect matching in one basis produce such a diagonal unitary by taking
their product. Hence their collision forces every incident edge to be
Fourier. A Fourier-free triple or quartet can have at most 15 such
projective common antiunitaries. The common projective unitary symmetry
group of a Fourier-free family with at least two bases embeds in \(S_6\).

These are exact structural implications. Existence of the necessary
symmetries for an arbitrary triple or quartet is not proved.
See [SYMMETRY_REDUCTION.md](root/SYMMETRY_REDUCTION.md).

### A spectral gap for every hypothetical quartet

For four bases, let \(Q\) be the unnormalized rank-15 projection onto the
Hilbert–Schmidt orthogonal complement of their diagonal operator algebras.
Identify operators with vectors in \(\mathbb C^6\otimes\mathbb C^6\),
and write \(\Gamma\) for partial transpose. The new necessary condition is

\[
\boxed{\lambda_{\min}(Q^\Gamma)<-\frac1{120}.}
\tag{7}
\]

For the normalized state \(Q/15\), the bound is \(-1/1800\).

Define \(S_4=\sum_{a,j}|u_{aj}\otimes u_{aj}\rangle
\langle u_{aj}\otimes u_{aj}|\). Then
\(Q^\Gamma=I+F_{\rm swap}/2-S_4\),
\(\operatorname{tr}S_4=24\), and \(\operatorname{tr}S_4^2=36\).
Positive partial transpose would force each raw squared transition to have
singular values \((3,3,3,3,0,0)\), and fourth moment 324.

The independently replayed single-Hadamard certificate gives the dichotomy
\(\gamma(H)=0\) or \(H^{\circ2}\) is Hadamard. Here \(\gamma\) is
the sum of squares of all 20 balanced three-plus/three-minus column
character sums. The exact identity

\[
\gamma(H)=144+\frac{T_3(H)}9-\frac{T_2(H)}2,
\qquad T_m(H)=\operatorname{tr}
[((H^{\circ m})^\dagger H^{\circ m})^2]
\tag{8}
\]

implies \(T_2\ge336\) on the first branch; the second has \(T_2=216\).
Interlacing sharpens this obstruction to the strict gap (7). The source
replay generates 8,871 equations in 909 moment coordinates, selects 897
independent witnesses, and checks the rational projection and two exact
zero residual dictionaries. Only this
single-matrix dichotomy is imported; the later mixed-family calculation
and any claimed global maximum are not used.

The four quartet triangles also satisfy a joint exact identity. Put
\(C_{ab}=(U_a^\dagger U_b)^{\circ2}\),
\(\tau_{abc}=\operatorname{tr}(C_{ab}C_{bc}C_{ca})\), and let
\(E_\alpha\) be a real orthonormal Hermitian basis of the 15-dimensional
complement. Then

\[
\sum_{\alpha,\beta,\delta}
|\operatorname{tr}(i[E_\alpha,E_\beta]E_\delta)|^2
=12\left(1+\sum_{a<b<c}\Re\tau_{abc}\right)
=2\operatorname{tr}[S_4(S_4-3I/2)^2].
\tag{9}
\]

Consequently the triangle sum is greater than
\(-1+181/10{,}368{,}000\). These are necessary conditions, not a
nonexistence proof. An explicit antisymmetric projection satisfies the
basic relaxed rank, moment, marginal, and no-rank-one conditions while
having negative partial transpose. The actual realization by four basis
algebras remains essential.

See [QUARTET_CONSTRAINTS.md](quartet_constraints/QUARTET_CONSTRAINTS.md),
[SCHUR_POWER_IDENTITIES.md](triple_algebra/SCHUR_POWER_IDENTITIES.md), and
[SINGLE_H_AUDIT.md](triple_algebra/SINGLE_H_AUDIT.md).

## 7. The exact remaining obstruction

The component theorem leaves a disjoint compact complement
\(V\setminus GM\). We have not classified that complement, proved it
empty, or proved F on every one of its components. No passage through a
rank drop or a limiting point of the known component can reach it.

For F′, E and the component theorem require all four faces of a
hypothetical quartet to lie in that complement. The remaining problem is
to rule out four such faces with shared edges and consistent triangle
products. This is a sharper target than controlling independent candidate
transitions. The quartet identities and symmetry criterion provide
constraints for that target, but no final exclusion is claimed.

One exact algebraic target is particularly explicit. For a raw Hadamard
define the nonnegative polynomial

\[
P_F(H)=\prod_{r<s}\left(36-\left|\sum_j(h_{rj}\bar h_{sj})^2\right|^2\right)
\prod_{c<d}\left(36-\left|\sum_i(h_{ic}\bar h_{id})^2\right|^2\right).
\]

The retained Fourier-predicate proof shows \(P_F(H)=0\) exactly for a
Fourier edge. F′ is therefore equivalent to proving
\(\prod_{a<b}P_F(H_{ab})=0\) on every exact quartet. The remaining
certificate must use the jointly compatible edges, including their
triangle-product relations. The single-edge character identity alone
does not imply this polynomial vanishing.

The primary-source scope review is
[PRIMARY_RESULTS.md](globalization/PRIMARY_RESULTS.md). It distinguishes
published conjectures, replayed inputs, and unreplayed global claims.
None of the new results is described as Lean-formalized.

## 8. Reproduction and certificate scope

From the extracted bundle directory, run:

```bash
python3 verify_all.py --output /tmp/global-f-replay
```

The mathematical verifiers require only Python's standard library. The
launcher checks the shipped checksum manifest, replays the exact gates in a
temporary copy, and writes the new logs and receipt to the requested output
directory. Shipped receipts are preserved. Assertions must remain enabled;
the entry points explicitly refuse optimized Python.

The delivered integration run passed all nine exact gates and all nine
optimized-Python refusal checks in **19.688 seconds**, using Python 3.12.14.
Its [replay receipt](verification/shipped_run/REPLAY_RECEIPT.json), individual
logs, and freshly generated mathematical receipts are retained. Runtime is
an observation of this execution environment, not a guaranteed duration.

The finite gates check the exact trace identities and sheet count, a
rank-53 base minor, central rank 51 and kernel, all 36 central equivalences,
the complete quadratic obstruction and exchange, symmetry/Fourier-locus
controls, the global Laurent Gram factorization, Schur identities, the
single-Hadamard source certificate, and quartet finite inputs.

The analytic implicit-function, local factorization, topology, and
interlacing arguments are written proofs supported by these finite inputs.
They are not claimed to be mechanically formalized merely because a Python
receipt says PASS. Independent mathematical reviews and their scope are
included. Scientific plotting is optional and is not part of verification.

The original third-party verifier is included unchanged with its Apache-2.0
license and attribution. Execute the restricted `replay_single_h.py` entry
point to reproduce the imported result. The unrelated upstream full runner
and downloaded paper copies are omitted.

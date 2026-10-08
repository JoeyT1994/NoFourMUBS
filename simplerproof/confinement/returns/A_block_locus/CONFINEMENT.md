# Global confinement: proved structural case, improved gauge, and remaining gap

## Outcome

**The unrestricted theorem in the handoff is not proved by this package.**
In particular, this package does not establish

\[
M(H)<26\ \Longrightarrow\ \nu(H)\le0.55
\quad\text{for every order-six Hadamard }H.
\]

It establishes a sharp, global version of that theorem on an intrinsic
structural locus, proves a stronger general gauge conversion, rigorously
justifies the local-minimum reduction, and supplies new exact identities
for general Hadamards. Every numerical exploration is separated from
those proofs. There is no unreported global cover or optimization
certificate.

The principal proved confinement statement is:

> If an order-six Hadamard contains any order-three Hadamard submatrix,
> then \(M(H)<26\) implies
> \(\nu(H)<0.358338\) and \(d_F(H)<0.073081\).

The underlying exact constants are sharp in this structural locus. Both complete affine
Fourier families, all their equivalences, and the finite exceptional
branches are included. This is a theorem over whole families and all
their parameter values, rather than a collection of sampled matrices.

## 1. Precise statements proved

Let

\[
\mathcal B=\{H:\text{some }3\times3\text{ submatrix }A
\text{ satisfies }AA^*=3I\}.
\]

Membership in \(\mathcal B\) is invariant under equivalence. For
\(0\le m<108\), define

\[
\alpha(m)=\arcsin\frac{\sqrt m}{12},\quad
N(m)=\sqrt{\frac23}\,\alpha(m),\quad
D(m)=\sin\frac{\alpha(m)}6.
\]

### Theorem A: sharp structural confinement

For every \(H\in\mathcal B\),

\[
\boxed{M(H)\le m<108\ \Longrightarrow\
\nu(H)\le N(m),\qquad d_F(H)\le D(m).}
\tag{A}
\]

The constants at 26 are bounded exactly by

\[
\begin{split}
0.35833717932519&<N(26)<0.35833717932521,\\
0.07308006387000&<D(26)<0.07308006387001.
\end{split}
\tag{1}
\]

These constants are optimal at cutoff 26 after minimizing over all
allowed matrix equivalences. Under the strict hypothesis \(M<26\),
the inequalities against \(N(26),D(26)\) are strict.

### Theorem B: no low positive local minimum on this locus

Every \(H\in\mathcal B\) with \(0<M(H)<243\) admits arbitrarily close
Hadamards with smaller \(M\). Thus it is not a local minimum on the full
Hadamard set.

### Theorem C: improved gauge for arbitrary Hadamards

For every order-six Hadamard, and in fact for every unit-entry
\(6\times6\) matrix, if \(d_F(H)\le r\le1/10\), then

\[
\boxed{\nu(H)\le
6\sqrt{\frac56\left(1-\sqrt{1-\frac{12}{5}r^2}\right)}.}
\tag{C}
\]

Consequently the alternative terminal condition in the handoff is
valid:

\[
\boxed{d_F(H)\le0.0914\ \Longrightarrow\ \nu(H)<0.55.}
\tag{2}
\]

Indeed, at \(r=0.0914\) the right side of (C) lies between
\(0.54978659360828\) and \(0.54978659360830\). The largest radius
provided by (C) for \(\nu\le0.55\) is

\[
\sqrt{\frac{2889359}{345600000}}
=0.0914352982887251708\ldots.
\tag{3}
\]

This is a sufficient radius from this gauge theorem; no optimality over
all possible gauge estimates is claimed.

### Theorem D: rigorous local-minimum reformulation

Using the supplied local lemma **F4**, unrestricted confinement is
equivalent to the absence of a local minimum of \(M\) with \(M<26\)
and \(\nu>0.55\). This reduction is valid without assuming that the
Hadamard space is a manifold. The infimum defining \(\nu\) is finite,
attained, and continuous.

Theorem D is a reduction of the remaining global task, not its
completion.

## 2. Proof of structural confinement

The full details and exact verification are in
`FOURIER_BLOCK_LOCUS.md` and `fourier/FOURIER_CONFINEMENT.md`. The
following gives the proof chain in one place.

### 2.1 Exact classification of the block locus needed here

Normalize the Hadamard submatrix to
\(F_3=(\omega^{jk})_{j,k=0}^2\), where \(\omega^3=1\) and
\(\omega\ne1\). Complementary block orthogonality and the elementary
classification in dimension three put the full matrix in the form

\[
H(v,w)=
\begin{pmatrix}
F_3&D_vF_3\\
F_3D_w&-\frac13F_3D_wF_3^*D_vF_3
\end{pmatrix},\quad
v=(1,p,q),\quad w=(1,r,s).
\tag{4}
\]

The four parameters are phases. The first three blocks are flat, and
the full matrix is orthogonal for every parameter value. Flatness of
the final block is the remaining condition.

With the three-point Fourier transform, define

\[
A_k=\widehat v_k\overline{\widehat v_{k-1}},\qquad
\beta_k=w_k\overline{w_{k+1}},
\]

with cyclic indices. The final block is flat exactly when

\[
\widehat A_1\widehat\beta_1=0,\qquad
\widehat A_2\widehat\beta_2=0.
\tag{5}
\]

If both \(\widehat A\) factors vanish, \(v\) is a Fourier row and
(4) is in the affine Fourier family. If both \(\widehat\beta\)
factors vanish, \(w\) is a Fourier row and the matrix belongs to its
transpose family.

In each mixed allocation, a vanishing coefficient is a sum of three
unit numbers with product one. A zero sum forces those numbers to be
cube roots of unity. Thus all four parameters are cube roots, leaving
only \(3^4=81\) possibilities. Exact arithmetic checks every one:

| Type | Cases | Result |
|---|---:|---|
| Pure Fourier branch | 9 | Flat, \(M=0\) |
| Pure Fourier branch | 36 | Flat, \(M=243\) |
| Nonpure branch | 18 | Not flat |
| Nonpure branch | 18 | Flat, \(M=243\) |

Therefore

\[
H\in\mathcal B\quad\Longrightarrow\quad
H\text{ is affine Fourier or transposed affine Fourier, or }M(H)=243.
\tag{6}
\]

In particular the finite exceptional possibilities are not discarded
through a division or an assumption of regularity.

### 2.2 Exact maximum over all 400 Fourier corners

For the full affine family

\[
H(a,b)=F_6\circ e^{i(a t_1+b t_2)},
\]

set \(x=a+b\), \(y=a-2b\). Direct exact expansion of **F2** gives
the 400-corner multiset: 256 zeros and 36 copies of each of the four
expressions

\[
36[\sin(x+y)\pm\sin x\pm\sin y]^2.
\]

Hence

\[
\boxed{M(H(a,b))=
36\bigl(|\sin x|+|\sin y|+|\sin(x+y)|\bigr)^2.}
\tag{7}
\]

This identity is checked over the Laurent ring
\(\mathbb Z[\zeta_6][e^{\pm ia},e^{\pm ib}]\). It is not an
interpolation from numerical evaluations.

### 2.3 Coverage of the entire parameter torus

The sine addition formula gives
\(|\sin x|\le|\sin y|+|\sin(x+y)|\), and its two counterparts.
If \(M\le m\), every absolute sine in (7) is therefore at most
\(\sqrt m/12\).

The lattice of parameter changes

\[
(a,b)\longmapsto(a,b)+
\frac\pi3(2j+k,j-k),\qquad j,k\in\mathbb Z,
\tag{8}
\]

is implemented by explicit row and column permutations. It reduces
\(x,y\) independently modulo \(\pi\). After reduction,
\(|x|,|y|\le\alpha(m)\). Since \(m<108\),
\(3\alpha(m)<\pi\); the bound on \(\sin(x+y)\) then forces

\[
|x|\le\alpha(m),\qquad |y|\le\alpha(m),\qquad
|x+y|\le\alpha(m).
\tag{9}
\]

Thus every low-invariant point of the torus has been placed in one
explicit hexagon about an equivalent Fourier matrix. No other
components of this two-dimensional low-invariant torus remain.

### 2.4 The two distance bounds

The horizontal projection of \(a t_1+b t_2\) has squared norm

\[
2(a^2-ab+b^2)=\frac23(x^2+xy+y^2).
\]

On the hexagon (9), the convex quadratic on the right is at most
\(2\alpha(m)^2/3\), as is checked at its six vertices. This proves
the phase bound.

The range of the three phases \(0,a,b\) is at most
\(2\alpha(m)/3\). Centering that range by an allowed row phase gives
maximum column-projector distance at most
\(\sin(\alpha(m)/6)\). An explicit separate row-phase comparison
proves the same upper bound for the transposed family; no
transpose-invariance of \(d_F\) is assumed.

Along \(H(a,-a)\), for the interval relevant to cutoff 26,

\[
M=144\sin^2(3a),\qquad
\nu=\sqrt6\,a,\qquad d_F=\sin(a/2).
\tag{10}
\]

The last two equalities are proved against every Fourier equivalence
by separating the dephased sixth-root Fourier orbit. They establish
sharpness. Combining these facts with (6) proves Theorem A.

### 2.5 Descent on the full Fourier torus

The lines \(x\in\pi\mathbb Z\), \(y\in\pi\mathbb Z\), and
\(x+y\in\pi\mathbb Z\) divide the plane into triangles. On a
fundamental triangle \(x,y\ge0\), \(x+y\le\pi\), equation (7)
becomes

\[
\frac{\sqrt M}{6}=\sin x+\sin y+\sin(x+y).
\]

Its second derivative in every nonzero interior direction is
negative. Its restriction to an open edge is \(2\sin t\), also
strictly concave. Hence no positive point is a local minimum; vertices
have \(M=0\). The explicit family supplies feasible nearby
Hadamards, so the conclusion holds on the ambient set as well.
Together with (6), this proves Theorem B.

## 3. Improved gauge proof and correction of F3's decimal shortcut

For six centered real numbers,

\[
\sum_i z_i^4\le\frac7{10}\left(\sum_i z_i^2\right)^2.
\tag{11}
\]

The constant is sharp, with equality on permutations of
\((5a,-a,-a,-a,-a,-a)\). The proof classifies the stationary points
of the fourth moment on the centered unit sphere. Lagrange
multipliers allow at most three distinct coordinate values; all
possible multiplicities are treated in `critical/RESULT.md`.

For the centered phase differences in a single column, put
\(t=\frac16\sum_i z_i^2\). The exact projector identity and the
global inequality \(1-\cos u\ge u^2/2-u^4/24\) yield

\[
r_j^2=\frac1{36}\sum_{i,k}(1-\cos(z_i-z_k))
\ge t-\frac35t^2.
\tag{12}
\]

Column phase alignment and \(r\le0.1\) first establish
\(t<1/15\); this justifies choosing the small root in (12).
Summing the six column bounds and projecting horizontally gives
Theorem C.

The cutoff comparison is entirely rational. With
\(t_0=(11/120)^2\),

\[
t_0-\frac35t_0^2
=\frac{2889359}{345600000}
>\left(\frac{457}{5000}\right)^2.
\]

The original F3 formula at \(0.09138\), by contrast, gives a value
strictly between \(0.55000910049904\) and
\(0.55000910049906\). Its stated decimal implication did not
establish \(\nu\le0.55\). The new gauge theorem independently
establishes the intended larger terminal radius \(0.0914\).

## 4. Rigorous justification of the critical-point route

Every unit-entry matrix admits an entrywise phase lift relative to
\(F_6\); horizontal projection of that lift gives an admissible
representation, so \(\nu\) is finite. Compactness of the monomial
equivalence factors and a bounded minimizing sequence of phase
matrices proves attainment.

If \(H'=H\circ e^{i\epsilon}\) with principal phase differences,
the same equivalence alignment and horizontal projection show

\[
|\nu(H')-\nu(H)|\le\|\epsilon\|_F
\le\frac\pi2\|H'-H\|_F.
\tag{13}
\]

Thus \(\nu\) is continuous. Suppose a counterexample to unrestricted
confinement exists. Minimize \(M\) over the compact set

\[
K=\{H\in\mathcal H:\nu(H)\ge0.55\}.
\]

Its minimum is below 26. By **F4** and attainment of \(\nu\), no
point with \(\nu=0.55\) has \(M<26\). The minimizer therefore
satisfies \(\nu>0.55\), and continuity gives a relative neighborhood
lying inside \(K\). It is a local minimum on all of \(\mathcal H\).
The converse is immediate. This proves Theorem D.

In any differentiable four-parameter family of actual Hadamards,
such a minimum must have zero in the convex hull of the active
corner gradients. At most five active corners are necessary to
witness this condition. `critical/RESULT.md` states the corresponding
interval-cell exclusion test precisely. It requires an actual
feasible family and enclosures of every possibly active corner.
Numerical tangent projection alone is not a certificate of descent.

## 5. General exact identities obtained

The package also gives analytical reductions valid on the full
Hadamard set. Their proofs and integer verifiers are in
`mc1/GENERAL_IDENTITIES.md` and `critical/RESULT.md`.

For a fixed row triple,

\[
\sum_{|T|=3}|\operatorname{perm}H[S,T]|^2=72.
\tag{14}
\]

If \(A,B\) are same-row complementary blocks and
\(d=|\det A|^2\), \(g=|\det B|^2\), then

\[
|\operatorname{perm}B|^2=\frac{2g-d}{3},\qquad
|\operatorname{perm}A|^2=\frac{2d-g}{3},\qquad
\frac d2\le g\le2d.
\tag{15}
\]

The imaginary part of \(q(B)\) reduces to 24 Laurent monomials.
Summing it over the four possible third rows for a fixed row pair
eliminates all remaining linear row moments. The surviving expression
uses explicit fourth column moments, giving 300 necessary inequalities
for \(M<26\) without reconstructing an individual third row.

There is also a compact global tensor identity. Put

\[
T_{i;jk}=\sum_{\ell=0}^5
\frac{H_{i\ell}^2}{H_{j\ell}H_{k\ell}}.
\]

Then

\[
\sum_{S,T}q(H[S,T])
=8640+\sum_{i<j<k}T_{i;jk}T_{j;ik}T_{k;ij}.
\tag{16}
\]

The proof also establishes the exact quadratic normalization of these
tensor moments. These identities retain coupled phases and permit
cancellations; no distance-to-Fourier bound follows from them in this
package.

One unconditional consequence does follow. Define
\(A_2=\sum_{i<j}|\sum_\ell(H_{i\ell}/H_{j\ell})^2|^2\), and let
\(J_c\) use the positive row Gram matrix of corner \(c\). Then

\[
\sum_c|\det H_c|^4=58320+36A_2+\sum_cJ_c^2,
\]

so the maximum determinant satisfies

\[
\boxed{\max_c|\det H_c|^2\ge
\frac{27}{2}+\frac{A_2}{120}
+\frac1{4320}\sum_cJ_c^2\ge\frac{27}{2}.}
\tag{16a}
\]

This improves the direct average bound \(54/5\). It still does not
force a corner close to the Hadamard value 27 when \(M<26\).

## 6. Numerical exploration and its limits

The supplied `toolkit/selftest.py` was run and printed `SELFTEST PASS`.
Its square-identity discrepancy was approximately
\(1.34\times10^{-11}\). This is a floating-point regression check,
not proof of any input theorem. In particular its chart example is
not included in its accumulated pass/fail boolean.

An additional minimax-descent pilot produced 183 numerical runs from
two fixed random seeds. At each iteration it solved a linearized
minimax problem in a numerically computed Hadamard tangent space,
retracted by Newton projection, and checked the actual 400-corner
maximum before accepting a step. Its stopping values were:

| Numerical stopping class | Runs |
|---|---:|
| Near zero | 80 |
| Approximately 205.421319 | 45 |
| Approximately 243 | 38 |
| Approximately 250.739728 | 8 |
| Approximately 256 | 10 |
| Approximately 260.616435 | 2 |

The largest final row-orthogonality residual was about
\(9.97\times10^{-14}\). All 80 near-zero stops had a numerical
Fourier alignment of norm below \(6.13\times10^{-7}\).

These are numerical stopping classes, **not a classification of local
minima**. No sampled outcome, absence of sampled counterexamples,
or numerical norm upper bound is used in Theorems A–D. The two
attempts requested 24 and 160 starts; one attempt did not produce an
admissible numerical starting matrix, leaving 183 completed descents. The
scripts and complete output records are retained in `numerics/`.

## 7. Exact remaining global obligation

The results eliminate \(\mathcal B\) as a source of a counterexample.
What remains is to exclude a local minimum \(H_*\) satisfying

\[
\boxed{0<M(H_*)<26,\qquad\nu(H_*)>0.55,\qquad
H_*\notin\mathcal B.}
\tag{17}
\]

The strict positivity follows because \(M=0\) is the Fourier class
by supplied fact **F1**. The new identities do not exclude (17).
Nor is it enough to prove that small \(M\) is *observed* to give a
nearly maximal three-minor: that requires a uniform inequality, and
an approximate Hadamard block requires a quantitative stability
argument before the exact block theorem can be applied.

No exhaustive four-seed cover, universal descent vector, or exact
inequality closing (17) has been obtained. Therefore this package
does not close the final step of the proposed no-four-MUB proof.

## 8. Inputs, dependency audit, and verification

The supplied inputs are copied under `inputs/`, with hashes in
`INPUTS.json`. The actual uses of the handoff facts are:

| Fact | Use in this package |
|---|---|
| F1, qualitative MC1 | Only to state that a hypothetical residual minimum in (17) has positive \(M\). |
| F2, square identity | Exact Fourier corner identities; conversion of general signed-invariant estimates to \(M\). The finite block exception computation also checks it against direct \(R\). |
| F3, original gauge | Audited, but not used as a premise of the improved gauge theorem. |
| F4, local lemma | Theorem D and the precise residual local-minimum formulation only. Its original certificate is accepted as a supplied fact and is not included in the handoff. |
| F5, local theory | Not used in the proved results. |
| F6, exact/numerical examples | Not used as a premise. The relevant extremal-curve formulas and optimal distances are independently established in the affine-sector proof. |
| F7, reconstruction | Not used to prove confinement or coverage. The supplied code is retained for the numerical self-test and a scoped audit of one internal sign degeneracy above the cutoff. |
| F8, Cauchy–Binet | General determinant/permanent sum identities; not required for structural confinement. |

No theorem about smoothness or completeness of a reconstruction chart
is silently assumed. The proofs introduce no completion, balance, or
shared-symmetry assumption.

Run all exact/interval verification scripts with:

```sh
python3 verify_all.py
```

This checks the finite algebraic claims in the accompanying proofs.
Its success means that these **partial results** replay; it does not
assert or test unrestricted confinement. See `README.md` for individual
commands and dependencies, and `STATUS.md` for the division between
proof, finite computation, and numerical evidence.

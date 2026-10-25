# X — no quartet edge in the closed radius-0.15 Fourier neighbourhood

Date: 25 October 2026.

## 1. Result and status

**PROVED, with the exact finite steps CERTIFIED by the supplied replay.** For every complex Hadamard matrix \(H\) of order six,

\[
\boxed{d_{\rm ph}([H],[F_6])\le\frac3{20}=0.15
\quad\Longrightarrow\quad\neg\operatorname{QuartetEdge}(H).}
\tag{1}
\]

The radius is in the metric requested by X: the **unnormalized Frobenius norm of horizontal phase increments, in radians**, with no division by 6. The entire closed ball, including its boundary, is covered.

The proof establishes the stronger quantitative statement below.

**Theorem X.** Let \(H\) satisfy the hypothesis of (1). Let \(K=(k_1,\ldots,k_6)\) be any orthonormal basis unbiased to both \(I\) and \(H/\sqrt6\). For every unit vector \(v\) unbiased to those same two bases,

\[
\boxed{\min_{1\le j\le6}|\langle k_j,v\rangle|^2
\le\frac8{75}
=\frac16-\frac3{50}.}
\tag{2}
\]

Thus some transition probability is at least \(3/50=0.06\) below the mutually unbiased value \(1/6\). There is no single ray unbiased to all three bases \(I,H/\sqrt6,K\). A fourth mutually unbiased basis would supply six such rays, so (2) implies (1).

| Requirement or claim | Result | Status |
|---|---|---|
| Uniform exclusion throughout the requested quotient ball | Closed radius \(3/20=0.15\) | **PROVED**, using **CERTIFIED** finite checks |
| Explicit quantitative obstruction | \(\min_j\lvert\langle k_j,v\rangle\rvert^2\le8/75\), deficit \(3/50\) | **PROVED / CERTIFIED** |
| Actual nearby Hadamards satisfy a small normal-displacement bound | \(\lVert \nu\rVert _F\le\sqrt{2/3}\,\lVert \delta\rVert _F^2\) | **PROVED**, with **CERTIFIED** Fourier linear algebra |
| Complete uniform cover of candidate rays | 1,232,256 checked nodes; zero unresolved leaves | **CERTIFIED** |
| Finite robust obstruction | 48 centers, 390 edges, 16 possible six-cliques, 768 zero witnesses | **CERTIFIED** |
| Prior atlas, prior F6 record, or U/W local-germ assumption | None used in the proof of X | **PROVED dependency statement** |
| Largest possible quartet-free radius | No optimality claim | **NOT ESTABLISHED** |
| A Lean formalization of X or the remaining global atlas transfers | Not supplied by this package | **NOT ESTABLISHED** |

The old F6 record is unnecessary even as numerical evidence here. Numerical computations were used to discover candidate centers, subdivision decisions, and support witnesses; those proposals have all been replaced by exact replay checks. They are **NUMERICAL discovery**, not premises of the theorem.

## 2. Normalization, metric, and the correct quantifiers

Use the unnormalized Fourier matrix

\[
F_{ji}=\exp(2\pi\mathrm i\,ji/6),\qquad 0\le j,i\le5,
\]

so \(F/\sqrt6\) is unitary. A complex Hadamard \(H\) has unit-modulus entries and \(HH^*=6I\). Bases are represented by columns of unitary matrices.

Put \(P=I-\mathbf1\mathbf1^T/6\). A real phase matrix \(\delta\) is horizontal when

\[
P\delta P=\delta,
\]

equivalently, every row sum and every column sum is zero. The metric is

\[
d_{\rm ph}([H],[F])
=\min\{\|\delta\|_F:\ P\delta P=\delta,\quad
H\simeq F\circ e^{\mathrm i\delta}\}.
\tag{3}
\]

Here \(\circ\) is entrywise multiplication; equivalence permits row and column phases and permutations, with all phase windings included. This is W's phase metric, not entrywise chordal distance, unitary-matrix distance, or the norm of chart parameters.

**PROVED: passage to an aligned representative.** The minimum in (3) is attained. Indeed a bounded minimizing sequence of horizontal increments has a convergent subsequence, and the monomial equivalence orbit of \(H\) is compact and hence closed. Thus \(d_{\rm ph}\le3/20\) gives a representative

\[
\widetilde H=F\circ e^{\mathrm i\delta},\qquad
\|\delta\|_F\le3/20,\qquad P\delta P=\delta.
\tag{4}
\]

If \(\widetilde H=A H B\) for monomial unitaries \(A,B\), transform every partner basis or ray by \(A\). The standard basis is preserved up to phases and permutation, \(B\) merely phases and permutes the columns of \(H\), and all partner overlap probabilities are unchanged. It therefore suffices to prove (2) for (4).

**PROVED correction to the brief.** One additional unbiased basis cannot be excluded: such bases exist at \(F_6\). The exact center verification below exhibits them. The required obstruction is to two additional mutually unbiased bases. Theorem X proves the stronger obstruction to one additional basis together with one more ray. The supplied definition in `input/Basic.lean` agrees with these quantifiers.

## 3. Why actual Hadamards have a much tighter enclosure

This is the geometric estimate that makes the radius \(0.15\) work. It is a direct necessary condition on every actual Hadamard, without a chart-existence or local-manifold assumption.

### 3.1 Fourier tangent and normal directions

Let \(\mathcal O(\delta)\in\mathbb R^{30}\) consist of the real and imaginary parts of the 15 off-diagonal row inner products of \(F\circ e^{\mathrm i\delta}\). Set \(J_0=D\mathcal O(0)\).

**CERTIFIED.** The script `scripts/verify_geometry.py` constructs

\[
A=2J_0^TJ_0
\]

as an exact 36-by-36 integer matrix, using only
\(2\cos(k\pi/3)=(2,1,-1,-2,-1,1)\). It checks

\[
A(A-6I)(A-18I)(A-24I)=0
\tag{5}
\]

and

\[
\operatorname{tr}\big((A-6I)(A-18I)(A-24I)\big)
=-2592\cdot15.
\tag{6}
\]

Because \(A\) is symmetric, (5) and (6) show that its kernel has dimension 15 and its positive eigenvalues belong to \(\{6,18,24\}\).

The 11-dimensional space of row-plus-column constant phase matrices lies in the kernel. Four horizontal generators arise by horizontally projecting

\[
V_{ji}
=\mathbf1_{j\ {\rm odd}}f(i\bmod3)
+\mathbf1_{i\ {\rm odd}}g(j\bmod3),
\quad
f=(0,a,b),\quad g=(0,c,d).
\tag{7}
\]

Their exact Gram matrix is

\[
G=\begin{pmatrix}
2&-1&0&0\\
-1&2&0&0\\
0&0&2&-1\\
0&0&-1&2
\end{pmatrix}.
\tag{8}
\]

They are independent, horizontal, and annihilated by \(A\), so they exhaust the horizontal kernel \(T\). On its horizontal orthogonal complement \(N\),

\[
\|J_0\nu\|_2\ge\sqrt3\,\|\nu\|_F.
\tag{9}
\]

The verifier also checks all principal minors of \(G/3-C_i\), where \(C_i\) is the Gram matrix after restricting the four generators to column \(i\). Therefore

\[
\|\eta_{:,i}\|_2\le\|\eta\|_F/\sqrt3
\qquad(\eta\in T).
\tag{10}
\]

### 3.2 The global quadratic remainder

**PROVED.** For a centered real six-vector \(a\),

\[
\sum_{j<k}(a_j-a_k)^4
=6\sum_j a_j^4+3\|a\|_2^4
\le8\|a\|_2^4.
\tag{11}
\]

For the inequality, use \(a_j^2\le(5/6)\|a\|_2^2\). The second derivative of each row-orthogonality sum is a sum of products of two row differences, with coefficients of modulus one. Cauchy–Schwarz over row pairs, followed by Minkowski and Cauchy–Schwarz over columns, gives

\[
\|D^2\mathcal O(\delta)[u,w]\|_2
\le2\sqrt2\,\|u\|_F\|w\|_F
\tag{12}
\]

for all horizontal \(u,w\), globally in \(\delta\).

Decompose an actual horizontal Hadamard increment orthogonally as
\(\delta=\eta+\nu\), with \(\eta\in T,\nu\in N\). Since
\(\mathcal O(0)=\mathcal O(\delta)=0\), (9) and Taylor's integral remainder yield

\[
\sqrt3\,\|\nu\|_F
\le\|J_0\nu\|_2
\le\sqrt2\,\|\delta\|_F^2.
\]

Hence

\[
\boxed{\|\nu\|_F\le\sqrt{2/3}\,\|\delta\|_F^2.}
\tag{13}
\]

At \(\rho=3/20\), the proof uses the following rational enclosure:

| Quantity | Safe bound |
|---|---:|
| Whole phase matrix \(\lVert \delta\rVert _F\) | \(\rho=3/20=0.15\) |
| Tangent projection \(\lVert \eta\rVert _F\) | \(\rho=3/20\) |
| Normal projection \(\lVert \nu\rVert _F\) | \(n=147/8000=0.018375\) |
| Any column \(\lVert \delta_{:,i}\rVert _2\) | \(r=21/200=0.105\) |

**CERTIFIED scalar checks.** The normal and column bounds follow from

\[
n^2\ge\frac23\rho^4,\qquad
r>n,\qquad
3(r-n)^2\ge\rho^2,
\tag{14}
\]

which are verified as rational inequalities. In summed matrix terms the proof retains the whole-matrix bound \(\rho\); it does not replace it by \(\rho+n\) or by six independent column bounds.

## 4. A uniform complete cover of candidate rays

### 4.1 Five phase variables, with no Hadamard parameter grid

Every unit vector unbiased to \(I\), after a scalar phase, has the form

\[
v=6^{-1/2}(1,e^{\mathrm i\beta_1},\ldots,e^{\mathrm i\beta_5}),
\qquad\beta_j\in[0,2\pi].
\]

The verifier covers this entire five-dimensional torus by closed boxes. At resolution \(M\), a box has half-width \(a=\pi/M\) in each dephased coordinate. If \(x\) is the centered phase displacement from its midpoint, then

\[
\|x\|_2\le X=\sqrt{29/6}\,a,\qquad
\|x\|_1\le5a,\qquad
\|x\|_\infty\le3a/2.
\tag{15}
\]

**PROVED / CERTIFIED.** Convexity reduces these bounds to the 32 vertices of the five-coordinate cube; `verify_geometry.py` checks their maxima exactly.

Every test on a box is uniform over all Hadamard increments satisfying the enclosure in Section 3. There is no sampling or subdivision of Hadamard parameter space.

### 4.2 What the rejection tests prove

For a box midpoint \(u\), put

\[
q_{ji}=e^{\mathrm i(u_j-2\pi ji/6)}/\sqrt6,\quad
S_i=\sum_jq_{ji},\quad
c_i=(|S_i|^2-1)/2,\quad
J_{ij}=-\operatorname{Im}(\overline{S_i}q_{ji}).
\tag{16}
\]

If the box contains a ray unbiased to \(H/\sqrt6\), then

\[
S'_i=\sum_jq_{ji}e^{\mathrm i(x_j-\delta_{ji})}
\quad\text{satisfies}\quad |S'_i|=1.
\tag{17}
\]

**PROVED.** Fourier unitarity and the phase bounds give

\[
\|S'-S\|_2\le X+\rho,\qquad
|S'_i-S_i|\le5a/\sqrt6+r.
\tag{18}
\]

Violations of the resulting amplitude bounds discard boxes. Additional tests use first-order support inequalities with rigorously bounded second-order remainders. For any real vector \(y\), feasibility implies

\[
|y\cdot c|\le
a\sum_{j>0}|(J^Ty)_j|
+\rho\|P_T(y_iJ_{ij})_{ji}\|_F
+n\Big(\sum_{i,j}y_i^2J_{ij}^2\Big)^{1/2}
+\mathcal E(y).
\tag{19}
\]

The full explicit formula for \(\mathcal E(y)\), its derivation, the simpler single-component test, and the exact Gram-inverse formula for \(P_T\) are in `proofs/COVER_PROOF.md`. The derivation separates pure-vector, pure-Hadamard, and mixed exponential remainders. It uses
\(|e^{it}-1|\le|t|\), \(|e^{it}-1-it|\le t^2/2\), and (18).

**CERTIFIED.** Every support vector is stored as six integers divided by \(2^{20}\). The method that proposed it is irrelevant to verification: (19) holds for every real \(y\), and the verifier checks each stored proposal with directed intervals. Tangent projections use the exact rational matrix (8), with no numerical QR frame.

### 4.3 Coverage by 48 label balls

The surviving boxes are covered by phase balls about 48 explicit quantized centers in `data/quantized48.json`. All phases are integral multiples of \(2\pi/12288\). The certified radii are \(399/1000\) for labels 0–11 and \(299/1000\) for labels 12–47.

For each proposed containment the verifier takes a componentwise integer wrap of midpoint minus label center, centers that real difference, and checks that its norm plus \(X\) is strictly below the label radius. This is a sufficient containment test for every point of the closed box. It does not assume that the chosen wrap minimizes projective distance.

**CERTIFIED complete traversal.**

| Resolution \(M\) | Nodes checked | Covered by a label | Rejected | Subdivided |
|---:|---:|---:|---:|---:|
| 12 | 248,832 | 0 | 238,680 | 10,152 |
| 24 | 324,864 | 0 | 316,620 | 8,244 |
| 48 | 263,808 | 4,848 | 246,624 | 12,336 |
| 96 | 394,752 | 197,484 | 197,268 | 0 |
| **Total** | **1,232,256** | **202,332** | **999,192** | **30,732** |

All \(12^5\) initial boxes are present. Each subdivision produces all 32 closed children. The total includes internal nodes; leaves are either covered or rejected. The final level has **zero unresolved leaves**. No symmetry reduction is needed, and no phase-torus boundary is omitted.

Consequently every ray unbiased to \(I,H/\sqrt6\), for every \(H\) in (4), is in one of the 48 quantized phase balls.

## 5. Exact centers and the robust orthogonality graph

### 5.1 Algebraic witnesses and the center bridge

Define

\[
q=e^{\pi\mathrm i/3},\qquad
\zeta=e^{\pi\mathrm i/6},\qquad
d=\frac{1-\sqrt3}{2}+\mathrm i\sqrt{\frac{\sqrt3}{2}}.
\]

Use the seeds

\[
g_j=\zeta^{j^2},\qquad \overline g_j,\qquad
b=(1,\mathrm i d,-d,-\mathrm i,-\overline d,\mathrm i\overline d).
\tag{20}
\]

Apply all shifts and modulations
\(v_j=\mathrm{seed}_{j-s\bmod6}q^{mj}\), \(0\le s,m<6\), divide by the first entry, and remove exact duplicates in the stated order. This produces 6 Gaussian, 6 conjugate-Gaussian, and 36 Björck centers \(c_a\), each with unit-modulus entries.

**CERTIFIED.** `scripts/verify_48_graph.py` verifies all center identities, distinctness, and exact unbiasedness to \(I,F/\sqrt6\). It uses exact arithmetic in
\(\mathbb Q[b_0,\mathrm i]\), \(b_0^4=3/4\), \(b_0>0\). The irreducibility of \(4X^4-3\) follows from Eisenstein at 3. Rational isolation of its positive root supplies rigorous real comparisons.

The same verifier checks every quantized center against its corresponding algebraic center. Each noninitial coordinate has circular phase error less than \(1/3000\), and the initial error is zero. Centering decreases the Euclidean norm, so the mean-free phase error is less than
\(\sqrt5/3000<1/1000\).

Thus the complete ray cover of Section 4 is contained in the exact-center balls

\[
\mathcal B_a=
\left\{\lambda c_a\circ e^{\mathrm ix}/\sqrt6:
|\lambda|=1,\ \sum_jx_j=0,\ \lVert x\rVert _2\le t_a\right\},
\tag{21}
\]

with the following radii:

| Labels | Number | Quantized-cover radius | Center error | Exact-center radius \(t_a\) |
|---|---:|---:|---:|---:|
| Gaussian and conjugate-Gaussian, 0–11 | 12 | \(399/1000\) | \(<1/1000\) | \(2/5\) |
| Björck, 12–47 | 36 | \(299/1000\) | \(<1/1000\) | \(3/10\) |

Both verifiers read one shared center file; the driver also checks equality of their reported SHA-256 digests. This binds the ordered cover labels to the ordered algebraic centers.

No classification theorem asserting that these are all exact Fourier-unbiased rays is needed. Completeness for the perturbed Hadamards comes from the exhaustive torus cover.

### 5.2 A necessary graph for actual orthogonality

**PROVED.** If \(v\in\mathcal B_a\) and \(w\in\mathcal B_b\), their normalized inner product differs, up to an irrelevant scalar phase, from the center inner product by at most

\[
\frac16\sum_j|e^{\mathrm i(x_j-y_j)}-1|
\le\frac{\|x-y\|_2}{\sqrt6}
\le\frac{t_a+t_b}{\sqrt6}.
\tag{22}
\]

Therefore actual orthogonality requires

\[
\left|\sum_j\overline{c_{a,j}}c_{b,j}\right|^2
\le6(t_a+t_b)^2.
\tag{23}
\]

Two orthogonal vectors cannot carry the same label: their center self-overlap is 6, and the maximal unnormalized change is only \(2\sqrt6\,t_a<6\). Hence any actual orthonormal basis determines six distinct labels forming a six-clique of the graph defined by (23).

**CERTIFIED.** The graph has 390 undirected edges. Every algebraic comparison is strictly separated from its rational threshold, so no ambiguous pair is omitted. Exhaustive ordered-vertex recursion finds exactly 16 six-cliques.

These are **16 possible label configurations** for an actual perturbed basis. The assertion does not claim that every nearby \(H\) has exactly 16 third bases, or that every label configuration is realized there.

The exact computation additionally verifies:

1. Each of the 16 cliques is an orthogonal basis at the algebraic centers.
2. For each such clique \(A\) and every one of the 48 labels \(b\), some \(a\in A\) has exact center inner product zero with \(c_b\).

The second assertion supplies 768 exact zero witnesses, all regenerated during replay.

## 6. Proof of Theorem X

**PROVED from the certified components.** Align \(H\) as in (4), and let \(K,v\) satisfy the hypotheses of Theorem X. The complete cover and center bridge place all six columns of \(K\), and \(v\), in the exact-center balls (21).

The six basis labels are distinct and form one of the 16 graph cliques. Let \(b\) be a label for \(v\). Choose the zero witness \(a\) in that clique. Applying (22) to the corresponding column \(k_j\) and to \(v\), whose center overlap is zero, gives

\[
|\langle k_j,v\rangle|
\le\frac{t_a+t_b}{\sqrt6}
\le\frac{4}{5\sqrt6}.
\]

Squaring,

\[
|\langle k_j,v\rangle|^2
\le\frac{16}{150}
=\frac8{75}
=\frac16-\frac3{50}.
\]

This is (2). A fourth basis \(L\) in `QuartetEdge H` would have every column \(v\) unbiased to \(I,H/\sqrt6\), and also to every column of \(K\). The latter requires all six squared overlaps to equal \(1/6\), contradicting (2).

Monomial invariance transfers the result to the original \(H\). All geometric hypotheses use non-strict upper bounds, while every box rejection and containment is checked with strict certified slack. The conclusion therefore includes \(d_{\rm ph}=3/20\).

## 7. Exact arithmetic, replay, and audit

From the extracted package root, run:

```sh
python3 -I scripts/verify_all.py
```

Only Python 3.10 or newer and its standard library are required. No network, numerical package, old certificate, or external data is used. Do not run with `-O`: all verifiers explicitly reject disabled assertions.

The full replay takes roughly two to three minutes in the construction environment. Its timing is informational and does not affect acceptance. The component checks and the final assembled package were replayed; an additional independent copy of the complete cover also passed.

The finite arithmetic is:

- **Geometry:** exact integers and rational fractions.
- **Ray cover:** directed fixed-point intervals with integer endpoints at scale \(2^{48}\); outward division, multiplication, squares, and integer square roots.
- **Trigonometry:** Machin's formula with rational alternating-series bounds, followed by Taylor polynomials with explicit remainder bounds.
- **Graph:** exact algebraic field arithmetic, with rational intervals for its positive real embedding.
- **Assembly:** exact rational comparisons and shared-center identity checks.

Every compressed node code and every rational support witness is checked again. Supplied receipts cannot substitute for verification. Missing data, an ambiguous or failed inequality, malformed traversal counts, an unfinished tree, or a failed graph witness aborts the run.

The driver regenerates `certificates/geometry.json`, `cover.json`, `graph.json`, `SUMMARY.json`, and the corresponding logs. `MANIFEST.json` records file-integrity digests for all immutable package files. The manifest is bookkeeping; mathematical acceptance comes from the verifier computations and the analytic implications proved above.

The detailed independent mathematical review is in `proofs/INDEPENDENT_AUDIT.md`. It checks the interval operations, weighted remainder bounds, phase units, complete traversal, quantized-to-exact bridge, label distinctness, quotient metric, and final overlap bound. The associated historical replay receipt records the hashes of the component versions it audited. Packaging changes are limited to relative paths, receipt destinations, an assertion-mode guard, and an additional manifest-radii consistency check; the final packaged versions have their own full replay.

This is an exact computer-assisted mathematical proof with explicit analytic arguments. It is **not a completed Lean proof**: the user-supplied `Basic.lean` is included to fix the intended predicate.

## 8. Literature check

**PROVED in the cited literature; background only.** Jaming, Matolcsi, Móra, Szöllősi and Weiner, *A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6*, Theorem 1.4, states that the standard basis and every member of the affine Fourier family \(F(a,b)\) cannot extend to a MUB quartet. Section 3 uses discretization and exhaustive computation. That theorem concerns the two-parameter family and supplies no numerical radius in arbitrary transverse directions. It therefore supports the reported background but is not a proof of the neighbourhood asserted in X.

Primary source: [arXiv:0902.0882v2](https://arxiv.org/html/0902.0882v2).

**PROVED in the cited literature; background only.** Grassl's *On SIC-POVMs and MUBs in Dimension 6*, Theorem 2, gives the 48 dephased vectors unbiased to the standard and Fourier bases, their 16 orthonormal bases, and the nonexistence of an additional ray unbiased to any resulting triple. The present proof checks its needed center identities and incidence statements afresh; it does not import the earlier classification computation.

Primary source: [arXiv:quant-ph/0406175v2](https://arxiv.org/pdf/quant-ph/0406175).

The explicit Björck sequence and Fourier-ray structure are also described in Bengtsson et al., *Mutually unbiased bases and Hadamard matrices of order six*, equations (9)–(10) and Section 6. Formula (20) is independently verified in this package.

Primary source: [arXiv:quant-ph/0610161v3](https://arxiv.org/pdf/quant-ph/0610161).

The explicit radius \(3/20\) and probability deficit \(3/50\) are results of the present certificate, not quantities attributed to those papers.

## 9. Consequence for the W/X handoff and remaining limits

**PROVED consequence.** The set

\[
N=\{[H]:H\text{ is Hadamard},\ d_{\rm ph}([H],[F_6])\le0.15\}
\]

can be used as one uniformly certified quartet-free region. No per-point Stage C call or cover by Hadamard-space edge balls is required inside \(N\); replay this one certificate and use Theorem X.

W's chart may still supply the boundary parametrization for the surrounding atlas-transfer task. X's exclusion itself is independent of W's chart construction and its accepted U germ theorem.

**NOT ESTABLISHED.** This package does not certify transfers from that boundary into seed balls, prove a global nonexistence theorem for four MUBs in dimension six, classify nearby partner bases, or prove that \(0.15\) is the maximal possible exclusion radius. It completes the requested local exclusion at the ideal target radius.

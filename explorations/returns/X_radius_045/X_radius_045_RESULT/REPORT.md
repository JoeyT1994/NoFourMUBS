# X extended — a tripled Fourier neighbourhood

Date: 25 October 2026.

**PROVED, with the finite steps CERTIFIED by completed exact replays.**

## 1. The result and its precise scope

This package extends the earlier radius `3/20 = 0.15` theorem to the closed radius `9/20 = 0.45` neighbourhood in the same metric. The radius is three times as large. It is the unnormalized Frobenius norm of a horizontal phase increment, in radians; there is no change of metric or division by six.

**Theorem.** For every order-six complex Hadamard matrix `H`,

\[
\boxed{d_{\rm ph}([H],[F_6])\le\frac9{20}
\quad\Longrightarrow\quad\neg\operatorname{QuartetEdge}(H).}
\tag{1}
\]

More quantitatively, let `H` be any order-six complex Hadamard satisfying the radius condition. Let `K=(k_1,...,k_6)` and `L=(l_1,...,l_6)` be any two orthonormal bases, each unbiased to both the standard basis `I` and `H/sqrt(6)`. Then

\[
\boxed{\min_{1\le i,j\le6}|\langle k_i,l_j\rangle|^2
\le\frac16-\frac1{20000}
=\frac{9997}{60000}.}
\tag{2}
\]

Thus `K` and `L` cannot be mutually unbiased. Equation (2) holds uniformly over all actual Hadamards in the entire closed quotient ball, including its boundary, and over all choices of both additional bases.

There is a deliberate distinction between this theorem and the stronger quantifier in the earlier radius-0.15 result. The earlier result excluded one additional orthonormal basis together with even a single further common unbiased ray. The enlarged-radius argument proves an obstruction between two additional orthonormal bases. That is exactly sufficient to exclude a quartet. It does not extend the earlier single-extra-ray assertion to radius 0.45.

The package also preserves a separately replayable radius-0.30 certificate with the larger probability deficit `1/1000`:

\[
d_{\rm ph}([H],[F_6])\le\frac3{10}
\quad\Longrightarrow\quad
\min_{i,j}|\langle k_i,l_j\rangle|^2\le\frac16-\frac1{1000}.
\tag{3}
\]

The radius 0.50 was explored but its cover did not close. Unresolved boxes are failures of the present enclosure to decide a case; they are not examples of quartets. No optimality claim is made for 0.45, and no global resolution of the dimension-six MUB problem is claimed.

## 2. Conventions, quotient metric, and the alignment argument

Use the unnormalized Fourier matrix

\[
F_{ji}=\exp(2\pi\mathrm i\,ji/6),\qquad 0\le j,i\le5.
\]

A complex Hadamard matrix has unit-modulus entries and satisfies `HH*=6I`; its normalized columns form the unitary basis `H/sqrt(6)`. Two orthonormal bases are mutually unbiased when every squared cross-inner-product equals `1/6`. The definition of `QuartetEdge` used in the earlier work is retained in `input/Basic.lean`; that file is a definition reference, not a Lean formalization of this proof.

Put `P=I-11^T/6`. A real phase matrix is horizontal when `P delta P=delta`, equivalently when all its row and column sums vanish. The metric is

\[
d_{\rm ph}([H],[F])
=\min\{\|\delta\|_F:
P\delta P=\delta,\quad H\simeq F\circ e^{\mathrm i\delta}\}.
\tag{4}
\]

Here equivalence allows row and column phases and permutations, and all phase windings are included. The minimum is attained: a bounded minimizing sequence of horizontal phase increments has a convergent subsequence, and the monomial equivalence orbit of a fixed matrix is compact and hence closed.

Consequently the radius condition supplies an aligned representative

\[
\widetilde H=F\circ e^{\mathrm i\delta},\qquad
P\delta P=\delta,\qquad \|\delta\|_F\le9/20.
\tag{5}
\]

If `Htilde=A H B` with monomial unitaries `A,B`, transform both partner bases by `A`. The standard basis is preserved up to column phases and permutation, `B` only phases and permutes the columns of `H`, and the partner cross-probabilities are unchanged. Thus it suffices to prove (2) for every aligned representative (5).

No prior atlas, classification of a Fourier unbiased set, local manifold theorem, or U/W chart is a premise. The geometric inequalities below are necessary conditions on every actual Hadamard satisfying (5).

## 3. What makes the larger radius possible

Three improvements work together. The Hadamard equations give much tighter normal-displacement estimates than a generic phase-ball bound. The ray exclusion test retains the signed quadratic and cubic terms of those equations. Finally, the finite graph test compares whole orthonormal bases when pairwise overlap bounds alone are insufficient.

### 3.1 Tangent and normal geometry

Let `O(delta)` collect the real and imaginary parts of the fifteen upper-triangular row-orthogonality sums, and let `J=D O(0)`. Exact Fourier linear algebra decomposes the 25-dimensional horizontal phase space as `T direct-sum N`, with `dim T=4`. Write

\[
\delta=\eta+\nu,\qquad \eta\in T,\quad\nu\in N.
\]

The verifier constructs `2 J^T J` from integers and proves its spectral identities, the exact tangent frame, and the normal pseudoinverse. The four natural tangent vectors have Gram matrix

\[
G=\begin{pmatrix}2&-1&0&0\\-1&2&0&0\\0&0&2&-1\\0&0&-1&2\end{pmatrix}.
\]

Using both the row and column equations symmetrically yields an explicit normal map `Fcal` with zero derivative at the origin and the necessary identity

\[
\nu=\mathcal F(\eta+\nu)
\tag{6}
\]

for every actual Hadamard. Define its quadratic normal predictor `Q(eta)` and the corresponding cubic correction `P_3(eta)`. The exact tensor calculations establish

\[
\|Q(a+b)\|^2=\frac13\|a\|^2\|b\|^2,
\quad
\langle Q(\eta),P_3(\eta)\rangle=0,
\quad
\|P_3(\eta)\|^2=\frac1{72}\|a\|^2\|b\|^2\|\eta\|^2,
\tag{7}
\]

where the two orthogonal two-dimensional tangent subspaces contain `a` and `b` respectively. These identities retain cancellations that are lost by estimating every nonlinear term separately.

The residual of the explicit predictor `eta+Q(eta)+P_3(eta)` is expanded through degree six. Exact tensor Gram identities bound the homogeneous terms of degrees four, five, and six; a global derivative estimate bounds the remaining tail. Comparing this predictor with the actual solution in (6) gives rigorous envelopes without assuming existence of a Hadamard for an arbitrary tangent parameter.

For the radius-0.45 cover the following rational roundups are used:

| Quantity | Certified upper bound used by the cover |
|---|---:|
| Whole phase matrix `||delta||_F` and tangent norm `||eta||_F` | `9/20 = 0.45` |
| Normal displacement `||nu||_F` | `157/2500 = 0.0628` |
| Any row or column norm of `delta` | `3017/10000 = 0.3017` |
| Quadratic predictor error `||nu-Q(eta)||_F` | `589/62500 = 0.009424` |
| Cubic predictor error `||nu-Q(eta)-P_3(eta)||_F` | `2027/500000 = 0.004054` |

The independently regenerated bounds are slightly smaller than these convenient constants. The package driver compares them as exact fractions. The full construction and all derivative and residual estimates are in `geometry/GEOMETRY.md`.

### 3.2 A complete cover of the candidate-ray torus

Every unit vector unbiased to the standard basis can, after a scalar phase, be written

\[
v=6^{-1/2}(1,e^{\mathrm i\beta_1},\ldots,e^{\mathrm i\beta_5}),
\quad \beta\in[0,2\pi]^5.
\tag{8}
\]

The cover starts from all `12^5` closed boxes in this torus. It does not sample Hadamard parameters. At a box resolution `M`, the five phase half-widths are `a=pi/M`. After removing scalar phase, every displacement `x` within the box satisfies

\[
\|x\|_2\le\sqrt{29/6}\,a,\qquad
\|x\|_1\le5a,\qquad
\|x\|_\infty\le3a/2.
\]

Every box has one of three dispositions. It is enclosed in a verified ray ball, it is rejected by a necessary unbiasedness inequality that holds uniformly for every allowed Hadamard, or it is subdivided into all 32 closed children. A final PASS requires no remaining children. Each stored label, witness, subdivision, and acceptance inequality is replayed exactly.

The 48 ray centers are regenerated algebraically: twelve Gaussian/conjugate-Gaussian centers and thirty-six Björck centers. Their discovery does not serve as a completeness assumption. Completeness comes from the exhaustive torus traversal. The cover uses rational phase centers with denominator 12288 cycles; the graph verifier proves each is within mean-free phase norm `1/1000` of its associated exact center.

The largest-radius cover encloses every possible `I,H`-unbiased ray within quantized-center radii

\[
0.669\quad\text{for the first 12 labels},\qquad
0.464\quad\text{for the remaining 36 labels}.
\tag{9}
\]

Thus the exact-center radii are `0.67` and `0.465` respectively.

### 3.3 Keeping the quadratic and cubic residuals together

At a ray-box midpoint set

\[
q_{ji}=6^{-1/2}e^{\mathrm i(u_j-2\pi ji/6)},\quad
S_i=\sum_j q_{ji},\quad
c_i=(|S_i|^2-1)/2.
\]

The candidate ray is unbiased to `H` exactly when the six corresponding perturbed residuals vanish. A stored rational weight vector `y` forms a scalar necessary equation. Its midpoint gradient and Hessian are computed with outward integer intervals.

Substituting `nu=Q(eta)+P_3(eta)+error` collects the tangent quadratic terms into

\[
\frac12\eta^T A\eta,\qquad A=H_{TT}-2M_Q.
\]

The cubic tensor collects the three contributions

\[
\eta^T H Q(\eta)
-\langle C,P_3(\eta)\rangle
-\frac16 D^3 f_y(0)[\eta,\eta,\eta].
\tag{10}
\]

Its norm is bounded by the smaller of a Frobenius estimate and a flattened-tensor Gram estimate. Mixed phase-box terms and the remaining physical-phase terms have explicit analytic remainders. A sharp centered-six-vector fourth-moment bound gives

\[
\sum_{j<k}(z_j-z_k)^4\le\frac{36}{5}\|z\|^4
\quad\text{when }\sum_jz_j=0,
\tag{11}
\]

which improves the mixed cubic coefficient to `1/sqrt(30)` and the pure fourth-order coefficient to `1/20`.

An independent, standard-library-only bridge regenerates the predictors directly from the Fourier equations, verifies the exact frame conversion, and checks the tensor coefficients used by the cover. The analytical audit is in `proofs/CUBIC_FILTER_AUDIT.md`; the executable independent bridge is in `cubic_bridge/`.

### 3.4 The signed quadratic support bound

The final increase to radius 0.45 uses the sign of the tangent quadratic rather than paying its absolute norm independently of the linear term. Orient the witness so that `y dot c` is positive. The tangent contribution to be bounded is

\[
b^T\eta-\frac12\eta^T A\eta,\qquad\|\eta\|\le\rho.
\]

For any rational `lambda>=0` such that `P_lambda=A+2 lambda I` is positive definite, completing the square gives

\[
b^T\eta-\frac12\eta^T A\eta
\le\lambda\rho^2+\frac12 b^T P_\lambda^{-1}b.
\tag{12}
\]

The numerical discovery chooses a useful multiplier. The exact replay checks positivity by interval LDL elimination and encloses the quadratic inverse expression by a forward solve and its positive pivots. It compares the **signed** lower bound for `y dot c` to the full upper remainder. No numerical eigenvalue calculation is trusted by the replay. This preserves the coupling between the linear and quadratic terms and removes the final tail of boxes.

## 4. The obstruction for two whole bases

Once every ray belongs to the exact-center ball union, only a finite label argument remains. Necessary orthogonality inequalities produce a graph on the 48 labels. Two vectors carrying the same label cannot be orthogonal, so every orthonormal basis has six distinct labels forming a six-clique. The exact graph has 52 such possible label sets.

These are 52 possible label sets, not a classification of 52 actual perturbed bases. The two additional bases may share labels. All `52^2 = 2704` ordered pairs, including pairs with overlap, are checked.

For 1728 ordered pairs, a pointwise sine or antipodal-pair inequality gives a cross probability below `1/6-1/20000`. A comparison of whole bases gives the same low-cross-probability conclusion for the other 976. The label pairs themselves may occur; the conclusion prevents their actual bases from being mutually unbiased.

Center-frame columns are normalized rays `c_j/sqrt(6)`. Align the scalar phase of each actual column with its assigned center. The phase-ball bounds then give `||K-A||_F^2 <= (1/6) sum_j r_j^2`. For a center frame `A=U P` with unitary polar factor `U`, any unitary basis `K` satisfies the exact identity

\[
\|K-A\|_F^2-\|A-U\|_F^2
=\operatorname{Tr}((U^*K-I)^*P(U^*K-I)).
\tag{13}
\]

Thus part of a phase-ball error budget may already be needed simply to correct the center frame's nonorthogonality. Exact Gram identities give a lower bound for that cost and for the smallest singular value. A rational polynomial approximates each polar factor, with a rigorous truncation remainder.

For exactly unitary center frames there is another useful improvement. The phase-ball constraint gives a chord bound `2 sqrt(6) sin(r/(2 sqrt(6)))` for the Frobenius displacement when the frame's six labels have a common radius `r`. For two such frames with radii `r_A,r_B`, the real Frobenius sphere containing all unitary matrices bounds the cross-Gram displacement by

\[
2\sqrt6\sin\!\left(\frac{r_A+r_B}{2\sqrt6}\right).
\tag{14}
\]

For a Gaussian frame and a Björck frame, their sum is `r_G+r_B=0.67+0.465`. Gaussian/Gaussian comparisons use the corresponding sum `2r_G`. This retains the spherical geometry that the ordinary triangle inequality loses. Jensen's inequality and the sine remainder bound, including their domains, are proved in `graph/POLAR_BUDGET_PROOF.md`.

The verifier compares the center cross-modulus distance from the constant `1/sqrt(6)` matrix with the available actual-basis error budget. If all actual cross probabilities were at least `1/6-epsilon`, the modulus matrix would be within `33 epsilon` of that constant matrix. The strict certified separation at `epsilon=1/20000` therefore proves (2).

The graph computation uses exact arithmetic in the algebraic field generated by the positive fourth root of `3/4` and `i`, together with rational radical enclosures. It regenerates the centers, graph, cliques, spectral identities, polar approximations, and all ordered-pair witnesses.

## 5. Verification and the trust boundary

The supplied verification code uses Python integers, rational fractions, and fixed-point intervals with directed rounding. It uses only the Python standard library. Floating-point calculations were used to discover subdivisions, weights, and multipliers; none is accepted without an exact inequality in the replay.

The radius-0.45 tree has the following structure. An independent count-only audit verifies exact witness-byte accounting and proves that its terminal box volumes sum to exactly one as a rational number. The full exact replay has independently checked every acceptance and rejection inequality in the tree.

| Resolution `M` | Boxes checked | Boxes assigned to a ray ball | Boxes refined |
|---:|---:|---:|---:|
| 12 | 248,832 | 0 | 98,040 |
| 24 | 3,137,280 | 816 | 28,488 |
| 48 | 911,616 | 121,284 | 33,652 |
| 96 | 1,076,864 | 678,704 | 1,060 |
| 192 | 33,920 | 32,200 | 0 |
| **Total** | **5,408,512** | **833,004** | — |

Every box that is neither assigned nor refined has a checked rejection inequality. The strongest signed support test is used for 169,584 boxes. The independent implementation bridge checks 3,024 tensor entries and compares the interval LDL calculation with 128 independent rational solves.

The main cover replay finished successfully in about 25.5 minutes with four worker processes in the reference environment. All 5,408,512 nodes passed, all 1,138,832 predictor witnesses passed, and there were zero unfinished leaves. The recorded proof-input hashes were identical before and after the replay. Timing is informational.

The proof consists of the displayed analytic inequalities together with the regenerated finite identities and exhaustive certificates. It is not presented as a Lean-checked formal proof. Python must be run with assertions enabled; the top-level driver refuses an optimized interpreter.

The top-level driver binds the components before announcing a combined result. It checks the radius and all normal/predictor constants, compares the exact predictor tensors and natural frames, matches the quantized center identities, and verifies that the cover radii plus the center approximation allowance fit the selected graph configuration. Recorded hashes identify the exact source and data bytes used in the completed replays.

Run `python3 verify_all.py --workers 4` from this directory for a full replay of the radius-0.45 theorem. Add `--include-030` to replay the stronger-gap radius-0.30 certificate as well. Detailed counts and replay identities are in `certificates/RESULT.json` and the component receipts. The most expensive step is the exhaustive ray cover; all tensor and graph calculations are also regenerated.

## 6. What is established and what remains open

This package establishes a uniform closed radius-0.45 no-quartet neighbourhood in the original horizontal phase metric, with the quantitative two-basis deficit `1/20000`. It also retains the independently certified radius-0.30 deficit `1/1000`.

The method does not exclude an additional basis by itself; such third bases are allowed. It does not prove the earlier single-extra-ray strengthening at the enlarged radius. It does not claim that 0.45 is maximal. The inconclusive radius-0.50 search identifies a limitation of the present bounds, not a counterexample to a larger theorem.

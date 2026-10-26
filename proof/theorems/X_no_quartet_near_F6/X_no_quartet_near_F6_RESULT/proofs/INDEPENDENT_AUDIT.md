# Independent audit of the explicit Fourier neighbourhood exclusion

## Verdict and exact scope

**Mathematical audit: PASS. Independent geometry, complete cover, and exact graph replays: PASS.**

The independently written certificate components establish the following theorem:

> Let H be a complex Hadamard matrix of order six. If its horizontal phase quotient distance from F6 is at most 3/20, then every orthonormal basis K unbiased to both I and H/sqrt(6), and every unit vector v unbiased to those same two bases, satisfy
> 
> `min_j |<K_j,v>|^2 <=8/75=1/6-3/50`.
> 
> In particular, `QuartetEdge H` is false throughout the closed radius-3/20 ball.

The probability deficit is 3/50, not a phase error. The phase radius 3/20 is measured in radians using the unscaled Frobenius norm of the horizontal 6-by-6 phase increment. There is no division by 6 or sqrt(6).

This is a stronger conclusion than excluding two additional mutually unbiased bases. It permits third bases and excludes even one further ray unbiased to a completed third basis. The brief's sentence suggesting that one additional basis itself is impossible is false at F6 and is not used.

The argument uses the explicit Fourier matrix, a global Hessian estimate, a fresh finite cover of the entire five-dimensional phase torus, and a small exact algebraic graph. It does not use a MUB atlas, a previous Fourier record, the U germ theorem, a matched-completion theorem, or the W analytic-continuation argument.

## 1. Audited components and independent replays

The code audited in full is:

- `work/x_stagec/verify_geometry.py`;
- `work/x_stagec/verify_cover.py`;
- `work/x_analytic/verify_48_graph.py`.

The numerical generators propose bins, support vectors, and quantized centers only. Their floating-point output is never accepted as a proof decision. The final verifiers regenerate their mathematical quantities using integers and rationals.

The independent graph replay exactly matches the original graph receipt. It checks 48 algebraic centers, 390 undirected orthogonality edges, exactly 16 six-cliques, and one exact zero-overlap witness for each of the 16 times 48 clique/center pairs. It also checks the quantized centers against the algebraic centers. Its output is `work/x_literature/independent_graph_replay.json`.

The independent geometry replay checks the full Jacobian kernel, tangent Gram matrix, normal singular-value lower bound, and column tangent bounds. Its output is `work/x_literature/independent_replay/geometry_receipt.json`.

The complete bin verifier was copied, together with its unchanged data, to `work/x_literature/independent_replay/`; this avoids relying on an existing receipt. The final receipt there records an independent full PASS over all 1,232,256 nodes, with zero unfinished leaves, in 126.7 seconds. The frozen cover script was checked byte-for-byte identical to the independently replayed copy. The directed interval arithmetic was also reviewed algebraically, as detailed below.

## 2. Fourier geometry: no local-germ assumption

Write `H=F6 o exp(i delta)` in horizontal gauge and let `O(delta)` be the real and imaginary parts of the 15 off-diagonal row inner products. Here H has unit-modulus entries, so `O(delta)=0` exactly.

Let `J0=D O(0)`, and split the horizontal phase matrix orthogonally as `delta=eta+nu`, where eta belongs to the horizontal kernel T and nu is perpendicular to T.

### Exact linear algebra

The verifier constructs the integer matrix `A=2 J0^T J0` directly from `2 cos(2 pi k/6)`, using the list `(2,1,-1,-2,-1,1)`. It verifies

`A(A-6I)(A-18I)(A-24I)=0`.

A trace of `(A-6I)(A-18I)(A-24I)` determines the zero-eigenspace dimension as 15. Since A is real symmetric, its remaining eigenvalues belong to `{6,18,24}`. The 11 independent row/column gauge vectors lie in the kernel. Four independent horizontal tangent vectors also lie in it, with Gram matrix

`G=diag([[2,-1],[-1,2]], [[2,-1],[-1,2]])`.

They therefore exhaust the horizontal kernel. On its normal complement, the least singular value of J0 is at least sqrt(3).

The code separately checks, by all principal minors, that every column Gram matrix C of the tangent generators satisfies `C<=G/3`. Thus

`||eta_column|| <=||eta||/sqrt(3)`.

This establishes the tangent and normal facts independently of W's computer proof. The final geometry script also checks all 32 vertices of the dephased phase cube, confirming the three bin constants 29/6, 5, and 3/2 exactly.

### Global nonlinear remainder

For a centered real six-vector a,

`sum_(i<j)(a_i-a_j)^4=6 sum_i a_i^4+3||a||^4<=8||a||^4`.

The inequality follows from `a_i^2<=(5/6)||a||^2`. Cauchy-Schwarz over row pairs gives the corresponding bilinear bound; Minkowski over columns and Cauchy-Schwarz over column norms give

`||D^2 O(delta)[u,v]|| <=2sqrt(2)||u||||v||`

for all horizontal u,v and every real delta. This bound is global: no small phase or invertibility assumption enters it.

Since `O(delta)=O(0)=0` and `J0 eta=0`, Taylor's integral remainder gives

`sqrt(3)||nu|| <=sqrt(2)||delta||^2`.

For `||delta||<=rho=3/20`, the verifier uses the safe rational bounds

`||eta||<=3/20`,

`||nu||<=sqrt(2/3)(3/20)^2<=147/8000`,

`||delta_column||<=rho/sqrt(3)+||nu||<=21/200`.

Both rational inequalities are checked by exact squaring, with the required signs known. These are necessary conditions for every actual Hadamard in the entire ball.

## 3. Whole-torus bins and units

Any unit vector unbiased to I can be written, after a scalar phase, as

`v=exp(i theta)/sqrt(6)`, with `theta_0=0`.

The other five coordinates range over the full phase torus. A resolution-M bin has a midpoint u and dephased displacements `xi_0=0`, `|xi_j|<=a=pi/M`. Put `x=xi-mean(xi)`. Direct maximization over the 32 vertices gives

`||x||<=X=sqrt(29/6)a`, `||x||_1<=5a`, `||x||_infinity<=3a/2`.

The bins are closed. Their overlap at endpoints is harmless. Every unresolved bin is replaced by all 32 closed children, so there is no boundary or torus seam omission.

All computations use radians. In particular, if

`q_ji=exp(i u_j) conj(F6_ji)/sqrt(6)`, `S_i=sum_j q_ji`,

then unbiasedness to H is `|sum_j q_ji exp(i(x_j-delta_ji))|=1`. The residual is `c_i=(|S_i|^2-1)/2`. This normalization explains both the 1/2 in the residual and the 1/2 in second-order remainders.

The exact Fourier index used in the trigonometric table is

`(phase_j-(M/3)ji) mod (2M)`.

The table angle is that integer times pi/M, so the subtracted angle is precisely the Fourier conjugate phase `pi ji/3`. Each M in the traversal is a multiple of 3.

## 4. Rejection inequalities, including weighted remainders

The full implementation was checked against the following derivation.

Set `J_ij=-Im(conj(S_i) q_ji)`. For a real support vector y, the first-order vector contribution is bounded by

`a sum_(j>0)|sum_i y_i J_ij|`.

The tangent contribution is the norm of the projection onto T of the matrix with entries `y_i J_ij`, multiplied by rho. The implemented Gram-inverse formula is exactly this projection norm. The normal contribution is at most

`n sqrt(sum_(i,j) y_i^2 J_ij^2)`, with `n=147/8000`.

No correctness assumption on the numerical method that proposed y is needed: the replay uses the stored rational vector `y_i=integer_i/2^20` and verifies the inequality directly.

For clarity, write `s_i=y_i S_i`, `r=21/200`, and

`G_y=max_j |sum_i y_i conj(S_i) q_ji|`.

The remainder used by the verifier is one half of

`min(max|y|(X+rho)^2, sum|y|(X+r)^2)`

`+ min(G_y X^2, ||s||_2 (3a/2) X)`

`+ (2X/sqrt(6)) min(||s||_2 rho, ||s||_1 r)`

`+ (1/sqrt(6)) min(||s||_infinity rho^2, ||s||_1 r^2)`.

Every term has an independent bound:

1. The squared first increment gives the first line. Globally its norm is at most X+rho: split the increment into a vector-phase change through the unitary H/sqrt(6) and a Hadamard-phase change bounded by the Frobenius norm. Columnwise its size is at most X+r.
2. The pure-vector exponential remainder gives the second line. The coefficient maximum yields `G_y X^2/2`. Alternatively, Fourier unitarity gives coefficient Euclidean norm `||s||_2`, and `||x^2||_2<=(3a/2)X`.
3. The product `(exp(i x)-1)(exp(-i delta)-1)` gives the third line after the outer 1/2. Cauchy-Schwarz supplies either the global Frobenius bound or the sum of column bounds.
4. The pure-Hadamard exponential remainder gives the fourth line, using `|exp(i t)-1-i t|<=t^2/2` and either the total squared Frobenius norm or six separate column bounds.

These arguments also validate the simpler direct and single-component tests. The strict inequality checked at every rejected bin is a necessary-condition violation for every point of that closed bin and every admissible Hadamard increment. Rounding uncertainty is included on the safe side.

## 5. Quantized-label to exact-center bridge

The cover labels have phase indices with denominator `D=12288` cycles. For a bin midpoint, the verifier chooses an integer componentwise wrap of its difference from the label center. Let d be this six-vector of integer differences. It computes the centered norm exactly through

`||P d||^2=sum_j d_j^2-(sum_j d_j)^2/6`,

and converts to radians by `2 pi/D`. The wrap is simply a valid phase lift. It need not minimize the projective distance.

A bin is covered only when

`centered_midpoint_distance+X <399/1000`

for labels 0 through 11, or when the same quantity is less than `299/1000` for labels 12 through 47. If xi is any displacement within the bin, the centered phase difference to that label is `P d+P xi`, with the appropriate radians factor. The triangle inequality therefore covers the entire closed bin.

Independently, the exact graph verifier generates 48 algebraic centers and proves that each listed quantized center has circular per-entry phase error less than `1/3000` radians, with its initial phase error zero. Centering cannot increase norm, so the mean-free error is less than

`sqrt(5)/3000<1/1000`.

The chord-to-angle step is sound: the verifier proves each chord is less than `a-a^3/24`, where `a=1/3000`, and `a-a^3/24<=2 sin(a/2)`. On principal circular distance in `[0,pi]`, the chord is monotone. Thus the claimed angular bound follows without a branch assumption.

Consequently every covered ray lies in the exact algebraic-center ball of radius 2/5 for labels 0 through 11 or 3/10 for labels 12 through 47. This bridge is uniform and includes all phase windings.

The quantized-center file in the cover and graph components has identical SHA-256:

`290f650c32281be105cea9b1a6f0680c604a68473f54171da7a5cc5523077eba`.

No theorem classifying all Fourier-unbiased vectors is assumed. The exact centers are algebraic witnesses; the complete torus cover supplies completeness for every H in the requested neighbourhood.

## 6. Six distinct labels and the finite obstruction

Let r_i be 2/5 for the first 12 labels and 3/10 for the remaining labels. For normalized flat vectors in two balls with exact unit-entry centers c_i,c_j and centered phase errors e,f,

`|<v,w>-lambda <c_i/sqrt(6),c_j/sqrt(6)>|`

`<= (1/6) sum_k |exp(i(e_k-f_k))-1|`

`<=||e-f||/sqrt(6)<=(r_i+r_j)/sqrt(6)`,

where lambda is an irrelevant scalar phase.

Two orthogonal vectors cannot have the same label: their common center has unnormalized self-overlap 6, whereas its change is at most `2sqrt(6)r_i<6`. Equivalently, `36>24 r_i^2`, which the code checks. Thus all six columns of an actual orthonormal basis receive distinct labels.

For distinct labels, actual orthogonality requires

`|sum_k conj(c_i,k)c_j,k|^2 <=6(r_i+r_j)^2`.

The exact graph includes every such pair. Every squared-overlap interval lies strictly on one side of its rational threshold, so no equality or unresolved interval is discarded. Exhaustive ordered-vertex recursion finds exactly 16 six-cliques. It checks that every such clique is an exact center orthobasis and, crucially, that for each clique A and every label b there is an i in A with exact center overlap zero.

Now take an actual orthonormal basis with clique A and any further covered ray with label b. Choose its zero-overlap witness i. Then

`|<K_i,v>| <=(r_i+r_b)/sqrt(6)<=4/(5sqrt(6))`.

Squaring gives `|<K_i,v>|^2<=8/75`, and exact subtraction gives `1/6-8/75=3/50`.

The extra ray does not need a seventh distinct label for this proof. The witness assertion is checked for every b, including labels already present in the clique. This avoids any unnecessary distinctness hypothesis.

For a putative fourth basis L, apply this result to any column v of L. Mutual unbiasedness of K and L would require all six probabilities to equal 1/6, contradicting the displayed bound.

## 7. Gauge, permutations, and the closed quotient ball

The metric in W is

`d([H],[F6])=min{||delta||_F: delta horizontal, H equivalent to F6 o exp(i delta)}`,

where equivalence permits unitary diagonal factors and row/column permutations, and all phase windings are included.

The minimum is attained. One may start with a bounded minimizing sequence of horizontal delta's, take a convergent subsequence in finite-dimensional space, and use that a monomial equivalence orbit is compact and therefore closed. Hence `d<=3/20` supplies a horizontal lift with `||delta||<=3/20`, including equality.

If `H'=A H B` with monomial unitaries A,B, transform the partner vectors by A. The standard basis is unchanged as a set up to phases and permutation; B merely phases and permutes the columns of H. All unbiasedness conditions and all partner-vector overlap probabilities are preserved. Therefore the quantitative obstruction for the aligned representative transfers to the original H.

If a broader equivalence convention includes conjugation or transpose, the conclusion also persists. Complex conjugation preserves all absolute inner products; adjoint follows by applying the common unitary `(H/sqrt(6))*` and swapping the first two bases. Their composition covers transpose. W's stated metric needs only the monomial case.

All analytic conditions use non-strict upper bounds on the phase ball. Rejected bins require strict violations, and covered bins have strict slack. Thus the resulting theorem concerns the entire closed ball, not only its interior.

## 8. Exact arithmetic and certificate traversal

The interval verifier stores endpoints as integers divided by `2^48`. Addition is exact at this scale; multiplication and division use floor for lower endpoints and ceiling for upper endpoints. Products inspect all four endpoint combinations. Division checks positive denominators. Absolute values and squares handle intervals crossing zero. Square roots use integer square roots, with a one-unit adjustment whenever the upper endpoint is not exact. The min/max combinations use endpoint formulas that enclose the true min/max even when their inputs are dependent.

Machin's formula and alternating rational arctangent bounds enclose pi. Sine and cosine are enclosed by interval-evaluated Taylor polynomials through degree 71 and a rigorous remainder smaller than one interval quantum. The exact assertion `PIHI^72/72!<2^-48` justifies the added quantum. No floating-point number determines a rejection, label assignment, or graph edge.

The cover starts from all `12^5=248832` bins. A byte for each current bin must declare a verified rejection, a verified cover, or subdivision. Every subdivision produces all 32 children in a fixed order. Each level checks the number of input bins, code bytes, and support-vector records. The final assertion requires no unfinished bin. The manifest provides bookkeeping; it cannot bypass any individual arithmetic decision.

The graph verifier uses exact arithmetic in `Q[b,i]`, where `b^4=3/4` and b is positive. The polynomial `4X^4-3` is irreducible by Eisenstein at 3. The positive embedding is isolated by integer fourth roots; all nonzero graph comparisons are enclosed rationally. Exact zeros are checked algebraically.

## 9. Relation to primary literature

The finite proof above is independent of the historical computations. Relevant primary background is:

- Jaming, Matolcsi, Móra, Szöllősi and Weiner, *A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6*, Theorem 1.4: no quartet containing the two-parameter Fourier family. This establishes no numerical off-family radius. <https://arxiv.org/abs/0902.0882> and <https://arxiv.org/html/0902.0882v2>.
- Grassl, *On SIC-POVMs and MUBs in Dimension 6*, Theorem 2 and the appendix: the exact Fourier vectors and their 16 basis configurations, with the no-extra-ray property. <https://arxiv.org/pdf/quant-ph/0406175>.
- Bengtsson et al., *Mutually unbiased bases and Hadamard matrices of order six*, equations (9)–(10) and Section 6: explicit Björck sequence and Fourier-ray structure. <https://arxiv.org/pdf/quant-ph/0610161>.

The new radius 3/20 and overlap deficit 3/50 come from the audited certificate, not from a quantitative claim attributed to these papers.

## Final replay record

All three independent replays passed. The complete cover count is:

| Resolution | Checked | Covered | Rejected | Subdivided |
|---:|---:|---:|---:|---:|
| 12 | 248,832 | 0 | 238,680 | 10,152 |
| 24 | 324,864 | 0 | 316,620 | 8,244 |
| 48 | 263,808 | 4,848 | 246,624 | 12,336 |
| 96 | 394,752 | 197,484 | 197,268 | 0 |

The last row leaves no open bin. The graph replay returned exactly 390 edges, 16 six-cliques, and 768 exact zero-overlap witnesses. The final audit receipt, including SHA-256 values of the replayed scripts and every cover input, is `certificates/independent_audit.json`.

No mathematical gap was found in the audited argument. This is a computer-assisted proof with an exact standard-library replay and an audited analytic assembly; it is not claimed to be a completed Lean formalization.

## Packaging note

The workspace paths above identify the component sources reviewed before packaging. The deliverable places them under `scripts/` and uses one shared `data/quantized48.json`. Packaging changes are limited to these relative paths, receipt destinations, an explicit rejection of disabled assertions, and an additional check of the declared cover radii. The numerical and algebraic verification algorithms and certificate data are unchanged. The final package is replayed separately by `scripts/verify_all.py`; its receipts are in `certificates/`. The source hashes in `independent_audit.json` intentionally describe the audited pre-packaging files, while `MANIFEST.json` describes the delivered files.

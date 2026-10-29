<!-- The collaborator's report of 29 October 2026, verbatim (returned as handoffs/TC_phantom_dual_20261029/REPORT.md). Its paths refer to that return; the checker is code/anchored_column_certificate.py. -->

# Excluding a phantom pattern using two narrow columns

29 October 2026

**PROVED, conditional only on the supplied phase-ball coverage:** pattern 0 of
`b678_l5.json.gz`, sub-cell 12319, contains no third basis throughout its full
recorded H cell and its original column phase balls. A single wide column,
required to be unbiased to H and orthogonal to the two narrow columns, gives
a contradiction. Three different wide columns independently give certificates.

The checker can rebuild H's normal form from the seed record. It also recomputes
the narrow-column tubes from their original phase radii; it does not trust the
snapshot's stored T or epsilon. The remaining inherited input is the upstream
claim that these phase balls cover this pattern. The snapshot's complete torus
cover is not reconstructed here.

**This excludes one pattern in one sub-cell. It does not close seed ball 678,
or even this sub-cell if it has other patterns.** No original domain was
replaced by an assumed smaller domain. All small radii below are proved
necessary locations of hypothetical zeros. Neither H nor K is subdivided.

## Result and cost

The source is
`../TC_phantoms/snapshots/b678_l5_s12319_p0.json`, SHA-256
`24e08b7cd1499856a5e2549d82ce750ea15415be1df0aa4fd06049368848df62`.
Its record SHA-256 is
`23ae2d86d1fbfa640fec19b6b4726ad555969cc631c3a90b3c51f47aaf5699ea`.

H retains its native four coordinates and recorded radius
`0x1.9999999999b22p-8`, approximately 0.00625000000000034035.
The H remainder parameter is about 8.302638054e-8. The six phase radii are:

| Column index | Colour | Original phase radius |
|---|---:|---:|
| 0 | 0 | 0.4748991328577211 |
| 1 | 3 | 0.01729155367343554 |
| 2 | 21 | 0.5558699033605987 |
| 3 | 28 | 0.4600186880291793 |
| 4 | 30 | 0.01725850835660946 |
| 5 | 48 | 0.5450765737199036 |

Columns 1 and 4 are the anchors. Each of the following is independently
sufficient to exclude the whole six-column pattern:

| Wide column | Verified positive transverse margin, rounded down | Result |
|---|---:|---|
| 0 | 0.0049190 | EXCLUDED |
| 3 | 0.0048938 | EXCLUDED |
| 5 | 0.0058708 | EXCLUDED |
| 2 | — | First capture target not established |

One check, including the fresh H normal form and both anchor contractions,
took about 0.16 seconds on this laptop. The 160-bit Arb core is small: only
5-by-5 positive-definiteness tests, 21 grouped phase terms, and 102 separated
parameter terms. Proposal fitting is a bounded five-variable least-squares
problem starting at the supplied column centre. **The full 30-variable K fit
is not needed.** No Rusty access, parallel computation, or bin enumeration was
used. Runtime is a measurement on this instance, not a worst-case guarantee.

## The ten equations for one column

Use unnormalized unit-modulus columns. Let the two anchor columns be
`a_1(w,e_1)` and `a_2(w,e_2)`. Let k be the wide column. Define the real
ten-vector

\[
 F(k;H,a_1,a_2)=
 \bigl(\Re(a_1^*k),\Re(a_2^*k),
       \Im(a_1^*k),\Im(a_2^*k),
       (|H_j^*k|^2-6)/6\ (j=0,\ldots,5)\bigr).
\]

Every third basis in this pattern makes F zero for each wide column.
It is therefore enough to exclude a zero of F for one wide column. This does
not assume any orthogonality relations among the other three wide columns.

Write its phase vector as `v0 + E x`, where E is the exact 6-by-5 Helmert basis
of the mean-zero subspace. Removing a common phase cannot increase the
distance to v0 and preserves the zero conditions, so these coordinates cover
the whole original phase ball. E is orthonormal by its explicit algebraic
formula; floating-point QR is not part of the checker.

**NUMERICAL diagnostic:** at the ten-equation least-squares proposals, the
smallest singular value is about 1.71, compared with about 0.22 for the supplied
30-variable fit. The residuals for columns 0, 2, 3, 5 are respectively about
0.02098, 0.02335, 0.02188, 0.02253. These numbers motivate the construction but
are not acceptance tests.

## The global capture theorem

Fix any real 5-by-10 matrix P and a proposed phase point x*. No exact inverse
or exact stationary point is required. For fixed admissible H and anchor
parameters, suppose on a convex domain D containing x* that

\[
 \operatorname{sym}\bigl(PD_xF(x)\bigr)\succeq mI,
 \qquad m>0,\qquad
 \|PF(x^*)\|\le N.
\]

If x in D is a zero, integrate the derivative along the segment from x* to x:

\[
 m\|x-x^*\|^2
 \le (x-x^*)^T(PF(x)-PF(x^*))
 \le \|x-x^*\|N.
\]

Thus every zero in D lies in `||x-x*|| <= N/m`. This is a global necessary-zero
bound, not an existence theorem and not a local Newton convergence claim.
It can be repeated on the resulting ball, still uniformly over all H and
anchor parameters.

For column 0, x* lies about 0.22419819 from its original centre, strictly
inside the original radius 0.47489914. The verified numerator is below
0.023337. The successive estimates, rounded conservatively, are:

| Domain being checked | Monotonicity lower bound | Forced distance to x* | Next domain |
|---|---:|---:|---:|
| Entire original phase ball | > 0.2519 | < 0.093 | radius 0.3 about x* |
| Radius 0.3 about x* | > 0.6026 | < 0.039 | radius 0.1 about x* |
| Radius 0.1 about x* | > 0.8331 | < 0.0281 | radius 0.03 about x* |

The initial segment stays in the original ball because both endpoints lie in
that convex ball. Subsequent domains are also convex and contain x*.

## Certifying monotonicity without independent phase intervals

At fixed reference H and anchor centres, the residual has the exact form

\[
 F(x_c+d)=2\Re\sum_\nu z_\nu e^{i\ell_\nu^Td}.
\]

There are six single-row terms from the anchor inner products, each grouping
both anchors, and fifteen row-pair terms grouping all six mixed equations.
The frequencies are rows of E or differences of two rows of E. Define

\[
 A_\nu=\operatorname{sym}(-2\Im(Pz_\nu)\ell_\nu^T),\quad
 B_\nu=\operatorname{sym}(-2\Re(Pz_\nu)\ell_\nu^T).
\]

The symmetric derivative is
`sum A_nu cos(ell_nu.d) + B_nu sin(ell_nu.d)`.
Set `S0=sum A_nu` and `L_j=sum B_nu ell_nu,j`.
For `||d||<=R`, operator Cauchy–Schwarz gives

\[
 \Bigl\|\sum_j d_jL_j\Bigr\|
 \le R\sqrt{\lambda_{\max}\Bigl(\sum_jL_j^2\Bigr)}=q.
\]

This retains the shared linear phase dependence. Giving every trigonometric
term an independent interval loses too much and failed on this instance.

For any vectors u,b and any positive scalar a,

\[
 D=\tfrac12(auu^T+a^{-1}bb^T),\quad
 S=\operatorname{sym}(ub^T),\quad D\pm S\succeq0.
\]

These inequalities follow directly by completing squares. The floating-point
choice of a only affects sharpness; any positive a is valid. Apply this to
each A and B to obtain D_A and D_B. With
`alpha_nu=||ell_nu|| R < pi`, a rigorous lower matrix is

\[
 S_0-qI-
 \sum_\nu\left[
 (1-\cos\alpha_\nu)\frac{D_{A,\nu}+A_\nu}{2}
 +(\alpha_\nu-\sin\alpha_\nu)D_{B,\nu}\right].
\]

Indeed `(D_A+A)/2` dominates both A and zero. This bounds the negative cosine
remainder; D_B bounds the odd sine remainder. Arb LDL factorizations certify
the spectral upper bound defining q and the final positive lower matrix.
Floating-point eigenvalues only propose rational shifts; they cannot accept
a proof.

## Keeping the common H motion

H has the original enclosure

\[
 Q=Q_0+Uw+\tfrac12H_2(w\otimes w)+X\xi,
 \quad\|w\|\le r,\quad\|\xi\|\le\tau.
\]

For each anchor the existing conditional column contraction is recomputed
from its phase ball, giving

\[
 V_t=v_{0,t}+T_tw+e_t,\quad\|e_t\|\le\epsilon_t.
\]

The verified epsilons are about 0.000976509 and 0.000971148. Reconstructing
each anchor centre from binary proposals changes it by less than 1.3e-16;
that distance is added to its input phase radius before contraction. These
are conditional zero enclosures, so no anchor existence or uniqueness
assertion is needed.

For a separated residual term, write its parameter phase change as
`delta = g.w + h`, with `|h|<=e` and `|delta|<=b=||g||r+e`.
For an anchor term, g is a negative row of T and `e=epsilon`.
For a mixed term, g is the corresponding difference of U rows, and

\[
 e\le \tfrac12\|H_{2,bj}-H_{2,aj}\|r^2
       +\|X_{bj}-X_{aj}\|\tau.
\]

For any fixed real multiplier matrix L,

\[
 LF(x^*,p)-LF(x^*,0)=D_Lw+\mathcal R_L,
 \qquad D_L=\sum_\nu-2\Im(Lz_\nu)g_\nu^T.
\]

The i-th component of the remainder is bounded in absolute value by

\[
 b_{L,i}=\sum_\nu2|(Lz_\nu)_i|(e_\nu+b_\nu^2/2).
\]

Therefore the forcing bound is `||D_L|| r + ||b_L||`. Crucially, D_L is summed
before taking its norm: the same four-coordinate w moves H and both anchors.
The arbitrary normal error and anchor errors remain fully included.

The parameter change in the x derivative is uniformly bounded by

\[
 \eta_L=\sum_\nu2\|Lz_\nu\|\|\ell_\nu\|b_\nu.
\]

Subtract `eta_P I` in the monotonicity bound. At x*, add the verified
`||PF(x*,0)||` to the forcing bound to obtain N. All nonzero numerical inverse
defects and stationary-point errors are retained.

## The final transverse contradiction

Take any real row multiplier lambda. The proposal uses the normalized
reference residual, but the proof only uses its actual computed value and
derivatives. On the proved radius R about x*,

\[
 \lambda F(x,p)\ge
 \lambda F(x^*,0)-b_\lambda
 -(\|\lambda D_xF(x^*,0)\|+\eta_\lambda)R
 -\tfrac12 M_\lambda R^2,
\]

where `b_lambda=||D_lambda||r+||b_lambda,row||` is the parameter forcing and

\[
 M_\lambda=\sum_\nu2|\lambda z_\nu|\|\ell_\nu\|^2
\]

bounds the reference scalar Hessian globally. For column 0 and R=0.03,
the reference value is about 0.02098277; the parameter forcing is below
0.0098350, the parameter derivative drift is below 0.061714, and the scalar
curvature is below 9.727384. The actual reference gradient error is included.
The resulting interval has lower endpoint above **0.0049190**. At a zero,
lambda F would be zero. This contradiction proves the exclusion.

## Validation and deployment

The acceptance path is `anchored_column_certificate.py`; the saved proposals
contain expansion coordinates, P, lambda, and capture targets as exact binary
or rational inputs. Every receipt binds the source snapshot, original record,
checker source, and inherited proof dependencies by SHA-256.

Run the record-rebuilding certificate from the repository root:

```sh
/tmp/tc_r0153_env/bin/python \
  handoffs/TC_phantom_dual_20261029/anchored_column_certificate.py \
  handoffs/TC_phantoms/snapshots/b678_l5_s12319_p0.json \
  --proposal handoffs/TC_phantom_dual_20261029/b678_l5_s12319_p0_c0.proposal.json \
  --rebuild-model --out /tmp/phantom-replay.json
```

Omit `--proposal` to discover a new five-variable proposal. Omit
`--rebuild-model` when consuming the already certified H model: the anchor
tubes are still recomputed. `--column` and `--anchors` select the desired
indices. Failure returns `NOT_ESTABLISHED` and a nonzero process exit code.
The checker does not modify the atlas's audited closure count.

`check_anchored_column.py` passes the following independent checks:

- The grouped Fourier equations agree with direct complex matrix arithmetic;
  their Jacobian agrees with finite differences.
- Direct shared-H and anchor-motion evaluations fit the proved forcing bound.
- Zero or reversed transverse multipliers, a reversed preconditioner, an
  unsupported capture target, and a wrong input binding are rejected.
- A genuine exact tensor-product MUB triple inside the supplied test phase
  balls cannot be certified empty. This is a negative control for the whole
  acceptance path, not just individual formulas.
- The positive proof replays at 160 and 256 bits, including rebuilding the H
  normal form from its original record.

Sampling in the diagnostic tests is not part of the proof. The Arb bounds and
their algebraic derivation above are the certificate.

For atlas integration, this is a pattern-level exclusion after the complete
native column cover has produced its phase balls. Prefer two small-radius
columns, try a wide column, and accept only a completed certificate. A live
adapter can pass the existing certified model and phase balls; no fitted
third basis or phase-bin refinement is required. This handoff supplies a
snapshot CLI, not a modification to the frozen certifier or tree auditor.

## Limits and the remaining obstruction

**NOT ESTABLISHED:** applying the same test with the two narrowest available
columns to `b1016_l4_s2665_p0.json` and `b1217_l5_s4434_p0.json` fails the global
monotonicity bound. Those patterns have six wide columns; their smallest
radii are about 0.253 and 0.275. The current successful argument relies on
two genuinely narrow anchor tubes. `transfer_checks.json` records the failed
attempts. They are not exclusion results.

The next structural problem is to obtain a small joint anchor enclosure when
no individual column is narrow, or to prove a corresponding joint capture
theorem. It would be unjustified to infer that the present method handles
all remaining balls from the success on 678.

**NUMERICAL earlier diagnostics:** the row-Gram scalar-separation and complex
chord semidefinite relaxations tried in this directory did not produce valid
witnesses. They are retained as failed proposals. The joint coherent
derivative bound gave positive margins for 24 or 21 selected directions but
not 28; no completeness certificate was obtained from that route. None of
these diagnostic files is an acceptance path.

The supplied full-K fit also leaves both original narrow phase balls: its
column displacements are about 0.04236 and 0.04211 against radii about 0.01729.
This is why fitting the unconstrained joint equations is not itself a test
inside the pattern. The new proof uses the original constraints throughout.

## The proposed least-squares inequality in the brief

**PROVED with the stationary-point correction:** with `rho=||F*||`,
`sigma=sigma_min(J*)`, `g=||J*^T F*||`, `t=||d||`, and remainder bound R(t),

\[
 \|F(x^*+d)\|\ge
 \sqrt{\max(0,\rho^2+\sigma^2t^2-2gt)}-R(t).
\]

An H-motion bound must also be included when the system moves. A positive
residual threshold such as 0.024 is not by itself a uniform certificate;
curvature, geometry and H sensitivity matter. The current proof overcomes
that difficulty by using the two narrow columns to capture a single wide
column globally, and only then applying the transverse residual bound.

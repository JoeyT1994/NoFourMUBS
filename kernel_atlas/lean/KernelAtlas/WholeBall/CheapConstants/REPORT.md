# ZK: cheap centre constants for the whole-ball theorem

**CERTIFIED.** An independent 224-bit Arb replay certifies the whole-ball
contraction and both orientation signs for **2,158 of 2,350 balls** in the
handoff ZIP. **1,773** certified bounds fit the supplied budgets: **75.45% of
all balls**, **79.22% of the 2,238 balls with a budget**, and **87.73% of the
2,021 balls whose supplied original Z bound fits a budget**. The method uses
six-term row-pair Gram contractions and four retained output directions for
the cubic and mixed constants. It constructs none of the five full
21-output derivative tensors.

**PROVED.** Sections 3–5 give the inequalities used by the replay, including
the low-rank matrix majorant. “PROVED” here means a mathematical proof below;
these new inequalities have **not** been formalized in Lean. “CERTIFIED”
means outward interval arithmetic with explicit strict comparisons, not a
Lean kernel receipt. “NUMERICAL” denotes the floating-point sensitivity
experiment. “NOT ESTABLISHED” denotes a failed sufficient test or an
unmeasured claim, never a mathematical exclusion of a ball.

**CERTIFIED, with external budget inputs.** A two-tier policy uses the
cheapest row-pair method for 1,287 balls, and the four-direction refinement
for another 486. The remaining 248 of the original 2,021 budget-fitting
balls are full-tensor fallback candidates. Their original Z receipts are
provided inputs, not newly replayed interval certificates in this work.
There are another 329 balls with no verified budget fit under either these
methods or the supplied Z bound. In particular, fallback alone does not
resolve every input.

## 1. Scope, inputs, and reproduction

**CERTIFIED provenance.** Only the four data files in
`explorations/handoffs/ZK_cheap_z_constants.zip` are consumed:
`seed_balls.json.gz`, `wholeball_basis.json`, `wholeball_n.jsonl`, and
`stagec_n_budget.jsonl`. The attached Python sources were read, never
imported or executed. No MUB atlas or Stage C computation was used. The
Stage C budget is a supplied screen result; this work proves the numerical
comparison to that budget, not Stage C itself.

**CERTIFIED input audit.** There are 2,350 distinct seed indices, 2,238
non-null budgets, 109 records with no passing factor, and three missing
budget records (2347–2349). The supplied Z receipt has 2,290 successes and
60 failures. Input SHA-256 hashes, exact library versions, source hashes,
and result hashes are in the replay manifests. The numerical baseline
reproduces all 2,290 successes and the 60 contraction failures.

**NUMERICAL.** On the intersection with a budget and a successful original
Z receipt, the budget/Z ratio has percentiles 1.06361, 2.03373, and 4.21937
at 10%, 50%, and 90%. The baseline contribution `x*tau/n_record` has
percentiles 6.42%, 9.55%, and 15.11%. The correction is relatively small,
but an excessively large `c*r` can still destroy contraction.

The scripts are in `kernel_atlas/generators/`. From the repository root,
the measured environment can be reproduced with:

```sh
export PYTHONDONTWRITEBYTECODE=1
export OPENBLAS_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1 OMP_NUM_THREADS=1
uv run --no-project --with numpy==2.5.4 --with python-flint==0.9.0 --python 3.13 \
  python -B kernel_atlas/generators/wholeball_cheap_sensitivity.py
uv run --no-project --with numpy==2.5.4 --with python-flint==0.9.0 --python 3.13 \
  python -B kernel_atlas/generators/wholeball_cheap_arb.py --all --rank 0
uv run --no-project --with numpy==2.5.4 --with python-flint==0.9.0 --python 3.13 \
  python -B kernel_atlas/generators/wholeball_cheap_arb.py --all --rank 4
uv run --no-project --with numpy==2.5.4 --with python-flint==0.9.0 --python 3.13 \
  python -B kernel_atlas/generators/wholeball_cheap_regression.py
python3 -B kernel_atlas/generators/wholeball_cheap_report.py
```

Use `wholeball_cheap_arb.py --j 2299 --rank 4 --prec 320` for one ball.
`--archive` selects another archive with the same four data members;
`--out` selects the output directory. The observed Python version was
3.13.16. Gzip result files contain ordinary JSONL, with one record per ball.

Artifacts:

- `sensitivity.jsonl.gz`: constants and all one-at-a-time and combined
  numerical replacements for every ball.
- `sensitivity_summary.json`: complete numerical sensitivity statistics.
- `certified_rank0.jsonl.gz`, `certified_rank4.jsonl.gz`: interval results,
  centre tests, scalar witnesses, both orientation margins, and timings.
  Rank-four records also contain exact hexadecimal `L` and `lambda`.
- `certified_rank{0,4}_manifest.json`: precision, provenance, and hashes.
- `budget_fit.jsonl`: compact per-ball bounds, budgets, statuses, and
  recommended cheap/full-tensor-fallback choice.
- `results_summary.json`: audited aggregate counts and timing distributions.
- `regression.log`: regression receipt.

## 2. Sensitivity first

**NUMERICAL.** Each row replaces only the named constant, keeping the
other four at the signed-sum matrix spectral bound used by Z. “All”
replaces all five together. `L5`, `L3a`, `u`, `x`, `beta`, and record gaps
retain the same recipes in every experiment. The reported ratios compare
against the independently reconstructed numerical Z baseline, on balls
where both contractions succeed. Thus the percentiles are conditional on
success; the failure count must also be read. Orientation is not checked
in this numerical sensitivity sweep. The later Arb sweep checks it.

| Replacement | Median n/Z | 90th percentile | Contractions / 2350 | Budget fits / 2238 |
|---|---:|---:|---:|---:|
| Original signed-sum spectral baseline | 1.0000 | 1.0000 | 2290 | 2021 |
| Triangle t3 | 2.1948 | 2.4335 | 2114 | 1014 |
| Triangle t4 | 1.0519 | 1.0622 | 2281 | 1957 |
| Triangle a2 | 1.0324 | 1.0755 | 2160 | 1885 |
| Triangle c | — | — | 0 | 0 |
| Triangle d | 1.0052 | 1.0189 | 2067 | 1843 |
| Triangle all | — | — | 0 | 0 |
| Signed-sum Frobenius t3 | 1.0499 | 1.0672 | 2288 | 1972 |
| Signed-sum Frobenius t4 | 1.0016 | 1.0023 | 2290 | 2018 |
| Signed-sum Frobenius a2 | 1.0011 | 1.0019 | 2289 | 2020 |
| Signed-sum Frobenius c | 1.0199 | 1.0302 | 2279 | 1992 |
| Signed-sum Frobenius d | 1.0002 | 1.0009 | 2287 | 2020 |
| Signed-sum Frobenius all | 1.0827 | 1.1160 | 2253 | 1916 |
| Uniform t3 | 1.7746 | 2.0047 | 2061 | 1192 |
| Uniform t4 | 1.0759 | 1.1364 | 2235 | 1873 |
| Uniform a2 | 1.0081 | 1.0264 | 2199 | 1934 |
| Uniform c | 1.0670 | 1.1426 | 2009 | 1743 |
| Uniform d | 1.0001 | 1.0011 | 2280 | 2014 |
| Uniform all | 2.6788 | 3.6186 | 1373 | 565 |

**NUMERICAL.** The maximum relative baseline discrepancy from the supplied
Z `n_record` is `5.44845e-9`; the floating norms lack Z's deliberately
outward spectral slack. This agreement is a cross-check, not certification.
The signed-sum Frobenius alternative is comparatively sharp but still
requires computing the large signed tensors, so it does not by itself
solve the expensive kernel-product problem.

**NUMERICAL and CERTIFIED, as distinguished below.** Combined cheap methods:

| Method | Median n/Z | 90th percentile | Contractions | Budget fits |
|---|---:|---:|---:|---:|
| Row-pair/minimum, no retained directions | 1.4949 | 1.7755 | 1820 | 1287 |
| One retained direction for t3,c | 1.4348 | 1.6001 | 1901 | 1417 |
| Two retained directions for t3,c | 1.3341 | 1.5099 | 2025 | 1542 |
| Four retained directions for t3,c | 1.1640 | 1.2433 | 2158 | 1773 |

The first and last rows have full 224-bit Arb replays of all 2,350 inputs;
their successful contractions also pass both orientation tests, and their
fit counts are **CERTIFIED**. The one- and two-direction rows are
**NUMERICAL**; the Arb script supports them, but full sweeps were not run.
Ratios in this table are numerical; interval ratios are also saved in
`results_summary.json`.

## 3. Basic cheap bounds

Use Z's definitions of `W,U,H2,X`, its 90 frequencies, and
`s_a=nu_a U`, `T_a=nu_a H2`, `d_a=nu_a X`. Let

\[
S_a=\|s_a\|_2,\quad t_a\ge\|T_a\|_2,\quad D_a=\|d_a\|_2,
\quad C_a\ge\|[\Re\kappa_a,-\Im\kappa_a]\|_2.
\]

**PROVED, termwise theorem.** The following bounds are valid:

\[
\begin{aligned}
t_3&=\sum_a C_a(S_a^3+3t_aS_a),\\
t_4&=\sum_a C_a(S_a^4+6t_aS_a^2+3t_a^2),\\
a_2&=\sum_a C_aD_a(t_a+S_a^2),\\
c&=\sum_a C_aS_aD_a,\qquad d=\sum_a C_aD_a^2.
\end{aligned}
\]

Proof: differentiate the scalar exponential in Z(3), apply the triangle
inequality to the 3, 6, and 3 pair placements, and use the operator norms
of each multilinear factor. Apply the same argument to Z(5) and to the
two Hessian contractions. Multiplication by a unit phase is a real
two-dimensional orthogonal transformation, so `C_a` is the norm of the
same `21 x 2` matrix `W[:,(p,p+15)]` for all six terms of pair `p`.
Only fifteen such norm computations are needed. ∎

**PROVED, uniform derivative theorem.** For every phase array and `k>=2`,

\[
\|D^k\Phi(q)\|\le B_k:=\sqrt{6\,2^{k-1}}.
\]

Proof: for input phase array `A`, put `d_A(i,j)=||A_i-A_j||_2`.
Then `max d_A^2 <= 2||A||^2` and
`sum_{i<j} d_A^2 <= 6||A||^2`, so
`sum d_A^(2k) <= 6*2^(k-1)||A||^(2k)`. For each row pair,
Hölder in the six column entries bounds the absolute differentiated
exponential sum by the product of the `k` row-difference norms
(`ell_k <= ell_2`). Hölder over row pairs bounds the squared output norm
by the product of the `k` corresponding `2k`-power sums, each raised to
`1/k`. Taking square roots proves the claim, with real and imaginary
parts counted together. ∎

**PROVED, uniform centre corollary.** Write
`L2=2 sqrt(3)||W||`, `L3=2 sqrt(6)||W||`, `L4=4 sqrt(3)||W||`,
and take bounds `u,x,beta` on `U,X,H2`. The following are valid:

\[
\begin{aligned}
t_3&=L_3u^3+3L_2\beta u,\\
t_4&=L_4u^4+6L_3\beta u^2+3L_2\beta^2,\\
a_2&=(L_3u^2+L_2\beta)x,\\
c&=L_2ux,\qquad d=L_2x^2.
\end{aligned}
\]

Proof: the quadratic predictor has first derivative `U`, second derivative
`H2`, and no higher derivatives at zero. The chain rule gives precisely
the displayed partitions. For `A(w)=W D Phi(q_p(w)) X`, the two terms
are `W D^3 Phi[U,U,X]` and `W D^2 Phi[H2,X]`. ∎

**PROVED.** These are the “uniform” replacements in the sensitivity table.
They extend Z(2) by its identical row-pair argument to the fourth
derivative. Z(4) and Z(6), namely `L5` and `L3a`, are retained, with
`a_a=S_a+r*t_a`; they are inexpensive and require no signed tensor sums.

## 4. Six-term Gram bounds preserving column cancellation

**PROVED, Gram contraction identities.** For a term let the complex scalar
derivative tensor be `R+iI`, with these real tensors:

| Constant | R | I |
|---|---|---|
| t3 | `-Sym3(T tensor s)` | `-s^3` |
| t4 | `s^4-Sym3(T tensor T)` | `-Sym6(T tensor s tensor s)` |
| a2 | `-T tensor d` | `-s tensor s tensor d` |
| c | `-s tensor d` | `0` |
| d | `-d tensor d` | `0` |

All tensor inner products below are Frobenius. For two terms use the names
`(v,A,d)` and `(w,B,e)`, with symmetric `A,B`, and define

\[
\alpha=v^Tw,\quad \delta=d^Te,\quad f=\operatorname{tr}(A^TB),
\quad a=w^TAw,\quad b=v^TBv,\quad h=(Aw)^T(Bv).
\]

Let `RR=<R_a,R_b>`, `II=<I_a,I_b>`, `RI=<R_a,I_b>`,
and `IR=<I_a,R_b>`. Then:

| Constant | RR | II | RI | IR |
|---|---|---|---|---|
| t3 | `3 f alpha + 6 h` | `alpha^3` | `3 a alpha` | `3 b alpha` |
| t4 | `alpha^4-3a^2-3b^2+3f^2+6 tr(ABAB)` | `6f alpha^2+24 alpha h+6ab` | `-6b alpha^2+6fa+12(Aw)^T B(Aw)` | `-6a alpha^2+6fb+12(Bv)^T A(Bv)` |
| a2 | `f delta` | `alpha^2 delta` | `a delta` | `b delta` |
| c | `alpha delta` | `0` | `0` | `0` |
| d | `delta^2` | `0` | `0` | `0` |

Proof: expand the symmetrizations and contract each repeated input index.
For the cubic `Sym3` product, three same-position terms give `f*alpha`
and six different-position terms give `h`. For the quartic `Sym3(T,T)`
product, three matching pairings give `f^2`, and six crossed pairings
give `tr(ABAB)`. In the `Sym6(T,s,s)` product the 36 choices split into
six equal pair positions, 24 positions sharing one index, and six
disjoint positions, giving `6f alpha^2`, `24 alpha h`, and `6ab`.
Contracting `Sym3(A,A)` against `Sym6(B,w,w)` gives six terms
`f*a` and twelve terms `(Aw)^T B(Aw)`. The remaining pure powers
and the last three rows contract directly. This accounts for every term
and its multiplicity. ∎

**PROVED, pair covariance theorem.** For each row pair `p` sum its six
complex tensors before taking a norm:

\[
F_p=\sum_{a\in p}z_a(R_a+iI_a),\qquad
Q_p=\begin{pmatrix}
\|\Re F_p\|_F^2&\langle\Re F_p,\Im F_p\rangle\\
\langle\Re F_p,\Im F_p\rangle&\|\Im F_p\|_F^2
\end{pmatrix}.
\]

`Q_p` needs only 36 evaluations of the preceding small Gram formulas.
Explicitly, for `z_a=x+iy`, `z_b=u+iv`, their contributions to its
three entries are

\[
\begin{aligned}
Q_{00}:&\ xu\,RR+yv\,II-xv\,RI-yu\,IR,\\
Q_{01}:&\ xv\,RR-yu\,II+xu\,RI-yv\,IR,\\
Q_{11}:&\ yv\,RR+xu\,II+yu\,RI+xv\,IR.
\end{aligned}
\]

Let `W_p=W[:,(p,p+15)]`. Each of the following bounds the corresponding
projected derivative tensor's multilinear norm:

\[
\boxed{\|W\|_2\sqrt{\sum_p\operatorname{tr}Q_p}},\qquad
\boxed{\sum_p\sqrt{\operatorname{tr}(W_p^TW_pQ_p)}}.
\]

Proof: stack the real and imaginary residual tensors into a matrix `F`
with 30 rows. Its Frobenius norm squared is `sum trace Q_p`.
The first bound follows from `||WF||_F <= ||W||_2||F||_F`.
For the second, apply the triangle inequality to
`WF=sum_p W_p [Re F_p; Im F_p]`; the squared Frobenius norm of each
summand is the stated trace. A multilinear operator norm is bounded by
the Frobenius norm of its flattening. ∎

**PROVED.** The rank-zero method takes the minimum of these two bounds
and both bounds from section 3, independently for each constant. All
are upper bounds on the same multilinear norm, so taking their minimum
is sound. With six terms per pair fixed, the work is
`15*6^2` small contractions, linear in the number of terms up to the
fixed factor six. The largest non-scalar objects inside the Gram
formulas are `4 x 4` matrices and 21-component vectors. No cross-pair
`90 x 90` Gram matrix is evaluated.

## 5. Four retained directions

**PROVED, low-rank majorant theorem.** Let `L` be any real `k x 30`
matrix and `lambda >= 0` satisfy

\[
W^TW\preceq\lambda I_{30}+L^TL.
\]

For each residual tensor matrix `F` from section 4,

\[
\boxed{\|WF\|_{\rm multilinear}\le
\sqrt{\lambda\sum_p\operatorname{tr}Q_p+\|LF\|_F^2}}.
\]

Proof: apply the matrix inequality to each column of `F` and sum. This
bounds `||WF||_F^2`; the multilinear norm is no larger. No orthogonality
of `L` is required. ∎

**CERTIFIED construction.** A midpoint SVD proposes
`L_i=sqrt(sigma_i^2-sigma_(k+1)^2) v_i^T` for `i<=k` and a slightly
larger `lambda` than `sigma_(k+1)^2`. Every entry of `L` and `lambda`
is frozen as an exact binary64 dyadic. Arb then proves the strict
positive definiteness of `lambda I+L^T L-W^T W` by interval `LDL^T`:
every pivot must be strictly positive. Thus neither the SVD result,
orthogonality, nor a floating eigenvalue comparison is trusted. The
accepted dyadics are saved in each ball's `majorant_witness`.

**PROVED, small contractions.** Only `t3` and `c` use the refinement.
For each retained row, the symmetric cubic has just 20 entries indexed
by `i<=j<=k`; its Frobenius norm squared is the sum of their squares
weighted by `3!/(m_0!m_1!m_2!m_3!)`. Each entry is a sum over 90
terms with two scalar phase coefficients. For the mixed tensor put

\[
b_{\ell a}=L_{\ell p}\Re z_a+L_{\ell,p+15}\Im z_a,
\qquad B_\ell=-\sum_a b_{\ell a}s_a^T\nu_a.
\]

Then its retained-row tensor is exactly `B_l X`, a `4 x 21` matrix.
Each frequency has only two nonzero entries, so constructing `B_l`
requires eight scalar updates per term, followed by a small
`4 x 36` by `36 x 21` product. Squaring and summing these matrices
and the weighted cubic entries gives `||LF||_F^2` exactly. ∎

**PROVED cost statement.** With `k=4`, this adds four 20-entry cubic
contractions, four sparse mixed contractions, and a single `30 x 30`
positive-definiteness test. The work involving the 90 terms is linear;
the fixed matrix test costs `O(30^3)`. This is a larger constant than
the scalar-only method, but avoids the full 21-output cubic and mixed
products, and all full quartic, second-normal-derivative, and normal
Hessian products. The other three constants use the rank-zero minima.

## 6. From these constants to a certified record bound

**PROVED.** The new constants can be substituted directly into Z(7)–(8):

\[
\begin{aligned}
b_0&=t_3r^3/6+t_4r^4/24+L_5r^5/120,\\
b&=ur+\beta r^2/2,\qquad q_b=cr+a_2r^2/2+L_{3a}r^3/6,\\
q(\tau)&=q_b+(d+L_3x^2b)\tau+L_3x^3\tau^2/2.
\end{aligned}
\]

The recipe requires `q(tau)<1` and `b0+q(tau)*tau<tau`, then returns
`n_record=beta*r^2/2+x*tau+epsP+r*epsU`. The theorem depends on the
multilinear bounds, not on computing any specific flattened tensor.
All new candidates proved above are sufficient for exactly these uses.
The local germ and centre-to-bound soundness are supplied by the already
completed whole-ball theory in this checkout. No approximate residual is
substituted for the exact zero-jet identities.

**CERTIFIED implementation.** The Arb script reconstructs both side roots
with eight midpoint Newton proposals and separate interval Krawczyk
tests in radius `2^-100` tubes. It checks the phase-lift choice against
the exact seed angles, both complementary block inverses, the seed-frame
inverse, the frozen basis inverse, and the Gram left-inverse solve. It
encloses `U`, the second predictor jet, and the record gaps directly.
Together with the existing matched-completion theorem, the certified
side roots, nonsingular Jacobians, and opposite strict orientations
justify the exact centre and local germ. This is not an inference from
a small numerical Hadamard residual.

**CERTIFIED implementation.** All spectral upper bounds are checked by
positive-definite Gram shifts and interval LDL. Signed pair Gram sums
are enclosed before their squared-norm upper endpoints are square-rooted;
individual summands are never replaced by their absolute values. Minima
are taken only after outward conversion to exact dyadic upper bounds.
The serialized constants and `tau_hex` identify the actual scalar
witnesses; `q`, record bounds, and margins are rounded outwards. The
contraction iteration is allowed to fail and does not shrink the input
radius. Both orientation inequalities are checked using the existing
exact 24-frequency identity and the `36 epsilon^2` error term. That
signature identity is used for orientation only; no unsupported transfer
of its constant 72 to the row-Gram residual is made.

**CERTIFIED regressions.** Twenty independently enumerated integer tensor
pairs verify all five Gram rows exactly (100 test cases). These are
regressions supporting the derivation, not a substitute for the proof.
LDL rejection tests cover indefinite, singular, and unresolved interval
matrices. Three real centres agree numerically with independently formed
full tensors; the opposite orientation, wrong seed lift, nonpositive
radius, and invalid orientation input are rejected. Removing the positive
tail from a saved rank-four majorant is rejected. Ball 2299 also passes
at 320 bits. Hash and receipt audits cover all 2,350 per-ball records;
an independent exact-rational replay verifies all 3,978 successful
serialized scalar witnesses across the two methods, including outward
`q`, contraction margins, and `n_record`.

## 7. Measured results and limits

**CERTIFIED, ZIP ball 2299.** The rank-four replay gives:

| Quantity | Outward bound / exact witness |
|---|---:|
| n_record upper | 0.008343805643414129 |
| Supplied budget | 0.01548086540654018 |
| Supplied original Z bound | 0.007641113958582033 |
| tau | 0.001325848144117145 |
| q upper | 0.48722253622989664 |
| tau-b0-q*tau lower | 0.0000003246871767849047 |
| Strict R lower | 34.01098091084878 |

**CERTIFIED measurements.** The final all-ball Arb sweeps took 86.15 s
for rank zero and 104.36 s for rank four, running as two local processes
with one BLAS thread each. Median per-ball times were 36.35 ms and
43.84 ms. For the rank-four run, mean centre work was 4.56 ms and mean
constant work was 38.27 ms. Ball 2299 took 43.68 ms in that sweep.
These are measured Python/Arb elapsed times including centre construction
and successful orientation checks, not Lean times; the full receipts
preserve every per-ball time. No Lean process was started for this handoff.

**CERTIFIED.** All rank-zero failures (530) and rank-four failures (192)
were failures of the sufficient contraction inequalities. All successful
contractions passed both orientation tests. The certified and numerical
success/fit counts agree exactly. Their largest relative `n` differences
are `5.85e-8` and `3.19e-8`, respectively, reflecting verified outward
norm/majorant slack. Failure gives no lower bound on the true remainder.

**NOT ESTABLISHED.** A faster Lean kernel certificate using these new
inequalities, its memory requirement, and an end-to-end kernel speedup
have not been measured. The new bounds have mathematical proofs and Arb
receipts, but still need a Lean Gram-identity/majorant soundness layer and
corresponding witness generation before they replace existing tensor
leaves. The existing mapping is cubic -> t3, quartic -> t4, mixed -> c,
second -> a2, and normal -> d. The cubic/second/quartic inputs and products
and the mixed/normal products are the target stages.

**CERTIFIED provenance distinction.** The older kernel `Ball2299.hC1`
and its timing receipt use the 2,328-seed development certificate with
radius approximately 0.063; this ZIP has 2,350 seeds and its ball 2299
has radius 0.08. They are different input records. The old stage timings
are incremental, sometimes overlapping measurements, not one cold
5.5-hour end-to-end benchmark. This report claims neither a new kernel
check of the ZIP ball nor a measured kernel speedup.

**CERTIFIED decision table; external fallback evidence.**
`budget_fit.jsonl` recommends 1,287 rank-zero certificates, another 486
rank-four certificates, and 248 original-Z fallbacks based on the
provided receipts. The other 329 entries remain `no_verified_fit`;
112 of them have no usable supplied budget. Budget comparisons use the
provided binary64 budget values directly. No missing budget is inferred,
no radius or centre is changed, and no Stage C pass is claimed from an
interval contraction alone.

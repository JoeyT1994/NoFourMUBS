# Formal interface and integer-checker integration

## 1. Delivered scope and compilation status

`Quadratic.lean` defines the true quadratic term, linear-plus-quadratic variation
and exact real residual. It supplies complete proof text for:

- an exact decomposition;
- a weighted remainder inequality;
- a shifted absolute-support test;
- a one-sided oriented-support test;
- propagation of a certified polynomial-coefficient error.

`QuadraticCert.lean` supplies uniform rejection theorems whose conclusion is
exactly

```lean
∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a
```

This is the existing rejection branch of `StageCCert.hleaf`. No edit to
`Admissible`, `StageCCert`, its semantic interpretation, or the graph certificate
is required for N1.

**The Lean files are not compiled.** Neither `lean` nor `lake` is on PATH; the
handoff has no `lean-toolchain`, lake project, or mathlib checkout. It also omits
imported repository modules such as `NoFourMUBs.Transfer` and
`KernelAtlas.Tangent`. Thus this bundle cannot run a genuine Lean replay, even
with a bare compiler added. Copy the two files to
`lean/NoFourMUBs/StageC/Quadratic.lean` and `QuadraticCert.lean` in the complete
project and compile there before treating them as checked proof artifacts.

There are no added axioms or admitted proof commands. Nevertheless these are
**conditional interfaces**, not a formalization of the full new analysis:
`SecondOrderLeafBounds` exposes the uniform polynomial support, normal-error
bound and cubic-error bound as separate hypotheses. Defining `cubicResidual`
as the exact difference does not prove its cubic estimate. The paper proof
establishes those estimates mathematically; a production Lean extension must
formalize and connect them to the integer coefficient checker.

The cubic hypothesis is `|Σ_i y_i ρ_i|≤E3`. It accepts both a bound on
`Σ_i |y_i||ρ_i|` (using the supplied weighted absolute-sum lemma) and a sharper
bound obtained by cancellation of weighted column contributions.

## 2. Match to the chosen oriented polynomial support

Let `C0=Σ_i y_i c_i`, let `s∈{−1,1}` be its sign, and orient every coefficient
of the explicit tangent polynomial by `−s`. Write that oriented polynomial as

\[
 \ell^\top d+b^\top\eta+d^\top A d+2d^\top C\eta+\eta^\top D\eta,
 \qquad |d_j|\le a,\quad\|\eta\|\le h.
\]

The selected support upper bound is

\[
 \begin{aligned}
 U={}&a\|\ell\|_1+h\|b\|_2\\
 &+a^2\left(\sum_j\max(A_{jj},0)+2\sum_{j<k}|A_{jk}|\right)\\
 &+2ah\sum_{j=1}^{5}\|C_{j,:}\|_2
   +h^2\max\left(0,\max_k\big(D_{kk}+\sum_{l\ne k}|D_{kl}|\big)\right).
 \end{aligned}
\]

The matrix `A` is symmetric 5 by 5, `C` is 5 by 4 and `D` is symmetric 4 by 4.
The last line uses the row-sum bound on the largest eigenvalue of the symmetric
matrix `D`; it does not claim an exact trust-region maximum. Supplying the
uniform inequality `-s·tangentPolynomial≤U` instantiates `hp` in
`leafRej_all_of_secondOrderOriented`. The normal and cubic analytic theorems
supply `hv` and `h3`. A strict violation then fills `hleaf`.

One can instead certify the polynomial interval `[L,U]`, set
`m=(L+U)/2`, `H=(U-L)/2`, and use the shifted absolute-support version. This
retains interval centres and may be useful for a later refinement.

## 3. Exact polynomial coefficients from existing Gaussian integers

The current `Tangent2K.lean` already has:

- the positive/negative-natural representation `ZP` of signed integers;
- Gaussian integer bin phase approximations `wZ`, column sums `sZ`, and their
  certified error bridge in `Tangent2.lean` / `Tangent2S.lean`;
- arbitrary per-bin integer multiplier hints `yZ`;
- integer square-root upper bounds from `isqU`, checked by inequalities on
  squares;
- the `lin2B_sound` and bin-tree soundness pattern.

Here is an especially transparent way to build the additional coefficients.
Put `f_ji=e(u_j-P_ji)` and use the exact pair identity

\[
 Q_i(w)=-\frac{\pi}{6}\sum_{j<k}
          \operatorname{Re}(f_{ji}\overline{f_{ki}})(w_j-w_k)^2.
\]

If `W_ji` approximates `Z f_ji`, define the signed integer

\[
 R_{i,jk}=-\operatorname{Re}(W_{ji}\overline{W_{ki}}).
\]

For a dyadic or rational frame `T`, the pair difference

\[
 w_j-w_k=d_j-d_k-\sum_l(T_{ji,l}-T_{ki,l})\eta_l
\]

is a rational linear form in nine variables (`d0=0`). Each quadratic coefficient
is obtained by summing the corresponding rank-one products, multiplied by
`y_i R_i,jk`. Clearing the known powers of `Z`, the frame denominator and bin
denominators reduces these operations to signed integer multiplication and
addition. The constant and linear terms can reuse the existing `NN`, `JtZ`
and `BtZ` logic, with their existing error bounds.

The pair formula is also a convenient independent specification against which
an optimized coefficient circuit can be checked. It avoids subtracting two
large expressions to recover the diagonal, and makes the common-phase kernel
`H_i·1=0` explicit.

## 4. Coefficient and frame errors must be certified

Suppose `|W_ji/Z-f_ji|≤ε` for every entry. Since `|f_ji|=1`,

\[
 \left|\frac{W_{ji}\overline{W_{ki}}}{Z^2}
                    -f_{ji}\overline{f_{ki}}\right|
 \le 2\varepsilon+\varepsilon^2=:\varepsilon_{\rm pair}.
\]

Thus the error of the quadratic polynomial computed with these pair products,
at a given tangent displacement `w0`, is at most

\[
 \frac{\pi}{6}\varepsilon_{\rm pair}
       \sum_i|y_i|\sum_{j<k}(w_{0,ji}-w_{0,ki})^2
 =\pi\varepsilon_{\rm pair}\sum_i|y_i|\|P_0w_{0,i}\|^2.
\]

Any certified upper bound on the last weighted sum gives a scalar coefficient
error which can be added to the support. Coefficientwise interval arithmetic
may yield a smaller value. This allowance is in addition to the existing
constant/linear approximation errors, numerical `π` enclosure, arithmetic
rounding, and the cubic/normal remainders. It must not be silently absorbed by
an unproved fixed decimal slack.

For exact rational frame `T` and evaluated frame `Tf`, the existing transfer
`n_eff=n_exact+||T-Tf||op h` covers the displacement difference, including all
quadratic normal cross terms, provided the test consistently uses `Tf` and
`n_eff`. In the integer checker an entrywise `l1` sum of the exact frame errors
is a valid, weaker operator-norm bound. Further rounding of `Tf` creates a
further error; it cannot reuse the old frame allowance unless explicitly
covered by it.

## 5. Remainder evaluation over the unchanged domain

The current `Admissible` condition does not assert that `δ` is horizontal.
The actual Hadamards are horizontal, but a `StageCCert.hleaf` proof quantifies
over a larger domain. Consequently row-sum cancellation in weighted norm
bounds must have a defect allowance.

If

\[
 e_\Sigma\ge\left\|\sum_i\delta_{:,i}\right\|_2,
\]

the corrected candidates for nonnegative weights `v` are

\[
 \begin{aligned}
 W_1(v)&=\|v\|_\infty(6X^2+2Xe_\Sigma+r_F^2),\\
 W_2(v)&=\|v\|_1(X+r)^2,\\
 W_3(v)&=\|v\|_1X^2+
 2X\left(r_F\|P_0v\|_2+\frac{\|v\|_1}{6}e_\Sigma\right)
 +\|v\|_\infty r_F^2.
 \end{aligned}
\]

Taking their minimum is valid over every admissible displacement if the
row-sum bound is valid there. With `δ=Tfη+ν`, one may take

\[
 e_\Sigma=h\left\|\sum_i (T_f)_i\right\|_{\rm op}+\sqrt6\,n;
\]

the Frobenius norm can replace the displayed frame operator norm. Exact
horizontality of `Tf` makes its first term zero. Setting `eΣ=0` is a separate
physical-horizontal specialization and cannot be used automatically in the
unchanged `StageCCert` interface.

All new remainder formulas, including any cancellation of cubic terms between
columns, should be reduced to verified scalar bounds on the supplied domain.
The Lean interface deliberately accepts these bounds as parameters, so further
improvements do not require another certificate-structure change.

## 6. Integer comparison and kernel cost

Each row norm of `C` and the norm of `b` can be bounded by an integer hint `u`
whose sign and square inequality are checked. Gershgorin uses only signed
addition, absolute value and maximum. Remainder square roots can use the same
checked-upper-root mechanism. Values of `π`, `√2`, `√6`, radii and bin widths
are enclosed by per-level dyadic or rational bounds as in the current
`T2LevelOK` / `T2ParOK` design. Multiplying by a common positive denominator
then turns the final strict comparison into an integer comparison.

The multiplier and its orientation remain arbitrary hints. The checker must
certify the oriented constant lower bound and compare it with the upper support
plus all errors; a proposed floating-point sign is not itself evidence. If
its constant interval includes zero or the strict comparison fails, retain
the bin. No numerical eigenvector or optimizer output needs to be trusted.

Once the 45 independent quadratic block entries are available, evaluating the
displayed support uses a few hundred basic operations. **Constructing** those
entries from the 90 column/pair weights by a naive rank-one circuit uses
thousands of multiply-adds. Operation count, integer operand sizes, sharing of
intermediate terms and the number of remaining bins all affect kernel time.
There is no measured kernel speedup for the new test in this deliverable.
The current `Tangent2*.lean` checker is unchanged, and no new atlas certificate
has been replayed through it.

Recommended integration order: compile the interface; formalize the selected
analytic bounds; implement and independently verify the exact coefficient
circuit; connect a new Boolean leaf test to the unchanged semantic rejection
predicate; benchmark one representative Record in the kernel; then recertify
the atlas through both production and independent checkers.

## 7. Additional multipliers and retries of unresolved Records

The numerical retry procedure uses the same analytic test with additional
multiplier proposals. N1 is valid for every real multiplier, so an IRLS solve
is only a proposal mechanism. Each finite proposed binary64 vector is treated
as an exact real vector, clipped to maximum coordinate modulus at most one,
and checked with the same support and remainder formulas and the same
`1e-7` guard. The uniform arithmetic estimate in the N1 proof covers zero
and arbitrarily small directions; it does not require an accurate optimizer.

The measured Record-level procedure first accepts any successful primary
exclusion. It retries every unresolved Record and accepts a successful retry
as a separate complete exclusion. A future certificate exporter can retain
the successful tree and graph from either attempt, together with that
attempt's verified per-bin multiplier hints. It must not combine fragments
of two different graphs or trees without a separate proof of that operation.
Selecting one complete valid `StageCCert` requires no interface change.

The numerical experiment records all primary and retry work. In a production
kernel replay, a verified multiplier hint could avoid reproducing the IRLS
proposal search, but neither hint export nor a new checker is implemented
here. There is therefore no measured kernel saving for this policy. Its
demonstrated benefit is the explicitly reported numerical sample pass rate.

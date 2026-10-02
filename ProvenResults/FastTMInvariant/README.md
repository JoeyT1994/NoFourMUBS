# The bounded FastTM enclosure invariant

**Status: proved for the explicitly guarded execution described below.**
This proves a sufficient invariant for the arithmetic in the supplied
FastTM source, including gradual underflow and Taylor order 12. It does
not assert that the unguarded historical campaign enforced the invariant.
The standalone replay checks it without modifying campaign files.

**Production source since 30 September 2026** has sha256 `7e9c0bc3…`. It is the guarded source
(`e18d1563…`) with rescaled `inv` and `sqrt`, which expand about centre 1 so that no constant grows
like c₀^−(Q+1). The proof and checks are in [RESCALED_INTRINSICS.md](RESCALED_INTRINSICS.md).
`guarded_replay.py` reconstructs `e18d1563…` from production by undoing exactly that block and a
header note, then replays production. The receipt is
`Verification/fasttm_rescaled_2026-09-30/guarded_replay/`. The guard, and hence this theorem, is
unchanged. The rescaled forms use only guarded primitives and the same geometric tails at centre 1.
Independent review of the note has been requested.

## 1. Statement

Put

    u = 2^-53, epsilon = 2^-30, tau = 2^-1074,
    beta = the exact binary64 value of 1e-300, M = 2^40.

A stored model a=(P,r) is admissible when

    0 <= Q <= 12,    r >= 0,    B(P)+r <= M,
    B(P) = sum_alpha |a_alpha|,

and its coefficients and remainder are finite binary64 numbers. Exact
scalar operands must be exactly representable in binary64 and have
absolute value at most M. Interval scalar operations use finite outward
binary64 intervals, with midpoint and the outward midpoint-error radius
at most M in absolute value. Negative integer powers are excluded from
the source's nonnegative-power routine. The original strict convergence
guards for inv, sqrt, and complex binomial roots remain in force.

**Theorem.** Start from correctly enclosed constants and affine seed
variables. Evaluate the operations in fasttm.jl, including sine, cosine,
reciprocal and positive square root, and the binomial-root construction
in fasthplus.jl. Require the preceding guards on every model and scalar
operand and on every constructed model. Require each direct call to
`up(x)` to have finite 0<=x<=2^100. A failed guard is inconclusive.
Then every returned model satisfies

    for all s in [-1,1]^4: |f(s)-P(s)| <= r,                 (I)

and every returned `bound(a)` contains every value of f. The same
statement holds for both components of complex models. The assertion is
about the intended arithmetic/analytic expression f; it does not assert
that the reconstruction identities themselves have been proved.

The permitted direct polynomial edits are initializing a fresh exact
polynomial, clearing its constant term when replacing f by f-c0, and
explicitly starting a new polynomial expression. One may increase a
remainder but may not discard it while claiming to enclose the same f.
External mutation of coefficient arrays is outside this theorem.
Direct calls to the internal `series` helper must supply valid outward
coefficient intervals and a certified nonnegative analytic tail; the
guard does not verify an arbitrary caller's asserted analytic formula.

The standalone guard enforces a slightly stronger easily checked norm
condition, so every execution it accepts satisfies the theorem. It
preserves the floating arithmetic expressions of the original source;
it adds rejection and logging, not replacement error formulas.

## 2. Binary64 estimates, including subnormals

Assume IEEE binary64 round-to-nearest, ties-to-even, gradual underflow,
no overflow in the operation in question, and no fast-math transformations
that discard these semantics. For a rounded product or fused update,

    |RN(t)-t| <= u|t| + tau.                                (2)

This deliberately uses a full least subnormal rather than its half. For
addition/subtraction of two binary64 numbers, the relative-error model
alone suffices: a subnormal exact result is an integer multiple of tau
and hence is exactly representable. In particular nonnegative sums obey

    (1-u)^m sum x_j <= computed sum <= (1+u)^m sum x_j        (3)

after at most m additions, with no absolute underflow term.

A length-m recursive dot product, fused or unfused, has error at most

    gamma_m sum |a_i b_i| + 2m tau,   gamma_m=mu/(1-mu),     (4)

for the lengths used here. Expand the recursion as a weighted sum of
products. Each product passes through at most m relative roundings; the
product of their factors differs from 1 by at most gamma_m. Each absolute
underflow error is multiplied subsequently only by relative factors,
whose product is less than 2. This proves (4). In the unfused case, the
first addition to zero is exact and additions need no absolute term;
there is only one possible absolute product error per term. For fused
updates there is one possible absolute error per update.

No intermediate in a ring operation over the stipulated inputs approaches
overflow. A scalar product or exact polynomial product has 1-norm at
most M^2; all the norms, radii, accumulated dot products, and padding
arguments in the ring rules are less than 2^100. Direct analytic tails
are separately guarded at their `up` call.

## 3. The source's padding really is sufficient in this domain

For finite 0<=x<=2^100, the actual

    up(x) = muladd(x, 1+epsilon, beta)

satisfies

    up(x) >= (1+epsilon/2)x + beta/2.                       (5)

For a fused evaluation the result is normal because beta is normal, and
one rounding loses at most u times the exact sum. For an unfused
multiply followed by add, (2) gives the lower bound

    (1-u)^2(1+epsilon)x + (1-u)beta - tau.

Its coefficient of x is at least 1+epsilon/2, and its constant term is
at least beta/2. These inequalities are verified exactly in verify.py.
Thus (5) holds in either evaluation. It does not suppose that x is normal.

For an operation before its final `up`, call the computed nonnegative
radius expression S. Let T denote the mathematically sufficient ideal
radius using exact nonnegative norm sums and coefficient-error estimates,
temporarily omitting the additive tau errors in (2)/(4). The following
conservative bounds hold for every padded primitive in the source:

    S >= (1-u)^16384 T - K,
    required true radius <= T + K,
    K = 2^24 M tau.                                        (6)

Here is the explicit operation accounting behind (6); it is intentionally
loose, but not dependent on measured campaign values.

* At order 12 there are N=binom(16,4)=1820 coefficients. There are
  binom(20,8)=125970 retained ordered pairs in the product, and at most
  256 pairs per output coefficient. These counts and their maxima over
  all orders 0..12 are checked by exact integer enumeration.
* Two degree-norm computations, their total sums, all dropped-degree
  products and their accumulation, gamma, and the final radius expression
  use fewer than 4096 scalar roundings. A conservative count is
  2N+4(Q+1)+Q(Q+1)+32, which is 3880 at Q=12. Other primitive radius
  expressions are shorter. Expanding these nonnegative expressions into
  terms gives no term more rounding factors than this count. Allowing
  another factor 1/(1-u) for result-based addition error, and slack for
  the finitely many scalar products in a wrapper, is still below 16384.
* In gamma, n*u and 1-n*u are exactly representable for 1<=n<=256; its
  division is normal. Norm sums and radius additions have no absolute
  underflow loss by (3). A possible absolute loss in a **bound product**
  is subsequently multiplied by at most one computed norm or scalar,
  of magnitude at most 2M. The only three-factor bound products are
  gamma*Ba*Bb and u*abs(x)*B; gamma and u are normal exact/relatively
  bounded coefficients. In neither expression can an underflow error
  receive two subsequent large multipliers. Therefore all these losses
  total at most 4096*(2M+1)*tau, with a further factor below 2 for their
  subsequent relative roundings: less than 2^15 M tau.
* Summing (4) over all retained coefficients gives an additive loss at
  most 2*125970*tau < 2^18 tau. A scalar coefficient product has at most
  1820 such errors. These are smaller than K; even their sum with the
  previous bullet is less than K. No dropped coefficient is computed:
  its exact norm is bounded by the degree-norm expression instead.
* Interval multiplication first forms the model for m*a and then adds
  d(B(a)+r_a). The inner model has already been checked and enclosed;
  its stored radius is an exact input to the outer rule. Each stage
  therefore has the same bounds, rather than multiplying two unchecked
  underflow allowances. Adding an analytic tail is likewise a separate
  nonnegative addition of a certified upper bound.

For addition, the ideal coefficient allowance is u B(c)/(1-u), where c
is the stored sum polynomial. The source uses u times its rounded norm;
the omitted factor is explicitly included in the exponent allowance in
(6). For products T uses gamma_nmax B(a)B(b) and the three propagated
remainder terms and dropped-degree sum. For exact scalar multiplication
it uses |x|r+u|x|B(a). These are the standard sufficient model rules,
proved in CertificateArithmetic/README.md §1; (2)--(4) account for their
previously omitted subnormal contributions.

The exact numerical inequalities are

    (1+epsilon/2)(1-u)^16384 >= 1,
    beta/2 >= (2+epsilon/2) K.                              (7)

Combining (5)--(7),

    up(S) >= (1+epsilon/2)((1-u)^16384 T-K)+beta/2
          >= T+K >= required true radius.

This is the missing rounding-padding argument. It explicitly propagates
underflow before using the final additive margin. The previous
counterexample violates B(a)+r<=M by an enormous factor, so it is not a
counterexample to this theorem.

## 4. The narrower padding in `bound`

Put A=B(P)+r. Evaluating either ideal endpoint (using [0,1] for even
monomials and [-1,1] for the others) uses at most N additions. The endpoint
error is at most gamma_N A, and its computed absolute value is at most
(1+gamma_N)A. The computed nonnegative `tot` is at least (1-u)^N A.

By (2) and (5), `pad=up(RN(2^-40*tot))` obeys

    pad >= 2^-40(1-u)^(N+1) A + beta/2 - 2tau.

The final endpoint addition/subtraction incurs at most u times the
absolute exact sum. Moving the contribution u*pad to the other side,
it suffices that

    (1-u)pad >= [gamma_N+u(1+gamma_N)] A.

This follows from N<=1820 and the exactly verified stronger inequalities

    2^-40(1-u)^4096 > gamma_4096,
    (1-u)(beta/2-2tau) >= 0.

Thus the final Float64 endpoints are outward bounds even though ordinary
arithmetic was used to form them. Zero and subnormal A are included.

## 5. Intrinsics and complex roots

`hbound` is a padded nonnegative norm sum, covered by §3. Thus its H
encloses the nonconstant polynomial and input remainder. The coefficient
intervals and analytic tails for cos, sin, inv and sqrt are outward,
with exact factorial conversion at orders through 12. Their Horner
operations preserve (I) by §3. Adding the certified tail preserves it.
The unchanged convergence tests ensure the required analytic domain.

For complex roots the test |z/r0^n-1|<1 gives the convergent binomial
branch, n=2 or 3. Interval coefficient recurrence, guarded Horner
operations, a tail bound in each component, and interval multiplication
by r0 preserve the two component enclosures. See CertificateArithmetic
§3 and Review/FASTHPLUS.md for the analytic proof; no exact centre-root
assumption is needed. This theorem adds the previously missing finite-
arithmetic justification when all the stated guards pass.

## 6. Induction and what the guard establishes

Initial affine variables and exactly represented constants satisfy (I).
Interval constants satisfy it by their outward midpoint deviation.
Assume every operand in the expression DAG satisfies (I) and the range
guards. Sections 3--5 prove (I) for the result. Its construction guard
either establishes admissibility for subsequent operations or rejects
the calculation. This induction proves the invariant for **every accepted
guarded trace**, not just a finite set of sampled values.

The guard computes a sequential nonnegative sum s of absolute stored
coefficients and checks the outward inequality 2s+r<=M. Since
2(1-u)^1820>1, (3) proves B(P)+r<=2s+r. This test is conservative and
valid even when coefficients are subnormal. It rejects nonfinite data,
negative remainders, orders above 12, inexact/big scalar conversions,
excessive interval midpoint/error radius, shrinking `set_remainder`,
negative arguments to the generic power routine, and padding arguments
outside [0,2^100]. Julia may rewrite a negative literal power as `inv`;
that follows the separately proved and guarded reciprocal path.

The source patch is constructed only in a temporary copy. Its expected
source SHA-256 and all replacement counts are checked. Construction
checks do not themselves authorize an arbitrary caller to attach a
wrong mathematical meaning to a raw polynomial or mutate its coefficients.

## Dependencies, replay and limits

Dependencies: elementary Taylor-model identities; IEEE binary64 semantics
just stated; correct outward IntervalArithmetic operations. No Hadamard
classification or accepted reconstruction theorem is used for (I).

```
python3 ProvenResults/FastTMInvariant/verify.py
python3 ProvenResults/FastTMInvariant/guarded_replay.py
```

The first is the registered exact check `fasttm_invariant`. It proves
all finite numerical inequalities and operation counts with rational and
integer arithmetic. The written derivation supplies universal scope.
The second runs rejection controls and a local H+ Taylor-model replay
in a temporary instrumented copy; it is not a campaign job and does not
prove that all campaign cells pass the guard.

**Not established:** that every acceptance in an already-running,
unguarded campaign satisfies this range invariant. Original accepted-cell
logs do not record these checks. Applying this theorem to those results
requires guarded replay of their arithmetic, or a separate range proof
for all their traces. The guard does not fix the independent reconstruction
and global coverage assumptions.

# Taylor-model remainder rules and a finite-arithmetic counterexample

**Status: proved.** The general remainder calculus below is unconditional
mathematics. Its application to a program requires certified numerical
upper bounds. The supplied FastTM implementation does not satisfy its
unrestricted enclosure claim: §4 gives an exact counterexample.

Dependencies: elementary polynomial algebra, real Taylor's theorem and
convergent power series; IEEE binary64 round-to-nearest, ties-to-even only
for the implementation counterexample. No reconstruction input is used.

## 1. Ring rules, including coefficient error

On [-1,1]^d write f=P+e, |e|<=r, P=sum a_alpha s^alpha. Let
B(P)=sum |a_alpha|; then |P|<=B(P). Coefficients stored in a model are
exact real values of the stored floating numbers, not unknown exact
coefficients. If an operation computes a polynomial C in floating
arithmetic, let E be an upper bound on the sum of absolute coefficient
errors relative to the desired exact polynomial.

For addition the valid new radius is r_a+r_b+E. For scalar multiplication
by an exact real x it is |x|r_a+E. For interval multiplication x in [m-d,m+d]
use a model for m f and add d(B(P)+r). These follow by the triangle
inequality and |s^alpha|<=1.

For a product, put A_j=sum_{|alpha|=j}|a_alpha| and similarly B_j.
Truncate the polynomial product to total degree Q. The radius

    r_a B(P_b) + B(P_a) r_b + r_a r_b
      + sum_{j+k>Q} A_j B_k + E                             (1)

is valid: expand (P_a+e_a)(P_b+e_b), bound its three error terms,
and apply the triangle inequality separately to each dropped monomial.
Cancellation of dropped coefficients need not be used. Dropping order
from Q to Q2 adds sum_{|alpha|>Q2}|a_alpha|. Raising order appends zeros
and changes neither polynomial nor remainder.

For a range bound, an all-even monomial lies in [0,1], and every other
monomial lies in [-1,1]. Add the corresponding coefficient intervals and
[-r,r] using outward arithmetic. This proves the range rule independently
of the particular padding used to approximate it.

## 2. Floating coefficient errors

Let u=2^-53. If intermediate exact results are normal and finite, a
rounded multiplication or addition satisfies fl(t)=t(1+delta),
|delta|<=u. For an addition stored as c, the convenient result-based
bound is |error|<=u|c|/(1-u), not literally u|c|. A later inflation can
absorb the factor 1/(1-u), but must be justified.

For a coefficient obtained by a length-m recursive dot product, its
absolute error is at most gamma_m sum |a_i b_i|, where
gamma_m=m u/(1-m u). To see this, expand the recursion into a sum of
individual products times factors (1+delta); each term travels through
at most m roundings. For unfused arithmetic the first addition to zero
is exact and the multiplication plus subsequent additions also give at
most m factors per term. Induction, or expanding the product of the
factors, bounds their departure from 1 by gamma_m. Summing over retained
coefficients gives E<=gamma_nmax B(P_a)B(P_b). A genuinely fused update
has the same bound. This explains why the convolution rule is sound in
the usual normal finite regime even without requiring fusion.

Underflow breaks the relative model. A general absolute-error model adds
an allowance of 2^-1075 per rounding, and **propagates it through every
later multiplication**. Alternatively, calculate coefficient errors or
all their upper bounds with outward intervals or exact rationals. A final
fixed additive padding, by itself, does not address amplification of
underflow in an intermediate error-bound calculation.

All evaluations of the nonnegative quantities in (1), gamma, B, and E
must be upper bounds. These mathematical rules do not assert that an
arbitrary round-to-nearest implementation of their right sides is safe.

## 3. Composition and exact tails

Let c be the stored constant coefficient and h=f-c; bound
|h|<=H=sum_{alpha!=0}|a_alpha|+r. Suppose intervals enclose the exact
coefficients f^(k)(c)/k!. Horner evaluation in the preceding model
arithmetic encloses the polynomial sum through k=Q; induction on the
Horner steps proves this even though intermediate errors are correlated.
Adding an upper bound on the following analytic tail proves composition.

For sine and cosine, Taylor's theorem gives

    L <= H^(Q+1)/(Q+1)! * sup_{t in [c-H,c+H]} |f^(Q+1)(t)|.

Their four-periodic derivative lists are exactly the ones in fasttm.jl.
The input remainder is part of H and of h, and must not be discarded.

For the reciprocal, when x=H/|c|<1,

    L <= x^(Q+1) / (|c|(1-x)).

This follows from the exact finite geometric identity for 1/(1+h/c).
For the positive square root, c>0 and x=H/c<1, put b_k=binom(1/2,k).
Then

    L <= sqrt(c) |b_(Q+1)| x^(Q+1)/(1-x).

Indeed |b_(k+1)/b_k|=|alpha-k|/(k+1)<1 for alpha=1/2 and k>=0.
The geometric majorant also applies to alpha=1/3. For complex t with
|t|<=x<1, the binomial series B_alpha(t) is analytic and

    |B_alpha(t)-sum_{k=0}^Q b_k t^k|
        <= |b_(Q+1)| x^(Q+1)/(1-x).                        (2)

For completeness, coefficient comparison proves
(1+t)B'_alpha=alpha B_alpha, B_alpha(0)=1. If alpha=1/n, differentiate
B_alpha^n/(1+t) to find it constant and equal to 1. Thus the analytic
series is genuinely an nth root; it is not a numerical approximation
whose root property needs a separate assumption.

The implementation's factorials through 18 are exactly representable in
binary64 (verified with integer arithmetic). Outward coefficient intervals
and the stated strict convergence tests make these analytic tails valid.
They cannot repair an invalid underlying ring operation.

## 4. Exact FastTM counterexample

In scalar multiplication `x::Real * a::TM`, the rounding term is evaluated
as `U * abs(xf) * babs(a.c)`, left-associatively. Take exact binary64 values

    x = 2^-1022 (1-2^-52) = prevfloat(floatmin(Float64)),
    a = 2^1023 (1+2^-52) = nextfloat(2.0^1023).

Both are finite; x is the largest subnormal and a is normal. Their exact
product is 2-2^-103 and rounds to 2. But U*x<2^-1075 rounds to zero.
With zero input remainder, the program therefore reports remainder
`1e-300`, although the actual coefficient error is 2^-103.

This also produces a false final range enclosure: subtract the exact
scalar 2 from this model. The polynomial becomes identically zero, its
remainder stays below 1e-298 after the subsequent padding, and `bound`
stays within [-1e-298,1e-298]. The exact value -2^-103 is outside.

This refutes the implementation's general statement that its fixed final
padding absorbs any underflow. It does **not** exhibit an erroneous
campaign acceptance; the campaign has not been shown to encounter these
extreme operands. Proving a suitable operand-range invariant or replacing
the error-bound evaluations with outward arithmetic would address this
specific issue. Neither change was made to campaign code in this review.

## Replay

`python3 ProvenResults/CertificateArithmetic/verify.py`

The replay uses exact rational arithmetic for the counterexample,
binomial recurrence, factorial representations, and the sharp-capacity
threshold polynomial (an independent check of the existing theorem).
The exact rational checks prove the finite witness; finite coefficient
checks support, but do not replace, the universal proofs above.
The direct Julia reproducer in Review/reproduce_fasttm.jl additionally
calls the unchanged implementation. Registered check: `certificate_arithmetic`.

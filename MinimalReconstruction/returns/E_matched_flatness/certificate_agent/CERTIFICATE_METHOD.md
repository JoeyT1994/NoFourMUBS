# Exact certificate of the two matched fourth-moment identities

## Result

The first completed run of `verify_factored_rational.py` proved, in
`Q(a,b,c,d)`, both

\[
A_{01}-A_{10}=0,\qquad
A_{00}+\frac{\chi}{g}A_{10}+\eta A_{11}-9=0.
\]

The arithmetic formulas are those in
`reference/Step2Audit/work/geometry_obligations.md` §1.1. The computation
uses no flatness theorem, classification theorem, physical completion,
numerical evaluation, or interpolation assumption. Its only acceptance
conditions are exact zero polynomials over the rationals.

The preserved first-run log is `factored_rational.log`. It records:

- linear identity: 48 nonzero rational summands, exactly zero after clearing;
- constant identity: 85 nonzero rational summands, exactly zero after clearing;
- CPU time: 140.60 seconds;
- peak RSS: 755,636 KiB (approximately 738 MiB);
- successful process exit and final `PASS UNIVERSAL MATCHED FOURTH-MOMENT IDENTITY`.

## The performance correction

The previous attempts repeatedly constructed and divided a global common
denominator with 477,415 terms. They spent their budget on multivariate
GCD/divisibility operations involving that large expanded polynomial.

This verifier first collects the denominators of the two moment matrices,
the symmetric-square completion matrix, and the scalar invariants. These
small input denominators have just seventeen distinct normalized factors:

1. the four phase variables;
2. one 31-term factor from the Gram determinant;
3. twelve 51-term side factors.

All factors are made monic. The product returned by the small-polynomial
factorization routine is checked against its input exactly. **The proof does
not need the factors to be irreducible or relatively prime.**

Every later rational summand is still formed using the original exact
rational arithmetic. Its reduced denominator is divided repeatedly by the
recorded small factors, and the remaining polynomial is required to be
exactly 1. Thus each resulting denominator decomposition is certified by
exact division. If the denominators are

\[
d_k=\prod_{r=0}^{16}f_r^{e_{kr}},
\]

let `E_r=max_k e_kr`. The common denominator is represented as the factor
vector `E`, without computing a large GCD. The numerator of the sum is
computed by the exact polynomial identity

\[
\sum_k\frac{n_k}{d_k}
=
\frac{\displaystyle\sum_k n_k\prod_r f_r^{E_r-e_{kr}}}
     {\displaystyle\prod_r f_r^{E_r}}.
\]

For the linear identity, every `E_r` is 1. For the constant identity, the
four phase factors and the Gram factor have exponent 2; the twelve side
factors have exponent 1. Both displayed numerator sums are exactly zero.

This eliminates the expensive global GCD stage. The largest observed
intermediate numerator in the preserved log has 753,565 terms; this is
manageable because only multiplication and addition are required there.

## Certificate data

The optional `--certificate PATH` mode exports `factor_certificate.json`.
The format records the variable order, the seventeen small factors, and for
each of the two identities:

- the common exponent vector;
- each nonzero summand's index in the original contraction;
- its denominator exponent vector;
- the complementary cofactor exponent vector;
- its numerator as a primitive integer polynomial with a rational unit
  when there are at most 8,192 terms; for larger numerators it records
  a canonical SHA-256 digest, degrees and term count instead.

A polynomial with `unit=[u,v]` and terms `[ea,eb,ec,ed,c]` denotes
`(u/v) * sum(c*a^ea*b^eb*c^ec*d^ed)`. All numbers serialized in polynomial
coefficients are integers. The summand-index convention is included in the
JSON. The executable rational circuit reconstructs every source numerator;
any omitted large coefficient array is a storage choice, never an
unverified numerical or probabilistic acceptance step.

## Reproduction

Requires Python 3 and python-flint (completed run used python-flint 0.9.0).
From the handoff root:

```
python output/certificate_agent/verify_factored_rational.py \
  --timeout-seconds 600 --memory-mib 3072 \
  --certificate output/certificate_agent/factor_certificate.json
```

Caps are optional and default to disabled. A timeout, allocation failure,
exception, or missing `PASS` is not an accepted certificate. The verifier
must be run under normal Python execution, with assertions enabled.

The main mathematical obligation after this exact computation is the
source-level derivation that the moment matrices and contractions are the
fourth moments of the forced block. That derivation belongs in the root
`FLATNESS.md`; it is not replaced by numerical sampling here.

## Completed exported replay

The final exporter replay also passed, with:

- elapsed wall time: 157.035697712 seconds;
- CPU time: 156.999532938 seconds;
- peak RSS: 814,932 KiB (approximately 796 MiB);
- certificate size: 47,728 bytes;
- certificate source SHA-256 matching the delivered verifier exactly.

The linear residual has 48 nonzero source summands and the largest source
numerator has 96,709 terms. The constant residual has 85 nonzero source
summands and the largest source numerator has 181,723 terms. Accordingly,
the JSON keeps their canonical metadata/digests and the reproducible
rational source circuit instead of expanding roughly 9.7 million repeated
source-numerator coefficients. The seventeen factored cofactors are fully
explicit integer coefficient data with rational units. The numerical
measurements are merely replay metadata; the mathematical acceptance is
still exact polynomial equality.

`verify_source_translation.py` is an additional 0.23-second exact check of
the source optimizations: equality of horizontal/vertical invariants,
self-conjugacy of `g,eta,chi`, `det G=g`, the norm-one identities for
`u,v,u/v`, correctness of the optimized ratio, and the two simplified
`u*conj(pi)` and `v*conj(pi)` expressions. Its successful receipt is
`source_translation.log`.

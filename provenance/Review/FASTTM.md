# Referee note: fasttm.jl

**Verdict: the mathematical remainder rules and analytic tails are correct;
the implementation's unrestricted rigor claim is refuted. No erroneous
campaign cell has been demonstrated.**

Follow-up: [FastTMInvariant](../ProvenResults/FastTMInvariant/README.md)
now proves the bounded guarded-trace enclosure invariant, including the
actual order-12 path. It supplies exact padding constants and a standalone
guarded replay. This resolves the arithmetic proof for traces passing
those guards; it does not establish that the historical unguarded run
passed them.

The self-contained proof is in
[CertificateArithmetic](../ProvenResults/CertificateArithmetic/README.md).
It covers rounding at the coefficient level, truncation, interval scalar
coefficients, range evaluation, Horner composition, sine/cosine Lagrange
remainders, and the exact reciprocal and square-root tails.

## Source-to-proof map

| Code | Review |
|---|---|
| TM, tmvar | Stored Float64 coefficients are exact dyadic polynomial coefficients. tmvar has zero representation error **relative to its Float64 centre and radius**; coverage of ideal pi cells is a separate tiling theorem |
| addition | Error <=u/(1-u) times the stored coefficient 1-norm in the normal regime. The extra factor is easily covered by inflation when norm computations are safely bounded, but the comment's bare u factor is not the exact general inequality |
| scalar multiplication | The mathematical bound u times |x|B(P) is valid in the normal regime; its round-to-nearest evaluation is not always an upper bound. The underflow witness below defeats the final padding |
| multiplication | Dropped-degree sums and r_a B_b+B_a r_b+r_a r_b are correct. The recursive dot-product bound gamma(nmax)B_a B_b is correct under normal finite rounding. Norm sums and bound products must themselves be certified |
| truncate_order / raise_order | Mathematically correct; dropping terms requires an outward norm sum, raising only embeds coefficients |
| bound | Even/non-even monomial intervals are correct. The fixed 2^-40 padding needs a bound on the number of coefficients and on rounding/underflow; it is not an arbitrary-order theorem |
| series | Correct Horner enclosure if the ring primitives are valid; input remainder is retained in h |
| cos / sin | Correct four-cycle of derivatives and outward Lagrange remainder. ifact uses exact Float64 factorials through 18 and rejects higher arguments |
| inv | Correct geometric tail, with strict H/|c0|<1 guard |
| sqrt | Correct binomial recurrence and geometric majorant, with c0>0 and H/c0<1 guards |

## Exact failure of the blanket padding claim

For x=prevfloat(floatmin(Float64)) and a=nextfloat(2.0^1023),
the exact scalar product is 2-2^-103, rounded to 2. In
`U*abs(x)*babs(a.c)`, U*x rounds to zero first, so the error allowance
becomes zero before the final `1e-300` padding. The reported remainder
is 1e-300, less than 2^-103. Subtracting 2 produces a final interval that
does not contain the exact value. The unchanged Julia 1.12.1 source
reproduced this failure; the rational verifier independently proves it.

Run from the repository root:

```
julia --startup-file=no --compiled-modules=existing \
  --project=NumericalCampaign/Certification/jlenv_cluster \
  Review/reproduce_fasttm.jl
```

This input is intentionally extreme, not evidence of an actual campaign
failure. It proves that a self-contained unconditional proof of the
current unrestricted implementation specification cannot be supplied.

## What would close the implementation obligation

Either establish an invariant for **all** accepted calculations that
bounds order, intermediate magnitudes, and every roundoff-bound evaluation,
or evaluate the remainder/error bounds with outward intervals. Underflow
allowances must be propagated through subsequent products. A proof that
sampled values are moderate is not an invariant. Overflow, infinities,
and NaNs must fail closed. The generic scalar-division method also converts
arbitrary Real denominators to Float64 without the exactness assertion
used in scalar multiplication; usage should be restricted to exact
Float64-representable scalars or that conversion enclosed.

The generous inflation factor can plausibly cover ordinary finite norm
summation at campaign orders (typically hi=8); this review does not turn
that observation into a claim about the live run's full operand range.
No campaign source has been modified. This is a concrete missing proof
obligation, not a recommendation to interpret existing PASS receipts as
independent arithmetic validation.

Julia permits `muladd` to fuse or not fuse operations. The normal-regime
dot-product proof above accommodates both recursive forms; lack of fusion
alone is not a counterexample. [Julia arithmetic documentation](https://docs.julialang.org/en/v1/base/math/#Base.muladd).

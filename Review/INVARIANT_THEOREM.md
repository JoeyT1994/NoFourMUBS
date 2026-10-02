# Follow-up: the FastTM invariant theorem

The [theorem and complete proof](../ProvenResults/FastTMInvariant/README.md)
are now supplied with an exact verifier and a standalone guarded replay.
The theorem is an enclosure invariant, not an assertion that arbitrary
floating expressions stay in a fixed magnitude range automatically.

For each model P+[-r,r], the guards require order <=12 and
sum|coefficients|+r <=2^40. Scalar conversions must be exact, scalars and
interval midpoint deviations are bounded by 2^40, and nonfinite data
fail closed. Subnormals are allowed. Under these conditions the source's
existing 2^-30 inflation and 1e-300 padding rigorously dominate the total
coefficient-rounding and propagated-underflow errors. The 2^-40 padding
used by `bound` is separately justified. Intrinsic and binomial-root
composition then preserve the enclosure by induction.

The proof explicitly includes order 12, which hform.jl can choose after
its first order-8 attempt. It counts 1,820 coefficients, 125,970 retained
product pairs, and at most 256 products in one output coefficient.

The temporary guard instrumentation preserves the original floating
arithmetic expressions and adds conservative rejection conditions. It
checks the source hash and exact replacement counts, and writes no
campaign source. The local replay uses the repository's exact X6 centre
bits and radius Float64(pi/512)+2^-40; it constructs the H+ Taylor model
without running the common-ray campaign search. Controls also cover
order-12 intrinsics, exact subnormal arithmetic, and guard rejection.
The replay receipt is in `Review/invariant_replay/`.

The replay passed 5,405 carrier model construction/range checks. Its
largest certified norm bound was 5327.28774767383, far below 2^40; this
particular carrier used order 8. The separate intrinsic controls exercised
order 12. All 25 rejection/subnormal/intrinsic controls passed, and the
registered rational/integer proof check passed in the isolated root runner.
These observations establish the guards for this local replay only.

**Remaining distinction:** the theorem proves every accepted guarded
trace. It does not establish the guard condition for every acceptance
already recorded by the unguarded live campaign. Those source logs lack
the necessary operand checks; guarded replay or a separate whole-program
range proof is still required to transfer this result to all past cells.
The original extreme-operand counterexample remains valid outside the
proved domain. Reconstruction and global coverage assumptions remain
independent.

Merge `ProvenResults/FastTMInvariant/`, its one root registration, and
these review/index updates. No NumericalCampaign file changed.

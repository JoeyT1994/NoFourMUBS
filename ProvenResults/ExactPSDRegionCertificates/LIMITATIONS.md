# Limits and unsuccessful targets

## What was actually closed

The 14 region certificates cover the 7,553 selected low-R records from the
supplied unresolved-pairing file. Their cap is independently proved from
exact geometry. They do not cover all 14,164 records or the entire shoulder.

The 14 regions are intersected with R<=1. Removing that condition would
invalidate the Bernstein interval and the sign argument. The full angular
hulls are not claimed to have R<=1; some have center R>1. The independent
79-model coverage proof is precisely what justifies the cap on every
selected source leaf.

## Named residual patches

Whole-box tests were attempted for the four representative cases near
`(2,4,4,2)` and `(4,5,0,3)` in the supplied representative-cases file.
No successful exact whole-box witness for those four cases is included.
No failed proposal is used in the acceptance data.

Near `(2,4,4,2)`, the side-denominator product can be extremely small.
The present unscaled-coefficient Taylor test loses too much information
there; clearing the denominators also produces very small raw polynomial
minors, for which the fixed absolute 2^-80 grid used in the successful
regions is not an adequate generic choice. Higher arithmetic precision
alone has not been proved to overcome the coefficient-enclosure losses.
Near `(4,5,0,3)`, the attempted whole-box bounds likewise did not establish
negative Bernstein coefficients. These are failures of these tests, not
counterexamples to strict-D0 exclusion on the particular residual patches.

The successful certificate does not purport to be the requested factorization
`-D m=R^k P`, nor an expanded seed-variable SOS. It is the other allowed type:
a polynomial equality with the radical ideal term and separately exact
whole-region nonnegativity certificates for its multipliers.

## Necessary physical negative control

The exact family in PROOF.md Section 9 has strict-D0 seeds approaching
`(4,5,0,3)` with R>0. The checker proves its 400-corner census over a Laurent
cyclotomic ring. Consequently no theorem excluding *all* strict-D0
completions on an unrestricted neighborhood of that sixth-root seed can
hold. A successful future certificate for the residual patch must preserve
its additional geometric constraints or exclude that actual physical curve.

## Formal proof status

The new exact checker was run, including the original gzip selection and
negative controls. It is not a Lean proof, and it does not discharge the
existing ClassificationPaper imports behind the fixed-corner matching
result. Those imports and source proofs are explicitly pinned. The claim
is a checked exact certificate relative to that reconstruction interface,
with its arithmetic and analytical enclosure argument provided in full.

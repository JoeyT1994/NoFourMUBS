# Independent review request

Review the mathematical soundness, implementation, and recorded evidence
for the whole-original-ball all-K certifier in this directory. Start with
[REVIEW_HANDOFF.md](REVIEW_HANDOFF.md), then read [PROOF.md](PROOF.md) and
the linked sources. The implementation under review is commit
`bd87c694752357dcd31571aa3377461d4dd03cca`; the exact source/atlas binding
is `aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7`.

The claimed result is twelve closed cases out of thirteen original seed
balls: six universally classified and six empty. Priority cases are
1864 (classification at original radius 0.08) and 2200 (empty at original
radius 0.125). Ball 2300 retains two unresolved patterns. The unavailable
approximately 200-ball survivor list has not been certified, and the
separate X-ball is outside this driver.

Check the complete chain from original coordinates and whole-ball model,
through all-K cover preservation, conditional contractions, exclusions,
exact symmetry forcing, and analytic recognition. Focus on the new
quadratic-model enclosure, coupled six-column contraction, and batched
fine-bin fallback. Independently scrutinize inherited Stage C binary64
error enclosures and their applicability to the new call sites. Do not
treat a passed numerical replay, small fit residual, or matching hash
as a proof of an analytic inequality.

Use the handoff's integrity checks and replay commands. Preserve the
frozen evidence; put any experimental changes in a separate copy and
write fresh receipts. A full thirteen-ball replay is expected to exit 2
because 2300 remains unresolved. Report findings by severity with source
location, exact failing implication or missing evidence, affected claims,
and a concrete repair or verification. State which dependencies you have
independently checked and which remain trusted. If no errors are found,
give the scope of the review rather than asserting a global theorem.

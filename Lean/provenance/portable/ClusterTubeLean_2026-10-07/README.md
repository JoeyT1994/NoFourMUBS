# The 36 retained boxes: Lean reduction to one explicit cover obligation

The connected Lean theorem `retained36_no_live_of_centre_cover` (in `lean/ApproximateF6GraphExclusion.lean`) excludes every live maximal-quartet phase point in the 36 literal closed boxes **conditional on `ApproximateF6CentreCover`**. See the exact declarations in that file; this is not an unconditional exclusion certificate.

The missing statement is concrete: every dephased raw unit-entry ray whose six raw Fourier overlap magnitudes differ from sqrt(6) by less than 1/5 belongs to at least one of the 48 exact rational-centre projector balls of radius 5/27. Projector distance is the operator norm after normalizing each vector by sqrt(6).

## What is checked

The source closure connects the original physical, dephased, maximal Hadamard and its actual closed seed box to a common monomial Fourier reference at column-projector distance less than 3/100. It transports both remaining bases of an actual quartet simultaneously into the approximate Fourier-ray domain, preserving exact orthogonality and unbiasedness.

The graph argument is now formal: exact unit centres, all 2304 ordered pair implications including the diagonal, sharp orthogonality compatibility, unbiased compatibility, and the literal six-plus-six graph refutation. The unbiased bound uses `(p+5/192)^2 <= (2/3)*p`; its allowed edge set matches the supplied graph. A weaker orthogonality bound was tested and rejected because its graph has a six-plus-six survivor. That survivor is not a physical MUB configuration.

The 14 declarations of the final centre interface have a guarded kernel replay, standard-only axiom audit, and independent semantic review. Supporting sources and receipts are included; the additional reviews identify their precise scopes. The earlier 36-box physical proximity packet remains unchanged at `../Seed0024LocalExclusion_2026-10-07`.

## What remains

`ApproximateF6CentreCover` is an explicit hypothesis. Work is ongoing on sound scalar rejection, whole-cell ball inclusion, trigonometric table bounds, the complete 32-child phase cover, and concrete certificate-tape acceptance. The supplier numerical cover counts are not Lean proof and are not substituted for this hypothesis. No additional boxes are marked unconditionally Lean-closed by this publication. This packet does not establish the full no-four-MUB theorem.

## Reproduction

Run `python3 verify_inventory.py` for source/receipt integrity and local import closure. This is not a mathematical verifier. For a kernel replay, install the pinned Lean toolchain and run `lake update` then `lake build`. The Lake project pins Mathlib commit `51e6992efd06126df61a496bebf8f49482a4e129`; no build products are included. Local successful receipts reused the recorded Mathlib cache; a fresh source-authenticity rebuild of Mathlib has not been claimed.

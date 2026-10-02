# Signed-corner PSD prune — retained result

**972/1,000 whole seed boxes certified outside strict D0**, conditional on the
explicitly accepted reconstruction inputs in `INPUTS.json` and `PROOF.md`.
**All 688 boxes in the three requested stationary classes close.** All 511
previous exclusions are retained; 461 additional boxes close. The 28 remaining
boxes all have nearest-class metadata `(1,2,2,4)` and are listed in
`UNRESOLVED.json`.

| Class metadata | Boxes | Old mean | Fast | Root extra | Bounded | Bounded CPU-s/box |
|---|---:|---:|---:|---:|---:|---:|
| 0,0,2,4 | 88 | 88 | 88 | 88 | 88 | 0.005107 |
| 0,2,3,0 | 318 | 128 | 313 | 313 | 318 | 0.013591 |
| 0,2,3,2 | 49 | 39 | 49 | 49 | 49 | 0.005018 |
| 1,2,2,4 | 207 | 10 | 161 | 179 | 179 | 0.055480 |
| 2,4,4,2 | 321 | 229 | 284 | 284 | 321 | 0.056216 |
| 4,5,0,3 | 17 | 17 | 17 | 17 | 17 | 0.005207 |
| **Total** | **1,000** | **511** | **912** | **930** | **972** | **0.034636** |

## Mechanism

For a side with columns v_l and signed complementary-corner values f_l, strict
D0 requires `qG +/- sum_l f_l v_l v_l^dagger` to be PSD, where `q=sqrt(R)` and
`G=sum_l v_l v_l^dagger`. Its off-diagonal entries retain information lost by
the signed mean. All entries follow from 31 symmetric Laurent moments whose
coefficients are affine in the single real radical variable. The cleared
version eliminates P denominators before interval differentiation. A second
family uses a known column and the other two side columns.

At a certified non-Tao box, the already accepted matched-completion exhaustion
couples horizontal and transposed side signs oppositely. The controller proves
Tao absence on the whole box before applying that shortcut; otherwise all four
sign combinations remain. Closed q covers and, when necessary, exact bounded
seed subdivisions give whole-box certificates. No carrier chart, matrix radius,
SideTriplePrune label cover, or quantitative inactive-class gap is assumed.

## Timing and verification

Serial, warm-core predicate CPU times were **8.727 s**, **16.964 s**, and
**34.636 s** for the 1,000-box fast, root-extra, and bounded pilots, respectively.
The associated driver CPU and wall times are in the summary JSON files.
The old archive's 439.810 s is a separate-run reference, not a controlled
same-hardware speed comparison. The bounded pilot's maximum per-box cost was
1.787 CPU-s. No cluster run or full-list campaign scan was performed.

The final verification was run from a freshly extracted original ZIP with only
this additive module overlaid, from outside the repository working directory,
with a fresh compiler cache and four spawned workers. It passed all 3,000
retained records and **13,971 independently replayed negative-minor witnesses**.
The bounded record alone contains 1,299 complete seed leaves and 5,398 such
witnesses; every accepted leaf uses a PSD witness, rather than merely R<=0.
The maximum accepted subdivision depth is 7 and maximum node count is 89,
within the configured bounds 8 and 255.

The replay also passed exact determinant/moment identities, 2,413 exact-rational
binary64 arithmetic enclosures, all 15 jet entries, 896 independently evaluated
exact-rational coefficient values, all six physical strict-D0 negative controls,
unequal-radius controls, and rejection of deliberately incomplete seed/sign
covers. The physical control family's Hadamard and 400-corner maximality
identities are regenerated exactly. The final receipt and log are in
`../../Verification/signed_corner_psd_2026-09-30/`.

These are rigorous certificates for the retained boxes, conditional on the
labeled accepted inputs and stated arithmetic software trust base. They are
not a claim that the full stationary-class neighborhoods or all residual boxes
have been excluded. `ok=False` on the 28 unresolved boxes is inconclusive.

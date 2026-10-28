# Original-ball replay — coupled basis and fine-bin refinement

**CERTIFIED:** every completing third basis on original balls 1500, 1700, 1864, 1879, 1881, and 1900 is of Conjecture 1 type. Original balls 100, 500, 1100, 2200, 2500, and 2700 are certified empty. The original four coordinates, mathematical centres, and radii are retained throughout. There is no subdivision of the H domain.

**NOT ESTABLISHED:** ball 2300 has two unresolved patterns. Universal success on the approximately 200 survivors is not claimed: their exact index list remains inaccessible on Rusty. These 13 selected balls are a regression set, not a substitute for that list.

| Original index | Original radius | Whole-ball result | Classified / excluded / unresolved patterns | Seconds |
|---:|---:|---|---:|---:|
| 100 | 0.125 | CERTIFIED EMPTY | 0 / 0 / 0 | 4.23 |
| 500 | 0.1 | CERTIFIED EMPTY | 0 / 3 / 0 | 22.15 |
| 1100 | 0.1 | CERTIFIED EMPTY | 0 / 4 / 0 | 34.93 |
| 1500 | 0.0925 | CERTIFIED | 8 / 0 / 0 | 18.63 |
| 1700 | 0.08 | CERTIFIED | 6 / 4 / 0 | 32.64 |
| 1864 | 0.08 | CERTIFIED | 7 / 18 / 0 | 61.19 |
| 1879 | 0.063 | CERTIFIED | 10 / 0 / 0 | 38.93 |
| 1881 | 0.063 | CERTIFIED | 10 / 1 / 0 | 36.81 |
| 1900 | 0.052 | CERTIFIED | 8 / 0 / 0 | 18.10 |
| 2200 | 0.125 | CERTIFIED EMPTY | 0 / 2 / 0 | 7.26 |
| 2300 | 0.1 | NOT ESTABLISHED | 0 / 2 / 2 | 59.28 |
| 2500 | 0.125 | CERTIFIED EMPTY | 0 / 1 / 0 | 5.31 |
| 2700 | 0.02 | CERTIFIED EMPTY | 0 / 2 / 0 | 1.75 |

Timings include fresh C1 and whole-ball model checks, from four independent workers on this machine. They are measurements for these inputs, not a runtime guarantee.

## What closed the requested cases

For **1864**, the complete whole-ball cover leaves 25 color patterns. Seven pass the symmetry classification, and 18 are excluded. The new coupled-basis contraction shrinks the five previously difficult patterns to individual affine errors below 0.001873 radians. The full-basis scalar support test then excludes them by strict Arb inequalities. This contracts all six K columns together and preserves their common original w.

For **2200**, a sharper Phase-H enclosure follows from the already verified quadratic model on the full original radius 0.125. Its normal bound is below 0.007474658 radians, compared with the stored C1 normal allowance of about 0.008659212. This is an improved enclosure of the same ball. Both remaining patterns are excluded by bin/column orthogonality; the whole ball is empty.

For **1700**, the coupled contraction closes two additional patterns by scalar exclusion. For **500** and **1100**, replaying the necessary pair tests on the original fine bins, instead of their larger coarse labels, makes every six-color clique search empty. Pair results are cached across patterns, and all candidate edges are tested in bounded batches.

## Remaining case: 2300

The fine-bin fallback excludes patterns 2 and 3. Patterns 0 and 1 survive and are honestly reported unresolved. Arc consistency reduces their bin counts from 3,652 and 4,843 to 391 and 596 respectively. After refitting and conditional contraction, their final symmetry bounds are approximately 3.62032 and 3.63035, above the required strict threshold 1. Their independent column affine errors are roughly 0.20–0.24 radians. No counterexample or emptiness claim follows.

Exploratory one-sided quadratic scalar bounds and a total K-error estimate did not close these two cases. Neither is used as acceptance evidence in this release. A finer coupled localization or a valid exhaustive subdivision fallback remains to be developed for this case.

## Evidence and deployment

`native_coupled_fine_original_balls.jsonl` records every pattern, including the two unresolved ones. Its adjacent `.manifest.json` binds the original atlas, source files, proof, recognition argument, arithmetic documentation, runtime versions, and requested index set. The `.log` file preserves the full output. `native_coupled_fine_unit_tests.log` records 11 passing tests.

Current source/atlas binding: `aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7`.

`native_original_balls.*` and `native_unit_tests.log` are retained as historical evidence for the preceding release and have their own source binding. New sources require new output receipts; resume intentionally rejects a changed binding.

The local NumPy build emits matmul warnings even on finite results; these remain in the logs. Acceptance uses the existing documented Stage C error enclosures and new strict Arb checks. Numerical roots, inverses, fits, and symmetry matches only propose data.

The deployment archive includes the atlas and every source/proof dependency. Run the README batch command with the actual survivor-index file when available. Global combination with Rusty emptiness certificates and the separate X-ball remains outside the present certified result.

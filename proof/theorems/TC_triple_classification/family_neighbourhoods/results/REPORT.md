# Local replay outcomes — 2026-10-27

**CERTIFIED:** every completing third basis on original balls 1500, 1881, and 1900 is of Conjecture 1 type. Their original native coordinates, centres, and radii were retained. No subdivision or reduced input radius was used. This adds to the previously certified full ball 1879; that earlier result is not counted in this new batch.

**NOT ESTABLISHED:** universal success across the approximately 200 survivors. The index list on Rusty was inaccessible, and the local sample is not a replacement for it. Six sample balls remain unresolved. A failed sufficient inequality is not a counterexample.

| Original index | Original radius | Whole-ball result | Classified / excluded / unresolved patterns | Seconds |
|---:|---:|---|---:|---:|
| 100 | 0.125 | CERTIFIED EMPTY | 0 / 0 / 0 | 6.20 |
| 500 | 0.1 | NOT ESTABLISHED | 0 / 0 / 3 | 12.01 |
| 1100 | 0.1 | NOT ESTABLISHED | 0 / 0 / 4 | 17.06 |
| 1500 | 0.0925 | CERTIFIED | 8 / 0 / 0 | 17.72 |
| 1700 | 0.08 | NOT ESTABLISHED | 6 / 1 / 2 | 29.27 |
| 1864 | 0.08 | NOT ESTABLISHED | 7 / 14 / 5 | 53.15 |
| 1881 | 0.063 | CERTIFIED | 10 / 2 / 0 | 35.50 |
| 1900 | 0.052 | CERTIFIED | 8 / 0 / 0 | 17.37 |
| 2200 | 0.125 | NOT ESTABLISHED | 0 / 1 / 1 | 11.82 |
| 2300 | 0.1 | NOT ESTABLISHED | 0 / 2 / 4 | 19.78 |
| 2500 | 0.125 | CERTIFIED EMPTY | 0 / 1 / 0 | 6.75 |
| 2700 | 0.02 | CERTIFIED EMPTY | 0 / 2 / 0 | 1.71 |

The timings come from four independent worker processes on this local machine, with one numerical-library thread per worker. They are measurements for these inputs, not a runtime guarantee for the missing survivor list. Fresh C1 and whole-ball model checks are included. Empty ball 100 has no surviving color pattern after complete graph pruning.

The new classifications exercise the symmetry at the H anchor (balls 1500 and 1900) and at the K anchor (ball 1881). They use no executable code or special ray census from the R=0.153 fourth-root handoff. The general symmetry-recognition proof remains an explicit, source-bound analytic dependency.

## Remaining work

- Obtain the actual survivor indices for the pinned atlas and run the batch against that exact list. No empty-ball status from Rusty has been imported or inferred here.
- Tighten the remaining conditional column/basis enclosures. Ball 1864 has five unresolved patterns after 14 exclusions and seven classifications; its final symmetry bounds are just above one. Ball 2200 retains one poorly localized pattern. Other unresolved sample indices are 500, 1100, 1700, and 2300.
- Establish a successful fallback for those unresolved patterns. Additional independent-column refinement and naive orthant recentering were investigated locally but do not yet supply a whole-ball closure; no acceptance is based on them.
- The separate X-ball and global conjunction with the atlas and remote emptiness certificates remain outside this release.

## Evidence and replay

`native_original_balls.jsonl` contains all 12 receipts, including every unresolved pattern. `native_original_balls.jsonl.manifest.json` binds the atlas, source files, proof, arithmetic documentation, runtime versions, and requested indices. `native_original_balls.log` preserves the full run output. `native_unit_tests.log` records eight passing regression tests. The local NumPy build emits matmul runtime warnings even on finite outputs; the logs retain them. Acceptance is determined by the documented Stage C error enclosures and new strict Arb checks.

Use the README command with the same indices to replay all inequalities. Receipts are audit records, not independently trusted substitutes for replay. The source/atlas binding was rechecked after the run and matched every receipt.

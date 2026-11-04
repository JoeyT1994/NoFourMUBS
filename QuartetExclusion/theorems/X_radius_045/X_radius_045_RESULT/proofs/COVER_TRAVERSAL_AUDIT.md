# Independent cover traversal audit

Scope: completeness and plumbing only. The rejection inequalities and graph mathematics are outside this audit. No frozen graph certificate source or receipt was changed.

## Source identities

| File under `work/x2_cover` | SHA-256 |
| --- | --- |
| `rho_04_cubic/verify_cover.py` | `9bd5cf9e24454c82e1e084f408145b25139289915fdae5e9c6b512f67b493950` |
| `rho_045_tr/verify_cover.py` | `f1acdada3526dec1494b7048d2e8945c1177574fa70f6c2fcaa8f1805b6037c6` |

Both sources were unchanged between the start and end of the audit.

## Conclusion

The two source traversals are complete and fail closed under ordinary Python execution with assertions enabled. No dropped leaf, skipped witness, unchecked worker result, or phase-wrap omission was found.

1. Initialization is exactly `product(range(12), repeat=5)`, covering all five independent phase circles after fixing the first entry's phase. Each index is the closed cell `[2*pi*b/M, 2*pi*(b+1)/M]` in that coordinate.
2. Every cell receives exactly one code because the code stream length is asserted equal to the deterministic cell list length before `zip`. Every code is a subdivision, a checked cover label, or a checked rejection. Unknown code values fail.
3. Every subdivided parent produces `product((0,1), repeat=5)`, all 32 children, with indices `2*b+child`. The expected denominator doubles. The child boxes cover the entire closed parent box; shared faces are harmless.
4. The next level's node count is asserted against the actual generated child list. A final PASS requires an empty child list, so an omitted level or unfinished branch fails.
5. The .40 witness stream has exactly six signed integers for every code 14--17 and is consumed to exhaustion. The .45 stream has six signed integers for codes 14--17 and seven for code 18; the exact byte length and final byte offset are both checked. Code 18's extra integer is retained as its lambda witness, with bounds checked by `reject`.
6. Every heavy batch is submitted once. Finished futures are removed from the pending set, their `result()` is read, and a reported failure or exception aborts. Remaining futures are all awaited at the end of each level. Checked and submitted job counts must agree. The last partial batch is flushed. Rebinding the submitted batch list does not mutate its contents.
7. Worker checker caching is safe for these standalone runs: centers and denominator remain fixed throughout a run, and the cache key includes the level denominator and radii.
8. Phase-wrap handling is conservative. The componentwise wrapped difference from a box center to a quantized label is a valid phase lift. Its mean-free norm is the implemented square root of `sum(dif^2) - sum(dif)^2/6`. It need not minimize over all lifts to provide an upper bound. Any point in the closed cell differs from its center by `(0,x_1,...,x_5)` with `|x_j| <= pi/M`; its mean-free norm is at most `sqrt(29/6)*pi/M`. Thus the checked triangle bound covers endpoints too, including the identified 0/2*pi face. Trigonometric lookup indices are reduced modulo `2*M`; all generated M are multiples of 12.
9. The manifest's rho, geometric constants, witness scale, 48 radii, denominator, center dimensions, level denominators, node counts, refined counts, and covered counts are checked. The receipt's `witnesses` field is informational in the main verifier; the stronger stream-length and exhaustion checks enforce actual consumption.

## Independent .40 data accounting

An independent count-only pass over the compressed codes and witnesses checked all 4,250,624 node records, legal code values, exact witness byte counts, the manifest's witness counts, and all parent/child counts. The terminal cell volumes sum to exactly 1 as a rational number; the final refined count is zero.

| M | Nodes | Covered | Rejected | Refined |
| --- | ---: | ---: | ---: | ---: |
| 12 | 248832 | 0 | 169800 | 79032 |
| 24 | 2529024 | 816 | 2505648 | 22560 |
| 48 | 721920 | 113800 | 585000 | 23120 |
| 96 | 739840 | 492820 | 246676 | 344 |
| 192 | 11008 | 10604 | 404 | 0 |

## Independent .45 data accounting

After the .45 data were completed and frozen, an independent count-only pass checked all **5,408,512 node records**, legal code values, manifest constants and radii, exact witness byte counts, the manifest's witness counts, and all parent/child counts. The verifier's SHA-256 still matched the source audited above. The source, manifest, centers, and compressed code/witness files were unchanged between the beginning and end of this data audit.

| M | Nodes | Covered | Rejected | Refined | Witness bytes |
| --- | ---: | ---: | ---: | ---: | ---: |
| 12 | 248832 | 0 | 150792 | 98040 | 224928 |
| 24 | 3137280 | 816 | 3107976 | 28488 | 12544656 |
| 48 | 911616 | 121284 | 756680 | 33652 | 17034144 |
| 96 | 1076864 | 678704 | 397100 | 1060 | 9888336 |
| 192 | 33920 | 32200 | 1720 | 0 | 47040 |

The audit consumed exactly 24 bytes for each code 14--17 and 28 bytes for each code 18, in code order, with the resulting offset equal to the decompressed witness length at every level. Terminal cell volumes sum to **exactly 1** as a rational number, and there are **zero open leaves**. The quantized-center file matches the frozen graph's center file byte-for-byte by SHA-256.

The compact receipt is `rho_045_count_audit_receipt.json`, SHA-256 `443998501b3a68c2922781c1a75af2e5286e9675a9b23f4f312ebdf4c3748fef`. It includes the .45 manifest hash and every compressed code/witness hash. This pass checked completeness and byte accounting only; it did not rerun the costly interval inequality checks. Those remain the responsibility of the separate full exact replay.

## Compositional requirements

- Run with assertions enabled: no `-O` and no nonzero `PYTHONOPTIMIZE`. A driver can enforce this explicitly before invoking the verifiers.
- The standalone cover verifier records, but does not compare against external expected values, its center and tensor hashes. The compositional driver must bind the center hash to the frozen graph certificate and the tensor hashes to the verified geometry. The observed .40 center hash was `290f650c32281be105cea9b1a6f0680c604a68473f54171da7a5cc5523077eba`, matching the frozen graph manifest. Both cover directories' quadratic and cubic tensor hashes matched each other at audit time.
- A PASS receipt is evidence of the corresponding completed run; it is not a substitute for replay if the source or witness files have changed. This audit's conclusions apply to the source identities above.

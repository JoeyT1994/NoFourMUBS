# Independent Arb replay of the second-order test

## Result

**PASS: 1,620 of 1,620 selected NEW-only rejection comparisons were certified
with Arb at 160-bit precision.** Every comparison passed the strict check

\[
 \operatorname{lower}(|y\cdot c|)
 >\operatorname{upper}(U+E_3+E_\nu).
\]

The smallest certified margin was

\[
 1.033361105741680716643794330264580288957\times10^{-7}
 \quad\text{with interval radius below }4.95\times10^{-47}.
\]

The corresponding fixture is Record 100, `R=0.12` radians, `M=96`, with
midpoint numerator vector `(0,3,67,25,79,167)` over 192.

| Record | R = 0.08 | R = 0.12 | R = 0.16 | Total certified |
|---|---:|---:|---:|---:|
| 100 | 90 | 90 | 90 | 270 |
| 2471 | 90 | 90 | 90 | 270 |
| 5305 | 90 | 90 | 90 | 270 |
| 9889 | 90 | 90 | 90 | 270 |
| 146 | 90 | 90 | 90 | 270 |
| 11640 | 90 | 90 | 90 | 270 |
| **Total** | **540** | **540** | **540** | **1,620** |

Each table cell contains 18 fixtures at each of `M=6,12,24,48,96`: nine selected
for the smallest observed floating rejection margins and nine sampled randomly
from the remaining NEW-only candidates. Collection considered 4,401,824 direct
candidate bins, of which 1,191,093 reached the tangent tests; 182,173 were
NEW-only candidates. Parent populations were sampled down to at most 2,048
between levels. This is **not** an exhaustive search for the smallest margin
in a Record or in the atlas.

All 1,620 old exact-formula tests also retained their bins at the original
`1e-7` guard. There were **zero forced-coordinate mismatches** between the
floating proposal and independently verified interval derivative inequalities.

## What was independently recomputed

`replay_arb.py` imports only the standard library and `python-flint`; it does
not import the plugin, NumPy, Stage C, or the benchmark harness. It reads the
binary64 inputs `P,T,y,r,rF,rH,n,K` exactly from hexadecimal strings and then:

1. Checks bin-midpoint provenance by exact integer arithmetic.
2. Computes `q_ji=exp(2πi(k_j/192-P_ji))/√6` directly with Arb/Acb.
3. Recomputes `S,c,J` and constructs the nine-variable quadratic coefficient
   matrix from the pair formula. This differs from the plugin's `q/alpha`
   matrix-contraction implementation.
4. Evaluates the cheap block support and the 32-vertex support. Forced
   coordinates are independently justified by interval derivative bounds,
   including the `1e-8` guard. Both spectral upper bounds are recomputed.
5. Evaluates the normal error with the row-sum defect repair and both the
   uniform and split cubic-error formulas.
6. Proves the strict comparison using a lower bound on the left side and an
   upper bound on the right side.

Every minimum, maximum, absolute value, square root and exponential in the
independent replay is an Arb interval operation. Floating values are used for
input decoding and ancillary diagnostics, not to decide the certified rejection.

## Observed floating-formula discrepancies

These are upper bounds rounded upward from the maximum interval discrepancies
over the 1,620 fixtures, comparing each recorded binary64 formula value with
the independently recomputed real-formula interval:

| Quantity | Maximum observed absolute discrepancy is below |
|---|---:|
| Left side `|y·c|` | `1.990e-16` |
| Quadratic support | `8.751e-17` |
| Cubic error | `3.192e-17` |
| Normal error | `4.090e-18` |
| Complete right side | `9.051e-17` |

These measurements support the implementation audit. They do **not** establish
a global binary64 rounding theorem beyond the tested fixtures. The actual
rejection decisions above are independently certified without relying on these
observed discrepancies.

## Scope

This is a certificate of the listed **arithmetic comparisons conditional on
the supplied geometry bars and the proved analytic inequalities**. It does
not certify the geometric bars themselves, the entire bin tree, the label or
graph phase, every comparison made in a survey, the complete atlas, or a Lean
kernel proof. The collector obtained the bars from the supplied BallRecord
workflow, including its frame-rounding allowance; that workflow is provenance,
not an additional geometry proof performed by this verifier.

The selected bins were retained by the original tangent test and rejected by
the final plugin's public entry point during fixture collection. Their exact
integer midpoint and binary64 multiplier are preserved. The plugin is used
only for collection; replay is independent of it.

## Reproduction and files

Tested with Python 3.12.14 and `python-flint` 0.9.0. The independent replay
requires only `python-flint` in addition to the Python standard library.
From this directory, run:

```sh
python replay_arb.py
```

In the supplied execution environment the dependency directory was external
to the deliverable, so the command used was:

```sh
PYTHONPATH=/tmp/n_stagec_deps python work/verification/replay_arb.py
```

The verifier's defaults find the adjacent fixture file and rewrite the adjacent
result and summary files. Optional flags include `--precision`, `--fixtures`,
`--output`, `--summary`, and `--limit`. Fixture collection can be reproduced
with the original input bundle and its dependencies:

```sh
PYTHONPATH=/tmp/n_stagec_deps python work/verification/collect_arb_fixtures.py --radii .08,.12,.16
```

- `arb_fixtures.json.gz`: exact input data, numerical proposal values,
  selection statistics and source hashes.
- `arb_replay_results.jsonl`: one interval replay result per fixture.
- `arb_replay_summary.json`: aggregated result and hashes.
- `collect_arb_fixtures.py`: fixture collection, permitted to import the plugin.
- `replay_arb.py`: the independent interval verifier.
- `collection.log`, `arb_replay.log`: execution logs.

Collection took approximately 22.4 seconds and the 1,620-comparison replay
approximately 4.6 seconds in this environment. These are diagnostic timings,
not a Stage-C or Lean-kernel performance benchmark.

### Provenance hashes

- Plugin: `475cf92dbc86bc171e021d690b8f525024ba55e74aa513c40bd51cbe4e93a023`
- Fixtures: `e6acc00e272c1743df2acf1793820488882386af76ffcc9489788899d6326bb8`
- Verifier: `884b7dfc42e7310c219b12197f6352e6417ab1bdb9fe75c939ab6c7cfef6b18b`

The JSON summary records the same hashes. Changing the verifier naturally
changes its recorded source hash on a subsequent run.

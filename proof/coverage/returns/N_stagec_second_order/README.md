# Handoff N: second-order Stage C results

Read **REPORT.md** for the complete result, exact N1 and N2 proofs, final
measurements, validation evidence, qualifications, and integration plan.
The report distinguishes **PROVED**, **CERTIFIED**, **NUMERICAL**, and
**NOT ESTABLISHED** claims. The supplied input snapshot is NoFourMUBs
commit `73152c64`.

## Main deliverables

| Path | Contents |
| --- | --- |
| `REPORT.md` | Complete report, including the full mathematical proofs |
| `work/stagec_second_order.py` | Final drop-in `tangent_tests2` and cheaper support alternative |
| `work/quadratic_proof.md` | Standalone N1 proof and bounded binary64 error budget |
| `work/formal/SECOND_ORDER_NORMAL.md` | N2 proof, small-root conditions, and chart correction |
| `work/formal/Quadratic.lean` | Exact residual definitions and candidate logical consumer proofs |
| `work/formal/QuadraticCert.lean` | Candidate adapter preserving the existing `StageCCert` interface |
| `work/formal/KERNEL_INTEGRATION.md` | Integer coefficient circuit, error bridges, and integration obligations |
| `work/survey/final_summary.md` | Final numerical aggregates and all six named-record comparisons |
| `work/survey/final_summary.csv` | Per-record numerical results and total counts |
| `work/survey/final_levels.csv` | Per-level survivors, test counts, and timings |
| `work/survey/final_new.jsonl` | All 1,224 completed final record/configuration outcomes |
| `work/survey/source_provenance.json` | Mapping from run hashes to retained source snapshots |
| `work/verification/arb_fixtures.json.gz` | Exact inputs for 1,620 selected new rejection comparisons |
| `work/verification/replay_arb.py` | Independent interval replay requiring only python-flint |
| `work/verification/arb_replay_summary.json` | Interval replay receipt and provenance |
| `work/verify_quadratic_exact.py` | Exact rational algebra and finite support verification |
| `work/verification/verify_identities.py` | Second independent exact identity check |
| `work/verification/validate_numerical.py` | Feasible perturbation checks against direct exponentials |
| `work/optional/tangent_irls.py` | Compatible filter using up to five extra multiplier proposals per retained bin |
| `work/optional/ADAPTIVE_SURVEY.md` | Complete primary-then-retry sample procedure at radius 0.12 |
| `work/optional/adaptive_records.csv` | All 301 policy outcomes, including both attempts' costs |
| `work/optional/README.md` | Separate three-record IRLS pilot and its additional per-bin cost |
| `inputs/` | Original source and atlas data supplied with the handoff |
| `BRIEF.md`, `README.txt` | Original task and original input-bundle description |

The two new Lean files are **uncompiled candidates**. Their analytic bounds
are explicit hypotheses, and the production integer checker is unchanged.
The bundle does not claim a complete Lean formalization or a recertified atlas.

## Reproduce

Run from this directory after extracting the complete bundle. The retained
relative layout of `inputs/` and `work/` is required by the scripts.

```bash
python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
sha256sum -c SHA256SUMS
python work/verify_quadratic_exact.py
python work/verification/verify_identities.py
python work/verification/replay_arb.py
python work/verification/validate_numerical.py
```

The exact algebra verifiers use only the Python standard library. Independent
interval replay additionally requires `python-flint`. The survey and numerical
perturbation checks require the full pinned dependency set.

To reproduce the final full survey in a new output file:

```bash
python work/survey/benchmark.py \
  --records six+sample40 --methods second_order \
  --configs .08:48,.08:96,.12:96,.16:96 \
  --plugin work/stagec_second_order.py --second-order-start 12 \
  --workers 4 --output reproduced_new.jsonl
```

The one-in-40 sample is exactly `0,40,...,12000`, totaling 301 records.
Adding the six named records gives 306 distinct records. All reported radii
are fixed experiment radii, so they enlarge some originally shrunk records.
`R` is in radians; the filter's geometric inputs are in cycles.

For the matched original baseline:

```bash
python work/survey/benchmark.py \
  --records sample40 --methods baseline --configs .08:96 \
  --workers 1 --output reproduced_baseline.jsonl
python work/survey/summarize.py reproduced_baseline.jsonl reproduced_new.jsonl \
  --output-prefix reproduced_summary
```

The harness limits each worker to one BLAS/OpenMP thread. Four workers were
used for the final run. Reduce `--workers` if memory is limited. Every outcome
is written immediately, and interrupted runs can resume. Graph caps are
reported as unresolved exclusions and are never counted as passes.

At `R=0.12`, a separate complete policy first uses the primary filter, then
retries every unresolved sample record with `tangent_tests_irls`. The delivered
`adaptive_policy.json` freezes the primary outcome and the complete retry list.
This policy retains a primary success without retrying that record. Its counts
include both attempts on retried records. It is not a standalone full-sample
IRLS run, and it is not pooled with the primary implementation's pass rate.

```bash
python work/optional/adaptive_survey.py prepare
python work/optional/adaptive_survey.py run --part all --workers 4
python work/optional/adaptive_survey.py summarize
```

The delivered retry outcomes make these commands resume without repeating
completed work. See `work/optional/ADAPTIVE_SURVEY.md` for a fresh-run procedure.

## Provenance and exploratory work

`INPUT_SHA256SUMS` is the checksum manifest from the supplied handoff, renamed
to preserve it alongside the new bundle-wide `SHA256SUMS`. The original inputs,
brief, proxy scripts, and original README are unchanged. Run checksum checks
before scripts that regenerate receipts, because regenerated timing or receipt
metadata may differ.

The primary final implementation is **only** `work/stagec_second_order.py`,
with SHA-256
`475cf92dbc86bc171e021d690b8f525024ba55e74aa513c40bd51cbe4e93a023`.
Earlier numerical pilots are retained for auditability under their original
filenames in `work/survey/`, with exact source snapshots in `versions/`.
Their function names may match later versions, so use the recorded hashes
and the final report to distinguish them. They are not pooled into the
final sample result.

`work/build_report.py` rebuilds the report and `work/report_metrics.json`
from the completed delivered data; it refuses an incomplete final survey.

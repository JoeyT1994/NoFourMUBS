# Measured second pass on campaign layer survivors

**93 of 512 held-out, production-size survivor cells are completely
excluded: 18.2%, at 1.84 local CPU-seconds per input cell.**
Every one of those 93 remains unresolved when the original SideTriplePrune
depth-8/10 policy is rerun. These are additional whole-cell D0 exclusions,
not tiny neighbourhoods or sampled-point classifications.

| Measurement | Result |
|---|---:|
| Held-out survivors tested | 512 |
| Whole cells excluded | **93** |
| Exclusions at the unbisected root | 58 |
| Additional exclusions requiring seed subdivision | 35 |
| Cells still unresolved | 419 |
| Accepted covering leaves | 231 |
| Local CPU time, total / mean | 943.1 s / **1.84 s per input** |
| Median / 90th-percentile / maximum local CPU time | 1.87 / 3.11 / 11.08 s |
| Elapsed time with two workers | 532.8 s |
| Cells with sampled D0 points tested / excluded | 14 / **0** |

The 512 rows were drawn without replacement from the retained 8,000-cell
survivor sample, excluding all 32 tuning rows. The policy was frozen before
this run; its recorded hashes still match the delivered implementation.
The original sample comes from roughly the first 30% of layer jobs.
This is **not** a fresh sample of all 623,187 final survivors, nor a rusty
timing measurement. No campaign-wide CPU saving is claimed.

## What to run

The existing retained proofs supply the leaf certificates. The new
[second_pass.py](second_pass.py) adds a bounded complete seed cover:
fractional R caps, paired-side tests at phase depths 12/10, then at most
four binary seed splits (31 nodes). Its deepest boxes have half the
original radius in each coordinate. Only a complete accepted cover
excludes the original production-size parent; any unresolved leaf keeps it.
See [PROOF.md](PROOF.md).

For a separate batch of survivors, retaining the original records
`ID JOB LEVEL theta1 theta2 theta3 theta4`:

```bash
python3 -B ProvenResults/CornerBounds/CampaignSecondPass/run.py \
  survivor_batch.txt second_pass.jsonl --workers 4
```

The output includes original cell/job IDs, input and code hashes, resource
settings, full accepted leaf paths and local CPU time. It leaves the input
list intact. `certificate.ok=true` with scope `outside_physical_D0` permits
discarding that whole cell. A `.part` file is incomplete and is not a
completed batch certificate. Select a new output filename for another run.

Replay every accepted full cover independently at 160 bits:

```bash
python3 -B ProvenResults/CornerBounds/CampaignSecondPass/run.py \
  second_pass.jsonl second_pass_160.json --replay
```

Use `--first N --last M` to select input rows, or `--indices file.json`
for a JSON list of one-based input row numbers. `--max-depth 0` limits the
run to unbisected root tests; only the default depth-four policy has the
cost measurement above. The TSV sample is supported with `--format tsv`.
No running cluster job or production driver has been changed.

## Separate useful R-gap result

The existing conditional R-gap test was applied to **all 202** cells in
the retained sample having a floating D0 point. It proves **D0 implies
R>1 on 56 cells (27.7%)**, at their original enlarged production size.
All 56 passed independent 160-bit replay. The 202-cell discovery took
22.5 seconds elapsed in a single worker; replaying the 56 successes took
2.31 CPU-seconds locally.

These 56 certificates remove only the R<=1 parts. Their R>1 portions still
need reconstruction and quartet certification. The receipt lists the
actual rows and original coordinates; no inference from the floating D0
samples is used in acceptance. The standalone runner also exposes a
conditional mode with `--threshold 1`; its output scope is explicitly
`D0_implies_R_above_threshold`. That mode uses the new paired/subdivided
policy, whereas the measured 56/202 receipt uses the unchanged
`ResidualCells.gap.certify_local_gap` at depth 10.

## Evidence and verification

[Retained report and receipts](../../../Verification/Campaign_layer_second_pass_2026-09-29/README.md)
contain the complete 512-cell run, its independent 160-bit replay, the
baseline recheck, and the separate R-gap certificates.
[excluded_cells.tsv](../../../Verification/Campaign_layer_second_pass_2026-09-29/excluded_cells.tsv)
lists the 93 excluded sample boxes. Its row numbers identify TSV data rows,
not production IDs; match by the recorded level and Float64 coordinates,
or run the tool on actual survivor records to retain their IDs directly.

The registered check `campaign_layer_second_pass` replays eight representative
accepted covers at both precisions, plus exact partition, missing/duplicate
leaf, scope, resource-limit, and physical Fourier/Tao controls. The separate
full holdout replay checks **every** accepted cell.

This reduces one measured part of the branch-layer residual. It does not
address the high-R common-ray certification cost, resolve the other 419
sampled survivors, or finish T2/T6. A tested extra mixed-corner constraint
gave no improvement on the tuning set and was left out of the delivered policy.

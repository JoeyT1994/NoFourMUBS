# Actual campaign-cell second-pass measurements

Implementation and usage:
[CampaignSecondPass](../../ProvenResults/CornerBounds/CampaignSecondPass/README.md).
Correctness argument:
[PROOF.md](../../ProvenResults/CornerBounds/CampaignSecondPass/PROOF.md).

**Measured:** 93/512 whole enlarged survivor cells excluded, 943.1 local
CPU-seconds total, 1.84 per input. The remaining 419 stay unresolved.
The exact input convention encloses the campaign's Float64 cell radius
and its 2^(-40) enlargement. No smaller replacement parent is tested.

| File | What it records |
|---|---|
| `holdout_indices.json` | 512 one-based TSV data rows, disjoint from the 32 tuning rows |
| `holdout512.jsonl` | Frozen settings and hashes, all inputs/outcomes/timings, all 231 accepted covering leaves |
| `holdout160.json` | Independent 160-bit replay of every accepted whole-cell cover |
| `baseline_recheck.json` | Original depth-8/10 test leaves all 93 newly excluded cells unresolved |
| `excluded_cells.tsv` | The 93 original enlarged parent boxes, identified by TSV row, level and coordinates |
| `measurements.json` | Coverage, CPU-time distribution and checked data/policy consistency |
| `gap202.json` | Conditional threshold-one trial on all 202 cells with sampled D0 points; 56 successes |
| `gap160.json` | All 56 conditional certificates replayed at 160 bits |
| `isolated/summary.json` | Registered implementation regression in an isolated source copy |
| `source_hashes.json` | Source snapshot, including the inherited proof engines |

The whole-cell policy was fixed before the held-out run. The original
8,000-cell evidence sample came from the first roughly 30% of campaign
layer jobs; its limitations are retained. Timings are local, with two
workers, not measured on rusty. No full-campaign coverage percentage or
net CPU saving is asserted.

The low-R result has a different scope: **D0 implies R>1 on 56 original
cells**. It does not authorize deleting those cells. Discovery took
22.5 seconds elapsed for 202 cells in one worker; replay of the 56
successes took 2.31 CPU-seconds. The original gap algorithm and its
depth-10 settings are retained in the receipts, not replaced by a
claim about the new runner's conditional mode.

`probe32.json`, `fractional32.json`, and `adaptive32.json` retain tuning
comparisons. `research/mixed_probe.py` and `research/mixed32.json` retain
an unsuccessful extra-corner experiment; it is not used in the accepted
certificates or recommended policy. Its failure is not a proof that the
constraint could never help with a different enclosure.

The registered regression uses eight representative accepted covers;
the full 160-bit receipt separately checks every accepted held-out cell.
Universal correctness comes from the inherited outward leaf certificates
and the exact complete closed-tree argument, not from sampling.

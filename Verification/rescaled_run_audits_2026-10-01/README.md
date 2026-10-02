# Run-of-record audits: nofourmubs_rescaled_2026-09-30 (1 October 2026)

These receipts were copied from the run directory on rusty
(`~/Documents/QuantumPhysics/ClusterScripts/nofourmubs_rescaled_2026-09-30/receipts/`). The bulk ledgers stay
on the cluster; their SHA-256 values are in `ledger_sha256_20261001T1359.txt`.

| Receipt | Auditor | Result |
|---|---|---|
| `audit_exact_expand_20261001T0828.json` | `NumericalCampaign/Campaign/cluster/audit_exact.py expand` | **PASS** |
| `audit_exact_layer_20261001T0832.json` | `audit_exact.py layer` | **PASS** |
| `replay_expand_20261001T0951.json` | `replay/compare_replay.py` (deterministic replay) | **PASS** |
| `branch_input_bridge.txt` | inline check, below | **PASS** |

**Expansion audit.**
- All 340,972 jobs have exact level-6 addresses, are distinct, and each has exactly one `#prune` record.
- All 8,652,805 work cells and 14,020,093 layer cells have exact ideal addresses (within 2^-44 of
  -π + (2a+1)π/2^l). They are distinct exact descendants of their job and form an antichain; none lies inside
  another.
- The per-level refinement counts close.
- `cells.txt` and `layer.txt` are exactly the emitted records: fixed 121-byte records, with equal multisets
  of (job, level, binary64 centre).
- Pruned: D0_out 192,048,378; F_out 34,678,808; BC_out 32,382,011; R_out 9,999,862.

**Layer audit.**
- Every one of the 14,020,093 layer cells has exactly one first-pass SideTriplePrune outcome, with matching
  job, level and centre.
- Outcomes: 13,125,848 `no_side_triple`, 271,058 `R_negative`, and **623,187** unresolved.
- SHA-256 of the sorted survivor IDs: `39a990b6…4d79`.

**Deterministic replay.** Seed 20261001. With the frozen code:
- re-running `driver.jl plan 6` reproduces `jobs_L6.txt` byte for byte;
- re-expanding 1,000 randomly chosen jobs reproduces all 59,022 of their output records exactly.

This covers the preparation ledger (PROOF_OF_RECORD §4.1) and gives replay evidence for the prune decisions.

**Branch input bridge.** The branch run's `survivors.txt` is exactly the 623,187 unresolved layer IDs. Each
of its records has the same job, level and binary64 centre as `layer.txt`, and the ID list hashes to the
layer audit's survivor digest.

`audit_exact.py selftest` rejects the two synthetic counterexamples of PROOF_OF_RECORD §10.1–10.2 and eleven
further planted defects, including the leaf-pass cases. The exact certification-tree audit (`certify`, with
pass 2 and the pass-3 leaf replacements) is added here when those passes finish.

# Proof of record: status of its PENDING items (updated 7 October 2026)

This is a companion to `PROOF_OF_RECORD.md`, which is kept unchanged as delivered. For each `[PENDING]` item
(line numbers refer to that file), this records what is now established and where the evidence is.
"Closed" means the stated evidence exists and passed. Nothing here is inferred from a pilot.

## Inputs

| Item | Status | Evidence |
|---|---|---|
| A1-A4 (§1.2): accepted reconstruction inputs | **Proved relative to the ClassificationPaper imports** (MC1-MC5); no longer bare assumptions | `MinimalConstruction/Proofs/README.md`; dossier replay 15/15 PASS, `Verification/reconstruction_proofs_2026-10-01/`; root check `reconstruction_proofs` |
| FastTM rescaled intrinsics (l.262) | Independent review: **correct**. A fresh Julia guarded replay is still to be run on the cluster | `Verification/review_patch_2026-10-01/REVIEW_2026-10-01.md` §1 |

## Expansion and first layer pass (§4)

| Item | Status | Evidence |
|---|---|---|
| l.318: level-0-to-6 preparation ledger | **Closed** by deterministic replay: `plan 6` reproduces `jobs_L6.txt` byte for byte | `Verification/rescaled_run_audits_2026-10-01/replay_expand_*.json` |
| l.341: archive and hash the expansion ledgers | **Closed** (hashes; the bulk stays on rusty) | `ledger_sha256_20261001T1359.txt` |
| l.343: per-level and per-reason prune counts, missing/duplicate jobs, grid checks | **Closed** | `audit_exact_expand_*.json` (exact addresses, antichain, inventory multisets) |
| l.369: first layer pass ID/coordinate audit | **Closed** | `audit_exact_layer_*.json`: 14,020,093 outcomes, 623,187 survivors |
| l.843: exact expansion/work coverage audit | **Closed** for expansion and work cells (both exact audits PASS) | `NumericalCampaign/Campaign/cluster/audit_exact.py` (selftest rejects the §10.1-10.2 counterexamples) |

## Work cells (§5)

| Item | Status |
|---|---|
| l.442-447: certification ledger | **Closed.** Final exact audit PASS (`Verification/rescaled_run_audits_2026-10-01/audit_exact_certify_*` latest). All 8,652,805 cells: pass 1 certified 8,652,540; the other 265 were rerun in pass 2 (102 certified outright); the 401 remaining FAILED leaves (time-capped) were each replaced by a complete certified tree in passes 3a/3b/3c (353 + 17 + 31). 0 violations, 0 open leaves, approved code `577018eb`. |
| l.473-475: independent replay | **200/200 random certified leaves agree** (`replay_full_20261001.log`; `check_replay.py` PASS). This is a sampled cross-check, not an exhaustive replay. |

## Branch layer (§6)

| Item | Status |
|---|---|
| l.505: bridge from the 623,187-ID inventory to the branch input | **Closed**: `Verification/rescaled_run_audits_2026-10-01/branch_input_bridge.txt` |
| l.503: branch95 run and audit | Stages A and B/C complete (30,924 of 30,924 tasks, 3 Oct). Stage D failed on 3 Oct (relative paths) and was rerun on 4 Oct with its audit, stage E and the post-E pipeline chained (`NumericalCampaign/Campaign/branch95/post_*.sh`). Pilot audit PASS. |
| l.604: signed-corner evaluation on the residual ledger | Replaced by `ProvenResults/SignedCornerPSDPrune` (stage E; registered in the root verifier, full replay PASS). On the pilot it removes 2.71% of survivor volume, leaving 0.123%. |
| l.551-553: SideChartCover | Corrected verifier passes (`Verification/review_patch_2026-10-01`). Shoulder pilot: 41/48 level-13 boxes at 56 CPU-s, 0/24 at level 12. Not the production route for the shoulder (cost). |
| l.751-757: active-class closure | **Closed for the 90 production cubes** (`ActiveShoulderClosure_v2` and `ActiveF6Cube1551`, rusty replays PASS). Shoulder: `ActiveShoulderClosure_v2` and `_v2_frontier`, with replays PASS; the pilot ledger closes all of it. |
| Remaining residual | The (2,4,4,2) ring is the only class open on the pilot (0.041–0.047 rad from the stationary F3 seed). Stage F/G closes about 80% of it, and `Patch2442Region_v3` (rusty replays PASS) closes 70% of the remaining leaves. `Patch2442Local` gives exact leading forms and a directional radius but covers none of the ring boxes. Open; see `STATUS_2026-10-04.md`. |

## Post-E residual (7 October 2026)

The full-run post-E ledger covers all 45,713,468 rows. The latest version is `Verification/ledger_2026-10-07a`, and `STATUS_2026-10-07.md` summarizes it.

**On our side, 0 rows are open.** The stage-C FAILED leaves are closed: 1,018 of 1,018.

**The delegated (2,4,4,2) region** covers the ring, export2 and the addendum. It is closed by four certificates, all held and replayed by us:

| Certificate | Rows | Replay |
|---|---:|---|
| Patch2442Local `Radius025Complete`: punctured ball of radius 1/40 | 438,110 | `PASS_UNIFORM_BALL` on rusty |
| Ball + R = 0 at the seed (the two boxes containing a seed) | 2 | — |
| Collaborator's factored signed-mean producer | 1,950,400 | per-box fresh replay PASS |
| Signed-mean + PSD hybrid (`branch95/psd/hybrid_close.py`) | rising | fresh hybrid replay PASS |

The collaborator's sealed result (`PASS_ALL_1271_WHOLE_INPUT_LEAVES`) also replays fresh on rusty.

**What remains** is the hybrid tail. On the morning of 7 October it held about 7,500 boxes.

The hardest boxes, about 850, lie along the symmetric R = 0 curve through the F3 seeds. They are excluded by PSD maximality at subdivision depth ≥ 49; the hybrid's depth cap was raised to 64 for this. Details are in `RouteC/README.md`.

## Final audit (§7.5)

Pending until the full-run post-E ledger and the (2,4,4,2) ring are closed.

## §10 findings

| Finding | Resolution |
|---|---|
| 10.1, 10.2 | `audit_exact.py` is additive; `audit.py` is kept as historical |
| 10.4 | Review patch applied as an additive entry point |
| 10.7 | `check_replay.py` |
| 10.8 | A single all-checks root receipt is still to be produced at release |

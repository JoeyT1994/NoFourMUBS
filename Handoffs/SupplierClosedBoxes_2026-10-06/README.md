# Supplier closed and active boxes: snapshot 6 Oct 2026, 19:05 EDT

This snapshot answers `PopeyeClosedBoxes_2026-10-06/SUPPLIER_RECONCILIATION.json`.

- **Join key:** `inventory_row`, the global post-E row, or `source` with `ring_id` / `export2_id`.
- **Missing ring ids:** ring rows needing a ball radius ≤ 0.03 are absent from the `outside-r003` release, so they carry `-` in place of a ring id. Use `inventory_row` for them.

## Overlap with your reservations

Most of your reserved work is already closed here.

| Popeye reservation | Rows | Already closed here | In our active tail |
|---|---:|---:|---:|
| `outside050_assigned` | 493,176 | **486,962** | 6,214 |
| `band003005_assigned` | 5,263 | 20 | 5,243 |

## What is closed here: 2,368,632 rows (`CLOSED.tsv.gz`)

| Method | Rows |
|---|---:|
| `signed_mean` | 1,930,522 |
| `ball40_1over40` | 438,110 |

**`signed_mean`.** These boxes were run with your Patch2442 factored signed-mean producer, `certify_leaves.py`.
- It ran through the adapter `NumericalCampaign/Campaign/branch95/psd/certify_boxes.py`, which differs only in two places: it reads a pinned input file, and it allows up to 128 worker processes.
- It used backend `linear`, order 3, and its search was resumed from checkpoints.
- A box is listed only after a fresh replay gave `PASS_WHOLE_BOX_REPLAY`. Your sealed 1,271-leaf result also replayed on our cluster: `PASS_ALL_1271_WHOLE_INPUT_LEAVES`.

**`ball40_1over40`.** Patch2442Local `Radius025Complete`, replayed fresh on rusty with result `PASS_UNIFORM_BALL`. See `Verification/ball40_rusty_2026-10-06`.

**By source:**

| Source | Rows closed |
|---|---:|
| ring | 1,573,771 |
| export2 | 786,947 |
| addendum | 3,170 |
| class (0,0,2,4) | 4,744 of 4,796 |

## What is still active here: 33,237 rows (`ACTIVE.tsv.gz`)

| Source | Rows |
|---|---:|
| ring | 25,759 |
| export2 | 7,417 |
| addendum | 9 |
| class (0,0,2,4) | 52 |

- These rows are in our multi-level signed-mean tail, which resumes further 300 s passes from the saved checkpoints.
- We can drop any subset you take over. Tell us the ids.

## Evidence

**`UNITS.jsonl`: one record per unit, 4,349 units.** Each record carries:
- `input_sha256`;
- `archive_sha256` of `packed/<unit>.tar.gz`, which holds the per-box states (subdivision trees and interval witnesses), the replay receipts and the pass receipts;
- `receipts_digest`: the sha256 of the sorted lines `id<TAB>sha256(receipt)` over every PASS replay receipt in that archive. Each receipt was checked to be PASS, and its id to lie in the unit's input.

The archives are on rusty at `/mnt/ceph/users/jtindall/nofour_psd/packed/`.

**`CLASS0024_FRONTIER.tsv.gz`: the 2,179 class (0,0,2,4) frontier closures.** These are ActiveShoulderClosure_v2_frontier at 1,800 s per root. Each row carries its verify receipt and the receipt's sha256. The receipts have status INCOMPLETE: every listed box is accepted, and the others are unresolved. All 2,179 are also in `CLOSED.tsv.gz` under `signed_mean`.

`build_reconcile.py` produced these files.

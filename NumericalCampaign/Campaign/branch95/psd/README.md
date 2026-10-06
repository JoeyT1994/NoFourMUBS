# Brute-force factored signed-mean run (6 Oct 2026)

These scripts run the collaborator's Patch2442 factored signed-mean producer on every box delegated to them for which we hold no certificate.

## The target

**1,958,963 boxes** of class (2,4,4,2):

| Group | Boxes |
|---|---:|
| Ring rows not accepted by the 1/40 ball | 1,161,420 |
| Export2 and addendum rows | 797,543 |

On top of these, the **4,796 boxes of class (0,0,2,4)** were added ahead of the queue. The frontier method closed only 2,179 of them.

## The program

- **Source:** `Patch2442_program_and_reviews.zip`, sha256 `c5a0b158…`. Its certificate parts were `34d4deef…` and `e1f4db9c…`.
- **Sealed result replayed on rusty first:**
  - `controls.py --order 3` and `native_controls.py --order 3` both exit 0;
  - `verify_all.py` reports `PASS_ALL_1271_WHOLE_INPUT_LEAVES`.

## The adapter

`certify_boxes.py` is `certify_leaves.py` with exactly two changes:
- the input list is a pinned file named by `INWARD_INPUT` and `INWARD_INPUT_SHA256`;
- up to 128 worker processes are allowed.

Acceptance, geometry, guards and replay are unchanged.

## Pilot

The pilot ran on 320 boxes, 64 from each of five radius bands:
- **314 accepted** in one 300 s attempt;
- **6 hit the CPU budget**;
- **all 314 replays passed** (`PASS_WHOLE_BOX_REPLAY`).

## Scripts

- **`make_psd_inputs.py`**: builds 512-row shards with exact geometry, `id` = inventory row. Priority order is:
  1. export2 rows needing a ball radius ≤ 0.1;
  2. ring rows;
  3. export2 rows needing more than 0.1.
- **`psd_worker.sh`**: for each shard, in order:
  1. claim it (`mkdir`);
  2. run pass A at 60 s and pass B at 300 s, where B resumes A's checkpoints;
  3. run a fresh replay;
  4. pack states, replay receipts and pass receipts into `packed/<shard>.tar.gz`;
  5. write `done/<shard>.json`, listing the accepted ids (replay PASS) and the unresolved ids.
- **`psd_tail.sh`**: level-1 tail. For each shard with unresolved boxes it restores their checkpoint states, then resumes 4 × 300 s passes, replays, and packs.
- **`psd_tailx.sh`**: multi-level tail. Each level resumes 8 × 300 s more passes, up to 5 levels.

## Ledger and storage

- **Ledger:** `full_ledger.py` credits source `signed_mean` from `done/*.json`. It checks that each id lies in its unit's input and that the unit is packed.
- **Run root on rusty:** `/mnt/ceph/users/jtindall/nofour_psd`.

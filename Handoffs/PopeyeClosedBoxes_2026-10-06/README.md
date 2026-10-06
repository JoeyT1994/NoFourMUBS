# Popeye closed-box inventory — 6 October 2026

Use this packet to avoid repeating our completed numerical work. **It is a numerical evidence inventory, not a Lean proof or a claim that the full problem is closed.** `LATEST.json` identifies the latest published snapshot.

## Original ring: exact IDs now available

The independently reconstructed census lists **8,331,372 numerical or conditional settlements outside radius 0.03**, with **16,500 unresolved entries** (8,250 representatives and their exact conjugates). These counts apply to the original 12,291,152-row ring export, not to export2 IDs.

The compact status vector `data/OUTSIDE003_STATUS.u8.gz` contains one byte per **original ring ID**. The accompanying JSONL ranges give the same information as inclusive `[start,end]` intervals. `receipts/ring_CENSUS.json` pins the source geometry, completed result packets, exact radius test, and every status category.

| Code | Meaning | May be treated as a recorded settlement? |
| --- | --- | --- |
| 0 | Outside this census's strict radius-0.03 scope | No conclusion |
| 1, 2 | Own-box fresh numerical replay | Yes, numerically |
| 3 | Exact conjugate of an own-box fresh replay | Yes, conditional on transport |
| 4, 5 | Accepted external claim or its conjugate | Yes, under the adopted handoff claims |
| 6, 7 | Unresolved representative or its conjugate | No |
| 8, 9 | Pinned earlier replay reused, or its conjugate | Yes, with the recorded provenance |

Join a row in the supplier's new `outside-r003-2026-10-06` release using **`ring_id`**, never its newly assigned `id`. Of that release's 1,061,824 ring rows, 1,031,098 match recorded settlements, 16,500 match unresolved records, and 14,226 lie outside this census's strict cut and need a separate status lookup. The join counts alone do not verify geometry; the source release must retain the exact original ID-to-box mapping.

The entire original ring has 12,231,064 recorded settlements and 60,088 unresolved entries before applying this radius filter. The vector here deliberately does not assign closure to its code-0 rows. A stopped survivor continuation may contain additional valid receipts; those have not been added without a complete audit.

## Export2

`data/export2_pilot_closed.jsonl` supplies the eight previously freshly replayed whole boxes, including exact rational geometry and receipt references. Its IDs use the **export2 namespace**.

The outside-0.1 first pass has finished with **306,257 fresh numerical passes and 1,089 unresolved boxes**, out of 307,346 inputs; two prior pilot boxes are additional to that input. A compact per-ID index of this finished run is being prepared. Until that index is published, its aggregate count must not be used to choose arbitrary IDs to skip.

## Current work and radius scope

Popeye is preparing the remaining numerical work outside radius 0.05, after reconciling both the latest GitHub handoff and existing cluster receipts. Boxes crossing 0.05 need explicit coverage; they are not discarded merely because their centers lie inside it. The restriction against evaluating physical boxes below radius 0.025 remains in force.

The full radius-0.05 and radius-0.1 exclusion theorems are **not yet proved in Lean**. The other seed family `(0,0,2,4)` is not excluded by the `(2,4,4,2)` radius theorem. The supplier reports that its 4,796 boxes are being worked separately; they remain unresolved in our bookkeeping.

## Check and query

Run `python3 verify_inventory.py` (Python 3.11 or later) to check all packet hashes, counts, and exact agreement between the ranges and status vector. `python3 verify_inventory.py --ring-id 1123857` also prints one original ring status. This inventory check does not replay the interval certificates or establish their mathematical soundness.

Future snapshots will add only validated closures, preserving the distinction between fresh replay, exact transport, adopted external claims, and open work. Never infer closure from a submitted job or a search-only candidate.

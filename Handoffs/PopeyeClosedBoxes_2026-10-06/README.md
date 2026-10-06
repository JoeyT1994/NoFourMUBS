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

The outside-0.1 first pass has finished with **306,257 fresh numerical passes and 1,089 unresolved boxes**, out of 307,346 inputs; two prior pilot boxes are additional to that input. **The exact per-ID index is now published:** `data/outside01_STATUS_BY_ID.jsonl.gz`, with separate `data/outside01_UNRESOLVED_IDS.json`. These IDs use the original export2 namespace: match them using `export2_id` in the supplier release, never its newly assigned `id`. The status projection was checked against the completed campaign chain and independently reconstructed original input geometry bindings. It contains 307,346 unique IDs: skip only entries labeled `PASS`; entries labeled `UNRESOLVED` remain open. The eight pilot boxes are separate and disjoint from this run.

## Current work and radius scope

Popeye has submitted the next **493,176-parent campaign outside or crossing radius 0.05**, after reconciling the complete latest GitHub handoff and existing cluster receipts. These are 487,010 export2 parents, 3,179 recovered addendum parents, and 2,987 original-ring representatives. Of these, 493,052 are strictly outside 0.05 and 124 cross its boundary.

`data/outside050_assigned.jsonl.gz` lists every assigned parent by supplier ID, original namespace/ID, inventory row, and queue ID. **Treat these as work reservations, not closures.** The pinned supplier archive and exact selection receipt provide the geometry mapping. The independent review checked all 1,864,163 supplier rows, all 1,061,824 original-ring geometries, all eight pilot exclusions and the 307,346 previously assigned outer parents. It found no duplicate geometry within this queue or against the excluded outer/pilot inputs.

The numerical campaign has been submitted. At this snapshot its input preparation was running; numerical workers had not yet started. The published list reserves the entire selected set to avoid duplicate work while preparation finishes.

The separate outer follow-up encountered a queue-publication compatibility error after validating all first-pass results; the complete status index was preserved, independently validated, and is published here. This error does not affect the new outside-0.05 campaign. The 1,089 unresolved outer parents remain separate obligations. **Their reviewed numerical retry has now been submitted as well:** all IDs in `data/outside01_UNRESOLVED_IDS.json` are reserved by our retry campaign. They remain labeled `UNRESOLVED` until fresh validated closure evidence arrives; please avoid duplicating this assigned work. The compatibility repair preserves the original failed preparations and changes no numerical acceptance rule. Boxes crossing 0.05 need explicit coverage; they are not discarded merely because their centers lie inside it. The restriction against evaluating physical boxes below radius 0.025 remains in force.

The full radius-0.05 and radius-0.1 exclusion theorems are **not yet proved in Lean**. The other seed family `(0,0,2,4)` is not excluded by the `(2,4,4,2)` radius theorem. The supplier reports that its 4,796 boxes are being worked separately; they remain unresolved in our bookkeeping.

## Check and query

Run `python3 verify_inventory.py` (Python 3.11 or later) to check all packet hashes, counts, and exact agreement between the ranges and status vector. `python3 verify_inventory.py --ring-id 1123857` also prints one original ring status. Use `--export2-id 1064` for an original export2 ID in the completed outer first pass. This inventory check does not replay the interval certificates or establish their mathematical soundness.

Future snapshots will add only validated closures, preserving the distinction between fresh replay, exact transport, adopted external claims, and open work. Never infer closure from a submitted job or a search-only candidate.

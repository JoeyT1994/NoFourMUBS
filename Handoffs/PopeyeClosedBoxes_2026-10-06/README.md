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

Join a row in the supplier's new `outside-r003-2026-10-06` release using **`ring_id`**, never its newly assigned `id`. Of that release's 1,061,824 ring rows, 1,031,098 match recorded settlements, 16,500 match unresolved records, and 14,226 lie outside this census's strict cut. Their separate historical status lookup has now completed; see the boundary supplement below. The join counts alone do not verify geometry; the source release must retain the exact original ID-to-box mapping.

The entire original ring has 12,231,064 recorded settlements and 60,088 unresolved entries before applying this radius filter. The vector here deliberately does not assign closure to its code-0 rows. A stopped survivor continuation may contain additional valid receipts; those have not been added without a complete audit.

## Export2

`data/export2_pilot_closed.jsonl` supplies the eight previously freshly replayed whole boxes, including exact rational geometry and receipt references. Its IDs use the **export2 namespace**.

The outside-0.1 first pass has finished with **306,257 fresh numerical passes and 1,089 unresolved boxes**, out of 307,346 inputs; two prior pilot boxes are additional to that input. **The exact per-ID index is now published:** `data/outside01_STATUS_BY_ID.jsonl.gz`, with separate `data/outside01_UNRESOLVED_IDS.json`. These IDs use the original export2 namespace: match them using `export2_id` in the supplier release, never its newly assigned `id`. The status projection was checked against the completed campaign chain and independently reconstructed original input geometry bindings. It contains 307,346 unique IDs: skip only entries labeled `PASS`; entries labeled `UNRESOLVED` remain open. The eight pilot boxes are separate and disjoint from this run.

## Current work and radius scope

Supplier commit `6eff0f1f9214c4dede74d75c07429b43f629aff0` now publishes exact CLOSED and ACTIVE lists. Their snapshot is 6 October, 19:05 EDT. Independent source and geometry reconciliation accounts for every Popeye reservation:

| Popeye input scope | Total parents | Supplier CLOSED | Supplier ACTIVE |
| --- | ---: | ---: | ---: |
| Outside or crossing 0.05 | 493,176 | 486,962 | 6,214 |
| Difficult outer retry | 1,089 | 1,089 | 0 |
| Inner/boundary representatives | 5,557 | 34 | 5,523 |

Supplier CLOSED entries are adopted external numerical claims. Supplier ACTIVE entries indicate external ownership, not closure. Their packed arithmetic archives and unit inputs remain to be obtained and replayed; published hashes alone are not those certificates.

`data/outside050_assigned.jsonl.gz` preserves the exact original assignment by supplier ID, original namespace/ID, inventory row and queue ID. These are 487,010 export2 parents, 3,179 addendum parents and 2,987 original-ring representatives: 493,052 strictly outside 0.05 and 124 crossing its boundary. This Popeye campaign stopped after an operational bookkeeping error. Its results, checkpoints and failure records are preserved. It is not being restarted because every assigned row is now either CLOSED or ACTIVE on the supplier's exact list.

All 1,089 formerly unresolved outer parents are now supplier CLOSED. Our redundant retry has stopped, with all certificates and checkpoints preserved. The immutable first-pass index retains its historical UNRESOLVED labels, which must be read alongside this newer external claim. No numerical acceptance rule has changed.

The 5,557 inner/boundary representatives likewise have complete supplier ownership accounting. No duplicate Popeye dispatch is being started. Whole boxes crossing radius boundaries remain obligations. The restriction against evaluating physical boxes below radius 0.025 remains in force.

The full radius-0.05 and radius-0.1 exclusion theorems remain open. The other seed family `(0,0,2,4)` is not excluded by the `(2,4,4,2)` radius theorem. The supplier reports 4,744 of its 4,796 class0024 boxes CLOSED and 52 ACTIVE. These remain external claims until their evidence is integrated.

## Overlap with the supplier's active work

Of the supplier's **33,237 ACTIVE entries**, our existing published ledgers already contain:

- **6,539 own-box numerical settlements**;
- **2,359 conditional conjugate settlements**;
- **16,988 still-open entries**;
- **7,351 entries outside these ledgers' known scope**.

Thus **8,898 entries can be reconciled against already recorded results**, leaving **24,339 not yet matched to a recorded closure** in these inventories. This is an inventory census, not a claim that the remaining entries are distinct physical obligations after every symmetry reduction. The unknown category does not assert numerical failure. It includes 4,054 ring entries without an original ring ID; their exact geometry/source map is needed.

The four compressed category TSVs in `supplier_reconciliation/` partition the pinned ACTIVE snapshot exactly. They give inventory row, source namespace, original ID, supplier ID, published ledger and recorded status. `SUMMARY.json` binds the source hashes and independent geometry review. The verifier checks the complete partition and every claimed known status against this packet's actual ring, boundary and outer ledgers. It does not replay the supplier's arithmetic or prove conjugate transport.

## Check and query

Run `python3 verify_inventory.py` (Python 3.11 or later) to check all packet hashes, counts, and exact agreement between the ranges and status vector. `python3 verify_inventory.py --ring-id 1123857` also prints one original ring status. Use `--export2-id 1064` for an original export2 ID in the completed outer first pass. This inventory check does not replay the interval certificates or establish their mathematical soundness.

Future snapshots will add only validated closures, preserving the distinction between fresh replay, exact transport, adopted external claims, and open work. Never infer closure from a submitted job or a search-only candidate.

The historical 5,263 canonical ring reservations are preserved in `data/band003005_assigned.jsonl.gz`; together with the 294 restored representatives they form the 5,557-row inner/boundary scope above. Their conjugate counterparts are not independently scheduled. The earlier request in `SUPPLIER_RECONCILIATION.json` is historical: exact supplier CLOSED/ACTIVE lists are now available, while the arithmetic evidence and missing geometry map remain needed.

## Boundary supplement: historical results recovered

`data/band003005_BOUNDARY_STATUS_BY_ID.jsonl.gz` restores the exact historical status of all **14,226** boundary records that had code 0 in the strict-outside-0.03 vector. The original vector remains unchanged: its zero means outside its geometric scope, not numerical failure. Join the supplement by original `ring_id`, or by `supplier_id` in the pinned supplier export. `representative_ring_id` identifies the exact conjugation counterpart.

The restored inventory contains **6,815 own-box fresh replays and 6,815 conjugate counterparts**, plus **four prior replays and four conjugate counterparts**. These **13,638 numerical or transport-supported settlements** can be omitted from duplicate numerical work, with the stated provenance and transport obligations. The remaining **294 representatives and 294 conjugates are unresolved**. Their exact IDs are the rows with status codes 6 and 7 respectively; search only representatives after reconciling external ownership. Together with the previously known 5,263 representatives, this gives **5,557 distinct unresolved representatives in the reconciled inner/boundary band**, before any newer supplier results. This is a numerical work census, not a Lean theorem.

The pinned projection rechecked the complete ordered hash chain of all 48,013 historical result packets and the exact selected input and representative records. `receipts/band003005_BOUNDARY_STATUS_PROJECTION.json` binds that chain, source geometry, output bytes and counts. The inventory verifier checks all exact IDs, status chains, representative links and agreement with the original code-0 scope; it does not rerun interval arithmetic or prove the transport theorem. `--ring-id` now includes this supplement when applicable.

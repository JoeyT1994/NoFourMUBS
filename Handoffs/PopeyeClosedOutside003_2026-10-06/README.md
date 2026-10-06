# Closed boxes outside radius 0.03: Popeye evidence inventory

This handoff describes the numerical closure ledgers relevant to boxes outside
the radius-3/100 balls about the Fourier seeds `(2,4,4,2)·π/3` and
`(4,2,2,4)·π/3`. **It does not claim that every box outside those balls is closed,
or that the full no-four-MUB theorem has been proved.**

The radius refers to circular sup-distance in the four seed angles, in radians.
“Outside” means that the **entire closed box**, including its boundary, has
distance strictly greater than 3/100. A centre-distance diagnostic is not enough.

## What is included

`SOURCE_LEDGERS.json` identifies every known Popeye closure source, its ID
namespace, exact input/receipt hashes, status rules, and recovery paths:

| Source | Numerical status in the recorded snapshot | Interpretation |
| --- | --- | --- |
| Original full ring | 6,645,597 native representatives freshly replayed | Count is before the strict radius-0.03 filter. |
| Exact conjugates of those representatives | 5,581,661 transported closures | Separate from fresh replay of the conjugate box itself. |
| Supplier handoff | 1,903 representatives and 1,903 conjugates | External claims, separate from our fresh replay. |
| Sheet-scope correction | 1,857 own-box fresh replays | Replaces ambiguous transported credit; **do not add it again** to the full-ring population. |
| Survivor continuation | Per-parent fresh-replay receipts may add closures | Queue stopped safely on a cache-database failure. There is no completed final census; search-only records are not closure. |
| Export2 pilot | **8 whole boxes freshly replayed outside 0.03** | Exact coordinates and bound certificate records are included here. Two are outside 0.1. |
| New outside-0.1 campaign | **32 new boxes freshly replayed** in the 16:42 UTC snapshot | All selected whole boxes are outside 0.1, hence outside 0.03. The production search is running. |

The original ring contains 12,291,152 input boxes and lies inside radius 0.071.
It must not be confused with the later export2 list. Its original final audit
left 60,088 unresolved entries before the continuation. The table above is
**not an exact count of closed boxes outside 0.03**: a separate, read-only
compaction job is checking that geometric restriction and preparing compact ID
sets. Its result will be added as a new snapshot; absent results receive no
credit here.

The new outside-0.1 queue contains 307,346 inputs, excluding two previously
replayed pilot boxes. Thus its geometric population is 307,348. In the recorded
snapshot, 34 were freshly replayed and 307,314 remained. These are original
four-angle boxes, not internal phase-cover leaves or adaptive descendants.

## Exact export2 pilot boxes

`export2_pilot/closed_outside003.jsonl` gives all eight accepted records, with
exact rational centres and radii, conservative exact rational distance bounds,
the original source-row hash, numerical method, evidence hash, and binding hash.
The enclosing native verdict covers all four retained pairings under the
adopted strict-D0 physical bridge: `R > 0` and the chosen corner maximal among
all 400 positional corners, including ties.

| Export2 ID | Whole-box nearest-seed radius enclosure, displayed in radians |
| --- | --- |
| 93518 | 0.07925567–0.08002267 |
| 191517 | 0.08922654–0.08999354 |
| 375473 | 0.08488027–0.08564727 |
| 492219 | 0.10456635–0.10533335 |
| 627006 | 0.10252104–0.10328804 |
| 648482 | 0.09536247–0.09612947 |
| 680287 | 0.09791910–0.09868610 |
| 766818 | 0.08641425–0.08718125 |

Use the rational JSON values, rather than the displayed decimals, for exact
inclusion tests. The original pilot inputs and replay result stream are also
included. That original stream contains unresolved pilot records as well;
**only its eight `FRESH_NUMERICAL_PASS` records are claimed closed**.

## How to recover the other closed sets

For the original ring, use the pinned `full_ring.sqlite` and the pinned final
audit/configuration in `SOURCE_LEDGERS.json`. An original ID selects its exact
geometry from the named database batch. Its production packet is
`production/batches/{batch_id//1000:03d}/{batch_id:06d}.json.gz`.
Apply the explicit ledger-status rule and the exact whole-box radius test.
For the 1,857 sheet-scope corrections use the own-ID replay state instead of
ambiguous transport credit. For survivor continuation use only successful,
bound `FINAL_REPLAY.json` records, never queue membership or a search candidate.

The source database and the full historical certificate forest are not copied
into this small description packet. Their hashes and recovery recipes are
preserved. Until the compact census is published, this packet is not a portable
enumeration or independent replay of every historical closure.

## Verification and proof status

Run `python3 verify_inventory.py` to verify this packet's hashes, the pilot
receipt/binding relationships, and the exact radius restrictions on its eight
explicit boxes. This checks the inventory; it does **not** re-execute the native
interval certificate providers or prove their soundness in Lean.

All counts here are numerical evidence under the stated physical bridge.
The number of full physical radius/exclusion theorems admitted in Lean by this
inventory is **zero**. Lean work on the physical residuals, parametrization,
Taylor bounds, interval soundness, and finite cover is tracked separately.

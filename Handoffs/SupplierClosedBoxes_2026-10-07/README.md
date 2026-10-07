# Supplier closed and active boxes, snapshot 7 Oct 2026, ~04:10 EDT

This snapshot updates `SupplierClosedBoxes_2026-10-06` and uses the same files and schema.

**What's new since that snapshot:**
- **Hybrid closures:** method `hybrid_psd` appears for units `hyb*-NNNNN`. These boxes were closed by the signed-mean cover plus SignedCornerPSDPrune leaves at depth ≥ 44, with receipt status `PASS_WHOLE_BOX_HYBRID_REPLAY`.

**Closed: 2,390,817 rows.**

| Method | Rows |
|---|---:|
| signed_mean | 1,952,579 |
| hybrid_psd | 128 |
| ball40_1over40 | 438,110 |

**Active on our side: 11,052 rows** (in `ACTIVE.tsv.gz`).

| Source | Rows |
|---|---:|
| ring | 7,793 |
| export2 | 3,210 |
| addendum | 3 |
| class0024 | 46 |

We can drop any of these active ids that you take.

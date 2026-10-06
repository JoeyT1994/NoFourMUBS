# Full post-E ledger, 6 Oct 2026 ~19:00 EDT

`full_ledger.py` was run over all **45,713,468** post-E inventory rows. It gives each row the first source that certifies it; rows with no certificate are counted as delegated or open.

## Our side: 0 open rows

- **Stage-C FAILED leaves:** 1,018 of 1,018 closed (pass-3 production cover).
- **Shoulder class:** fully closed, by frontier passes 1–3, the 1,800 s hard tail, the 7,200 s hard2 run, and hard3 (one code-P box).
- **(0,0,2,4):**
  - The frontier at 1,800 s closed 2,179 of these rows. Those receipts have status INCOMPLETE; each listed accepted box is credited.
  - The remaining rows were closed by `signed_mean`, with 52 still open at 18:41, already in the tail.

## Rows with a new certificate

| Source | Rows | What it is |
|---|---:|---|
| `ball40` | 438,110 | Patch2442Local Radius025Complete, replayed fresh on rusty |
| `ball40_seed` | 2 | Boxes containing a seed. Exact closed-ball membership (`seed_boxes.json`) covers every point except the seed; at the seed R=0, so strict D0 is excluded. |
| `signed_mean` | 1,928,009 | Collaborator's factored signed-mean producer (see `branch95/psd/README.md`). A box counts only after a fresh replay passes on it. |

## Still delegated, with no certificate held yet

These are the boxes the signed-mean main run left open. The multi-level tail is still running on them.

| Source | Rows |
|---|---:|
| `delegated_ring` | 26,074 |
| `delegated_export2` | 7,495 |

## The one error

A v3 output file was truncated when that job was cancelled on 5 Oct. Only its complete records were counted.

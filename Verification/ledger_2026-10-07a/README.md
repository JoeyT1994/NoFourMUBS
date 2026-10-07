# Full post-E ledger, 7 Oct 2026, ~04:10 EDT

`full_ledger.py` run over all **45,713,468** post-E rows.

## Our side: 0 open rows
- **Stage-C leaves:** 1,018 of 1,018 closed.
- **Error count 1:** the known truncated v3 file from 5 Oct (complete records counted).

## Closed in the delegated set by our own certificates

| Source | Rows | What it is |
|---|---:|---|
| `signed_mean` | 1,950,400 | Collaborator's factored signed-mean producer; fresh replay PASS per box |
| `hybrid_psd` | 374 | Signed-mean cover plus SignedCornerPSDPrune leaves at depth ≥ 44; fresh hybrid replay PASS. Round 1 still running at ledger time. |
| `ball40` | 438,110 | Punctured 1/40 ball, Patch2442Local Radius025Complete |
| `ball40_seed` | 2 | Seed-touching boxes |

## Still delegated, no certificate held: 10,804 rows

| Source | Rows |
|---|---:|
| `delegated_ring` | 7,649 |
| `delegated_export2` | 3,155 |

These rows are in the hybrid run, which goes round by round (`branch95/psd/hyb_rounds.sh`).

## Why the hybrid run was needed

**Memory guard.** The signed-mean producer stops a worker once that worker's *peak* RSS passes 512 MiB, and peak RSS never falls within a process. After one large box, every later box sent to the same worker stopped at once. This stalled the deep tail levels and cut short replays of boxes that had in fact closed. The hybrid driver avoids it: one box per task, and no peak-RSS guard.

**Degenerate points.** About 1,000 boxes reach the producer's maximum depth of 48 at points where R → 0 and A and B±D vanish to 1e-24 or below. Signed-mean leaves cannot close those nodes.

**PSD leaves.** The whole-box PSD predicate closes such nodes from depth about 44, which is why the hybrid adds it there.

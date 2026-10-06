# Export2 addendum, 6 October 2026: 3,179 boxes we omitted by mistake

These are **3,179** level-13 boxes of class (2,4,4,2), at seed distances 0.094–0.182 rad. They belong to export2's
population, but export2 left them out because of a bug on our side.

**The bug.** Export2 treated some frontier pass-1 leftovers as closed, in shards where our pass-2 rerun covered
shoulder rows only. These boxes were never accepted by any of our sources. Our new full post-E ledger, which checks
every row, found them.

**Schema and ids.**
- Identical to export2.
- Ids continue export2's serial namespace (see `MANIFEST.json`).
- `inventory_row` is the global post-E index.

**Scope.** Together with the ring export and export2 (less the ids in `ACCEPTED_SINCE_EXPORT2`), this addendum
completes your share, by our ledger. That ledger is being finalized and will follow with hashes.

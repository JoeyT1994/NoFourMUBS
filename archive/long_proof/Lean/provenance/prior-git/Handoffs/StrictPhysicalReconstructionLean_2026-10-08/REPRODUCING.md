# Integrity and replay boundary

The packet contains unchanged Lean source bytes, sanitized successful-check and independent-review projections, and exact SHA-256 source/object/receipt/log bindings. Original compiler objects and host operating records are intentionally not included. SHA-256 values establish integrity; they do not replace a kernel check or semantic review.

From this directory run:

```sh
python3 verify_inventory.py
```

The verifier checks the exact file set and digests, parses imports including nested Lean comments, verifies complete custom source closure and object-binding edges, checks selected declaration/axiom/review bindings, and enforces the stated physical scope. It does not compile Lean.

`DEPENDENCY_REUSE.json` pins the unchanged prior expanded packet and its independent review projections. The prior packet manifest is `40cdcf736a15f7769a4b2a96dbd8f944444d82ed6c994e0c923efff70da28ea8`. Its dependencies and the additional inherited physical support receive no new root credit here. The two new review projections retain their semantic checks and limitations verbatim; the earlier five-module review's seed-binding exclusion describes that earlier scope, while the subsequent two-module review supplies the literal binding.

For a future fresh replay, first supply the exact Lean toolchain and Mathlib revision recorded in `STATUS.json`, `lean-toolchain` and `mathlib-lake-manifest.json`. Restore or verify the external library objects with their original module names, then compile the packet's custom modules in `REPLAY_PLAN.json` order. Preserve the complete relative module paths under `lean/`, including nested namespaces; use that directory as the Lean source root and the separate output root on the import path. The plan specifies one local job, a 2304 MiB Lean heap limit, a 2816 MiB process-tree RSS stop, a 180-second per-module limit and a 2 GiB free-disk reserve. These are replay requirements, not evidence that replay was performed.

The historical successful checks and independent source reviews are the supplied evidence. The source/cache authenticity caveat remains explicit. No relocated replay or clean library rebuild has been performed during collection.

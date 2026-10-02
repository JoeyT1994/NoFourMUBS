# Paired side prune — PASS

`production.json` replays all 53 retained production boxes at phase
half-width π/512. The original integer-cap side-triple test excludes
none, the fractional-cap test excludes indices 23 and 37, and the new
joint-side test additionally excludes 6 and 20. Indices are zero based
in the retained list. The other 49 remain unresolved at the budgets.

These are whole-box exclusions from D₀, not quartet exclusions of
genuine D₀ points. Source boxes and the original source hash are retained
in `ProvenResults/CornerBounds/PairedSidePrune/data/production_boxes.json`.

The independent isolated replay and all symbolic, bipartite graph,
physical positive-control and resource-limit checks are recorded in
`../T2_R_zero_lift_2026-09-29/root/paired_side_prune.txt`, with PASS in
that directory's `summary.json`. The running production driver was not
modified. `source_hashes.json` records this snapshot's dependencies.

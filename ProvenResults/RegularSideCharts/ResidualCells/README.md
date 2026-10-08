# T6 follow-up: local R gaps and a complete positive-cell atlas

**Proved and replayed:**

- On four full benchmark cells (1, 2, 4 and 5), **D₀ implies R>1**.
  The R≤1 portions can be removed without reconstructing H₊.
  In the crossing cells this also excludes the within-cell **10⁻⁴-radian
  neighbourhood of R=0**, in maximum-coordinate seed distance.
- The strictly positive cell (5) has a complete **61-chart reconstruction
  cover**, with maximum subdivision depth four and no unresolved region.
  Outward subdivision and an independent exact rational audit rule out
  gaps between the subcells.

[Proof and limitations](PROOF.md). These results do not certify quartet
exclusion. Some of the 61 Taylor models have broad error bounds; a
computationally useful tight cover remains to be obtained. The other
three cells have no new gap certificate.

## Replay and use

From the repository root, with the pinned campaign Julia environment:

    JULIA_BIN=/path/to/julia python3 verify.py --only t6_residual_cells --jobs 1 --output-dir Verification/T6_residual_cells_replay

Retained verification.
The replay certifies the four gaps and wall-clearance bounds, constructs all atlas leaves, audits
the full cover with binary rational arithmetic, and checks failure on
budget/depth limits and corrupted covers. The gap calculation itself
takes about 0.2 seconds total locally; Julia startup/compilation and
the reconstruction replay take longer.

To use the atlas from Julia, include [atlas.jl](atlas.jl), then call:

    result = reconstruction_atlas(center, radius; maxdepth=4, budget=100)

Only `result.ok` means a complete cover. `result.charts` contains each
leaf's centre, radius, and actual `hplus_tm` result. The optional
`max_error` limits the sum of real and imaginary remainder bounds per
entry; choosing it too small may leave the task unresolved at the caps.

For a new box, [gap.py](gap.py) exports
`certify_local_gap(centers, radii, threshold)`. Success proves that any
D₀ point in that box has R greater than the threshold; it does not
assert an upper R bound on the box. Unresolved tests return `ok=False`.

The four R gaps are local, conditional certificates, **not** permission
to prune the whole original cells. For their exact scope, see the proof.
No live cluster driver or production constructor is modified.

# Paired side prune

A reconstruction-free whole-box D₀ test couples all surviving horizontal
and vertical side triples using the polynomial identity
`det(G) D + C E† adj(G) B = 0`. It works across R=0 and singular G.
See [the proof](PROOF.md).

At phase depth 10 it excludes **4 of the 53 retained production boxes**:
two via fractional R caps and two via the new coupling. The other 49
remain unresolved. This removes impossible seeds; it is not a T2
quartet certificate for boxes containing genuine D₀ points.

Replay with:

    python3 -B ProvenResults/CornerBounds/PairedSidePrune/verify.py

Use `prune_box(centers, radii)` from [paired_prune.py](paired_prune.py),
with four phase centres and four positive half-widths in radians.
Only `ok=True` permits whole-box exclusion. All resource-limit failures
return `ok=False`. No production driver has been modified.

# Referee note: cluster/README.md, Cell enlargement

**Verdict: correct at depth <=13, with a now-explicit quantitative proof;
the actual cluster record audit remains separate.**

The README's “about 10^-15 per level” is replaced by the theorem and exact
replay in [DyadicTiling](../ProvenResults/DyadicTiling/README.md). The
entire worst-case centre/radius/enlargement rounding loss is bounded by
2^-48, while the added margin is 2^-40. There is no missing contribution
from rounding the enlarged radius itself.

Source inspection found the same margin in driver.jl's prune and
certificate paths and in cluster/layer_prune.py's Arb radii. Planning uses
`repr` for Float64 centres; work-cell output uses 17 digits after the
decimal point in scientific notation, sufficient for round-trip binary64
recovery. Child offsets use the nominal, not enlarged, radius. This is
compatible with the theorem: each rounded enlarged leaf covers its own
ideal pi-based leaf. The proof does not require an enlarged parent to be
exactly tiled by its enlarged children.

The numerical margin is not itself proof that no leaf was lost. The
campaign still needs a complete accounting of pruned, certified, and
residual nodes, correct restart handling, unchanged source hashes, and a
check of the actual depth settings. Depths are configurable in the driver,
so the value 13 must come from the run configuration/headers. The full
cluster data are absent from this archive. No statement here declares Q
complete or any unresolved branch-layer node covered by a certificate.

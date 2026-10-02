# Regular side charts and a corrected T6 diagnosis

**Proved:** at every physical corner with R>0, the six side phases
admit a regular real-analytic implicit chart. Its Jacobian satisfies
det(J)²=R/64, including at symmetric seeds. Explicit local sizes,
sensitivity bounds and an outward interval validation test are in the
[proof](PROOF.md) and [implementation](chart.py).

**Follow-up:** [ResidualCells](ResidualCells/README.md) now proves **D₀ ⇒ R>1**
on four full benchmark boxes and constructs a complete **61-chart atlas**
for the positive box. Some chart remainders are broad; quartet certification
remains open.

**Certified diagnostic:** six of T6's seven cited cells cross R=0.
Only one has R>0 throughout; its minimum exceeds 0.3328. The existing
constructor fails its side square-root convergence bound there, but
succeeds on 255 of 256 equal grandchildren. This does not yet certify
a quartet exclusion or finish T6. No cluster code is changed.

Replay from the repository root:

    python3 verify.py --only regular_side_charts --jobs 1 --output-dir Verification/T6_regular_side_replay

The [retained receipt](../../Verification/T6_regular_side_2026-09-28/regular_side_charts.txt)
checks constants, the seven full-cell classifications and a validated
local side chart around an exact physical example. The polynomial
identity used by the theorem is proved and separately replayed in
[CornerBounds](../CornerBounds/README.md).

For the Julia failure/subdivision diagnostic, use the pinned environment:

    julia --startup-file=no --project=NumericalCampaign/Certification/jlenv ProvenResults/RegularSideCharts/diagnose.jl

Its [retained output](data/diagnostic.txt) records the observed failed
operations; [source hashes](data/diagnostic_sources.sha256) identify the
implementation used. This diagnostic is separate from the Python replay.

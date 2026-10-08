# Side-column cover: an additional branch-layer prune

**New usable result:** a two-phase interval cover can exclude seed boxes
from D₀ without constructing H₊. It works across R=0 and uses no accepted
reconstruction assumptions. [Proof](PROOF.md).

Four exhibited level-9 cells survive the existing F, R and BC tests and
are marked singular by `d0_test`. This new test excludes all four in
roughly 0.02–0.05 seconds per cell locally. These are selected examples;
the full production layer has not been benchmarked. T1′ and T2 remain
open at useful uniform constants.

**Follow-up:** [SideTriplePrune](../SideTriplePrune/README.md) adds
compatibility among the surviving column labels. It excludes seven more
full branch cells in the retained sample, bringing the total to eleven.

## What makes the test possible

One unknown column of the missing 3×3 side has only two phases, x,y.
Its known Gram data require

    (s−x)(r−y/x)conj(t−y)
        = |s−x|²+|t−y|²+|r−y/x|²−4.

Cover the two phases. A box either violates this necessary equation, or
two E columns and the candidate column force a competing corner with
larger R. Every possible physical completion is then outside D₀.
No square-root or cube-root reconstruction is evaluated.

## Use and replay

`prune.py` exports:

    prune_box(centers, radii, budget=50000)

Inputs are four Arb centres and four positive half-widths **in radians**.
`ok=True` is a proved D₀ exclusion. `ok=False` means unresolved. It chooses
and certifies an R cap, then tries the row and column orientations. The
node budget applies separately to each orientation.

The lower-level `cover_side_columns` needs an independently certified
R cap; use `prune_box` or `certify_case` for a complete certificate.

From the repository root:

    python3 verify.py --only side_column_prune --jobs 1 --output-dir Verification/T1_side_column_replay

The exact symbolic checks need SymPy and the outward arithmetic needs
python-flint. The root replay checks the polynomial identities and all
four exclusions, including automatic cap selection, budget failure and
a control box containing a proved Fourier-family point of D₀.
The [retained receipt](../../../Verification/T1_side_column_2026-09-28/side_column_prune.txt)
records the results.

For the independent comparison with the current campaign tests:

    julia --startup-file=no --project=NumericalCampaign/Certification/jlenv ProvenResults/CornerBounds/SideColumnPrune/baseline.jl

The [baseline receipt](data/baseline.txt) records that all four existing
checks leave each example in the branch layer. The baseline is not part
of the mathematical certificate and is not run by the root verifier.

The live cluster package has not been modified. This is a standalone
implementation ready for a representative layer benchmark and a Julia
port if its measured savings justify integration.

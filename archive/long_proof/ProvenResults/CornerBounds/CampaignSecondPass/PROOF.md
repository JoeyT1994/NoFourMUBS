# Bounded second-pass exclusion of actual branch-layer cells

This is an application of the existing side-cover proofs to **complete
production-size cells**, not a new Fourier-neighbourhood theorem.
The measured coverage and local cost are in [README.md](README.md).

## Statement and scope

Let a raw physical order-six Hadamard have a maximal leading corner,
with its four dephased angles inside the input box. If
`second_pass.certify_box(center, radii)` returns `ok=True`, no such
Hadamard exists. This excludes the entire input box from physical D0,
including R=0. A failed test proves nothing about that box.

If an exact positive `threshold=t` is supplied, success instead means
**D0 implies R>t inside this box**. It does not exclude the whole box.
The output explicitly distinguishes these scopes.

## Leaf certificates

On each box, `sharp_R_cap` gives a certified upper bound m on R by the
retained outward second-order Taylor calculation on its sixteen closed
half-boxes. If m<0, the box has no physical completion, since physical
corner R is nonnegative. Equality is **not** used as an exclusion.

Otherwise the existing
[PairedSidePrune](../PairedSidePrune/PROOF.md) is called with cap m.
For a physical maximal carrier, every one of its 400 corner values is
at most R of the leading corner, hence at most m. The complete horizontal
and vertical phase covers, moment constraints, compatible triples and
division-free flat-completion matching are therefore necessary conditions.
Only `no_side_triple` or `no_side_pair` acceptance excludes a box.
Label, graph, matching and phase-cover resource failures remain unresolved.

With threshold t the same implication holds on the conditional set R<=t,
so the cap may safely be replaced by min(m,t). No assertion about points
with R>t follows from this conditional run.

## Complete seed subdivision

The frozen default policy tries phase depths 12 then 10 at the root.
Depth 10 can succeed when depth 12 has exceeded its label budget; a
resource failure is not a mathematical failure of the necessary condition.
An unresolved root is bisected in angle 0, then angle 1, then angle 2,
then angle 3, to at most four binary levels. Each child uses phase depth 10.
At most 31 seed nodes are visited. All leaf tests retain their existing
finite resource bounds. The default deepest boxes have half the original
radius in every coordinate.

If an unresolved leaf reaches the seed depth or node limit, the entire
parent returns `ok=False`. Partial progress never authorizes exclusion.
For successful parents, every leaf path is retained. An independent exact
binary-tree audit requires every internal node to have both children,
rejects duplicate or missing leaves and ancestor/descendant leaf pairs,
and checks `nodes=2*leaves-1`. Closed children cover their parent,
including shared faces. This supplies the whole-box universal quantifier.

The root radius and each child's ideal offset are dyadic multiples of
the same input radius. Arb encloses every arithmetic operation, including
centres and radii. Thus rounding enlarges the tested leaf rather than
creating a coverage gap. The replay rebuilds each leaf from the original
input and its binary path and reruns its test at 160 bits; it does not
accept a previously stored floating bound as evidence.

## Campaign input convention

`run.py` reads either campaign records `ID JOB LEVEL theta[1:4]`, or the
retained TSV sample. The 17-digit TSV angles round-trip to the original
Float64 centres, which Arb represents exactly. In every coordinate the
radius used is

    max(upper_Arb(pi/2^LEVEL), Float64(pi/2^LEVEL)) + 2^(-40).

This contains both the exact-pi grid cell and the enlarged Float64 box
used by the existing production layer driver. The tiny guard is not
removed during subdivision. Row numbers in TSV receipts identify data
rows, with the header excluded; they are not production cell IDs.

Every output stream records the source-data hash, selected rows, code
hashes and resource settings. Only a completed JSONL stream is renamed
from `.part` to its requested output name. Exceptions produce unresolved
records. The tool writes a separate certificate list and never changes
the running campaign's input lists or job state.

## Verification versus measurement

The inherited algebra and covering lemmas provide correctness. The
new exact partition audit supplies coverage after seed subdivision.
Positive physical controls and failure controls guard the implementation.
Every accepted held-out cell is additionally replayed at 160 bits.

The random holdout is drawn from the retained sample of 8,000 survivors,
disjoint from the 32 tuning cells. It is not a fresh random sample from
all 623,187 final survivors: the original evidence came from the first
approximately 30 percent of layer jobs. Any campaign-wide extrapolation
must retain that limitation, and local CPU timings do not measure rusty.
The nD0 field records floating samples and is used only for diagnostics;
it never authorizes or vetoes an exclusion.

The separate R-gap receipt applies the already proved
[ResidualCells](../../RegularSideCharts/ResidualCells/PROOF.md) test at
threshold one to the 202 retained cells with sampled D0 points. These
are conditional R-gap certificates, not whole-cell deletions and not
quartet certificates for their surviving R>1 portions.

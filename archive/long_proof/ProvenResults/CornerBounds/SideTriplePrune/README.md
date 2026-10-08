# Three-column compatibility strengthens the branch-layer prune

**Proved and replayed:** surviving side-column boxes must contain a
compatible triple with the prescribed Gram matrix. If no triple exists,
the entire seed box is outside D₀. [Proof](PROOF.md).

This excludes **all eleven** retained local branch cells, including
**seven that the previous single-column prune leaves unresolved**.
These are full level-9 boxes, not point tests. The method needs no
reconstruction assumptions and remains valid across R=0.
The complete new cell checks take roughly 0.03–0.07 seconds each locally.

The new ingredient is the division-free identity

    v_j† adj(6I−EE†) v_k = 0      for distinct column positions j,k,

together with the phase conditions on their remaining third column.
The graph includes self-loops and repeated labels, so no unproved
one-column-per-label assumption enters.

## Use

[triple_prune.py](triple_prune.py) exports `prune_box(centers, radii)`.
Supply four Arb centres and four positive half-widths **in radians**.
The function certifies its own R cap and tries both orientations.
It can be used as an additional test after the single-column prune.
Only `ok=True` authorises exclusion. Limits and unresolved triples
return `ok=False`. Default depth is 8 and the label limit is 512.

The lower-level `cover_side_triples` assumes that its supplied R cap
has already been certified; use `prune_box` for the complete test.

From the project root:

    python3 verify.py --only side_triple_prune --jobs 1 --output-dir Verification/T1_side_triple_replay

The replay checks the exact adjugate/moment identities, graph enumeration
including loops, all eleven exclusions, the old-versus-new comparison,
and controls for singular Grams, budgets and a known D₀ point.
It needs SymPy and python-flint.

[Retained receipt](../../../Verification/T1_side_triple_2026-09-28/side_triple_prune.txt).
The independent Julia [baseline](baseline.jl) and its
[output](data/baseline.txt) check that the existing campaign retains
these cells as singular.

It runs as the campaign's layer stage (NumericalCampaign/Campaign/cluster/layer_prune.py).
In production it excluded 95.6% of the 14,020,093 branch-layer cells (depth 8, then 10),
leaving 623,187 survivors; see [CampaignSecondPass](../CampaignSecondPass/README.md) for a
further pass on those.

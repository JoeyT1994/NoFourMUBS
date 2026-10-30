# Certified branch compatibility graphs

For each original column domain, choose finitely many static phase caps. The
centres and radii are arbitrary proposals. A separate exhaustive cover must
prove that every possible unbiased column in the complete original H model
belongs to at least one cap of its colour.

An edge is declared forbidden only when an Arb pair certificate proves that
every pair of vectors in the two corresponding caps has nonzero overlap. The
certificate uses the original source Arb phase centre plus exact Helmert
coordinates; separately rounded numerical phase vectors are not trusted.

If every selection of one cap of each colour includes a forbidden edge, then
no orthonormal six-column basis is possible in the pattern. Existence,
uniqueness, or disjointness of the candidate root branches is unnecessary.
Multiple caps can cover one root; the finite selection argument still applies.

The numerical critical-radius calculation only proposes a cap. For a candidate
root pair with fixed-centre overlap s and projected phase-gradient norm g,
the scalar static-cap inequality is

    |s| − 2 g c − c²/3 > 0.

The numerical positive root of this polynomial estimates the maximum common
cap c for that edge. For each complete branch choice, the largest such edge
threshold estimates its obstruction radius. Taking the minimum over choices
and then 95% of that value gives a proposal for the graph cap. All edges used
in the final graph are independently rechecked with Arb, so no numerical
threshold calculation is an acceptance test.

`code/certify_graph.py` checks every finite branch choice through an exhaustive
forbidden-prefix tree. A prefix containing a certified forbidden edge closes
all choices extending it. A full choice with no forbidden edge, or an exhausted
search budget, prevents a proof verdict. It also searches subsets of colours. If every choice
within a subset already has a forbidden edge, only those original column
domains need exhaustive capture coverage: an orthonormal full basis would
necessarily contain an orthonormal selection on that subset.


No stored numerical graph is trusted by replay. Every forbidden edge is
recomputed using Arb and the exhaustive choice check is rerun. The legacy
`root_counts` field counts proposed capture centres, not proved roots.

# Frontier extension to ActiveShoulderClosure v2

This additive extension changes search scheduling and the queried region. It
does not assert closure of the padded pilot region, the entire full-run
frontier, or the two remaining production cubes. The sealed v2 directory and
its delivered archive are unchanged. ActiveF6ProductionClosure remains a
historical specification, not an imported theorem.

## Statement

Let S be the finite union of the exact closed roots in a supplied region file.
Let C be the subset reached only through accepting leaves of a freshly audited
forest, with both descendants required at every auxiliary tau split. Missing
roots and nonaccepting leaves contribute no certified points. For every box
accepted by `VerifiedRegion.certify_box`, the whole closed box is contained
in C, by exact rational comparisons without tolerance. On C the campaign
statement Q holds: at strict-D0 seeds, H+ is not a quartet edge, using the
campaign reduction A3/MC5. Physical maximal corners with R=0 use the adopted
A1/F6 result separately. No arbitrary R=0 fibre statement is claimed.

For a region explicitly marked `kind: production_cubes`, every physical
order-six Hadamard with a maximal leading corner in C is not a quartet edge.
The accelerated-cover terminal must then close both the original and
conjugate seed boxes and pass the outward Tao-absence test, as in v2. The
extension does not introduce any new symmetry identification of cubes.

A leaf records exactly one of these statements:

* The shoulder lift closes all four pairings on the maximal-corner domain;
  partial pairing witnesses remain attached to their ancestor nodes.
* SignedCornerPSDPrune proves `outside_strict_D0` for the whole seed box.
* A campaign cover proves `Hplus_not_quartet_edge`, under A3/MC5. A production
  cover instead records `both_matched_sheets_not_quartet_edges`, with the
  conjugate cover and Tao guard required by the adopted reconstruction.
* FourierTransverseStability_v2 proves
  `all_four_pairings_quartet_free_for_physical_R_positive`. Its R=0 slice is
  explicitly excluded. A1/F6 supplies the separate maximal-corner R=0 case.

The FT regional theorem and v2 regional tubes are adopted pinned theorems.
This extension freshly checks FT applicability on each accepted leaf at 192
bits; it does not pretend to re-prove the other agent's regional theorem.
`INPUTS.json` pins its code, proof data and theorem replay receipts, plus its
declared dependencies. The v2 input inventory is pinned and checked
recursively. One mutable, unused FT measurement receipt is excluded from the
dependency set; see RESULTS.md. No measurement result authorizes acceptance.

## Geometry and verification

`build_region` defaults to the union of the distinct input boxes themselves.
Coordinates and radii are radians. Rational strings are exact; JSON binary64
numbers mean their exact dyadic values. Guards must already be present in
the input radii. The builder adds no implicit guard and removes none. An
optional integer grid constructs the union of every touched closed grid
cell, including boundary faces. Exact-box roots have no additional padding.

`--boxes` supplies real targets to search. A grid target is assigned to every
touched cell; an exact-box target is assigned to a containing root. If none
exists, the target is inconclusive. The predicate conservatively declines a
box requiring the union of several overlapping nongrid roots; this cannot
produce a false acceptance. It is complete for the builder's own source
boxes once their respective roots close.

At seed splits, exact clipping checks all intersecting descendants, including
shared closed faces. At tau splits, both descendants must certify the same
theta query. A tau partition is not counted as seed volume. Every retained
tree is geometrically complete even when some padding leaves are explicitly
open. The predicate never uses a stored `closed`, `ok`, or `PASS` flag without
first checking the whole tree and freshly replaying all accepting witnesses.

The verifier may omit roots with no requested target. It reports PASS only
when every supplied target box is exactly contained in the audited subset.
An audit failure raises an error; missing roots, budgets and open leaves
cannot be converted into success. A shard driver's PASS covers only its
scheduled targets and is not a clean-replay receipt for the whole list.

The parallel verifier deduplicates cover requests by their complete outward
geometry, computes each afresh, and passes only those live results to audit
workers. No disk cache or old replay receipt seeds that cache. The normal
auditor still checks every terminal, both signs when required, and the Tao
guard. Python uses spawned workers, each with its own Julia connection.

## Scheduling changes do not change proof rules

FT is attempted before the lift at each searched node. After a failed lift,
PSD and then the cover are attempted when their scheduling gates permit.
The inherited v2 whole-box production primitives may short-circuit a root.

By default, one failed PSD attempt disables PSD on all descendants of that
branch. A seed-depth backoff can be selected instead; tau splits do not
advance that depth. Failed PSD CPU is capped at 10% of a root allocation,
subject to one in-flight call. The cover is deferred until every seed
half-width is at most 0.0001 radians. Failed covers retain the four-seed-split
backoff and 25% failed-cover CPU gate. Eight cover exceptions disable further
cover trials in that root. These rules can only withhold proof attempts.

Roots without target boxes are not scheduled. Descendants disjoint from all
assigned target boxes become explicit `outside_frontier` open leaves. They
are never labeled certified. Adaptive split scores, reused root plans and
partial-pairing inheritance remain the v2 algorithms, with child revalidation.

Seed radii, tau intervals, projector distances, matrix phases and entry radii
remain distinct quantities. The only cover input conversion uses exact
rational inequalities to establish that each binary64 centre/radius encloses
the complete original coordinate interval, including the input guard. The
Julia kernel, its outward arithmetic, and its frozen production hash are
unchanged. Exception text is diagnostic only.

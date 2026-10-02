# Referee note: ClusterCover/PROOF.md and the 6+6 search

**Verdict: confirmed as a sufficient theorem.** Implementation acceptance
still depends on valid carrier enclosures and full cover accounting.

The normalization is consistent: an unnormalized Hadamard column dotted
with a dephased normalized flat ray has squared modulus 1; equivalently
the corresponding unnormalized phase sum has squared modulus 6.

Assign any covering label to each of the twelve added basis rays. Within
one basis two distinct rays have overlap 0; between the two bases they
have overlap 1/6. Since any two points in one label have overlap strictly
greater than 1/6, this assignment is injective, even if the labels overlap.
The two groups of six therefore give disjoint O-cliques and every cross
pair is a U-edge. Extra labels, roots of any multiplicity, empty labels,
or extra graph edges cannot cause a false exclusion.

The quadratic capacity argument is correct: cos(d)>=1-d^2/2 and
|d_k|<=2r_k give Re(x*y)>=1-sum(r_k^2)/3. Square this only when positive.
At r_k<=1/2 it yields 49/144>1/6.

## Exhaustiveness of cover.jl:label_graph_test

In `cliques(cand,k,cur,out)`, the candidate list is increasing and every
candidate is adjacent in O to every member of cur. Choosing v and retaining
only larger candidates adjacent to v preserves this invariant. Every
k-clique has one increasing ordering; follow that ordering to see it is
enumerated. The size test only removes branches with fewer vertices than
needed. The first call thus enumerates all O-six-cliques V. For each V,
the second call searches its common U-neighbourhood for an O-six-clique W.
U has zero diagonal, so this neighbourhood excludes every member of V.
Thus disjointness is enforced without a separate set-difference operation.

The counter is shared between calls. If it exceeds the cap, the first
stage returns `:cap`. In the second stage either a found clique returns
`:candidates`, or the cap is checked before `:excluded` can be returned.
Both cap and candidate outcomes are inconclusive. This is safe, although
the shared cap may conservatively stop a search early.

The rational target is enclosed as `interval(1.0)/6`; U retains a pair
whenever that interval intersects the overlap enclosure. This can add
edges, but cannot delete an actual 1/6 edge. The O test includes 0 exactly.

## Coverage source inspection

The initial phase chart uses an outward upper endpoint for pi. Adjacent
grid intervals use identical expressions for shared endpoints; splits
reuse the same computed midpoint. Widths are recomputed outward from both
endpoints. Normalized seed splits are dyadic. Only the interval verifier
can exclude a node; the floating filter only proposes exclusion. A budget
or time exit returns incomplete. Every retained box is assigned by the
supplied label builders and checked with `label_contains`, using interval
pi for periodic shifts. This establishes the stated coverage contract for
these builders. A caller-supplied arbitrary `label_builder` or `verifier`
must satisfy that contract; the generic function signature does not enforce
it for malicious or erroneous replacements.

The acceleration control suite passed, including preservation of an actual
6+6 configuration. Those controls are regressions; the recursion proof,
not a finite test collection, establishes exhaustiveness.

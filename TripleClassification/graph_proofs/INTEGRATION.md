# Production integration and the exact remaining coverage obligation

## What a successful snapshot receipt proves

A successful receipt excludes the supplied six-column pattern for every H in
the snapshot's complete normal-form enclosure, including its original Euclidean
parameter radius r and normal remainder bound tau. No numerical root count is
assumed. Every relevant zero in the selected original column regions is covered
by a finite exclusion/capture computation, and the surviving captured branches
are shown unable to form the required orthogonal columns.

The following upstream premises remain explicit:

1. The normal-form model encloses every physical H in the claimed source ball or
   cell. This return consumes that enclosure; it does not rebuild the Hadamard
   atlas or reprove the normal-form theorem.
2. Each original column region uses the stated mean-zero phase lift and contains
   every column zero assigned to it by the upstream cover.
3. The upstream cell manifest lists every pattern that still requires exclusion
   or classification. Closing a supplied subset cannot replace this completeness
   premise.

The checker can safely include additional, nonphysical H matrices or spurious
projected roots in its enclosures. These only make exclusion harder. It must
never accept a result because a numerical search found no additional roots.

## Reuse the column calculation across all patterns in one cell

Let P be the number of open patterns in a fixed H cell. There are at most 6P
column-region occurrences. Let C be the number of distinct original column
regions after exact deduplication; thus C <= 6P. Compute one complete root cover
per distinct region. A region can contain any finite number b_c of certified
capture sets; neither b_c nor the global root census is assumed in advance.

For each original region B_c, the complete cover proves the implication

    F_H(v)=0 and v in B_c
      implies v belongs to at least one of its certified branch tubes.

This implication holds uniformly for the same shared H parameters over the
whole cell. It is sufficient even if a listed tube contains no root, two regions
describe the same root, or some physical roots cease to exist at a parameter
value. Root existence and an unchanging census are not needed for exclusion.

For a pattern with six regions, create six groups of branch-tube vertices. Delete
an edge whenever the correlated overlap checker proves that the corresponding
two tubes cannot contain orthogonal columns for any common allowed parameter.
If there is no clique selecting one vertex from each group, the whole pattern is
excluded. A single fully incompatible pair of groups is the cheapest special
case; a general six-group graph can use several weaker pair exclusions.

The expensive cover cost changes from repeated pattern-by-pattern work to

    sum over the C distinct column regions of their cover costs,

followed by inexpensive graph checks for the P patterns. With
N=sum_c b_c branch-tube entries, there are at most N(N-1)/2 distinct pair checks
before reuse, and usually only pairs appearing together in an open pattern need
to be evaluated. The exact speedup is determined by the actual region manifest,
not by the numerical 48–60 vector counts in the brief.

## Safe cache keys and domain containment

A reusable cover must be bound to the complete H-model content:
Q0, U, H2, X, r, tau, phase indexing convention, coordinate/gauge convention,
and any parameter transformation used by the checker. A seed/record hash alone
is insufficient when different cells or revised enclosures share that record.
Also bind the original column center and radius, the checker/dependency code
hashes, precision, and the validated capture data. Canonical JSON content hashes
are a simple conservative choice; textual differences may miss a cache hit but
must never create an invalid one.

A cover proved on a larger concentric column ball may be reused on a smaller
one: if the mean-zero centers are identical and R_new <= R_proved is verified,
every new zero was already covered by the old calculation. More generally,
reuse is valid after an Arb proof of set containment, such as

    ||v_new-v_proved||_2 + R_new <= R_proved,

within the same established phase lift. Do not silently choose a different
phase branch or rely on a floating comparison of the radii. Interval text for a
proved source radius is an enclosure; an upper endpoint must not enlarge the
premise beyond the radius actually proved. Rechecking the source-cap inequality
with the full Arb enclosure, or recording its exact dyadic value, avoids this
rounding issue.

H-cell reuse requires its own proved inclusion of parameterized H domains. A
smaller numerical r is not enough when Q0, U, H2, or X also changed. The simplest
production rule is to reuse only within an identical complete H-model hash.

## What is still required to close the 19 balls

The attachment supplies 42 single-pattern snapshots across 20 ball identifiers,
including ball 666, which the brief says is already closed. Even if all 42
snapshots obtain successful receipts, that does not close the 19 remaining
balls. The complete production manifest of still-open cells and patterns was
not supplied; some balls have thousands of open patterns in the brief.

For each remaining ball, production must account for every covering cell. Each
cell must either have its existing upstream closure receipt, or have every
required open pattern accounted for by an exclusion receipt or an applicable
classification theorem. Only an exhaustive checked manifest can promote the
individual results to a whole-ball conclusion. A useful manifest records the
ball and cell identifiers, input/model hashes, original pattern identifiers,
all reused cover identifiers, exclusion/classification verdicts, and the
covering-tree relation between the cells and their parent ball.

This checker implements exclusion of phantom patterns. It does not implement
the labels or equivalence tests needed to classify surviving true triples as
the continuous construction or isolated Fourier triples. Those labels require
their existing rigorous upstream theorems and explicit certificate bindings.
The numerical census and agreement with known triples cannot fill that gap.

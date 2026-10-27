# Independent coverage audit for ZC2a

## Scope and status

**PROVED.** The existing exact coverage algorithm in `cert/cap_coverage.py` is sound for its accepted nondegenerate, simplicial data. Its correctness does not depend on a floating convex-hull program, and an explicit origin-containment test is redundant once all its existing checks pass. This audit concerns coverage geometry; it does not certify any individual transfer or the larger MUB atlas.

**CERTIFIED — finite checker tests.** `python cert/test_cap_coverage_compact.py` replays exact covers at equality and with strict margin, agrees between the original and compact formats, and rejects the listed malformed or noncovering examples. The results of the run are in `coverage_schema_tests.json`.

**CERTIFIED — final coverage and input binding.** The independent input projection and final complete X-ball coverage have now passed their separate exact checks; their results are recorded below. The small fixtures are regression controls, not the basis for those full-data claims. Certification of every cap's target and orientation inequalities belongs to the separate full Arb transfer replay.

## Why the original facet checker is complete

**PROVED.** Write each cap as

\[
C_i=\{x\in\mathbb R^4:\|x\|=1,\ v_i\cdot x\ge h_i\},\qquad h_i>0,
\]

and put \(q_i=v_i/h_i\), \(K=\operatorname{conv}\{q_i\}\). A proposed facet names four indices \(F\) and an exact rational vector \(y_F\). The checker proves

\[
q_i\cdot y_F=1\quad(i\in F),\qquad
q_j\cdot y_F<1\quad(j\notin F),
\]

and checks that the four incident normal rows are linearly independent.

1. The incident \(q_i\) are linearly, hence affinely, independent. They span a three-dimensional simplex in the displayed supporting hyperplane. There are at least five caps, and a fifth point satisfies a strict inequality. Thus \(K\) is four-dimensional and the proposed simplex is a genuine entire facet, with no additional vertices or duplicate points on its plane.
2. Every triangular face of this simplex is a ridge of \(K\). Each ridge of a convex four-dimensional polytope belongs to exactly two facets. The checker rejects duplicate facets and requires every listed triangular ridge exactly twice. The nonempty listed facet set is therefore closed under facet adjacency.
3. The facet adjacency graph of a full-dimensional convex polytope is connected. For example, after radial projection from an interior point, a generic path between two facet interiors on the boundary crosses only ridges and supplies a facet-adjacency path. Closure from step 2 therefore proves that every facet has been listed.
4. Every listed facet has \(K\subset\{q:q\cdot y_F\le1\}\). The origin satisfies every facet inequality strictly. Since the list is complete, \(0\in\operatorname{int}(K)\).

Consequently the polar polytope

\[
P=K^\circ=\{y:v_i\cdot y\le h_i\ \text{for every }i\}
\]

is bounded, and its vertices are exactly the displayed \(y_F\). Checking \(\|y_F\|^2\le1\) for every facet proves \(P\) is contained in the closed unit ball.

**PROVED — equivalence with cap coverage.** If a unit vector is uncovered, every cap inequality is strict in the complementary direction. A slight radial enlargement remains in \(P\) and has norm greater than one. Conversely, if \(y\in P\) has norm greater than one, then \(x=y/\|y\|\) has \(v_i\cdot x<h_i\) for all \(i\), using \(h_i>0\). Hence the caps cover the entire sphere exactly when \(P\subseteq B^4\). Boundary equality is safe for closed caps.

This also explains why an unbounded polar polyhedron cannot silently pass this particular checker: complete supporting-facet enumeration already establishes interior origin containment.

## Compact exact format

**PROVED.** The optional schema `rational-s3-cap-cover-index-v1` stores only the cap-index quadruples of the proposed facets:

```json
{
  "schema": "rational-s3-cap-cover-index-v1",
  "dimension": 4,
  "cap_count": 8,
  "simplices": [[0,2,4,6], [0,2,4,7]]
}
```

The example illustrates the field shape only; its two simplices do not constitute a complete cover certificate.

`construct_coverage_certificate(caps, compact=True)` proposes this format. `compact_coverage_certificate(original)` converts an original-format proposal. Neither function certifies coverage.

The verifier derives each dual vertex exactly from the four cap inequalities by Cramer's rule, reduces the four numerators and common positive denominator by their common gcd, and then performs the original support, incidence, ridge, and squared-norm checks. It rejects a compact record that also contains a `facets` field, avoiding two competing representations. The original schema and its fields retain their original meaning.

**PROVED — equivalence.** For four independent incident rows there is exactly one solution to the four equalities. An accepted original-format vertex must be that solution. Thus compact reconstruction accepts precisely the same facet geometry as the original format. The small fixtures confirm equality of all returned geometric statistics in both modes.

**PROVED — storage tradeoff.** The new format removes five potentially large integers per facet and stores just four indices. It adds four 4-by-4 determinant computations beyond the original independence check, modulo implementation reuse. It does not remove any supporting inequality. Verification still costs \(O(mf)\) integer dot-product checks for \(m\) caps and \(f\) facets. A reduction in archive size is therefore not by itself a proof of a Lean-kernel speedup.

**Construction choice.** Using integer thresholds at the same scale as the integer normal coordinates avoids unnecessarily large dyadic denominators. Threshold rounding must occur before transfer and coverage replay; the exact rounded coefficients define the actual cap. Such rounding cannot be trusted from a numerical margin alone. The new constructor used by the parent workflow adopts this option.

## Required binding and negative-test interpretation

**PROVED.** The combined transfer-and-coverage verifier must build coverage input from the same canonical `v,h` fields used by the transfer test. It should not let optional `normal,threshold` aliases change the cap accepted by coverage. Similarly, `group_index` must select the original ordered transfer descriptor and its target, corner, group action, and winding.

**PROVED.** Dropping an arbitrary redundant cap need not invalidate a mathematically valid cover if the coverage proof is recomputed. The required dropped-cap negative control therefore either preserves the original coverage certificate, which must fail cap-count/index binding, or deliberately removes an essential cap and reproves the resulting hole. Rejecting all recomputed smaller valid covers would be incorrect.

**PROVED.** Changing `group_index` need not invalidate a cap when two groups describe valid transfers on that same cap. Appropriate controls include an out-of-range index, plus an in-range descriptor whose reconstructed target/orientation inequality actually fails. An unsupported enlarged cap and a tampered multiplier/target-bound witness must likewise be checked by the substantive inequalities; merely changing a number is not automatically a mathematical error.

## Exact fixture results

**CERTIFIED.** Eight caps \(\pm x_i\ge1/2\) have 16 polar facets, 32 ridges, and maximum squared polar-vertex norm exactly 1. Threshold \(49/100\) gives maximum squared norm \(2401/2500<1\). Threshold \(51/100\) gives \(2601/2500>1\) and is rejected.

**CERTIFIED.** The compact checker rejects a missing facet through ridge incidence, a duplicated facet explicitly, an out-of-range cap index, a cap removed while the original coverage count is retained, and a compact record mixed with original-format witnesses. These are finite regression and adversarial controls, not a substitute for the mathematical argument above or the real X-ball replay.

## Exact acceleration of supporting inequalities

**PROVED.** The optional `support_mode="bvh"` changes only how the original all-point support inequalities are proved. It does not weaken any inequality, change the coverage schema, or trust a numerical spatial index. The default `support_mode="auto"` selects it for at least 256 caps; `support_mode="direct"` retains the original all-point calculation.

For the exact integer cap row \((a_1,a_2,a_3,a_4,b)\), where \(b>0\), let \(S=2^{32}\) and compute

\[
L_k=\left\lfloor Sa_k/b\right\rfloor,
\qquad U_k=\left\lceil Sa_k/b\right\rceil.
\]

Python integer division gives these bounds exactly, including for negative coordinates. Therefore every rational polar point satisfies \(L_k/S\le q_k\le U_k/S\). A binary tree partitions the cap indices. Every node's box contains all its descendants because its bounds are coordinatewise minima and maxima of their individual boxes. The sorting rule merely determines a partition and is not used as a mathematical assumption.

For a proposed dual vertex \(y=N/D\), \(D>0\), set

\[
B(N)=\sum_{N_k\ge0}U_kN_k+\sum_{N_k<0}L_kN_k.
\]

Every point in that node has \(q\cdot N\le B(N)/S\). The single integer comparison \(B(N)<DS\) therefore proves all the node's strict nonincident support inequalities. Otherwise the verifier visits both children and eventually checks exact individual integer slacks. The four incident hyperplane equalities are always checked individually first. Since the root contains every cap index and no uncertain node is skipped, every original support assertion is proved. The verifier records node-bound counts, individual-point counts, and the all-points comparison count in its result.

**CERTIFIED — independent-path comparison.** `cert/test_cap_coverage_bvh.py` constructs a numerical hull proposal from 512 exact rational caps, then independently replays both exact paths. Both accept all 3,305 facets, agree on the identical exact worst squared norm, and reject both an intentionally violated supporting halfspace and an exact duplicate polar point. On the retained run, the all-point path performed 1,692,160 individual checks in 4.23 seconds. The hierarchy performed 269,776 individual checks and 164,231 node bounds in 1.28 seconds. These are measurements of this fixture on this machine, not predictions for the X-ball or a Lean checker. See `coverage_bvh_tests.json`.

## Supplied-data projection

**CERTIFIED.** `cert/check_xball_projection.py` independently compared the original supplied `data/zc2a_xball.json.gz` with the compact `data/xball_headers.json.gz` using exact JSON-value equality. All 2,775 target seed headers, the full edge header, and all 16,100 ordered T1 transfer descriptors are unchanged. Only outgoing edge `boxes` arrays are emptied; added `_proposal_*` fields are ignored by the mathematical checker. Each stored `_proposal_box_count` was also compared with the actual original length.

The original edge sphere has exactly 8,031,516 boxes: 240,365 at level 6, 6,709,693 at level 7, and 1,081,458 at level 8. The input and compact-file SHA-256 hashes and the measured 37.76-second projection run are retained in `xball_projection_check.json`. No target/header field was re-created from a floating approximation.

## Geometric dropped-cap negative certificate

**PROVED.** A removed-cap family can be shown to have a real uncovered direction without certifying its whole new hull. It suffices to give a rational vector \(y=N/D\), \(D>0\), and check

\[
v_i\cdot N\le h_iD\quad\text{for every remaining cap},
\qquad \sum_kN_k^2>D^2.
\]

All comparisons become integer inequalities after clearing each cap row's denominator. Then

\[
x=\frac{N}{\sqrt{\sum_kN_k^2}}\in S^3,
\qquad v_i\cdot x<h_i
\]

for every remaining cap. The strict conclusion uses \(h_i>0\) and \(\|y\|>1\). The new numerical hull only proposes \(y\); no facet-completeness assumption or floating tolerance enters acceptance.

`cert/find_dropped_cap_hole.py` attempts up to eight of the largest caps and returns the first exact witness. Its `--verify-witness PATH` mode replays a stored witness using only integer arithmetic; SciPy is needed only to search for one. The stored certificate hash binds the negative result to the cap family tested.

**CERTIFIED — finite fixture.** Starting with the strict eight-cap cover \(\pm x_i\ge49/100\) and a redundant backup cap \(x_1\ge4/5\), removing the original \(x_1\ge49/100\) cap produces the exact witness

\[
y=(80,-49,-49,-49)/100,
\qquad\|y\|^2=13603/10000>1.
\]

The retained fixture result is `dropped_cap_fixture.json`. A separate real-data result must be obtained from the final X-ball cap family before claiming that its dropped-cap control shows an actual geometric hole.


## Final X-ball coverage and encoding results

**CERTIFIED — exact full sphere coverage.** The frozen `results/xball_caps_certificate.json` contains 19,611 caps using 14,491 original T1 groups. Its exact index-only coverage certificate has 120,258 facets and 240,516 ridges. The first integer replay accepted without perturbing any cap (`jitter: 0`). Its worst squared polar-vertex norm is exactly

\[
\frac{718407733894139545922015965264996156096888489951234440514}
     {718410816297934645200631738705510044336490969071594699001}
<1.
\]

The displayed decimal diagnostic in the receipt is 0.9999957094134371. The strict inequality above, rather than that rounded decimal, decides acceptance. The replay is retained in `results/coverage_replay.json`; this is a coverage-only receipt, and every individual transfer is checked by the separate full Arb replay.

**CERTIFIED — measured work and size.** Exact coverage took 300.545 seconds on this run. Its hierarchy proved support using 52,022,228 dyadic-node upper bounds and 31,049,878 individual point checks, compared with 2,358,379,638 possible individual checks in the all-point loop. This comparison measures actual Python verification work; it is not a benchmark of a Lean implementation.

| Encoding | Minified JSON bytes | Gzip bytes |
|---|---:|---:|
| Compact coverage, index quadruples only | 2,833,771 | 645,495 |
| Same coverage with regenerated exact vertex integers | 25,193,674 | 9,689,440 |
| Complete cap-and-coverage certificate | 6,959,742 | 1,623,533 |

The full certificate SHA-256 is

`1a911d19061a84c142aa986862e7c2e3d0890f4e82768720f1a5678209bd24ae`.

## Final real-data negative controls

**CERTIFIED.** `results/final_negative_tests.json` is bound to that exact frozen certificate and to the independently verified compact input. At 224-bit precision, the untampered cap at index 0, selecting original group 8011, passed the target and both orientation tests. Its certified target margin is bounded below by the reported 0.0000820195656369587; the two orientation lower bounds exceed 0.6759.

All six deliberate changes were rejected: enlarging that cap from threshold 66,941,917 to 1; dropping a cap while retaining the original coverage record; setting an out-of-range group index 16,100; changing to the in-range group index 0; replacing the target squared bound by zero; and setting the cap multiplier to -1. These controls took 26.813 seconds. The already completed full coverage replay was deliberately not repeated by this negative-only command.

**CERTIFIED — actual geometric hole, beyond a stale-record rejection.** Removing cap 322, whose original transfer group is 10,383, leaves 19,610 caps that fail to cover the sphere. The explicit rational polar witness in `results/dropped_cap_hole.json` satisfies every remaining halfspace inequality by integer arithmetic and has squared norm exactly

\[
\frac{635928845840633908356491153029132710261465100253803013818}
     {635659886156681532082135018106028835175388972031204056241}
>1.
\]

Normalizing its integer numerator therefore gives a specific exact unit vector missed strictly by all 19,610 remaining caps. The witness search took 9.054 seconds, and the independent pure-integer replay in `results/dropped_cap_hole_replay.json` took 1.272 seconds including input parsing. Neither operation changed the certificate or any checker.

**NUMERICAL — preliminary selection only.** Eight earlier attempts removing the largest caps found no proposed geometric hole; their diagnostics are preserved separately in `results/dropped_cap_largest_search.json` and supply no mathematical noncoverage claim. Selecting a cap incident to the closest original hull facet produced the exact witness above on its first attempt.

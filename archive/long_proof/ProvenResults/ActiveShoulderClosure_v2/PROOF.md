# ActiveShoulderClosure v2: certified subsets and guarded production cubes

**This is not a whole-shoulder or all-90-cube closure certificate.** The
precise finite populations proved by this delivery are recorded in RESULTS.md
and replay/RECEIPT.json. Open, budget-limited and exception leaves remain
obligations. An audit PASS certifies the theorem below, not either open
whole-population claim. Use `verify.py --require-complete` for those gates.

## Theorem and dependencies

Let S be the union of the 1,609 closed rational grid cubes in data/region.json.
Let S_cert consist of the points of S whose exact singleton queries reach
only accepting leaves of data/shoulder_forest.jsonl.gz, requiring both
descendants at every tau split. The box predicate accepts only boxes
wholly contained in this set. Let C be the union of the production
cubes whose representatives have complete replayed trees in
`data/production_forest.jsonl.gz`, transported by the individually recorded
cube isometries in data/production_region.json. Let P be the certified parts
of the separately reported six patch boxes. Then the campaign statement Q holds on S_cert and P: at every strict-D0
seed in these certified sets, H+(theta) is not a quartet edge. This is the
local statement required by NumericalCampaign/REDUCTION.md, via A3/MC5;
it does not identify an H+ cover with an all-four-pairing certificate.
For C, every physical order-six Hadamard with a **maximal leading corner**
in C is not a quartet edge, with both side signs included. Production
cover terminals must additionally certify H+ on the conjugate seed box
and exclude Tao corners outwardly. Fixed-corner exhaustion and the sheet
conjugation identity then cover both matched sheets; the other pairings
are excluded by the same accepted reconstruction theorem.

The 227-leaf root-free certificate proves, in particular, the full closed
cube centred at (pi/3)(4,5,0,3) of half-width

    h_cover = pi/512 + 2^-40 + 2^-80 radians.

Consequently it proves all 16 requested cubes isometric to this cube;
their requested half-width is pi/512 + 2^-40. No general corner-frame
width expansion is used to identify cubes. The remaining production
representatives have the separate outcomes stated in the receipt.

A2/A4 are the all-strict side-fibre and completion theorems in
MinimalConstruction/Proofs, including that dossier's explicitly identified
ClassificationPaper imports. The code and proof of the missing
ActiveF6ProductionClosure implementation are **not** imported as an
accepted theorem. Its PROOF.md is pinned solely as historical specification.
The polynomial identities, Rouché argument and completion argument below
supply the local replacement. The matrix-tube theorems and their data are
pinned. The five additional 1/36 tubes and two stronger regional 1/30 tubes are
freshly replayed. The exact transfer improvement in REGIONAL_TUBES.md
strengthens these radii to 1/34 and 1/28 respectively. The enlarged
production side-cover certificate and every independent root-free cube
cover in data/rootfree_cubes.json are also freshly replayed. This is ordinary mathematical proof plus
finite outward computation, not a proof-assistant formalization.

## Exact regions, guards and transport

A shoulder root k is product [k_i/256,(k_i+1)/256]. Its input pilot consists
of all 80,613 original level-13 records. A decimal parsed by the original
pilot reader denotes its exact binary64 dyadic rational. Alternating-series
Machin bounds

    pi = 16 atan(1/5) - 4 atan(1/239)

produce a rational radius strictly above pi/8192 + 2^-40, with excess below
2^-80. The regenerated grid list contains every closed guarded pilot box.
It makes no containment claim for the unavailable full-run list.

`build_region(boxes, grid)` accepts any finite iterator of exact radian
boxes: four centres and either four radii or one common radius. Strings
are rational numbers, and finite binary64 values are exact dyadics. Negative
radii and invalid dimensions fail. For each coordinate it retains every
integer from floor(grid*(c-r)) through floor(grid*(c+r)), including the
upper boundary. Thus the resulting S contains every input box. The streamed
CLI records the source-byte SHA-256 and a canonical exact-box digest without
keeping the entire list in memory. Guards must be present in the supplied
radii; no implicit pi unit conversion, rounding inward or wrap is applied.

For production, `production.py` derives the integer 4-by-4 phase matrix of
each row/column permutation, transpose and conjugation directly by dephasing
four elementary phase arrays. Applying these maps modulo six gives exactly
18 seeds from (1,2,2,4) and 72 from (4,5,0,3). Only matrices with exactly one
entry +/-1 in every row and column are allowed for cube reduction. Thus the
whole perturbation cube, including its guard and every face, is transported
isometrically. Every seed has a recorded map, integer period shift, and
representative. There are nine representatives. Their rational root boxes
outwardly enclose their symbolic pi-centred cubes. The additional 2^-80
collar in h_cover strictly accommodates this rational enclosure for the
first representative. It is not silently absorbed into a matrix radius.

## Strict D0 and its boundary

The numerical root kernel treats R>0. A whole box with outward R upper bound
at most zero is outside the strict domain, and so closes that strict
obligation. For a physical maximal leading corner with R=0, every positional
corner has R=0: each physical R is nonnegative by the complementary-square
identity, and none exceeds the leading one. The proved A1/MC1 theorem in
`MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md` makes this carrier
F6-equivalent. The freshly replayed tube on the closed cell (0,0)/180
contains F6 itself and excludes a quartet there. **R=0 for an
arbitrary nonmaximal corner alone is not sufficient for this argument.**
Thus the theorem includes boundary points in physical maximal D0 without
pretending that a simple-root calculation succeeds at a multiple root.

## Outward quadratic models and the tau relation

A complex model is c + sum d_i v_i + sum_(i<=j) q_ij v_i v_j + e, with
v_i in [-1,1]. The first four variables are seed phases; the fifth is tau.
Coefficients and remainders are outward Arb rectangles. Squares use [0,1].
Multiplication retains degree at most two and includes exactly the interval
tail l1*q2+q1*l2+q1*q2+(c1+l1+q1)e2+(c2+l2+q2)e1+e1e2.
For inversion v=l+q+e and w=q+e, the retained polynomial is
1/c-l/c^2-q/c^2+l^2/c^3 and the exact remainder identity is

    -e/c^2 + (2*l*w+w*w)/c^3 - v^3/(c^3*(c+v)).

Both required denominators must exclude zero on the tested physical subset.
A phase exponential uses its quadratic Taylor polynomial and componentwise
remainder at most (sum |phase coefficients|)^3/6. These identities and
independently evaluated control points are checked in audits.py.

When a positive polynomial predictor p for sqrt(R) is available, its error
is at most sup|R-p^2|/(sqrt(max(0,inf R))+inf p), with a strictly positive
denominator. Otherwise tau ranges over an outward rational enclosure of
[0,sqrt(max(0,sup R))]. A tree may bisect this interval into closed slabs.
A slab disjoint from the outward range of R under squaring is empty.

Within a slab tau=t_c+t_w*v4, t_w>0. Physical points additionally satisfy

    t_w^2*v4^2 = R - t_c^2 - 2*t_c*t_w*v4.

For any model, replace its q44*v4^2 by q44/t_w^2 times this right side,
using the independent four-seed model of R, including its remainder.
Combine coefficients before bounding the resulting quadratic model. This
is a second outward bound on the **same physical subset**; intersect it
componentwise with the ordinary bound. All divisions and intersections are
outward. This relation is never used to assert a property of arbitrary
independent theta/tau pairs. It is valid in every root, derivative and
completion inequality because those statements are required only at the
physical theta and tau=sqrt(R). No division by tau occurs. Epoch-tagged
range caches are invalidated whenever the constraint changes. Independent
controls verify exact cancellation of tau^2-R and 81 physical points.

The entire model calculus remains valid on this restricted subset: product
and inverse remainders are algebraic identities evaluated on it. Numerical
Newton steps merely propose coefficients; the residual tests below validate
the final models. Cached polynomial ranges do not authorize acceptance.

The optional `--direct-models` mode reduces cancellation losses near F3.
It constructs the same seed invariants and side numerators in the exact
Laurent ring Z[z1^+/-1,...,z4^+/-1], with zj=exp(i*theta_j). Conjugation
negates every exponent. No coefficient is fitted numerically. The direct
R polynomial has 2,083 terms and coefficient absolute sum 5,038,848;
its equality in all twelve orientation/row charts is checked coefficient
by coefficient. For P(theta)=sum_k a_k exp(i*k.theta), its Taylor coefficient
for multi-index alpha at centre c is

    sum_k a_k exp(i*k.c) i^|alpha| k^alpha h^alpha / alpha!.

An outward Arb matrix product sums these coefficients before interval
evaluation. Degrees zero through two form the quadratic model. Degrees
three and four are bounded monomial by monomial, using [0,1] if every
exponent is even and [-1,1] otherwise. The remaining complex error has
modulus at most

    sum_k |a_k| (sum_j |k_j| h_j)^5 / 5!.

This follows from the order-four Taylor remainder for exp(i*t) on a real
interval. A rectangular error with each component in [-bound,bound]
therefore encloses it. The direct side models use exactly the same P0,
P1, 2*Re(numerator_u), 2*Re(numerator_Pi) and k1-k0 expressions as below;
the tau terms and every inverse/root/completion validation are unchanged.
Independent ordinary-formula controls check 81 box points and 24 signed
side charts. Proof nodes record this mode, and a first tau slab is checked
against the matching independently regenerated direct R bound. The mode
never accepts solely because its model is tighter.

## Side exhaustion and validated completion

For E with dephased first row and column, let
s=-sum E_1j conjugate(E_0j), t=-sum E_2j conjugate(E_0j),
r=-sum E_2j conjugate(E_1j), X=|s|^2, Y=|t|^2, Z=|r|^2,
p=X+Y+Z, J=2 Re(s*r*conjugate(t)),
g=27-3p+J, eta=9-p+J,
chi=XY+XZ+YZ-XYZ-(p-9)(p-18)+(p-15)J, and
R=4g^2 eta-chi^2. A negative upper bound on g or a 2-by-2 principal
minor of 6I-E E* excludes physical completion by Gram positivity.

For each horizontal or vertical side, a row permutation and unit rephasing
choose a chart; this preserves R. With k0=9-Z, k1=9-Y,

    P0=r*s^2+conj(r)*t^2+(3-Z)*s*t,
    P1=t*conj(s)^2+r^2*conj(t)+(3-Y)*r*conj(s),
    u=(g^2+k0*k1*eta+(k0+k1)*chi/2
       + i*sign*(k1-k0)*tau/2)/(conj(P0)*P1),
    Pi=(chi/2+k0*eta+i*sign*tau/2)/conj(P0).

The exact cancellations from the side-fibre formulas modulo tau^2=R are
replayed symbolically. All denominators must exclude zero. A leading entry
is separated from all three third roots before invoking non-Tao side
exhaustion. The physical x coordinates exhaust the roots of
x^3-s*x^2+u*conj(s)*x-u. For each proposed quadratic root x0, validate

    d>0, epsilon + q*rho^2 + rho^3 < d*rho,

where epsilon bounds |p(x0)|, d is a lower bound for |p'(x0)|, and q bounds
|3*x0-s|. Three uniformly disjoint Rouché disks give precisely all three
roots. Their errors are outwardly enclosed. For each,

    y=(t*x^2-Pi*x+u*r)/p'(x),

with another derivative check on the enlarged enclosure. The matching
identity is independently verified. Root permutations only permute missing
rows or columns; both signs in each orientation remain, hence four pairings.

For each pairing, A=C*, b=-E*B. A dyadic proposed inverse K must satisfy
beta=||I-KA||_infinity<1. A quadratic proposed solution X has column error
at most ||K(b-AX)_j||_infinity/(1-beta). All residuals and norms are outward.
Thus H=[[E,B],[C,D]] encloses every physical completion of that pairing.

A pairing closes only if an entry's squared modulus excludes one, a
positional corner has a strictly larger R than the leading corner, or the
actual oriented H enters an adopted quartet-free matrix tube. The corner
gap uses the correlated difference and the independently checked six-sine
complementary-square identity. Every selected corner has three distinct
rows and columns. Numerical corner and Fourier searches only propose tests.

## References, radii and singular-chart alternative

The exact Fourier family has entries
exp(2*pi*i*(ij/6+(j mod 2)*t_(i mod 3))) with (t0,t1,t2)=(0,a,b).
Parameters, gauges and permutations are explicit rational data. The symmetry
images and membership in closed parameter cells are checked exactly. The
indexed lookup includes both cells on every exact grid boundary and is
checked against the original exhaustive lookup. Moving proposals re-fit
a retained permutation chart, with fresh outward tests in every child.
After the configured search threshold (or immediately in the explicit
minimax mode), a near-passing tube bound can trigger a bounded floating simplex search
that minimizes the largest column-distance proposal over five independent row
phases. It keeps the Fourier parameters and permutation chart fixed, and
freezes the resulting row and column phases as exact dyadic radians.
The original and refined candidates both face the ordinary outward tube
test. No optimizer objective or termination status accepts a leaf.
Children retain the best prior proposal when refitting would worsen it;
replay uses the stored exact phases with optimization disabled.

The adopted direct projector radii are 1/16384 uniformly, 1/96 or 1/48 on
listed older regional cells, 1/34 on the five replayed cells, and 1/28 at
F6 and on the two freshly proved cells (0,0)/180 and (2,0)/180. The
1/28 cells use raw-amplitude tolerance 1/5 and common-ray projector
radius 5/27; neither number is a seed or matrix-tube radius.
REGIONAL_TUBES.md supplies the independent finite proof. For each normalized physical column u and reference column v, the
kernel bounds both 1-|<u,v>|^2 and ||u-exp(i*alpha)v||^2. Every column must
be strictly inside the selected radius squared. Seed phase, parameter,
entry-error and projector radii are never interchanged. For a transposed
reference the code tests the actual H^T. Quartet extendibility is transpose
invariant by conjugating the quartet and exchanging its first two bases;
projector distance itself is not assumed transpose invariant.

Exact endpoint diagnostics show that all available vertical charts at
(4,5,0,3) collide or have a zero denominator, and all these charts have zero
denominators at (2,4,4,2). The standard (1,2,2,4) endpoint has separated
roots in all twelve tested orientation/charts. These are exact centre
statements, not uniform full-cube separation claims.

A bounded root-free paired-side prune is also tried at roots proposed to
lie in the singular patches. It outwardly bounds the leading R, exhausts
side-column labels and every compatible triple, and accepts only a proved
absence of a side triple or a proved incompatibility of all paired triples.
This is the pinned PairedSidePrune theorem; no derivative separation is
required, and every physical pairing is covered. A nearest-lattice label
only selects this test, never its outcome. The replay repeats the whole
finite test from the exact root box. This closes some formerly derivative-
limited boxes directly; it does not resolve the whole F3 patch.

`production_cover.py` bypasses roots entirely on its enlarged guarded cube.
It replays the complete 227-leaf partition using the pinned residual side
cover: exhaustive retained labels/triples in both orientations, including
repeated labels; common row/column alignments; a validated reference inverse
and completion-error bound; then the F6 projector radius 1/30. It covers
all four pairings and more, without derivative separation. All failed
covers are inconclusive. The optional general fallback uses precisely the
same audited method on the whole theta box, so it is also valid on any tau
slab. It is slower and is not evidence that other production cubes closed.

The additional complete primitive covers in `data/rootfree_cubes.json`
use the same root-free method with the newly proved F6 radius 1/28. The
older discovery runs at 1/30 remain valid in this larger tube; every leaf
is freshly revalidated in the delivered replay. Each root box equals its regenerated guarded
production representative, and its binary paths form a complete cyclic
four-coordinate partition. `rootfree_cubes.py` freshly replays every leaf
with all four pairings, without calling the side-root kernel or any cube
lookup. These independent lemmas may therefore be used by the search
kernel without circularity. A lookup transports the whole query through
an exactly checked signed permutation and a rational enclosure of its
integer 2*pi shift. Acceptance requires exact interval containment in the
proved root box. A floating nearest-seed calculation only selects tests;
it cannot authorize containment. The symbolic requested cubes inherit the
lemmas through the exact integer transports in the 90-seed census.

## Adaptive trees, inherited proofs and exact predicates

Every internal node names an axis. Axes 0..3 bisect one exact rational seed
interval; axis 4 bisects a recorded rational tau interval. At the first tau
split the auditor independently checks that the interval contains every
physical sqrt(R) over that theta box. It first tries its 160-bit outward
calculation, then freshly recomputes at the recorded search precision
(128 bits for the older retained records), with a 96-bit compatibility
calculation also available. Arb enclosures need not be nested when the
precision changes. At least one newly computed outward enclosure must
be exactly contained in the stored rational domain. No tolerance is
allowed and the domain is never enlarged during replay. The receipt
records which precision supplied each such witness. The side-root and
completion witnesses are replayed at 160 bits. Later slabs must exactly partition
the inherited slab. Both closed children, including their shared face,
are required. Duplicate, missing or disconnected paths fail.

A node can prove a subset of the four pairing keys. Its proof is retained
at that node and replayed there. Descendants need only prove the remaining
keys. A chart cannot change once a pairing proof is inherited, because
unverified relabelling of signs would invalidate that reuse. Fresh root
charts may be changed only when all four keys still require proof, with
both signs rebuilt. Root and reference proposals are reused but revalidated.
No successful parent claim is inferred from a child's numeric proposal.
For a lift leaf, acceptance requires its ancestor/current proof keys to
exhaust all four pairings. A campaign fallback leaf instead requires the
separately replayed PSD or cover statement below; it is not recorded as
four pairing proofs. The lifted theta/tau tree is a
complete partition of the covered physical domain; projected tau siblings
must both pass in a theta-box lookup.

Split scores come from the actual failed bound's linear/quadratic
coefficients. When they are negligible compared with its unallocated
remainder, a width-weighted remainder score prevents selecting roundoff
noise indefinitely. These floating scores, budgets and queue order affect
search only. Budget exhaustion and every exception remain open leaves.
Resume inputs have their retained witnesses freshly replayed before reuse.
In a subtree job this means the assigned prefix and its ancestors, with
the audit explicitly marked SCOPED_REPLAY. All outside nodes are retained
unchanged, checked byte-for-byte by the merge, and replayed by the final
whole-tree verifier. A scoped job is not a full proof receipt.

The separate production_continuation tree retains the latest local
subdivision of representative 7. Its witnesses are also freshly replayed,
but its budget leaves remain open. It is not unioned with an independent
tree to infer whole-cube coverage. The recorded full production cube
counts come only from complete authoritative representative trees.

The fixed predicate hashes the delivered assets, clips the exact query
against every touched grid root and every relevant closed child, and
requires all reached leaves to be accepting. `VerifiedRegion` provides the
same semantics for a newly built region after a fresh witness replay.
Neither accepts an unresolved leaf or silently widens the query's guard.
Conservative rejection at an exposed grid boundary is permitted.

These facts prove the theorem: a hypothetical strict maximal quartet edge
survives neither an actual physicality contradiction, a larger-corner
contradiction, nor its validated tube. The four-pairing/auxiliary-interval
partition exhausts it. The preceding A1 argument covers maximal R=0.
The proof does not extend to any open part of S or any unclosed production
representative. The 1,000-CPU-hour target remains a computational target.

## Campaign fallback terminals

Each visited search box first uses the lift (including any inherited,
previously proved pairing closures), then SignedCornerPSDPrune. If that
fails, the accelerated production common-ray cover is attempted. Large
internal boxes defer the expensive cover until the maximum seed half-width
is at most the configured cover-width; they subdivide, without acceptance.
CPU/node exhaustion leaves a box inconclusive and does not override this
rule. The extra PSD family is used at narrow boxes; the basic coupled
family is used at wider boxes. Repeated exact theta boxes across tau slabs
reuse a per-root result. These are search choices, not proof assumptions.

Every accepting leaf records one of these logically distinct statements:

* Lift: all four side pairings have been covered, using the maximal-corner
  premise when a larger-corner contradiction is the witness.
* PSD: the entire seed box is outside strict D0. Its proof is the signed
  moment pencil theorem in ProvenResults/SignedCornerPSDPrune/PROOF.md.
  Its q cover, negative minor witnesses, provider coefficients and Tao
  guard are retained. Clean replay recomputes coefficient enclosures and
  checks the witnesses using that module's separate 60-digit evaluator.
* Accelerated cover: H+(theta) is not a quartet edge throughout an exact
  enclosing seed box. This is the campaign Q terminal under A3/MC5.
  It makes no all-four-pairing assertion. For production cubes there are
  two separate such certificates, at theta and -theta, plus the whole-box
  non-Tao guard; then A3 and sheet conjugation give both matched signs.

The production cover implementation is
NumericalCampaign/Certification/cover_accelerated.jl, with its Cartesian
outward exclusion, certified capacities, partitioned labels, and exact
exhaustive graph argument. Its theorems are the ClusterCover PROOF,
CARTESIAN_EXCLUSION, SHARP_CAPACITY and LABEL_REFINEMENT documents.
Neither numerical root counts nor successful point tests authorize a leaf.
Clean replay reruns the complete cover search and graph certification;
recorded success or node counts alone are insufficient. A missing Julia
environment, exception, timeout, node cap, or ok=False is inconclusive.

Replay may reuse a successful fresh cover computation for an identical
outward input box. Its key includes all four binary64 centers, all four
outward radii, and the scalar-cube versus anisotropic adapter mode. A
larger search budget is not needed after a proof has succeeded on the
same box. Each occurrence still checks the exact containment, original
certificate geometry, sheet census, statement, and non-Tao guard. In
particular, a cached positive-sheet result never supplies the negative
sheet at a different input box. No stored certificate or checkpoint
boolean populates this replay cache.

For the large production continuation, parallel_replay.py first enumerates
the exact seed geometry and computes every distinct cover on independent
spawned workers. Only a successful fresh worker response bound to the
complete expected input geometry enters the parent process's in-memory
cache. The full tree auditor then checks every node and remaining witness.
The completed.jsonl and progress.json files retain an audit trail and
progress checkpoints; they are never loaded to authorize acceptance in a
new invocation. A clean replay always recomputes the distinct covers.

The provided parallel runners use explicit spawned processes on every
platform. Each process creates its own Julia connection and uses it
serially. The adapter checks the creating PID before sending a request;
a foreign process also cannot terminate that worker during cleanup.
This is necessary because the response protocol has no request IDs:
sharing a connection inherited through fork would not bind a response to
its claimed seed box. Fresh controls test separate spawned connections,
foreign-owner rejection, and continued operation of the parent connection.

The adapter converts the exact four rational centers c_i to binary64 f_i
and takes outward binary64 widths h_i satisfying, in Fraction arithmetic,

    |f_i-c_i| + r_i <= h_i  for every i.

Thus the whole original closed anisotropic box, including its guard and
faces, lies in the routine's exact binary64 input box. The additive Julia
adapter extends tmvar(Q,i,c,r::Vector) by calling the unchanged scalar
production tmvar(Q,i,c,r[i]). Every downstream Taylor operation, torus
cover, label and graph test is unchanged. The proof uses independent
normalized inputs s_i in [-1,1], so these independent seed widths require
no new analytic estimate. Historical scalar-width certificates remain
replayable by using h_i=h=max_j(|f_j-c_j|+r_j), rounded outward. No rounded
center-only transport is used. These h_i are seed-angle radii in radians;
it is not a matrix-phase, projector or entry radius. Conjugation negates
centers exactly and preserves all four radii.

Tau subdivisions do not increase certified seed volume. volume.py uses
an exact closed mesh within each root and counts only mesh boxes whose
whole-box predicate passes both descendants of every tau split. Its
rational volume is a conservative lower bound; a failed mesh query does
not prove positive unresolved volume. Timing projections use this genuine
four-dimensional seed measure, never the mass of the five-dimensional
search tree.

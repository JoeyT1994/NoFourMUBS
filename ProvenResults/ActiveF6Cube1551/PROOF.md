# The two guarded production cubes at (1,5,5,1)

## Theorem and domain

Let h = pi/512 + 2^-40 radians. Let C be the closed four-dimensional
seed cube with centre (pi/3,5pi/3,5pi/3,pi/3) and coordinate half-width h,
and let Cbar have centre (5pi/3,pi/3,pi/3,5pi/3) and the same half-width.
A dephased order-six complex Hadamard whose chosen leading 3 by 3 corner
lies in C or Cbar, and maximizes R over its 400 positional corners,
cannot be an edge of a quartet of mutually unbiased bases.

The certificate excludes every physical R>0 completion over these cubes
**whose chosen leading corner is maximal**. This premise is needed when a
side-lift leaf closes by exhibiting a strictly larger corner. It covers both
matched signs and both nonmatched pairings. Physical R=0
completions are covered when the chosen corner is maximal, by MC1/A1 and
the adopted exclusion of F6. No assertion of exhaustion of arbitrary
nonmaximal R=0 fibres is made. Cube faces and the full 2^-40 guard are included.
This is a regional computer-assisted theorem, not a proof-assistant theorem
or a claim that the remaining campaign frontier is empty.

## Adopted results

The MinimalConstruction dossier supplies SIDE_FIBER (side exhaustion and
unique forced completion), MATCHED_FLATNESS, NONMATCHED_EXCEPTIONS,
TAO_PAIRINGS, and STRICT_CORNER_COVERAGE (MC1/A1). The frozen production
common-ray cover excludes the positive-sheet carrier H+ as a quartet edge;
its applicability and statement are those of A3/MC5 in the campaign.
ActiveShoulderClosure_v2 supplies the outward side-root lift and the stronger
regional Fourier tubes; FourierTransverseStability_v2 supplies its Theorem 1
and exact majorants. These are adopted, pinned dependencies, not newly proved
here. In particular no result or unavailable code from
ActiveF6ProductionClosure is an input to this argument.

The dependency chain is checked recursively through the sealed frontier
extension and v2 INPUTS.json files. The specific theorem sources and new
arithmetic are additionally pinned in this module's INPUTS.json. The integrator
has already replayed v2 and the frontier extension on rusty. The clean replay
here freshly proves every new leaf, the complete partition, scalar identities,
geometry and controls; it does not repeat the adopted global tube covers or
all 140 transverse-chart tiles.

## Exact enclosing region and partition

production.build() constructs rational Machin-series lower and upper bounds
L <= pi <= U. With m=(L+U)/2 and e=(U-L)/2, the representative root is

    centre_i = k_i m/3,
    radius_i = U/512 + 2^-40 + |k_i| e/3,  k=(1,5,5,1).

Consequently it contains C, including all closed faces, by exact rational
inequalities. audit_geometry regenerates and compares the entire pinned
production census, checks representative 7 and its two member seeds, and
checks centre_1=centre_2 and radius_1=radius_2. Thus the rational enclosing
root, not just its ideal centre, is invariant under transposition of the
leading corner (theta_0,theta_1,theta_2,theta_3) ->
(theta_0,theta_2,theta_1,theta_3).

A binary path splits coordinate depth mod 4 at its exact midpoint. Both
children are closed. The retained 4,744 leaves are prefix-free and have
exact Kraft sum one, hence cover the entire rational root. The three retained
search stages replace only previously open leaves by complete subpartitions.
The independent replay reconstructs every leaf from its path, checks complete
coverage and freshly validates its terminal. Stored success flags, budgets,
exceptions and floating-point proposals never authorize acceptance.

Conjugation maps Cbar to C modulo 2pi in every coordinate:
-(6-k_i)pi/3 + 2pi = k_i pi/3. This is an exact cube isometry, with all h
unchanged. It proves the second ideal cube from the first; we do not assert
that a separately rounded rational enclosure of Cbar fits into the first
rational enclosure. The exact integer seed transport is also checked by the
regenerated production census.

## Whole-region transpose lemma: both matched signs

For a strict seed E and its scalar roots z+ and z-=conjugate(z+), the matched
completion has sides

    H+(E): B=S(Gh(E),z+), C=S(Gv(E),z-)^T.

Transposing exchanges these sides. The horizontal Gram at E^T is Gv(E),
and its vertical Gram is Gh(E). The invariants g, eta, chi and R are unchanged.
The latter identities are checked as exact integer Laurent polynomials in
four independent unit phases (31,31,205,2083 terms respectively). Therefore
H+(E)^T has the horizontal z- and vertical z+ side orbits at E^T.
SIDE_FIBER and unique completion imply

    H+(E)^T ~ H-(E^T),

where ~ uses only the allowed last-three row and column permutations.
No numerical root matching or connectedness assumption is involved.

Quartet extendibility is invariant under transposition: given a normalized
quartet (I,U,V,W), conjugate it and multiply all four bases by U^T, then
exchange the first two bases. The first two are now I and U^T. Monomial
changes and conjugation preserve extendibility too.

The complete partition proves that H+ is not a quartet edge at every strict
seed in the rational root for which its leading corner is maximal. The
multiset of all 400 corner R values is unchanged by transposition, monomial
equivalence and conjugation. Thus a hypothetical maximal-corner H-(E) gives
a maximal-corner H+(E^T); its seed is in the same rational root. Applying the
complete partition there and the lemma excludes H-(E). **A single positive-cover leaf is not
claimed to exclude its own negative sheet.** The second sheet follows only
after whole-root coverage has been established; transposed points may fall
in different leaves and use different terminals.

## Nonmatched pairings and R=0

Exact Laurent algebra plus an outward mean-value enclosure at 192 bits gives
R(root) contained approximately in [-53.12,46.96], and verifies strictly
sup R <243. The endpoints retained in the receipt, not these rounded decimal
summaries, authorize the comparison. NONMATCHED_EXCEPTIONS says a physical
nonmatched strict completion is Tao; TAO_PAIRINGS gives R=243 at every strict
Tao corner. Hence both nonmatched pairings are impossible over the whole root.

For an actual physical corner R>=0 by the universal phase-block identity.
If the selected corner is maximal and has R=0, all 400 corner values are zero.
STRICT_CORNER_COVERAGE identifies the carrier with F6. The adopted Fourier
exclusion (also supplied by the proved tube containing its exact parameter)
then forbids a quartet. This is precisely the campaign's maximal-corner use
of A1/MC1, not a claim that every R=0 seed has only F6 completions.

## Leaf statements and their proofs

* R_nonpositive: outward sup R<=0; **outside strict D0**. The R=0 physical
  slice is handled by the preceding maximal-corner argument.
* FourierTransverseStability_v2: the unchanged seed-only predicate proves
  **all four pairings quartet-free on physical R>0**.
* Fourier_R_slabs: the extension below proves **all four pairings quartet-free
  on physical R>0**.
* side_lift: the pinned Rouché side-root enclosure and validated completion
  proves **all four pairings quartet-free on the maximal-corner domain**
  where its strict chart applies. Nonunimodular completions are impossible;
  a larger-corner witness contradicts the maximality premise; a validated
  tube excludes quartet extendibility. The serialized all-four-pairings
  statement is interpreted on this explicitly restricted domain. Replay revalidates the stored proposal at 160-bit Arb precision, checks all
  four pairing keys, and does not accept a cached proof flag.
* accelerated_cover: the frozen outward Julia common-ray cover proves
  **H+ is not a quartet edge** under its campaign reduction. Negative-sheet
  exclusion is supplied by the whole-region transpose lemma above.

The optional driver PSD terminal, unused in this final partition, asserts
only **outside strict D0** and is freshly replayed if used.

### The new auxiliary R slabs

Intersect the outward seed-box R interval with [0,infinity), obtaining exact
rational endpoints lo,hi. Reject if hi>=243. Split [lo,hi] into eight closed
equal rational slabs. For every slab and each original horizontal Q sign,
select a valid leading-corner frame and rerun the outward frame_branch_test
from FourierTransverseStability_v2. Different signs and slabs may use different
frames. Every actual strict seed has R in one of these slabs; including the
endpoint zero in the enclosure is harmless because the transverse theorem
is pointwise for R>0 and has no positive lower cutoff. No division by sqrt(R)
is introduced. The original normal domain, monotone scalar-root proof,
majorants, frame signs and outward frame radii are unchanged.

We use Theorem 1 of that module, not an enlargement of its original 1/36
corollary by assertion. The two target cells (0,0)/180 and (2,0)/180 have
already-proved column-projector tubes of radius 1/28 from v2's stronger covers.
Its exact transfer gives

    (4/3)(1/28)^2+(11/2)(1/28) = 233/1176 < 1/5.

The raw-amplitude tolerance is 1/5 and the common-ray projector-ball radius
is 5/27. These are distinct from the 1/28 matrix-column projector radius.
Theorem 1 bounds the row-projector distance to a moving Fourier reference.
The unchanged family-distance and actual-transpose identities in sections
5–6 of that proof put the transposed carrier in the adopted direct tube.
Acceptance requires the sum strictly below 1/28, outwardly, for both signs
on every slab. This proves both matched pairings; R<243 excludes the other
two. Slab counts must be positive bounded integers; empty covers reject.

Seed radii here are radians. Fourier-family parameters are turns. Entry-phase
correction radii and projector distances keep their separate original units.
Nothing equates a seed half-width with a matrix, entry or projector radius.

## Replay and limits

Run verify.py with the environment and command in README.md. It verifies
all pins, the exact root and conjugate geometry, algebraic symmetry,
nonmatched bound, negative controls, complete closed partition, and freshly
recalculates every accepting leaf. Its receipt is PASS only after all 4,744
leaves pass. A missing leaf, failed terminal, exception or exhausted budget
is inconclusive and fails the replay. This module is additive: existing proof
of record, production routing, and sealed certificates are unchanged.

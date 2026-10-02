# Fourier transverse stability on two explicit strict bands

**Status: proved, computer-assisted, partial regional result.** The proof is
relative to the proved repository inputs identified below, including the
MinimalConstruction dossier. Its new inequalities are replayed with exact
rational arithmetic and directed intervals. It is not a Lean formalization.
It does not close the whole shoulder, either secondary residual patch, or
any stratum reaching R=0.

The new result is a **seed-only, region-wide implication for every physical
maximal-corner completion**, not a collection of selected reconstructed
matrices. Once this finite certificate is replayed, testing membership in
its bands requires only affine seed-phase interval calculations. There is
no side-root calculation, completed-matrix calculation, or four-dimensional
leaf-by-leaf matrix lifting in the applicability test.

## 1. Conventions and precise theorem

All indices in this document start at zero. A raw physical Hadamard is a
6 by 6 matrix H with unit-modulus entries and HH* = 6I. Dephase its first
row and column. Its leading corner is

    E = [[1,1,1], [1,a,b], [1,c,d]].

**Maximality always means**

    R(E) >= R(H[I,J])  for all 20 row triples I and 20 column triples J.

It does not mean maximality among eligible, regular, selected, or sampled
corners. Rephasing a selected corner does not change R.

Put omega = exp(2 pi i/3), F3[i,j] = omega^(ij). The **tangential
coordinates p,q are in turns**; the **normal coordinates u,v are radians**.
Set

    x = 2 pi (1/6 + p - q),    y = 2 pi (1/3 - q),
    z = exp(i x),             w = exp(i y),
    a = omega exp(i u),       b = omega^2 exp(i v),
    c = z,                   d = w.                       (1.1)

Define the moving raw reference by

    N_orig(z,w) = [[F3,F3], [F3 diag(1,z,w),-F3 diag(1,z,w)]],
    N(p,q) = N_orig(z,w)[[0,1,3,2,4,5], :].              (1.2)

Its leading corner is E(0,0;p,q). Motion in p,q is factored out **exactly**:
the reference in every estimate is N at the actual p,q, not a tile center.

### Theorem 1: two certified bands

Assume H is physical, has seed (1.1), and its leading corner is maximal
among all 400 positional corners. Either of the following complete closed
parameter regions suffices.

| Profile | p, in turns | q, in turns | normal u, radians | normal v, radians |
|---|---|---|---|---|
| broad | [1/60,1/45] | [1/180,1/90] | [-1/500,1/500] | [-1/2000,1/2000] |
| thick | [1/50,1/45] | [1/160,1/128] | [-1/250,1/250] | [-1/1000,1/1000] |

For the broad profile let lambda = max(500|u|,2000|v|); for the thick
profile let lambda = max(250|u|,1000|v|). Thus 0 <= lambda <= 1.

After permutations of the last three columns and last three rows,
there is a simultaneous alignment Hhat with N(p,q) for which:

| Bound | broad | thick |
|---|---|---|
| maximum entry-phase error, radians | lambda/90 | lambda/70 |
| maximum normalized row Euclidean distance | lambda/125 | lambda/100 |
| maximum normalized column Euclidean distance | lambda/125 | lambda/100 |
| maximum row or column rank-one-projector distance | lambda/125 | lambda/100 |

The distances use normalized vectors, i.e. raw rows or columns divided by
sqrt(6). Projector distance means

    || |f><f| - |g><g| ||op = sqrt(1-|<f,g>|^2).

Consequently the **transverse seed-to-matrix estimates** are

    broad: d_both <= max(4|u|,16|v|),
    thick: d_both <= max((5/2)|u|,10|v|).                (1.3)

Here d_both is the larger of the matched row and column projector
distances. The corresponding normalized-row and normalized-column
Euclidean distances obey the same bounds. These are anchored transverse
estimates, not an asserted Lipschitz bound between arbitrary two carriers.

On both entire seed bands, the verifier additionally proves

    1 < R(E) < 16.                                     (1.4)

Thus the requested R>0 condition is satisfied uniformly. There is **no
extension of this theorem to the unverified low-R region**.

### Theorem 2: entry into an already-proved quartet-free tube

Every carrier in Theorem 1 is in the proved direct projector tube of
radius **1/36** about an explicit Fourier reference, after applying the
tube to the appropriate actual orientation of the carrier. In particular,
none can be an edge {I,H/sqrt(6)} of a MUB quartet.

The value 1/36 is a projector radius. It is not a seed half-width, an
entry-phase radius, or a raw common-ray amplitude tolerance.

Both theorems also hold on all images under the 72 leading-corner row/
column rephasings and transpositions, and complex conjugation: 144 listed
transformations, not asserted to give disjoint regions. Section 8 gives
the exact applicability predicate.

## 2. Imported proved facts and evidence boundary

`data/dependencies.json` pins 23 direct repository inputs by SHA-256.
The replay checks those bytes. Important mathematical imports are:

1. `MinimalConstruction/Proofs/STRICT_DOMAIN.md`, `SIDE_FIBER.md`,
   `MATCHED_FLATNESS.md`, `NONMATCHED_EXCEPTIONS.md`, `TAO_PAIRINGS.md`.
   On R>0 the two signed horizontal and vertical side fibers are
   exhaustive up to side permutations. Both matched pairings are physical;
   a physical nonmatched pairing is Tao. Every strict Tao corner has
   R=243. These are the supplied **proved** inputs, relative to their
   identified ClassificationPaper imports, not unproved A1--A4 assumptions.
   Global strict-corner existence is not required here: our corner is
   supplied and (1.4) certifies strictness.
2. `ProvenResults/RegularSideCharts/PROOF.md`. Every physical strict side
   has a nonsingular real moment Jacobian, with determinant squared R/64,
   and therefore a locally analytic labelled continuation. Compactness,
   the finite side fibers and the regular forced completion allow
   continuation along compact paths in R>0, modulo side permutations.
   `Sheets/BRANCH_LEMMA.md` also identifies radical changes as such
   permutations; this proof does not evaluate a singular radical chart.
3. `FourierNeighbourhood/SeedLifting/PROOF.md`, Section 1, gives the two
   explicit horizontal sides at a strict surface seed. Its
   `FOURIER_SIDE_COMPLETION.md` proves that the Fourier side fixes the
   entire physical carrier at exactly the displayed z,w.
4. `CornerBounds/PROOF.md` gives the complementary-square identity.
   The six-sine determinant convention used here is independently
   checked in `algebra.py` against the real moment Jacobian.
5. `ActiveShoulderClosure/REGIONAL_TUBES.md` and its retained verification
   inputs prove the direct 1/36 tube for parameter cell (180,3,1).
   **This module imports that proved tube. Its verifier does not rerun
   the upstream 45,139,727-node five-cell cover.** It newly verifies
   the entire transverse lifting certificate.

The initial handoff and proof of record are pinned for provenance, not
used to assert completion of unresolved campaign obligations.

## 3. Exhaustive treatment of all four side pairings

Fix p,q and a target (u,v) in one of the bands. The straight normal path
(tu,tv), 0 <= t <= 1, stays in the same band, so (1.4) holds throughout.
Maximality is imposed only at the target; it is not required along
the continuation path. A physical target carrier can be continued
backwards to t=0 using its matched side germs. Both side Grams stay invertible, and the forced
completion is regular. Local side invertibility precludes branching of
an individually labelled side; compactness prevents loss of a solution
at a finite path endpoint. Permutations merely change the labelling.

The **two nonmatched pairings** require no numerical branch assignment.
If either were physical, the proved exception theorem would make the
carrier Tao. Its strict corner would have R=243, contradicting (1.4).
Both nonmatched possibilities are therefore excluded everywhere in the
bands.

At t=0 put

    S = 1+z+w,       T = 1+omega^2 z+omega w,
    alpha = S conjugate(T)/(conjugate(S) T),
    gamma = -S/conjugate(S).

Up to permuting the last three columns, every horizontal side is

    B_F = [[1,1,1], [1,omega,omega^2], [-1,-z,-w]],
    B_A = [[1,1,1], [alpha,alpha omega,alpha omega^2],
           [gamma,gamma/w,gamma/z]].                    (3.1)

These are an exhaustive list, not an assumed choice of positive sheet.
The imports do not need them to be distinct everywhere. In our regions,
the certified larger-corner gap below prevents any ambiguity relevant
to a maximal carrier.

The continuation of B_A has, uniformly, a larger same-row positional
corner (Section 6). It cannot occur in a carrier with maximal leading
corner. If the endpoint side is B_F, the exact Fourier-side completion
lemma fixes the entire endpoint to N(p,q), up to the remaining row
permutations and phases. Dephasing fixes those phases. The full-matrix
chart of Sections 4--5 controls its continuation.

This covers the two matched and two nonmatched combinations. Neither
completion uniqueness away from the surface, balance, additional MUB
rays, nor a preferred sheet is assumed.

## 4. The new quantitative step: a joint full-phase chart

Bounding the seed, both sides and the forced bottom block separately
loses useful cancellations. Instead work with the 21 unknown dephased
entry phases of the entire matrix. First-row and first-column phases
are fixed. The four seed phases are supplied by (1.1). Let

    f(phi) = (Re <row_i,row_k>, Im <row_i,row_k>)_(i<k)

be the 30 real off-diagonal row-Gram equations. Every candidate remains
entrywise flat by its phase representation. For the alternative side,
use the same construction for the three rows of [E,B_A], with six
unknown side phases and six real Gram equations.

At each tangential tile, the retained arrays give exact dyadic
coefficients P_u,P_v,Q_uu,Q_uv,Q_vv and a real preconditioner L. Its sizes
are 21 by 30 for the full matrix and 6 by 6 for the alternative side.
The unknown phases have predictor

    phi_pred = phi_0(p,q) + P_u u + P_v v
                  + Q_uu u^2/2 + Q_uv uv + Q_vv v^2/2.  (4.1)

Known seed derivatives are inserted exactly. The reference identities
f(phi_0(p,q))=0 hold for **every** p,q in the tile, not just its center.
They are checked algebraically and used as identities, never accepted
because a numerical residual interval contains zero.

All retained binary64 coefficients mean their **exact dyadic rational
values**. Numerical pseudoinverses generate proposals only. The replay
never recomputes them and never accepts on their numerical quality.

### 4.1 Outward residual and Jacobian majorants

`chart_enclosures` computes componentwise eta >= |L f(phi_pred)| by
normal Taylor expansion. The first and second derivatives are evaluated
at normal zero over the whole tangential tile; third derivatives are
enclosed over the whole normal rectangle. The coefficients multiplying
absolute derivative bounds are

    first:   h_u, h_v;
    second:  h_u^2/2, h_u h_v, h_v^2/2;
    third:   h_u^3/6, h_u^2 h_v/2, h_u h_v^2/2, h_v^3/6.

They follow directly by Taylor expansion along (tu,tv) and integrating
its third-derivative remainder. Tangential widths incur no independent
zero-order error.

For a correction box |epsilon_i| <= r_i the verifier encloses

    |I - L D_epsilon f(phi_pred+epsilon)| <= K,

componentwise. It uses the smaller of a direct interval bound at the
predictor and a mean-value bound from its normal-zero Jacobian. For the
additional correction, an individual unit phase product changes by at
most r_ij+r_kj. Multiplication by |L| supplies a rigorous real-Jacobian
error majorant; no interval cancellation is assumed in this last step.

All transcendental values are evaluated by directed `mpmath.iv` / libmp
interval arithmetic. The implementation explicitly conjugates complex
intervals by conjugating their real and imaginary parts. Primitive
phase exponents are combined **before** evaluation. In particular the
common alpha/gamma factors of B_A cancel exactly in row products. The
Arg charts for S,T are accepted only after their real parts are proved
positive on the tile.

### 4.2 Acceptance and its mathematical implication

Every component must satisfy, with strictly positive rational radii,

    eta_i + sum_j K_ij r_j < r_i.                       (4.2)

Thus in the weighted maximum norm ||epsilon||_r = max_i |epsilon_i|/r_i,

    epsilon -> epsilon - L f(phi_pred+epsilon)

maps the closed box strictly into itself and has contraction factor
max_i (Kr)_i/r_i < 1. Banach's theorem supplies a unique zero of Lf in
the box, continuously depending on the normal coordinates.

For the full matrix, Lf has 21 components while f has 30. **It is not
claimed that an arbitrary zero of Lf is automatically physical.** Start
instead with the actual matched physical continuation from N at normal
zero. It is a zero of f, hence of Lf. Locally it equals the unique
contracting zero. It cannot first exit the correction box: at a boundary
point Lf=0 would contradict the strict self-map inequality (4.2).
Local side regularity and compactness continue this argument over the
whole normal path. The physical continuation therefore equals the
contracting solution throughout. The same argument bounds the B_A side.

This is what makes the certificate exhaustive for physical carriers,
rather than merely an existence test for a selected approximate matrix.

## 5. Homogeneous transverse bounds and the distance constants

Let lambda be as in Theorem 1. On the lambda-scaled normal rectangle,
each first-, second- and third-order Taylor contribution is at most its
full-size bound multiplied respectively by lambda, lambda^2, lambda^3.
For 0 <= lambda <= 1 their sum is at most lambda eta. The same K remains
valid on the smaller correction box |epsilon_i| <= lambda r_i. Hence
(4.2) scales to

    lambda eta + K(lambda r) < lambda r  (lambda>0).

At lambda=0 the exact reference has zero error. Uniqueness in the
unscaled box identifies the scaled and unscaled contracting solutions.
This proves **no tangential error floor** is present.

For each entry define the exact rational bound

    M_ij = |P_u,ij| h_u + |P_v,ij| h_v
           + |Q_uu,ij| h_u^2/2 + |Q_uv,ij| h_u h_v
           + |Q_vv,ij| h_v^2/2 + r_ij,                 (5.1)

with the supplied seed phases handled exactly and zero radii on fixed
entries. Then |phi_ij - phi_0,ij| <= lambda M_ij. For every retained tile
`phase_matrix_tests` verifies in rational arithmetic

    max_ij M_ij <= phase_cap,
    sum_j M_ij^2/6 <= vector_cap^2  for every row i,
    sum_i M_ij^2/6 <= vector_cap^2  for every column j.  (5.2)

The caps are exactly those in Theorem 1. Since
|exp(is)-exp(it)| <= |s-t|, (5.2) proves both normalized-vector bounds.
For unit vectors f,g,

    1-|<f,g>|^2 <= 2-2 Re<f,g> = ||f-g||^2,

which gives the projector bounds without identifying a phase radius
with a projector radius. The matrix Frobenius distance, if needed, is
at most sqrt(6) lambda vector_cap; this separate quantity is not needed
for the 1/36 transfer.

## 6. The alternative side is excluded by maximality

Let three columns have second and third row phases x_j,y_j and put
z_j=y_j-x_j. With i != j and {a,b} the increasing complement of i,
{c,d} the increasing complement of j, define

    Q = sum_(i!=j) sign(2a,2b,2c+1,2d+1,2i,2j+1)
          sin(x_b-x_a) sin(y_d-y_c) sin(z_i-z_j).       (6.1)

The sign is the parity of the displayed permutation of 0,...,5.
The independent exact audit verifies that Q is, up to a fixed global
sign, the real moment-Jacobian determinant. The imported complementary
identity is

    R(selected three columns) = 64 Q(complement columns)^2.  (6.2)

For the B_A continuation the replay proves

    Q(3,4,5) > 0,
    G := Q(1,2,4) - Q(3,4,5) > 1/100.                 (6.3)

Thus the corner on columns (0,3,5) has strictly greater R than the
leading corner on columns (0,1,2), contradicting all-400 maximality.
In fact the gap in square roots of R exceeds 2/25.

To retain correlation, the code sums the signed terms of G before
bounding derivatives. Let G_0 be its value at normal zero, with zero
correction. It rigorously bounds

    G >= G_0 - h_u sup|partial_u G_pred|
              - h_v sup|partial_v G_pred|
              - sum_i r_i sup|partial_epsilon_i G|.   (6.4)

The normal derivatives use the predictor, the correction derivatives
use its full box, and all share the same tangential intervals. This is
a mean-value inequality, not interval subtraction of two independently
large R enclosures. Every accepted tile verifies the strict comparison
in (6.3); none uses a sampled competing corner.

For completeness, (1.4) is independently checked by a second-order
normal Taylor enclosure of the seed invariant itself, using its exact
surface factorization

    R(E_0) = 9 |z^2-w|^2 |w^2-z|^2 |zw-1|^2.          (6.5)

It is not inferred from the contracted side solutions.

## 7. Explicit Fourier reference and tube transfer

Use the already-certified raw Fourier convention

    F(a,b)[i,j] = exp(2 pi i (ij/6 + (j mod 2)t_i)),
    t_i = (0,a,b)_(i mod 3).

The exact affine phase identities are

    F(p-q,-q)[i,j] = N(p,q)[s_j,i],
    s = [0,2,1,4,3,5],                                (7.1)

and

    F(a-b,-b)[i,j]
      = F(a,b)[(2-i) mod 6,(-j) mod 6]
          / F(a,b)[2,(-j) mod 6].                    (7.2)

`algebra.py` checks all 72 entry identities modulo integer turns.
These give explicit row/column permutations and column phases carrying
N(p,q)^T to F(p,q). Apply exactly those operations to the **actual
transposed carrier** as well. Its column Euclidean and projector errors
are bounded by the row estimates of Theorem 1. The operations in (7.2)
are isometries for the matched vector distances.

Both p,q rectangles lie inside

    [3/180,4/180] x [1/180,2/180].

This entire parameter cell has the proved direct 1/36 projector tube.
The new bounds are at most 1/125 or 1/100, each strictly below 1/36.
Therefore the transformed actual transpose enters that tube.

No column-projector transpose invariance is asserted. We proved a row
bound as well, and used it on the actual transpose. Quartet extendibility
of an edge is invariant under transpose: from a quartet containing
I,U, apply U* to all bases and then complex conjugation to obtain a
quartet containing I,U^T. Monomial changes and conjugation preserve the
same property. This proves Theorem 2 and its frame-image version.

### Nonvacuity on an entire surface patch

The maximality hypothesis is not checked by the geometric predicate.
Nevertheless it is nonvacuous on the entire thick profile at u=v=0.
The imported `FOURIER_MAX_R.md` gives

    max_corner R(N) = 36 (|sin(2y-x)|+|sin(x+y)|+|sin(y-2x)|)^2.

On the thick rectangle p>2q. With b=pi(p+q), c=pi(p-2q), all relevant
signs are fixed and the absolute sum equals

    sin(2b)+sin(2c)+sin(2b+2c) = 4 sin(b+c) cos(b) cos(c).

Its square times 36 equals (6.5), so the displayed leading corner really
is maximal among all 400 corners for every N on that surface rectangle.
The finite Laurent-trigonometric identity and rational sign chamber are
checked exactly. This nonvacuity argument is not an assertion that every
normal perturbation keeps the same corner maximal.

## 8. Region-wide seed applicability, images and practical scope

For original dephased seed phases theta=(theta_a,theta_b,theta_c,theta_d),
a leading-corner rephasing has exact phase matrix entries in {0,+1,-1}.
For row permutation r and column permutation c its entries are

    theta'_ij = theta_(r_i,c_j) + theta_(r_0,c_0)
                 - theta_(r_i,c_0) - theta_(r_0,c_j),

with the original first row and column zero; transpose and conjugation
are then included. Every one of the 144 matrices is an invertible
integer transformation, checked exactly.

For an interval box theta_k in center_k +/- halfwidth_k, propagate the
linear forms with their absolute coefficients. Recover u,v relative to
2pi/3,4pi/3, and, after proposing integer phase lifts,

    p = 1/6 + (theta'_c-theta'_d)/(2pi),
    q = 1/3 - theta'_d/(2pi).                           (8.1)

The implemented expressions include the exact integer lift corrections.
For p, the coefficients of theta'_c-theta'_d are combined first.
Every periodic-lift proposal is accepted only by outward **whole-box**
containment in a listed profile. The predicate may conservatively fail
on a boundary; it cannot enlarge the region. It does not test physicality
or maximality, which remain required hypotheses of the terminal.

`geometry.contains_box` accepts exact Fractions, integers or binary64
values interpreted as exact dyadics, with separate nonnegative radian
half-widths. `frame_test` is the lower-level outward-interval interface
for exact affine-in-pi campaign domains. In particular campaign widths
pi/8192 + 2^-40 must retain both terms. They must not be replaced by
matrix-phase caps or tube radii.

The surface base seed in sixth-root exponents is (2,4,1,2). The explicit
frame

    [[ 0, 0, 1, 0],
     [ 0, 0, 1,-1],
     [-1, 0, 1, 0],
     [-1, 1, 1,-1]]

maps it modulo 6 to (1,5,5,1); its negative maps it to (5,1,1,5).
Thus the theorem supplies explicit images in the primary endpoint class.
It does **not** supply an independent band around (2,4,4,2) or
(4,5,0,3), nor a cover of the full fitted region S.

The tangential certificate consists of **454 broad tiles and 175 thick
tiles**. Each tile covers its entire two-dimensional family rectangle
and its entire two-dimensional normal rectangle. The quadtree contains
all four children of every subdivided node, has no overlapping ancestor
leaves, and has exact normalized area sum 1 in each profile. Boundary
points are included. Maximum depths are 7 and 5. There are zero open
leaves. These are one-time **two-dimensional tangential validation
tiles**, not reconstructed four-dimensional frontier leaves.

A proposal-only floating scan found no original guarded level-13 pilot
box wholly inside these relatively narrow transformed bands. It found
centers in them, but **center hits are not accepted boxes**. No claim of
closing any full original frontier box follows from that scan. The
geometric terminal can be used on a different tiling or on children,
and on arbitrary other boxes proved contained in these bands. Any
frontier-coverage receipt must separately certify its exact inventory.

A concrete **outward-accepted** example is supplied separately in
`data/guarded_example.json` and `receipts/GUARDED_EXAMPLE.json`.
It uses zero-based pilot row 22327 (row 22328 when counted from one).
Each subbox center is the exact dyadic parent center minus pi/65536;
its half-width is **pi/65536 + 2^-40**, retaining the full guard.
The code checks strict containment in the real parent under both supplied
parent-width conventions and verifies membership in the thick band.
There are **zero matrix lifts** in this check. This is an explicitly
defined affine-in-pi subbox, not asserted to coincide with a
rounded-center production-driver descendant. It neither closes the
full parent nor changes the production frontier. `example.py` independently
replays this check; the main verifier replays it as well.

## 9. Replay, acceptance discipline and limitations

From the core repository root:

```sh
python3 -B ProvenResults/FourierTransverseStability/verify.py --workers 4
```

Only numpy, sympy and mpmath are required. The delivered binary64 arrays
are retained dyadic proposals, not interval endpoints with guessed
rounding errors. The verifier:

- binds the proved imports, profile constants and actual retained tube;
- audits both complete tangential covers and replays **every** tile;
- checks the finite algebra and explicit reference transformations;
- checks strictly outward inequalities and exact rational distance caps;
- runs 14 rejection controls, a whole-box geometric positive control,
  and exact rational-enclosure controls.

There is no budget acceptance, unresolved-leaf acceptance, numerical
residual acceptance or single-sheet acceptance. `build.py` is optional
proposal generation; `verify.py` does not invoke it. Replays at 160 and
192 bits are retained under `receipts/`. Reusing a stored PASS string is
not a replay. The Python programs and analytic proof are not claimed to
be checked by a proof-assistant kernel.

**Remaining gaps to the original full task:** extend the bands to the
rest of the shoulder, give useful control through low-R strata and
branch collisions, cover the two other endpoint patches, and prove a
complete relationship to the production frontier. This module provides
an exact partial regional transverse theorem and its matrix-free
applicability predicate; it does not substitute those remaining tasks
with a claim of complete closure.

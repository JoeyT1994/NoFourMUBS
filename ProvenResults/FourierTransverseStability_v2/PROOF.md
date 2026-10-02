# Fourier transverse stability v2: a signed-square-root chart across the low-R boundary

**Status:** computer-assisted regional theorem, with exact algebra and outward
acceptance. All physical side pairings are covered by the applicability
predicate. The theorem includes arbitrarily small **positive** R, but not the
R=0 slice. It is not a proof that the entire shoulder is closed.

This module is additive. Its proved inputs are the MinimalConstruction dossier,
the regular physical side-chart theorem, and the five already-proved direct
Fourier projector tubes listed below. Their exact files are bound in
`data/dependencies.json`. In particular A1–A4 are used as **proved inputs**, not
new assumptions awaiting verification. The new chart is independent of the
v1 transverse module.

## 1. Conventions, coordinates and statement

Indices start at zero. H is a raw 6 by 6 complex Hadamard: every entry has
modulus one and HH* = 6I. Its first row and column are dephased. Write its leading
corner as

    E = [[1,1,1], [1,a,b], [1,c,d]],
    a = omega exp(i u),             b = omega^2 exp(i v),
    c = exp(2 pi i(1/6+p-q)),       d = exp(2 pi i(1/3-q)),
    omega = exp(2 pi i/3).

**p and q are turns. u, v and the new coordinate xi below are radians.** These
are not matrix entry-phase errors and not projector radii.

The invariant R is the repository invariant, without any independent radical:

    s=-1-a-b, t=-1-c-d, r=-1-c conjugate(a)-d conjugate(b),
    X=|s|^2, Y=|t|^2, Z=|r|^2, pG=X+Y+Z,
    J=2 Re(s r conjugate(t)), W=XY+XZ+YZ-XYZ,
    g=27-3pG+J, eta=9-pG+J,
    chi=W-(pG-9)(pG-18)+(pG-15)J,
    R=4g^2 eta-chi^2.

Assume R>0. For a horizontal physical side B let Q(B) be the signed real
quantity defined in section 2. If sigma=sign Q(B), define t0 as the unique root
in [-3/8,3/8] of

    12 sin(t0) [cos(t0)+cos(3 pi q)] = -sigma sqrt(R).       (1.1)

Only roots in that interval are admitted. The scalar definition is explicit
and certified: the derivative is greater than 19 on the stated domain; the
runtime routine brackets the root and encloses it by an outward residual.
Equivalently x=tan(t0/2) is the unique admitted root of

    24x[(1+C)+(C-1)x^2] - y(1+x^2)^2 = 0,
    C=cos(3 pi q), y=-sigma sqrt(R).

There is no unselected algebraic root or assumed floating root in this rule.
In particular the identity (sqrt(R))^2=R is retained throughout the proof.
Set

    P = (q+t0/pi)/2,        xi = 2 pi(p-P) = pi(2p-q)-t0.   (1.2)

### Theorem 1 — uniform signed transverse stability

Suppose the branch coordinates satisfy

    -1/128 <= P <= 3/64,       -1/64 <= q <= 3/128,          (turns)
    |u| <= 1/10,              |xi| <= 5/32,                (radians)
    |v| <= 1/16.                                           (radians) (1.3)

For every physical completion on the corresponding matched side branch,
there are explicit row and column gauges, and permutations of the last three
rows and columns, such that its normalized row AND column projector distances
from an explicit moving Fourier reference obey

    d_both <= |u|/3 + |xi|/5.                               (1.4)

A strictly sharper polynomial bound, used by `contains_box`, is

    d_row <= sum_{a,b} L_ab |u|^a |xi|^b + lambda E_row,
    lambda=max(10|u|, (32/5)|xi|),                          (1.5)

with the nine exponents

    (1,0),(0,1),(2,0),(1,1),(0,2),(3,0),(2,1),(1,2),(0,3).

Every L_ab and E_row is an exact rational in `data/majorants.json`. The global
E_row is less than 0.001371; the decimals here and below are summaries, not
accepting constants. A separate list provides the both-orientation bound.

The reference is given as follows. Put F3[i,j]=omega^(ij),

    z=exp(2 pi i(1/6+P-q)), w=exp(2 pi i(1/3-q)),
    N_orig(P,q) = [[F3,F3], [F3 diag(1,z,w),-F3 diag(1,z,w)]],
    N(P,q) = N_orig(P,q)[[0,1,3,2,4,5],:].                 (1.6)

Section 5 specifies exact polynomial phase shifts alpha and beta from the
retained chart. The moving reference in (1.4)–(1.5) is

    N(P_tilde,q_tilde),
    P_tilde=P+alpha(u,xi)/(2 pi),
    q_tilde=q+beta(u,xi)/(2 pi).                            (1.7)

The coefficients are affine in P,q on each of 140 specified tiles. A tile
containing the actual P,q is selected; boundary points may use either tile.
Thus the reference is an explicit, finite piecewise formula, not a fitted
matrix. At u=xi=0 the phase shifts and the error are exactly zero. Motion
along the Fourier family is factored out, not charged to an additive error.

No maximal-corner hypothesis is needed for this theorem. In particular it
applies to the all-400 maximal-corner carriers in the question.

### Corollary 2 — a whole-box tube terminal covering all four pairings

`geometry.contains_box` applies Theorem 1 in separately selected leading-corner
frames for the two original horizontal signs. It accepts only when both
signed branches have whole-box certificates and, for each branch,

    the bound (1.5) + a proved family-to-cell distance < 1/36.   (1.8)

The same whole-box R enclosure must have upper endpoint <243. Both nonmatched
physical pairings are then excluded: by NONMATCHED_EXCEPTIONS they would be Tao,
and TAO_PAIRINGS gives R=243 at every strict Tao corner. Thus all four pairings
are accounted for, not just a reconstructed preferred sheet.

The five target cells, in the direct Fourier F(a,b) convention, are

    [a/180,(a+1)/180] x [b/180,(b+1)/180],
    (a,b) in {(0,0),(2,0),(3,0),(3,1),(5,0)}.

Their **projector** tube radius remains exactly 1/36. No larger radius is
claimed. The existing regional tube theorem implies that an accepting
physical R>0 carrier cannot be an edge of a MUB quartet.

Acceptance concerns every physical **R>0 point** of the whole guarded box. The
box need not have inf R>0 or inf R>1. It may contain nonphysical points or
intersect R=0; the R=0 slice itself is outside this theorem. Rejecting is
inconclusive. No subset is selected by floating centre membership.

## 2. Why the signed coordinate removes the old singularity

For a normalized 3 by 3 phase side B=(1;x;y), define

    S(B) = -perm(B) det(B)^2 / product_ij B_ij,
    Q(B) = Im S(B)/4.                                      (2.1)

The implemented six-sine formula, expanded into 24 sine terms, equals (2.1)
exactly. `algebra.py` verifies that Laurent identity over six independent
unit variables. From the proved side invariant Theta,

    S(B)=g Theta(B),   R=4g^2 (Im Theta(B))^2,

so

    R=64 Q(B)^2.                                          (2.2)

No sign is guessed: sigma is the sign of the explicitly bound expression
(2.1). Row and column permutations and phase multiplications preserve its
sign because they preserve Theta and g. Conjugation reverses the sign.
Transposition exchanges the two side blocks; for a matched completion their
Theta values are conjugate, so it reverses the horizontal sign as well.

On the reference (1.6), exact Laurent algebra gives

    Q_F(P,q) = -3/4 [sin(2 pi(2P-q))
                         +sin(2 pi(P+q))+sin(2 pi(P-2q))]
             = -3/2 sin(t0)[cos(t0)+cos(3 pi q)],
    t0=pi(2P-q).                                         (2.3)

This proves (1.1), including its sign and factor 8. For |t0|<=3/8 and
C in [97/100,1],

    d/dt0 {12 sin(t0)(cos(t0)+C)}
      =12[cos(2t0)+C cos(t0)] >19.                         (2.4)

The directed verifier checks the last lower bound. All q in (1.3) give C in
this interval. The original inverse at fixed p,q becomes singular near
R=0; the augmented coordinate Q(B) is instead used as a fixed chart output.
The new certificate does not divide by sqrt(R).

## 3. The 22-variable full-phase chart

Fix P,q in (1.3). Relative to N(P,q), hold the following dephased entries fixed:

    phase(1,1)=u, phase(2,1)=xi, phase(2,2)=0.

The first row and column have phase zero. All other 22 phases are unknown,
including phase(1,2)=v. There are 31 real equations: the real and imaginary
parts of the 15 off-diagonal row Grams, and

    Q(B)-Q_F(P,q)=0.

Their first seven are specifically the six Gram equations for row pairs
(0,1),(0,2),(1,2), followed by Q(B)-Q_F. These depend only on the first seven
unknowns

    (1,2),(1,3),(1,4),(1,5),(2,3),(2,4),(2,5).

The other 15 unknowns are in rows 3–5, columns 1–5. All this ordering is checked
by the verifier.

On each family tile use a polynomial phase predictor Phi, cubic in u,xi and
affine in P,q. Its coefficients are retained binary64 values interpreted as
**exact dyadic rationals**, not approximations authorized to accept a cell.
The three coefficient arrays are C0,Cp,Cq. To turn their nine stored derivative
coefficients into ordinary monomial coefficients multiply them respectively by

    1,1,1/2,1,1/2,1/6,1/2,1/2,1/6.

The predictor equals the prescribed u,xi,0 on the three fixed/free positions
and vanishes on the first row and column. Those are exact checks.

The family rectangle is a complete 14 by 10 grid of closed tiles of side
1/256 turn. The normal rectangle is covered by a 2 by 2 closed grid on every
tile. Four exact dyadic 22 by 31 preconditioners are retained per family tile.
Every preconditioner has block form

    A = [[A11,0], [A21,A22]],     A11 is 7 by 7.            (3.1)

The zero in (3.1) is enforced exactly. Proposals use a numerical block inverse,
but replay performs no numerical solve or eigenvalue acceptance.

Let F denote the 31 equations and let r_i>0 be the 22 retained correction
radii. The verifier encloses

    eta_i >= |[A F(Phi)]_i|,
    K_ij >= |[I-A D_phase F(Phi+e)]_ij|   for |e_i|<=r_i,

uniformly over the family tile and the relevant normal subcell. It verifies

    eta_i + sum_j K_ij r_j < r_i        for every i.        (3.2)

All four subcells share the same r. The Banach fixed-point theorem gives a
unique zero of A F in the correction box. Moreover

    |phase(H)-Phi|_i <= lambda r_i,
    lambda=max(|u|/(1/10), |xi|/(5/32)).                   (3.3)

Indeed every residual term has positive normal degree. Its bound scales by
at most lambda. The error part of the Jacobian bound scales by at most lambda
when the correction box is replaced by lambda r. Dividing the strict
self-map inequality by lambda reduces it to (3.2). At lambda=0 the reference
is an exact zero, so (3.3) is immediate.

The largest retained entry correction radius is less than 0.001955 radians;
the complete raw phase predictor plus correction has magnitude less than 1
radian entrywise. The latter is an angle-chart bound, not a projector radius.

## 4. Identification with actual physical completions

A zero of a preconditioned overdetermined system is **not by itself** a
physical Hadamard. The following argument supplies the missing identification.

First, the top-right zero in (3.1), the triangular Jacobian structure, and
(3.2) imply ||I-A11 J11||<1 in the restricted weighted norm. Thus A11 and J11
are invertible. The top seven equations hold exactly at the projected zero.
For different normal subcells their top solutions agree on overlaps: each
satisfies the same seven exact equations inside the same top correction box,
and each has uniqueness there. They therefore define a continuous, locally
analytic top solution along every radial normal path.

For fixed P,q with Q_F(P,q) nonzero, follow this top solution from (u,xi)=(0,0)
to the target. Its top three rows are physical orthogonal phase rows. Equation
(2.2) therefore gives R=64 Q_F^2>0 **at every point of the path**. At the start,
N(P,q) is the actual physical Fourier completion. RegularSideCharts supplies
local labelled physical side continuations on R>0. SIDE_FIBER supplies
exhaustion and uniqueness of a fixed-(Gram,Theta) orbit; MATCHED_FLATNESS
supplies a physical matched completion at every strict seed, including where
old product-regularity guards fail. The forced bottom block is continuous
because the side Gram is invertible on R>0.

Continue the physical matched carrier along the path. It solves all 31
equations, hence the projected equations, and cannot be the first solution to
leave the common correction box: a fixed point on its boundary contradicts
the strict self-map condition (3.2). At a change of normal subcell it is inside
the same box and agrees with the unique projected zero for either
preconditioner. Compactness of the path and local strict-side regularity then
continue it to the target. This proves (3.3) for a physical matched branch,
without inferring flatness merely from projected residuals. No maximality
condition is required anywhere along this continuation.

It remains to identify the input v with the chart's unknown v. A separate,
complete outward certificate proves

    partial R / partial v >128                             (4.1)

on the closed four-phase box

    u             in [-13/128,13/128],
    v             in [-1/16,1/16],
    arg(c)-pi/3   in [-3/8,9/16],
    arg(d)-2pi/3  in [-5/32,7/64].                         (4.2)

All entries in (4.2) are radians. The complete proof is `monotonicity.py` and
the outward C++ evaluator; its replay receipt reports the visited binary
cover and the actual certified lower bound. The verifier checks that (1.3)
implies the c,d bounds in (4.2). Every retained chart also certifies that its
unknown v lies strictly within [-1/16,1/16] (global cap <0.051291 radians).

The input and the constructed top solution have the same u,c,d and the same
R=64 Q_F^2. Strict monotonicity (4.1) forces their v to coincide. Their Q signs
and magnitudes coincide as well. The real part of Theta is fixed by the Gram,
so SIDE_FIBER identifies their horizontal sides up to the last three column
permutations; conjugate matching identifies the vertical sides up to the last
three row permutations. The forced completion then identifies the full
carrier. This proves Theorem 1 for the actual input, not only for a nearby
constructed seed.

The argument is pointwise for each R>0 and has no positive lower R cutoff.
Family tiles are allowed to cross Q_F=0. No assertion about exhaustion of
arbitrary R=0 physical fibers is made.

## 5. Explicit moving reference and quantitative distance

Let C_ab be an ordinary monomial coefficient matrix of Phi. Remove its row
and column phase gauges by double centering:

    D_ij=C_ij-rowmean_i(C)-colmean_j(C)+grandmean(C).

Let F_P and F_q be the entry phase derivatives of N with respect to 2pi P
and 2pi q, and A=D(F_P), B=D(F_q). Exact rational arithmetic gives

    <A,A>=<B,B>=2, <A,B>=-1.

For each coefficient set

    a=<D,A>, b=<D,B>,
    alpha_ab=(2a+b)/3, beta_ab=(a+2b)/3,
    T_ab=D-alpha_ab A-beta_ab B.                          (5.1)

The alpha,beta in (1.7) are the polynomials with these coefficients. Because
the reference phases are affine in P,q, their removal is **exact**; no Taylor
remainder is incurred by moving the reference. After the prescribed row and
column gauges, the remaining phase is sum T_ab u^a xi^b plus the correction e.

For normalized unit-modulus rows, |exp(ix)-exp(iy)|<=|x-y| and the Euclidean
triangle inequality give

    L_ab = max_rows sqrt(sum_j |T_ab,ij|^2 / 6),
    E_row = max_rows sqrt(sum_j r_ij^2 / 6).               (5.2)

The projector operator distance is no greater than that row Euclidean
distance. Including column maxima in (5.2) gives d_both. All square roots in
the accepting majorants are enclosed outward. The predictor coefficient
matrices are affine in the family tile; convexity of these norms lets the
verifier bound them at its four vertices. The global majorants dominate all
140 tiles exactly.

The exact linear absorption constants obtained from (1.5) are

    row:  u coefficient = 365223688381 / 1099511627776,
          xi coefficient = 5459234881453 / 27487790694400;
    both: u coefficient = 9152295836211 / 27487790694400,
          xi coefficient = 5472188448443 / 27487790694400.

They are respectively at most 1/3 and 1/5. To verify the absorption, use the
normal caps in (1.3). For mixed monomials bound a term by the average of its
linear-u and linear-xi bounds; for the error use lambda<=|u|/(1/10)+|xi|/(5/32).
This proves (1.4) with exact rational comparisons.

For runtime reference enclosures it is advantageous to retain the dominant
cancellation

    P_tilde=(P+p)/2-u/(8pi)+delta_alpha/(2pi),
    delta_alpha=alpha+u/4-xi/2.                            (5.3)

The verifier retains signed coefficient intervals for alpha,beta, not merely
absolute errors. Equation (5.3) is an identity, not a linear approximation.

## 6. Reaching a proved direct Fourier tube

For two parameter values of N, double centering the family phase difference
gives the exact normalized row phase norm squared

    (2pi^2/9)(deltaP^2-deltaP deltaq+deltaq^2).

Since pi sqrt(2)/3<3/2, a valid row-projector distance bound is

    (3/2) sqrt(deltaP^2-deltaP deltaq+deltaq^2).             (6.1)

For each of the five certified cells, clamp P_tilde and q_tilde coordinatewise
to that cell. This specifies the target reference explicitly. For a whole
parameter enclosure, enclose the two clamping residuals and maximize their
convex quadratic at the four vertices of the residual rectangle. The sum of
(1.5) and (6.1) must be **strictly** below 1/36 for acceptance.

The actual transpose is used for the direct Fourier convention. With column
order rho=[0,2,1,4,3,5], exact phase identities show

    N(P,q)^T[:,rho] = F(P-q,-q),
    F(P-q,-q)[i,j] = F(P,q)[(2-i) mod6,(-j) mod6]
                       /F(P,q)[2,(-j) mod6],
    F(a,b)[i,j]=exp(2pi i(ij/6+(j mod2)*(0,a,b)_{i mod3})).

These are checked entrywise as affine identities modulo integers. Apply the
same permutations and phases to the **actual transposed carrier**. The row
bound for H becomes the required column bound for H^T. No invariance of
column-projector distance under transpose is assumed. Transpose invariance
of quartet extendibility follows by conjugating a quartet and multiplying
by the transpose of its normalized Hadamard basis, exchanging the first two
bases. Monomial equivalence and simultaneous conjugation also preserve
quartet extendibility.

The direct 1/36 tube is imported from ActiveShoulderClosure/REGIONAL_TUBES.md
and its five complete certificates. Their separate 45,139,727-node ray-cover
calculation is not rerun here. This module proves the new seed-to-tube lift.

## 7. All frames and whole guarded boxes

`geometry.py` enumerates 144 leading-corner operations: 3! row orders, 3!
column orders, transpose/no transpose, conjugation/no conjugation. Dephasing
produces an explicit integer 4 by 4 matrix M on seed phases. Exact Laurent
algebra verifies R(M theta)=R(theta) for every one of these frames. The
horizontal Q sign changes by (-1)^(transpose+conjugation) for matched carriers.
Integer phase lifts are proposed, then all acceptance inequalities are tested
on outward intervals. Periodicity is therefore exact. No claim is made that
an entire q=1/2 window follows from an unproved family identification; such
inputs are accepted only if a listed whole-box frame passes.

For an input box theta_i in c_i+[-h_i,h_i], transformed phase widths use
sum_i |M_ji|h_i. Combined affine expressions use their combined coefficients,
not independent radii copied from individual phases. In particular p and
pi(2p-q) retain the exact affine combinations of the original four seeds.
The runtime R enclosure is a centered mean-value bound using all four phase
derivatives on the whole original box, intersected with direct interval R.
The intervals sqrt(max(0,R_lower)) to sqrt(R_upper), the monotone scalar root,
P,xi and the moving reference are all enclosed outward.

`contains_box` finds one frame for each original Q sign. It never substitutes
centre membership for whole-box containment, never assigns the floating
proposed coordinates as exact physical seed coordinates, and never calls a
side constructor or a full-matrix lift. Floating computations only order
candidate frames and propose scalar root centres. They can lose acceptance,
but cannot authorize it.

## 8. Exact/outward implementation and residual proof

All retained predictors/preconditioners are exact dyadics. Rational operations
and mpmath/libmp directed intervals handle the reference phases, scalar roots
and final comparisons. The accelerated C++ backend widens every binary64
product, sum and division by a `nextafter` step. Compilation uses
`-fno-fast-math -ffp-contract=off`; nonfinite arithmetic rejects. Its elementary
sine/cosine intervals use finite Taylor identities with explicit real
remainders, not a claim about libm transcendental accuracy.

For completeness, the finite residual bound in `affine_signed.py` is derived
here. Each term of the 31-equation residual is a real or imaginary part of

    z(P,q)(exp(i phi(P,q,u,xi))-1),                         (8.1)

times its exact rational weight. At zero normals every term in (8.1) vanishes;
the baseline row Gram identity and the subtraction of Q_F are exact.
Write phi=phi0+dp phip+dq phiq, with |dp|<=hp, |dq|<=hq; let b_p,b_q be the
reference phase derivatives of z. Normalize u,xi to [-1,1] and let rho0,rhop,
rhoq be the sums of absolute normalized monomial coefficients. Put

    rho=rho0+hp rhop+hq rhoq.

At the tile centre expand exp(i phi0) through order 5. Its remainder is at
most rho0^6/720. The first tangential derivatives are

    i b_p z(exp(i phi0)-1)+i phip z exp(i phi0),
    i b_q z(exp(i phi0)-1)+i phiq z exp(i phi0).

Their polynomial parts have total normal degree at most 18. Before taking
absolute values the exact preconditioner is multiplied into all polynomial
coefficient columns, preserving the important equation cancellations.

The respective bounds on second tangential derivatives of (8.1) are

    Bpp=|b_p|^2 rho+2|b_p| rhop+rhop^2,
    Bpq=|b_p b_q|rho+|b_p|rhoq+|b_q|rhop+rhop rhoq,
    Bqq=|b_q|^2 rho+2|b_q|rhoq+rhoq^2.

Consequently a complete scalar remainder bound is

    (rho0^6/720)[1+hp(|b_p|+rhop)+hq(|b_q|+rhoq)]
       +hp^2 Bpp/2+hp hq Bpq+hq^2 Bqq/2.                  (8.2)

This uses only affine tangential dependence of phi and the exact unit modulus
of z. No finite-difference derivative accuracy is assumed: the proposed
Cp,Cq are simply the coefficients of the chosen affine predictor. Their
actual suitability is proved by (8.1)–(8.2) and contraction.

For the phase Jacobian, exact interval polynomial evaluation gives its value
at each normal-subcell centre and its two normal derivative enclosures.
Their centre-radius mean-value bounds enclose the entire subcell. If X is a
term's integer unknown-phase exponent vector and c its weight, changing the
phase correction by e gives an additional Jacobian component bound

    sum_terms |c| |X_k| sum_m |X_m| r_m.

The integer tensor B4 in the code is four times this bound; all term weights
are multiples of 1/4. Premultiplying by an entrywise bound for |A| and applying
(3.2) closes the correction estimate.

The auxiliary monotonicity cover evaluates R and its v derivative from the
explicit invariant formula with directed arithmetic. Every failing cell is
bisected, both children are visited, every accepted leaf has lower derivative
bound >128, and resource exhaustion rejects. The root box is dyadic; all
bisection midpoints are exactly representable within the enforced depth cap.
This is one reusable global scalar certificate, not frontier-box lifting.

Independent replay checks include the exact signed-side Laurent identity,
the 2083-term seed R polynomial and all 144 frame identities, the Fourier and
transpose conventions, 1134 exact rational finite-exponential coefficients,
exact rational matrix-product checks, direct trigonometric cross-checks,
and exact Laurent evaluations of R and all four phase derivatives. Rejection
controls include malformed predictors, mixed top equations, a singular
preconditioner, undersized correction boxes, invalid scalar root domains,
incomplete auxiliary coverage and oversized guarded boxes. These are
implementation controls; the mathematical justification is the derivation
above, not random numerical testing.

## 9. Measurement and limits

The task names `shoulder_transverse_coordinates_sample4000.json`, but that
file and a new containing ZIP were not available in the mounted conversation
files or the searched Library. **No fraction is asserted for that 4000-sample.**
Instead the complete original pilot available in the frontier archive was
measured, with input SHA-256

    360d1628d9f60607802661b2899e5f2d0cbd4b96b05bb056cf0d3a2ecb7709f5.

Its 80,613 serialized binary64 centres are treated as exact dyadics. Every
box is tested at a rational outward enlargement of the exact half-width

    pi/8192+2^-40 radians.

The complete scan accepts **55,454 of 80,613 (68.7903936089...%)** of those
whole boxes, always for their physical R>0 subset. The retained witnesses
specify both signed frames for every accepted row; `verify_measurement.py`
recalculates every accepting inequality at 192 bits with the final predicate.

| Pilot group | Total | Whole boxes accepted |
|---|---:|---:|
| P, nearest (1,5,5,1) | 43,169 | 29,827 |
| P, nearest (5,1,1,5) | 20,877 | 15,700 |
| S, nearest (1,5,5,1) | 220 | 139 |
| S, nearest (5,1,1,5) | 12,871 | 9,788 |
| S, nearest (2,4,4,2) | 2,354 | 0 |
| S, nearest (4,5,0,3) | 1,122 | 0 |

These are not selected subdivided descendants. The original full guarded
boxes are used, with zero matrix lifts. There is an independently retained
positive control whose whole R interval is strictly inside (0,1), and a
standard-width accepted control whose R interval intersects zero. Thus the
low-positive-R scope is not merely a label on an R>1 computation. Counts of
R-intervals reaching 0 or 1 in the receipt describe **interval enclosures**,
not a claim that every such interval value is attained by a physical seed.

The two secondary neighbourhoods remain uncovered by this module. So do
25,159 original pilot boxes overall, the R=0 slice as an arbitrary physical
fiber, and any unseen 4000-sample applicability result. No global shoulder
closure, exhaustive optimal reference search, or claim that the rejection
set is nonempty physically is made.

## 10. Replay and additive boundary

From the core repository root:

    python3 -B ProvenResults/FourierTransverseStability_v2/verify.py --workers 4

This checks the complete 140-tile chart, the auxiliary monotonicity region,
all retained exact inequalities and the stated controls. For the whole-pilot
witness replay, additionally supply the original frontier file:

    python3 -B ProvenResults/FourierTransverseStability_v2/verify_measurement.py \
      --input /path/to/shoulder_boxes_pilot_full.txt.gz --workers 4

`measure.py` performs a fresh full scan rather than replaying positive
witnesses. The input archive files are unchanged. No existing campaign driver,
proof of record, registration or certificate is edited. Full replay receipts,
input-preservation hashes, accepted whole-box indices and the delivery receipt
are provided under `receipts/`. The proof is computer-assisted, not formally
verified in a proof assistant.

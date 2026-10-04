# Bounded region certificates for the (2,4,4,2) residual patch

## Certified statement

For each input record returned with `ok: true`, **no physical order-six
Hadamard completion has its specified leading corner in strict D0 anywhere
in the whole closed input box**. Here strict D0 means R>0 and that corner is
maximal among all 400 positional corners. This is statement (a) in the brief.
It covers all four side pairings. It is not a statement that the box contains
no physical Hadamard, and it is not an H+ quartet-edge certificate.

False, exceptions, missing records, budget exhaustion and unresolved endpoints
are inconclusive. RESULTS.md and the per-list receipts state the actual finite
coverage. Centre tests never authorize whole-box acceptance.

## Proved inputs and the role of the older nonapproach argument

The accepting argument uses `SignedCornerPSDPrune/PROOF.md`, Sections 2–3
and 5: the complementary-corner square, explicit signed moments and positive
clearing factor. Its strict side exhaustion and nonzero-divisor hypotheses
are MC2–MC3, proved in `MinimalConstruction/Proofs/SIDE_FIBER.md` and
`STRICT_DOMAIN.md`. The basic square identity is
`ProvenResults/CornerBounds/PROOF.md`, Section 2. When horizontal and vertical
signs are coupled, use MC4 from `NONMATCHED_EXCEPTIONS.md`, and the strict Tao
R=243 census in `TAO_PAIRINGS.md`. These are adopted pinned theorems. This
module does not reprove the entire reconstruction dossier.

The local A1–A3 labels in the SignedCornerPSDPrune ledger should not be confused
with other campaign numbering: our dependencies are the statements just named.
MC1, MC5, S1 and S2 are not needed by the accepting predicate.

For completeness, the exact sources behind the earlier S1 and S2 are:

* S1: `MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`, Theorem MC1,
  identifying the all-400 R=0 locus with F6.
* S2: `ProvenResults/ChartConditioning/RESULTS.md`, Theorem 3 (the four
  inactive corner classes cannot be strict positive maximal corners in its
  stated full-matrix neighbourhood); Corollary 3.2 gives the qualitative
  seed nonapproach consequence.

Neither supplies a useful seed radius for this ring. No matrix radius is
converted into a seed radius here, and no tiny-radius result is counted as
practical coverage. The finite accepted boxes are proved directly.

## 1. Signed mean and cleared inequality

Use E=[[1,1,1],[1,a,b],[1,c,d]], with a,b,c,d the exact unit phases of the
four input angles. Put

    s=-1-a-b, t=-1-c-d, r=-1-c/a-d/b,
    X=|s|², Y=|t|², Z=|r|², p=X+Y+Z,
    J=2 Re(s r conjugate(t)), W=XY+XZ+YZ-XYZ,
    g=27-3p+J, eta=9-p+J,
    chi=W-(p-9)(p-18)+(p-15)J, R=4g² eta-chi².

For a physical side sign sigma and a known pair of seed columns, let f_l be
the three real signed complementary-corner invariants. Maximality implies
f_l²<=R, so the signed mean m_sigma=(sum_l f_l)/3 obeys m_sigma²<=R.
The proved side-moment formulas give

    m_sigma=(A+sigma B sqrt(R))/D,  D=3 Delta,
    Delta=|P0 P1 P2|²,

where A and B in this module are the **cleared sum** coefficients. The P_j
are exactly the three polynomials in SignedCornerPSDPrune Section 3.
Delta is strictly positive at every hypothetical physical strict point by
MC3. A positive uniform lower interval bound for Delta on the entire box is
not required: no inversion of Delta or P occurs in the accepting code.

Set

    C=A²+(B²-D²)R, T=2AB, F=C²-T² R.

For each physical strict point, multiplying by D²>0 gives the necessary
condition C+sigma T sqrt(R)<=0. Thus the requested test (3.2),

    C>0 and F>0,

excludes both signs using that witness. All comparisons are strict and use
outward lower endpoints. There is no fixed absolute numerical tolerance.

The implementation may instead exclude signs using different witnesses.
Let c be a lower bound for C, y a lower bound for sigma T, and [L,U] the
outward R interval clipped to nonnegative values. Exact rational comparisons
prove C+sigma T sqrt(R)>0 in these cases:

* c>=0, y>=0 and either c>0 or y>0 and L>0;
* c>0, y<0 and c²>y² U;
* c<0, y>0, L>0 and y² L>c².

Binary64 endpoints are interpreted as exact dyadic rationals for those
squared comparisons. If U<=0, the strict subset is empty. An R interval
crossing zero is not a certificate by itself; positive physical points
must still pass the signed inequalities.

## 2. The polynomial provider, without side roots

The implementation computes the same cleared means as the proved provider,
but does not enclose A, B, R independently before forming C and F. It retains
their common four normalized seed variables through those final expressions.

The exact cancellations used before evaluation are

    R = 4J³ + J²(-p²+2p+27)
        + J(2p³-24p²-2pW+54p+30W)
        -p⁴+18p³+2p²W-81p²-54pW-W²+324W,

    chi+2(9-z)eta = W-p²+9p-18z+2zp+(p+3-2z)J.

They remove the subtraction of nonzero constant terms at the F3 seed.
The second identity is used with z=Z,Y,X respectively. Both follow by exact
polynomial expansion from the displayed definitions.

Only the six unweighted moments needed for the mean are evaluated. With
A_j=chi+2 k_j eta and k=(9-Z,9-Y,9-X), define

    U0=P0 |P1|² |P2|²/2,
    U1=conjugate(P1) |P0|² |P2|²/2,
    U2=conjugate(P2) |P0|² |P1|²/2.

For moment exponents (1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0), their
Delta-scaled constant parts are

    Delta s t-A0 U0, Delta conjugate(r),
    Delta s conjugate(r)-A1 U1, Delta t,
    Delta t r-A2 U2, Delta s,

and their coefficients of h=sigma sqrt(R) are

    -i U0, 0, i U1, 0, i U2, 0.

For each of the three known pairs, use the six determinant coefficient
functions in SignedCornerPSDPrune equation (7), including the exact powers
of the first known column in equation (8). If S is their weighted sum,
`i(S-conjugate(S))` gives the real cleared sum coefficient, separately for
its constant and h parts. These are A and B. This is a direct specialization
of the proved moments, not a fitted coefficient formula.

## 3. Outward Taylor model and Bernstein range

Write theta_i=c_i+rho_i x_i, x_i in [-1,1]. The centres and radii are parsed
as exact rationals. The sine/cosine enclosures of each exact centre are
computed by mpmath directed interval arithmetic at 160 bits and widened to
binary64 with checked containment. Each rho_i is rounded **up**, preserving
the supplied guard. Input phases have Taylor expansions through degree n
(default n=4); each real and imaginary remainder is bounded by
rho_i^(n+1)/(n+1)!, since derivatives of the unit exponential have norm one
on the real angle segment. No matrix or projector radius is involved.

A model consists of a multivariate polynomial of total degree at most n,
with outward complex interval coefficients, plus an outward rectangular
error. Addition and conjugation act coefficientwise. For multiplication,
all polynomial products of equal exponent are collected first. Terms of
higher degree are then put in the remainder using the exact monomial range:
[0,1] if every exponent is even, [-1,1] otherwise. The additional remainder
is P_a E_b+P_b E_a+E_a E_b, with outward ranges for the polynomials. This
proves enclosure by induction through the entire calculation. Polynomial
truncation never authorizes ignoring a term.

For C and F the retained polynomial is also converted to a tensor Bernstein
basis on [0,1]^4, x_i=2t_i-1. The coefficient of the univariate x^m in degree
n at index i is exactly

    sum_{j=0}^{min(i,m)} binom(m,j) 2^j (-1)^(m-j)
                         binom(i,j)/binom(n,j).

Tensor weights are products of these four rational weights. The code computes
them using integer numerators with common denominator (n!)^4, then outward
interval division. For supported n=3,4,5 the integer bounds are far below
2^53. Bernstein basis functions are nonnegative and sum to one, so the
minimum and maximum coefficient endpoints enclose the polynomial. Add the
model remainder and intersect with the original monomial range. This gives
a second independently valid enclosure; it does not turn an approximate
polynomial into an exact function.

Every elementary binary64 operation is widened by nextafter; nonfinite
intervals and bad rounding modes reject. Compilation disables fast-math
and contraction. The software trust model is ordinary IEEE-754 arithmetic
with gradual underflow, the compiler, and mpmath's directed real intervals,
as in the pinned existing PSD core. Floating split scores are proposals
only. They do not occur in an accepting inequality.

## 4. All signs, subdivision, and closed faces

Either orientation may exclude both of its side signs, which excludes every
physical completion without a matching shortcut. Otherwise the two
orientations can be combined after an outward R upper bound <243 excludes
strict Tao corners. MC4 then allows only opposite horizontal/transposed
side signs. Covering both of those alternatives accounts for all four
original pairings, including the impossible nonmatched ones.

A failed box is split in a coordinate selected from the contributions to
the failing C,F polynomial bounds. Both children are exact rational closed
halves. The search accepts the input only after its entire pending stack has
closed. The retained paths and split axes form a complete binary partition.
The fresh replay additionally checks unique, prefix-free paths, exact Kraft
sum one and every required split axis, reconstructs every leaf from the
original exact input, and recomputes every accepting terminal. Overlap on
split faces is harmless and no boundary is dropped.

CPU, node and depth limits affect only unresolved outcomes. Native CPU
checks occur throughout model products and Bernstein rows, with additional
checks in Python. Resource exhaustion returns ok:false. The small maximum
observed overrun due to a currently executing operation and wrapper work is
reported with each measured profile; the budget is not an accepting tolerance.

## 5. Controls and replay scope

controls.py checks all 43,750 tensor Bernstein weights against exact rational
weights obtained independently by polynomial basis reconstruction. It compares
retained coefficients for five exact polynomial operations against SymPy and
checks 3,125 exact remainder evaluations. Thirty-three coefficient comparisons
use an independent high-precision evaluation of the original, uncancelled
rational mean formulas at exact rational unit phases.

The physical-control algebra independently regenerates the corner determinant,
the six coefficient formulas and the exact Fourier-family all-400-corner
census. Six boxes are checked to contain known strict maximal physical
points, including transposes, and must reject. Another closed box contains
both the R=0 family endpoint and positive strict-D0 neighbours and must reject.
These are supplemental implementation controls, not sampled evidence for the
accepting theorem. Acceptance always comes from the outward regional proof.

The result is partial whenever any input box remains unresolved. No conclusion
about an unlisted full-run box follows from a pilot centre, metadata, nearest
seed label, or acceptance fraction. verify.py applies the same bounded method
to the integrator's future exact-rational lists.

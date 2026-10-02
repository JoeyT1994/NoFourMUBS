# Active shoulder: partial regional certificate and bounded-search handoff

**Status: INCOMPLETE. This package does not prove closure of the shoulder.**
The exact region below contains all 80,613 supplied guarded boxes. Its
complete retained partition has open leaves. A separately stated partial
exclusion theorem, a replayable root/completion kernel, certified smaller
parts, and a shardable search driver are supplied. The ordinary verifier
returns a nonzero exit code while whole-region closure is incomplete.

The authoritative counts and costs are in RESULTS.md and the retained
receipt. “Geometry PASS” and “accepting-leaf replay PASS” are not a
whole-region certificate. The supplemental pilot boxes described below
are certified subsets; they do not discharge the open partition leaves.

## 1. Exact region and the statement actually established

Read `data/region.json`. For its 1,609 distinct integer tuples k, set

    Q(k) = product_i [k_i/256, (k_i+1)/256],
    S = union_k Q(k).

All endpoints are rational radians. Each tuple occurs once; grid cubes
have disjoint interiors and include their closed faces. This is a
neighbourhood of the supplied pilot, not a proved enclosure of the
unavailable full-run population. Apply the exact predicate to that
population before using this region in production.

Input centers are the exact rational values of the binary64 numbers
parsed from the supplied decimal text. Let h = pi/8192 + 2^-40. The
function `pilot_radius` constructs a rational h_plus > h with
h_plus - h < 2^-80. It uses the alternating series bounds in

    pi = 16 atan(1/5) - 4 atan(1/239)

with 80 terms in each series, followed by an upward dyadic rounding at
2^-80. Each pilot box is contained in c + [-h_plus,h_plus]^4. `build_region`
includes every grid tuple with coordinate indices from
floor(256(c_i-h_plus)) through floor(256(c_i+h_plus)), inclusively.
These closed cubes cover that whole box, including every guard and face.
The verifier regenerates this list from all 80,613 input records with
Fraction arithmetic and checks literal equality to the retained region.

Within each root, a bit at depth d bisects coordinate d mod 4 at its
exact midpoint. All leaf paths are unique, prefix-free, and satisfy
sum 2^(-length(path)) = 1. The finite binary tree therefore has no missing
child: every root is completely partitioned, with all closed boundaries
retained. Each index must have exactly one authoritative shard record.
A failed leaf, budget leaf, or unattempted root remains explicitly open.

Let L be the union of the **replayed accepting** partition leaves. Let
P be the union of the guarded rational pilot boxes counted in RESULTS.md in
`data/box_certificates.jsonl.gz`; each is independently replayed and
checked to lie in S. They may overlap L and each other. Define

    S_cert = L union P, a certified subset of S.

**Partial theorem.** On every point of S_cert, a physical order-six
Hadamard with this leading corner is either outside the strict maximal
corner domain, or its normalized basis cannot be an edge of a quartet.
Consequently every closed seed box which the predicate accepts has this
property for every physical maximal completion with R > 0.

This theorem uses the supplied all-strict side-fibre and formula results
(A2/A4), via `MinimalConstruction/Proofs` and its explicitly stated
ClassificationPaper imports, and the cited matrix-tube theorems. It does
not use global positive-sheet surjectivity or assume that an unresolved
point is absent. A1, A3, and the external E1 citation are pinned for
campaign context; they are not needed by this strict local theorem.
No conclusion for the whole S, or the global no-four-MUB theorem, follows.

## 2. Native coordinates and arithmetic models

All lifts are performed in the input's native four seed coordinates.
There is no 72-frame width approximation in acceptance. Internal row
permutations of a side are implemented exactly on physical phases.
The diagnostic frame distances are proposals only.

`models.py` represents a complex-valued function by

    c + sum d_i v_i + sum_(i<=j) q_ij v_i v_j + e,
    v_i in [-1,1], i=0,...,4.

Coefficients and the remainder e are outward Arb complex rectangles.
Diagonal monomials range over [0,1]; off-diagonal monomials over [-1,1].
There are four seed variables and a possible independent fifth variable
for tau = sqrt(R). Exact rational inputs are converted by outward
integer division. Finite binary64 proposals are exact dyadic inputs to
Arb, never tested with a floating acceptance tolerance.

For multiplication, write each polynomial as c+l+q. Retain degree at
most two. The remainder encloses

    l1*q2 + q1*l2 + q1*q2
    + (c1+l1+q1)*e2 + (c2+l2+q2)*e1 + e1*e2.

For inversion let v=l+q+e and w=q+e. Retain
1/c - l/c^2 - q/c^2 + l^2/c^3 and enclose the exact tail

    -e/c^2 + (2*l*w+w^2)/c^3 - v^3/[c^3*(c+v)].

Both c and the full denominator must exclude zero. The exact rational
identity is checked independently by SymPy. For a real affine seed phase
c+t, retain exp(ic)(1+it-t^2/2); each component of the remainder is at
most |t|^3/6. This follows from the integral Taylor remainder on the real
axis. The four-variable seed phase correlations are kept throughout.

The polynomial definitions of s,t,r,g,eta,chi,R are those in the supplied
ActiveF6 specification. Complex conjugation and real extraction operate
coefficientwise. If the resulting outward upper bound on R is nonpositive,
the entire leaf is outside the strict domain. No R=0 exclusion theorem
is asserted by this return value.

For positive R, a real quadratic predictor p for sqrt(R) may be used
only when p is uniformly positive. If R lies in [L,U], then, on the
physical subset,

    |sqrt(R)-p| <= sup|R-p^2| / (sqrt(max(0,L)) + inf p).

The numerator and positive denominator are validated outwardly. Failure
uses the entire interval [sqrt(max(0,L)),sqrt(U)] as an independent
fifth variable. No reciprocal of tau is used in the side equations or
completion. Unlike the supplied ActiveF6 implementation specification,
this prototype does not yet partition the auxiliary tau interval; that
is one source of overestimation near R=0. Local positive-root predictor
coefficients are allowed only with their validated positive guards.

## 3. All side roots and the physical fibre

A fully dephased Tao representative has only third-root entries.
Before applying side exhaustion, the kernel separates at least one
leading seed entry, on the entire leaf, from all three third roots by
outward intervals. Otherwise the result is unresolved. This also covers
the small stationary patch without an assumption that its nearest seed
label alone separates Tao.

For either horizontal or vertical side, permute its leading three rows
and rephase columns so its first row is one. On physical unit phases,
this uses conjugation rather than an unvalidated reciprocal. Undoing
the side normalization similarly multiplies by the conjugate of a
physical unit component. Such operations permute Gram invariants and
preserve R; X,Y,Z are permuted and the real cyclic Gram product J is
unchanged.

For each sign sigma = -1,+1, the supplied formulas give

    k0=9-|r|^2, k1=9-|t|^2,
    P0=r*s^2+conj(r)*t^2+(3-|r|^2)*s*t,
    P1=t*conj(s)^2+r^2*conj(t)+(3-|t|^2)*r*conj(s),
    u=[g^2+k0*k1*eta+(k0+k1)*chi/2
       + i*sigma*(k1-k0)*tau/2]/[conj(P0)*P1],
    Pi=[chi/2+k0*eta+i*sigma*tau/2]/conj(P0).

Every denominator is tested on its full enclosure. These are the side
product u and moment Pi. `audits.py` checks their cancellations from
z=(chi+i*sigma*tau)/(2g), z*conj(z)=eta,
lambda0=(g+k0*conj(z))/conj(P0), and the corresponding lambda1,
reducing exactly by tau^2=4*g^2*eta-chi^2.

The physical first side coordinates are all three roots of

    p(x)=x^3-s*x^2+u*conj(s)*x-u.

NumPy roots and model Newton steps propose quadratic predictors x0.
Their coefficients are replaced by exact dyadic midpoints; their
convergence is not an acceptance condition. For each predictor compute
uniform outward epsilon >= |p(x0)|, d <= |p'(x0)|,
and q >= |3*x0-s|. A positive radius r is admitted only if

    d>0 and epsilon+q*r^2+r^3 < d*r.

On |w|=r, the linear term p'(x0)w strictly dominates the remainder of
the exact cubic expansion. Rouche's theorem gives exactly one root.
The three disks must be uniformly disjoint. Since the polynomial is
monic of degree three, these enclosures exhaust all roots.

For every enclosed root,

    y=[t*x^2-Pi*x+u*r]/p'(x).

The derivative is again tested nonzero on the enlarged enclosure.
For arbitrary distinct nonzero x_l and arbitrary y_l, substitution of
t=sum y_l, r=sum y_l/x_l, and Pi=s*t-sum x_l*y_l proves this identity;
all three cases are checked exactly. Physical unit entries give the
cubic coefficient u*conj(s). Root permutations only permute the three
missing columns or rows. Both signs in each orientation are retained,
giving all four independent pairings. There is no floating physical-sheet
selection and no claim that artificial off-fibre model values are unitary.

## 4. Completion and accepting alternatives

For each pairing set H=[[E,B],[C,D]]. Orthogonality requires
A D=b, with A=C^dagger and b=-E^dagger B. A dyadic approximate inverse K
and quadratic predictor X are proposals. Compute

    beta >= ||I-KA||_infinity < 1,
    q_j >= ||K(b_j-A X_j)||_infinity.

All row sums are rounded outward before taking their maximum. The
Neumann-series bound gives entry errors at most q_j/(1-beta). The
complex disks are enclosed in rectangles. Thus every physical completion
with these sides is contained in the resulting matrix model.

Each of the four pairings must pass one of these whole-leaf tests:

1. An entry's outward squared-modulus range excludes one. There is no
   physical completion in that pairing.
2. A candidate positional corner has R strictly larger than the leading
   R, with a positive lower bound for their **correlated difference**.
   This pairing cannot have a maximal leading corner.
3. The entire physical matrix enclosure enters a proved quartet-free
   column-projector tube as described next.

Candidate competing corners are chosen from a numerical 400-corner
scan, but the selected inequality is recomputed outwardly. Their R is
computed from the six-sine complementary-corner square formula of
`CornerBounds/PROOF.md` and `SideColumnPrune`. The comparison uses
physical unit-phase identities only on the physical fibre. The factor
64 and signs follow the pinned normalization. Independent known-matrix
controls compare this formula to the original Gram invariant.

A failed denominator, root separation, contraction, tube bound, exception,
node limit, depth limit, or CPU limit proves nothing and leaves an open
obligation. Closed roots require all their leaves to succeed.

## 5. Fourier references, transpose, and distinct radii

Use the exact Fourier family in turns

    F(a,b)[i,j]=exp(2*pi*i*(i*j/6+(j mod 2)*t_(i mod 3))),
    (t0,t1,t2)=(0,a,b).

Every retained a,b is rational. Row/column permutations and dephasing
are explicit. `MOVING_REFERENCE.md` proves the phase-class, conjugation,
half-period, and odd-column symmetries used by `certificate`. Membership
of an image in a WideFamilyTube parameter cell is checked by Fraction
arithmetic. It supplies direct projector radius 1/96 or 1/48. In addition, REGIONAL_TUBES.md
and the fresh complete replays in `extra_tubes.py` prove direct radius
1/36 on five listed cells. The exact
F6 image supplies 1/30, and otherwise the proved uniform 1/16384 applies.
Only the particular proved regional cell can supply a larger radius.

The proposal search considers 14,400 row/column charts in each
orientation. It also projects parameter images to certified cells with radius at least
1/48, maps those proposals back, and repeats exact membership.
This is a bounded search, not a proof of the nearest Fourier member.
Reference matrices are fixed within each tested leaf and may change
between leaves. Reference proposals and their numerical quality never
supply a radius or an accepting inequality.

The physical row gauges and optional column gauges are exact rational
radians. For the aligned physical column u and exact reference column v,

    distance(projector(u),projector(v))^2 = 1-|<u,v>|^2
    <= ||u-exp(i*alpha)*v||_2^2.

The kernel encloses both expressions and uses either valid upper bound,
with normalization by 6 at squared raw-column scale. It requires every
column's bound to be strictly below the selected squared tube radius.
No seed phase radius or completion entry error is substituted for this
matrix projector bound.

For the other orientation it evaluates the actual transposed matrix
H^T against F(a,b), using that orientation's columns. Quartet
extendibility is transpose invariant: conjugate a quartet and multiply
by the transpose of its normalized Hadamard basis to exchange the first
two bases. Projector distance itself is not assumed transpose invariant.
This permits a direct regional radius after the actual transpose test,
without incorrectly transporting an untransposed column bound unchanged.

These tests prove the partial theorem in section 1: any hypothetical
strict maximal quartet edge in an accepting leaf would survive the
first two alternatives but contradict its applicable tube theorem.
All four physical pairings are covered. A union of such regions retains
this implication, including the independently replayed supplemental boxes.

## 6. Predicate, replay and limitations

`certify_box(centers,radii)` takes four exact rationals or exact finite
binary64 values in radians; all radii must be nonnegative. It verifies
pinned assets once per process, then accepts only exact containment in a
replayed supplemental box or coverage by replayed partition leaves.
For the latter it clips the query against every touched rational root
and recursively checks every intersecting closed child. Open leaves are
never skipped. Some boundary-only cases may conservatively fail even
when an alternative neighbouring cover would suffice. Periodic wraps
are not silently inferred. The caller supplies every guard explicitly.

`verify.py` checks dependency hashes, exact region regeneration,
partition uniqueness/prefix/Kraft identities, algebra and arithmetic
controls, and every accepting partition leaf at fresh 160-bit precision.
It also rebuilds and repeats all five new regional integer ray covers
and exact graphs. It independently replays all supplemental boxes, binds them to the
original exact input and guard, and tests the predicate on all 80,613
records. All uncovered records retain their original text, exact center
fractions, rational outward radius, and failure reason.

The supplied upstream reconstruction and matrix-tube theorems, their
source/data assets and retained receipts are SHA-256 pinned. This replay
does not rerun every upstream common-ray cover or reprove the external
published E1 theorem. The local trust base is Python integer/Fraction
arithmetic, python-flint/Arb outward arithmetic, and SymPy for the listed
exact identities. NumPy/LAPACK supplies proposals only. Library versions
and local runtime fingerprints are recorded; the local run does not
claim a tested Rocky Linux execution.

The positive Fourier control, all-root control, repeated-root rejection,
zero-denominator rejection, malformed-partition checks, exact binary64
conversion and guard controls are implementation cross-checks, not a
formal verification of Python, FLINT, SymPy or the hardware.

Run the ordinary verifier for the closure gate. It exits 2 with an
INCOMPLETE receipt for this delivery. `--audit-partial` asks a different,
explicitly scoped question: whether the retained partial evidence passes
its audits. That command can exit 0 while the receipt's whole-region
status remains INCOMPLETE. This option must not be presented as proof of
the requested whole-region theorem.

# Quantitative crossing core: statement, proof, and acceptance dependency

28 October 2026. **CERTIFIED core, conditional on the analytic lemma below
and the supplied qualitative crossing theorem.** The complete all-K replay
closes all 16 patterns at delta=r/128, approximately 0.001015625, in the
original F6-012 w coordinates. This is a proper subset of the original ball;
the whole original X-ball remains **NOT ESTABLISHED** until every shell closes.

The source-bound proof plan is
[QUANTITATIVE_CROSSING.md](experiments/QUANTITATIVE_CROSSING.md).
Its introductory “no acceptance path uses it yet” sentence records the
pre-implementation status and is intentionally preserved with its hash.
The present file gives the current proof and status. The earlier missing-lemma
write-up remains in commit `eb97cfe26ca1bf298b999fe192b641555447f10b`.

## Sufficient analytic lemma

Let E be the 55-dimensional horizontal phase space in R^72, and F:E -> R^96
the analytic coherent MUB equations, with F(0)=0. Assume commuting orthogonal
order-three actions P0,P1 on E and Y0,Y1 on the equation space satisfy
F(Pi x)=Yi F(x). Let J=DF(0) have rank 51, with kernel K=K0 orthogonal-sum K1,
where each Ki is a two-dimensional fixed plane of Pi and their intersection
is zero. Put V=E intersect K-perpendicular.

Assume the supplied qualitative construction gives genuine analytic solution
surface germs fixed by Pi and tangent to Ki. Let A:R^96 -> V be equivariant,
and let B:R^96 -> R^4 satisfy BJ=0 and
B D²F(0)[u_i,v_j]=e_(i,j) in orthonormal bases of K0,K1.

Write H=AF, G=BF. Take positive R,rho,eta with rho²+eta²<R². Suppose

- d bounds ||I_V-AJ restricted to V||;
- h bounds sup ||D²H|| on the R-ball;
- g2 bounds ||D²G(0)||, and g3 bounds sup ||D³G|| on that ball;
- q=d+hR<1 and h rho²/2+q eta<eta.

Set t=hR/(1-q), s=h(1+t²)/(1-q), and

    epsilon = g3 R (1+t²) + g2 (2t+t²) + (g2+g3 R) R s.

If 2 epsilon<1, every zero of F in the product domain
{ k+y : k in K, ||k||<=rho, y in V, ||y||<=eta }
belongs to one of the two symmetry branches. When those physical balanced
order-three branches are identified by the inherited recognition theorem,
every such zero gives a Conjecture 1 triple.

## Proof

For fixed k, the map y -> y-H(k+y) has derivative norm at most q on the
closed eta-ball in V. Since H(0)=0 and DH(0) annihilates K, its value at
y=0 has norm at most h||k||²/2. The image bound gives a contraction of that
closed ball into its interior. Thus there is a unique y=phi(k) solving H=0.
Every physical zero in the product domain lies on this graph. Strict uniform
bounds and compactness give an analytic graph on an open neighborhood of
the closed kernel ball, by the analytic implicit-function theorem.

Equivariance of A and F, invariance of the balls, and uniqueness imply
phi(Pi k)=Pi phi(k). For k in Ki, the graph is therefore fixed by Pi.
Conversely, the known Pi-fixed solution surface germ projects to Ki:
its tangent projection is an isomorphism, and its entire projection is
Pi-fixed. Projection hence contains an open germ of Ki. Uniqueness makes
its normal coordinates phi(k). It follows that F(k+phi(k)) vanishes on an
open subset of each Ki. The real-analytic identity theorem extends this
identity to each connected Ki disk. No unspecified qualitative radius is
used as a numerical inclusion radius.

At zero phi(0)=0 and Dphi(0)=0. Inverting the normal derivative of H and
using DH(0) restricted to K=0 gives ||Dphi||<=t. Differentiating once more
gives ||D²phi||<=s; orthogonality of K and V gives
||D(k+phi)||²<=1+t².

For f(k)=G(k+phi(k)), BJ=0 removes the constant linear term from the
second-derivative composition formula. Comparing D²f(k) with D²G(0)
restricted to K gives the stated epsilon bound: the three terms respectively
bound the change in D²G, the two derivative-carrier corrections, and
DG(k+phi(k))D²phi(k). These are Euclidean operator bounds, or proved larger
tensor norms, throughout one common ambient R-ball.

Write k=u+v with u in K0 and v in K1. Because f vanishes identically on
both axes, the double fundamental theorem of calculus yields

    f(u,v) = C(u,v) (u tensor v).

Here the four columns of C are the corresponding mixed second derivatives
averaged on (a u,b v), 0<=a,b<=1; these points remain in the kernel ball.
The exact normalization of B makes the centre matrix the identity. Each
column differs from its identity column by at most epsilon, so
||C-I||<=||C-I||_F<=2 epsilon<1. Thus C is invertible and f=0 implies
u tensor v=0, hence u=0 or v=0. This proves the stated classification.

## Exact algebra and quantitative values

`crossing_structure.py` verifies both centres over Q(sqrt(3)): all 96
MUB equations, rank 51, Fourier covariance including the base phases,
commuting orthogonal actions, horizontal-gauge invariance, complementary
orthogonal two-dimensional fixed planes, and rank four of the mixed
Hessian modulo im J. It is essential to check covariance of the actual
phase-dependent equations, not just commutation of permutations.

`crossing_radius.py` also checks exact physical monomial representations
of both balanced order-three operators. It obtains B by the exact
least-norm left inverse of [51 independent J columns, four mixed-Hessian
columns]. Numerical pivoting only proposes columns: exact inversion and
BJ=0, B Hmixed=I decide acceptance. Orthonormal basis conversion is enclosed
in Arb. The normal inverse A is projected to V and averaged over the
nine group elements, so its range and equivariance hold by construction.

The Hessian bound uses the signed symmetric flattening, with off-diagonal
columns weighted by sqrt(2). For the third derivative, a nonnegative
coefficient-amplitude matrix bounds every phase-dependent coefficient
matrix entrywise. The Gram matrix of the flattened cubic frequency tensors
has entries (ell_i dot ell_j)^3; its absolute row-sum bound is 308.
Submultiplication gives a uniform third-derivative bound without sampling.

At 224-bit precision both crossings pass at

    R = 3/1024, rho = 21/8192, eta = 3/8192.

Rounded display values (acceptance uses the saved Arb intervals):

| Quantity | Pattern 1 | Pattern 2 |
|---|---:|---:|
| normal inverse defect d | 1.668e-15 | about 1.5e-15 |
| h2 = ||D²H(0)|| bound | 2.333333335 | 2.333333335 |
| h3 bound | 62.916216922 | 62.916216922 |
| g2 bound | 7.347996708 | 7.347996708 |
| g3 bound | 104.763770505 | 104.763770505 |
| q, using h=h2+h3 R | 0.007375951725 | 0.007375951725 |
| normal image bound | 1.097343893e-5 | 1.097343893e-5 |
| 2 epsilon | 0.946870453928 | 0.946870453928 |

The normal image is strictly below eta=0.0003662109375 and 2 epsilon is
strictly below one. See
[crossing_radius_20261028_v3.json](results/crossing_radius_20261028_v3.json).
The radius receipt itself correctly claims only phase neighborhoods;
all-K core inclusion is a separate obligation.

## Complete all-K inclusion in original coordinates

`core_crossing.py` freshly builds the edge model at r/128 with the original
Mth frame, verifies the Stage C call-site guards, and replays the complete
torus/colour cover and column contractions. It does not assume the numerical
root proposals enumerate all actual roots. Fourteen patterns pass the
unchanged symmetry/recognition pipeline. The other two are included in the
quantitative product domains above, uniformly over every represented K.

Inclusion uses one common row rephasing and independent column rephasings
for H and K. The exact shared dephasing map D satisfies W D=W for the
horizontal projector W. Integer winding proposals match the exact centre;
Arb bounds the resulting displacement. The correlated 72-by-4 carrier
contains the H carrier and all six K-column carriers. Project its centre
and linear term separately onto K and V. Combine the H and K errors by
the Euclidean sum of squares, then use the norm-one orthogonal projections.

| Full-pattern bound | Pattern 1 | Pattern 2 | Required upper radius |
|---|---:|---:|---:|
| Kernel component | 0.002273113489 | 0.002273081844 | 0.0025634765625 |
| Normal component | 2.106947547e-6 | 2.075303182e-6 | 0.0003662109375 |

Both strict inclusions hold. The accepted core radius is exactly
`0x1.0a3d70a3d70a4p-10`, while the original ball remains
`0x1.0a3d70a3d70a4p-3`. Evidence:
[core7_complete_20261028.json](results/core7_complete_20261028.json),
16/16 patterns CERTIFIED, 37.69 seconds on the original local replay.

## Review and provenance boundary

The exact algebra and interval inequalities are checked by the supplied
programs. Their mathematical meaning uses the analytic lemma above,
the qualitative construction, and the inherited recognition theorem.
Those analytic dependencies require independent review; the receipt is
not a formal proof-assistant verification. Stage C retains its documented
binary64 enclosure assumptions and checked 1e-7 safety margin.

The new sources are separately hash-bound extensions. They are not hidden
inside the frozen native binding or the 59-file base X-ball binding.
`campaign.py` checks the core extension hashes, recursively checks the
radius sources, re-evaluates its scalar inequalities in Arb, and checks
all core pattern inclusions before whole-domain accounting. It labels its
output `tc-xball-extended-accounting-v1` and records the dependencies.

The qualitative theorem is copied in
[reference/prior_local_CHECKPOINT.md](reference/prior_local_CHECKPOINT.md),
with archive provenance in [reference/provenance.json](reference/provenance.json).
It comes from the user-supplied R0153 handoff, Sections 3–5 and 7.
General recognition and transverse results are in
`../seed_method/reference/r0153/CHECKPOINT.md`.

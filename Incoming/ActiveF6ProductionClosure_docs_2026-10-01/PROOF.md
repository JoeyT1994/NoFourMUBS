# Guarded production cubes for both active F6 endpoint classes

## 0. Statement, scope, and arithmetic conventions

Let `zeta = exp(i*pi/3)`, let `F6[i,j] = zeta^(i*j)` for indices 0,...,5,
and let `H` be a **raw physical Hadamard**, so its entries have modulus one
and `H H* = 6 I`. Its carrier basis is `H/sqrt(6)`. Dephase the first row
and column. Its leading seed phase vector is `(theta11,theta12,theta21,theta22)`.
A physical **maximal** corner means that this corner's invariant `R` is the
largest of the 400 positional corner invariants. Strict means `R>0`.

Put, in radians,

```
h = pi/512 + 1/2^40,
C(s) = { theta : |theta_k - s_k*pi/3| <= h, k=1,...,4 }.
```

Coordinates may be shifted by integer multiples of `2*pi`. Let `O_A` and
`O_B` be the distinct 72-frame seed orbits of `(1,2,2,4)` and `(4,5,0,3)`;
they have respectively 18 and 72 elements.

**The closure statement checked by this module is:** for every seed in
`O_A union O_B`, every physical maximal completion with its seed in the
closed cube `C(s)` is quartet-free. This is conditional on precisely
`[A-SC]`, `[A-SIDE]`, and `[A-FORM]` below. No global positive-sheet
surjection is used in the local proof. Both signs of both side fibres,
not merely `H_+`, are covered.

The statement is certified only when `data/index.json` has status `PASS`
and every shard passes its recorded 96-bit and 160-bit tests. Numerical
counts, leaf histograms, maximum certified distances, failures, and measured
costs are recorded in `RESULTS.md` and `RECEIPT.json`. The executable
predicate refuses an incomplete or altered certificate.

The partition is **rational in normalized seed coordinates**
`theta = s*pi/3 + h*v`, `v in [-1,1]^4`. Every face of every leaf is an
exact rational number in `v`; its radian endpoint is an exact expression
`a*pi+b`, `a,b in Q`. This convention is necessary to describe the exact
requested cube: even its unguarded faces are not rational radians. The
kernel constructs fresh outward intervals from these exact expressions
at each precision. It does not round a target face inward. Rational
radian boxes supplied by the campaign are tested for exact containment.

**Different radii must not be conflated.** `h` is a four-coordinate seed
phase half-width. `1/30` is a distance between normalized column
projectors, after explicitly allowed frame/monomial operations. `5/27`
is a radius of balls containing possible additional basis rays in the
regional matrix certificates. These are three different quantities.

## 1. Inputs and their roles

Every adopted archive file, including its role and SHA-256 digest, is
listed in `INPUTS.json`. The principal labels are:

* **[A-SC], accepted, not reproved:** strict-corner coverage from
  `MinimalConstruction/ASSUMPTIONS.md`: every non-F6 Hadamard class has a
  positional corner with `R>0`. Used only for maximal `R=0` carriers.
* **[A-SIDE], accepted, not reproved:** the two normalized side orbits at
  a strict corner exhaust the side fibre, modulo permutations of the
  three columns, with the finite completion pairings as specified in
  `ASSUMPTIONS.md` and `RECONSTRUCTION.md`.
* **[A-FORM], accepted, not reproved:** the unit-lambda side formulas,
  unit entries, and symmetric side products/moments in the same
  reconstruction and `BalancedFourSeedIdentity.md`. Pointwise
  nonvanishing never substitutes for a whole-box denominator test.
* **[P-CORNER], proved archive input:** the complementary-corner square
  identity in `CornerBounds/PROOF.md`. Its Laurent identity, transpose
  invariance, and the implemented six-sine normalization are regenerated
  exactly by `audits.py`.
* **[P-SIDE], [P-TRIPLE], [P-PAIRED], [P-LIFT], proved archive inputs:**
  the necessary side-column tests, compatible triples, and completion
  residual bound from `CornerBounds` and `SeedLifting/RESIDUAL_LIFT.md`.
  Section 7 also states the argument used by the port.
* **[P-MEAN], proved archive input:** the two-sign symmetric-mean prune
  from `SymmetricSignedCornerPrune/PROOF.md`. Its formula is evaluated
  with the new outward quadratic model algebra, not sampled.
* **[P-SCALAR], [P-BALL], [P-F6], proved archive inputs:** the scalar
  integer exclusion bound in `PracticalTube`, the ball/graph geometry in
  `ClusterTube`, and its expanded F6 radius `1/30`. The scalar C++ prefix
  is extracted without alteration from its pinned source. The present
  nine complete covers independently replay the matrix obstruction,
  including the F6 reference itself.

`ChartConditioning/RESULTS.md` explains why these two seed classes are the
active endpoint targets. It is **context**, not an additional condition
needed to validate any leaf here. The source orbit list in
`EffectiveConfinement/certificates/arithmetic.json` is checked against a
fresh exact frame enumeration. The old production cube is used to audit
what its frame rule does, not assumed to cover enlarged cubes.

We do not use a frozen external Tao-elimination calculation. A fully
dephased representative of the Tao class has only third-root entries:
row/column phases cancel in the dephasing cross-ratios. Every seed in
these two orbits has at least one odd coordinate in `pi/3` units, and
`h<pi/6`. Thus these cubes are disjoint from the dephased Tao class.
The active lifter also checks the corresponding entry separation by
outward intervals. The optional signed-mean prune on the old cubes is
used only after this exact root-domain separation.

For a maximal physical carrier with leading `R=0`, [A-SC] implies that
it is F6-equivalent: otherwise some positional corner has positive R,
contradicting maximality. It is therefore already quartet-free. This
handles all zero faces, including leaves whose only local return value
is `outside_strict_D0`. No limit of an unvalidated reconstruction chart
is used at `R=0`.

## 2. Exact 72-frame rule and the old certificate's limitation

For permutations `r,c` of the leading three rows/columns, re-dephasing
acts on their phases by

```
T(theta)[i,j] = theta[r_i,c_j] + theta[r_0,c_0]
               - theta[r_i,c_0] - theta[r_0,c_j].
```

An optional transpose of this re-dephased corner gives 72 integer
`4 by 4` matrices. `frames.py` constructs them from the four independent
phase coordinates, verifies that they are distinct and unimodular, and
checks their exact group closure. The algebra replay also pulls back
the complete 2,083-term Laurent polynomial R by each of these 72 maps
and by complex conjugation, obtaining exactly R every time. This
certifies preservation of the invariant, not just its orbit centres.
The maps agree with the archived frame rule. An independent interval box mapped by `M` has coordinate widths
bounded by `|M|*widths`, not in general by its original widths.

For the old seed class, its 72 distinct centres are reached uniquely
under this group. The maximum row l1 norms of the maps to the original
`(4,5,0,3)` centre have histogram

```
1: 8 centres;   2: 32 centres;   4: 32 centres.
```

Consequently only eight *nominal* whole cubes follow by direct
whole-cube containment from the old nominal cube. The exact eight seeds
and the normalized offending vertices for all other centres are in the
frame audit. For a row attaining l1 norm k, choose each input coordinate
with the sign of that row's coefficient; its image has coordinate k*h.
This proves failure of the proposed whole-cube containment when k>1.
It does not assert that the physical carriers in that larger image are
quartet-extendible.

The old theorem includes **frame images of its cube**, not every
axis-aligned cube of equal width around all orbit centres. Different
image centres cannot cure this containment failure: nonzero centre
separations modulo `2*pi` are at least `pi/3`, whereas all relevant
image widths plus target width are much smaller. Finally, the old cube
has no `2^-40` guard. Even the eight isometric images do not, by that
certificate alone, contain the new guarded whole cubes. The old
certificate is not being contradicted; this is a distinction between
its actual statement and a stronger whole-orbit interpretation.

For lossless transport we use only the signed-permutation matrices
among these frames, and also complex conjugation `theta -> -theta`.
They form an exactly checked group of 16 cube isometries. They reduce
all requested cubes to the following **nine independently covered
representatives**:

| Class | Representative | Number of transported seeds |
|---|---|---:|
| active | (1,2,2,4) | 8 |
| active | (1,2,5,4) | 8 |
| active | (1,5,5,1) | 2 |
| old | (0,2,3,1) | 16 |
| old | (0,2,3,4) | 16 |
| old | (1,2,4,2) | 16 |
| old | (1,3,5,3) | 8 |
| old | (1,4,5,2) | 8 |
| old | (2,3,4,3) | 8 |

A witness for each of the 90 seeds gives the frame index, conjugation
flag, exact signed-permutation matrix, and integer period shifts.
These operations preserve physical maximality and quartet
extendibility. For a transposed carrier, conjugate a quartet
`(I,U,C,D)` and multiply by `U^T`; it becomes
`(U^T,I,U^T conjugate(C),U^T conjugate(D))`. This uses unitarity of U.
We never assume that maximum-column projector distance is transpose
invariant. We evaluate that distance on the actually transformed
carrier.

## 3. Eight regional tubes in addition to F6

### 3.1 A flat reference need not be a Hadamard

The nine references `J_l`, `0<=l<=8`, are exact flat raw matrices given
by

```
J_l[i,j] = exp(2*pi*i*k_l[i,j]/218880),
```

where every integer `k_l[i,j]` is retained in `data/regions.json`.
`J_0=F6`. The others are **not assumed unitary**. Their normalized
columns are nevertheless unit vectors. That is all the transfer
inequality below requires.

Suppose a physical carrier U has maximum column-projector distance
`d<=1/30` from `J_l/sqrt(6)`, after a row monomial and column
permutation. For a ray x unbiased to U and I, the phase-aligned
unit-vector decomposition gives

```
abs(abs(<J_l[:,j]/sqrt(6),x>) - 1/sqrt(6))
 <= (1-sqrt(1-d_j^2))/sqrt(6) + d_j*sqrt(5/6).
```

Multiplying by six, for `0<d_j<=1/30`, the raw overlap modulus differs
from `sqrt(6)` by less than `6*d_j<=1/5`; at `d_j=0` it is exact.
For example use `sqrt(6)<5/2`, `sqrt(30)<11/2`, and
`1-sqrt(1-d^2)<=d^2`. Thus any two additional bases C,D in a quartet
would consist of rays from the relaxed set

```
X_l = { x=(1,exp(it1),...,exp(it5))/sqrt(6):
        abs( abs(sum_i exp(i*t_i)*conjugate(J_l[i,j])) - sqrt(6) ) <= 1/5,
        all j },       t0=0.
```

No orthogonality of the reference columns is asserted or needed.

### 3.2 Complete confinement of each relaxed ray set

For each reference there are 48 exact rational unit-phase centres,
encoded by signs and rational tangent-half-angle parameters:

```
z = sign * (q^2-p^2 + 2*i*p*q)/(q^2+p^2).
```

Their first coordinate is one and their normalization is `1/sqrt(6)`.
All unit-circle identities are checked with rational arithmetic. The
centres are not presumed to be exact common rays, nor a complete root
list. Their floating proposal history is irrelevant to acceptance.

The kernel covers the **entire** five-dimensional phase torus, starting
from all `19^5` closed boxes. It uses `L=218880`, `Q=2^26`, and a table
whose 437760 trigonometric-coordinate errors are each outward-certified
strictly smaller than one at integer scale Q. This table is regenerated
at both 96 and 160 bits. The certified rounded tables agree byte-for-byte.

At each cell, a column-overlap test from [P-SCALAR] may reject it.
Otherwise the new ball test may include it in a centre's open projector
ball of radius `rho=5/27`. Otherwise **all 32 children** are visited.
The maximum resolution is 2432. An unresolved cell at that resolution
is a failure, not acceptance. The C++ build enables undefined-behaviour
sanitization and keeps assertions enabled.

For completeness, let s be the rounded raw midpoint overlap. Five
rounded complex products have aggregate Euclidean error less than
`36/Q` at raw-vector scale, as certified by
`2*(25Q+10)^2 < (36Q)^2`. With integer norms,

```
lo = max(0, floor(norm(s))-37) <= Q*|true raw overlap|,
dist = ceil_sqrt(36Q^2-lo^2),
rad = ceil(710 Q h_cell/(113 L)).
```

Since `pi<355/113`, the entire phase cell lies in the centre ball if

```
(dist+6*rad)*27 < 6*Q*5.
```

This follows from the exact rank-one projector formula and the triangle
inequality for projector operator norm; it is not a midpoint-only
criterion. Every integer square-root proposal is corrected by integer
comparisons. The signed/unsigned 64-bit bounds are checked explicitly.

The completed forest satisfies
`31*nodes + 19^5 = 32*(rejected_leaves + included_leaves)`.
Every centre label is used. In the F6 case, six exact chirp rays at
all eight levels give 48 positive controls of the actual scalar
rejection routine. Full counts and logs for every reference and both
precisions are bundled in the regional receipt.

### 3.3 Exact graph obstruction

For two normalized rational centres put `p=|<c_i,c_j>|^2`, an exact
rational number. An orthogonal pair of rays in their radius-rho balls
requires

```
p <= 4*rho^2*(1-rho^2).
```

An unbiased pair requires, with `A=3*(1-2*rho^2)^2-5/2+2*p`,

```
A <= 0  or  A^2 <= 5*p*(1-p).
```

These are necessary consequences of the triangle inequality for the
projective angle `acos|<x,y>|` and the angular radius `asin(rho)`.
To check the second formula, square the cosine of the difference
between the centre angle and `acos(1/sqrt(6))`; it is
`(5-4p)/6 + sqrt(5*p*(1-p))/3`. The sign case for A makes the final
squaring exact.

Both graphs have no loops, checked rather than assumed. Thus each
orthonormal basis uses six distinct labels. Enumerate all orthogonality
six-cliques as possible C. Intersect the six unbiasedness neighbourhoods
for possible D labels and exhaustively test for a D six-clique. Every
case fails. The exact C cliques and D candidate sets are retained.
Independent small-subgraph brute-force controls check the clique
iterator. Consequently each of the nine **closed projector tubes of
radius 1/30** is quartet-free, without a reconstruction assumption.

## 4. A root-based complete side enclosure for the active class

The active seed cubes require a different lift from the old cube:
a direct enclosure of the reconstruction radicals loses accuracy near
R=0, and some completion regions are too far from F6 alone. We instead
use a scalar nonnegative parameter `tau=sqrt(R)` and the following
rational cubic description. No reciprocal of tau is used.

For a side Gram write, with the archive convention,

```
s = -1-a-b,  t = -1-c-d,  r = -1-c*conjugate(a)-d*conjugate(b),
X=|s|^2, Y=|t|^2, Z=|r|^2, p=X+Y+Z, J=2 Re(s*r*conjugate(t)),
g=27-3p+J, eta=9-p+J,
chi=XY+XZ+YZ-XYZ-(p-9)*(p-18)+(p-15)*J,
R=4*g^2*eta-chi^2.
```

For `sigma in {-1,+1}`, set `k0=9-Z`, `k1=9-Y`, and

```
P0=r*s^2+conjugate(r)*t^2+(3-Z)*s*t,
P1=t*conjugate(s)^2+r^2*conjugate(t)+(3-Y)*r*conjugate(s),
u=[g^2+k0*k1*eta+(k0+k1)*chi/2
      +i*sigma*(k1-k0)*tau/2]/[conjugate(P0)*P1],
Pi=[chi/2+k0*eta+i*sigma*tau/2]/conjugate(P0).
```

By [A-FORM], `u=product x_l` and `Pi=s*t-sum x_l*y_l` for that side
orbit. These formulas follow from `u=lambda0*conjugate(lambda1)`,
`Pi=z*lambda0`, `z=(chi+i*sigma*tau)/(2g)`, and
`z*conjugate(z)=eta`. `audits.py` checks both cancellations exactly,
reducing only by `tau^2=4*g^2*eta-chi^2`.

The three unit phases `x_l` are precisely the three roots of

```
p(x)=x^3-s*x^2+u*conjugate(s)*x-u.
```

Once these roots are distinct, their matching second-row phases are
**uniquely** determined by

```
y_l = [t*x_l^2 - Pi*x_l + u*r]/p'(x_l).                 (Y)
```

This is not an extra reconstruction assumption. For arbitrary nonzero
distinct x_l and arbitrary y_l, use
`t=sum y_l`, `r=sum y_l/x_l`, `Pi=s*t-sum x_l*y_l` and expand.
The numerator at x_l is exactly `y_l*product_(m!=l)(x_l-x_m)`.
All three identities are independently checked in the exact rational
function field. Physical unimodularity gives the cubic's second
coefficient `u*conjugate(s)`.

Before this construction, the leading three rows may be permuted and
the side re-dephased. A fixed choice is found with pairwise distinct
reference x coordinates; the actual uniform derivative and root
separation tests below, not reference separation alone, certify it.
Undoing this internal dephasing multiplies by the conjugate of a
physical unit component. This use of conjugation is justified on the
physical side fibre. We do **not** assert that the artificially extended
formula is unitary for all independent `(seed,tau)` values.

Repeat for the transposed leading corner to construct the vertical
side. Every physical strict completion occurs among the four
independent horizontal/vertical sign pairs. Permutations of missing
rows and columns are harmless and are aligned with the reference.

## 5. Outward models, root coverage, and completion

### 5.1 Affine seed correlations and R bounds

Inside each active representative leaf, a selected 72-frame map sends
its centre to the canonical active centre, modulo exact periods. This
map need not be a cube isometry. We therefore keep the affine
correlation

```
theta'_k = centre'_k + sum_n M[k,n]*width_n*v_n, |v_n|<=1,
```

rather than replacing it by an independent box of the same widths.
The Hessian of R is bounded on its outward rectangular superset. A
second-order Taylor theorem gives

```
|R-R(centre')|
 <= sum_i width_i * |(M^T grad R)_i|
  + (1/2) sum_ij width_i*width_j * sup |(M^T Hess R M)_ij|.
```

Derivatives are obtained by the explicit second-order complex jet of
the polynomial and phase functions. This yields an interval `[L,U]`.
If `U<=0`, the box misses strict D0. Otherwise the physical values of
tau lie in `[sqrt(max(0,L)),sqrt(U)]`, rounded outwards.

### 5.2 Quadratic model algebra

A complex model is

```
T(v)=c+sum_i d_i*v_i+sum_(i<=j) q_ij*v_i*v_j+r,
```

with five real variables in `[-1,1]`, four seed variables and tau.
All coefficients and r are complex rectangles. The quadratic diagonal
monomials range over `[0,1]`; off-diagonal monomials over `[-1,1]`.
Products retain every term of degree at most two. Their remainder
contains every omitted product, including products involving either
input remainder. The exact polynomial identity is checked in the
algebra audit.

For inversion, write the input as `c+l+q+r`, `v=l+q+r`, `w=q+r`.
After retaining the quadratic polynomial, the full tail is enclosed by

```
-r/c^2 + (2*l*w+w^2)/c^3 - v^3/[c^3*(c+v)].
```

This is an exact finite identity, not an asymptotic truncation.
All denominators must exclude zero on their full enclosures.
For a real phase argument, the exponential remainder is bounded using
`|exp(i v)-1-i v+v^2/2|<=|v|^3/6`, with the lower-degree/remainder
cross terms kept. For `arg`, use the imaginary part of the logarithm
around the constant coefficient: with `q=sup|variation/c|<1`, the
cubic and higher series tail has modulus at most
`q^3/[3*(1-q)]`. The constant argument uses an outward atan chart with
positive real part. Realness of phase inputs is an explicit precondition
satisfied by the seed phase models.

All elementary arithmetic, square roots, sine/cosine extrema and atan
endpoints use directed MPFR rounding. A midpoint is a dyadic **proposal**
only. It is always followed by a uniform outward validation. The
arithmetic and model regression controls are not claimed to formally
verify MPFR or the compiler; the arithmetic/software trust base is
stated in Section 9.

### 5.3 Complete cubic roots by Rouché, not Newton convergence

For each of the three roots, a dyadic quadratic predictor `x0(v)` is
proposed using central Newton steps and implicit coefficient equations.
Let uniform outward bounds be

```
epsilon >= sup |p(x0)|,
d <= inf |p'(x0)|,
q >= sup |3*x0-s|.
```

A positive dyadic radius r is accepted only when

```
d>0,    epsilon + q*r^2 + r^3 < d*r.                 (R)
```

On the circle `|w|=r`, the linear term `p'(x0)*w` strictly dominates
all other terms in the exact cubic expansion. Rouché's theorem gives
exactly one root in the disk. The three disks must be pairwise
uniformly disjoint, checked by
`inf|x0_i-x0_j| > r_i+r_j`. The cubic has degree three, so these disks
cover **all** its roots. Newton convergence by itself never accepts.
Equation (Y), with a validated nonzero derivative, then encloses every
physical side column.

### 5.4 Validated completion

Writing `H=[[E,B],[C,D]]`, orthogonality gives

```
C* D = -E* B.
```

For each column solve `A x=b`, `A=C*`. A dyadic approximate inverse K
and quadratic solution predictor X are proposals. The uniform tests are

```
beta >= ||I-KA||_infinity < 1,
q >= ||K(b-A X)||_infinity.
```

The Neumann series gives `||x-X||_infinity<=q/(1-beta)`.
This produces the complete lower block enclosure. No square-root
conditioning bound in R appears in this step.

## 6. Acceptance of every physical pairing

For each leaf and auxiliary tau slab, all four sign pairings are
examined. A pairing is disposed of only by one of the following
validated alternatives:

1. Some entry's squared modulus interval excludes one. This pairing
   cannot be physical.
2. A three-reference complementary-corner test gives a corner invariant
   strictly greater than the leading R upper bound. This pairing cannot
   be a physical maximal completion.
3. Its entire physical matrix enclosure enters one of Section 3's
   quartet-free tubes.

The three-reference test uses all three pairs of the known leading
columns with each missing column, in both orientations. Its f-square
normalization is exactly checked against [P-CORNER]. A strict greater
comparison is essential. Failure of a test merely leaves the pairing
unresolved.

For the tube test, undo the Fourier row/column indexing of the reference
and write the enclosed physical phases as `F6[i,j]*exp(i*delta_ij)`.
For a regional reference with phase deviation beta_ij from F6, put

```
a_ij = delta_ij-beta_ij,
g_i  = (1/6)*sum_j a_ij.
```

Apply the physical row phase `exp(-i*g_i)`. For every normalized flat
column the **exact** projector distance squared is

```
D_j^2 = (1/9)*sum_(i<k) sin^2(((a_ij-g_i)-(a_kj-g_k))/2).             (P)
```

This follows by expanding `1-|sum_i exp(i*(a_ij-g_i))/6|^2`.
The model forms the correlated differences before taking their interval
ranges. It checks `max_j D_j < 1/30`. The same test may be applied to
the transposed actual carrier, using the quartet-invariance argument
of Section 2, not a metric-invariance assumption.

If every pairing is disposed of on every tau slab, the seed leaf is
accepted. Otherwise it is subdivided or remains a failure. All auxiliary
binary leaf paths are retained. The verifier checks uniqueness,
prefix-freeness and exact Kraft sum one. The 160-bit replay reconstructs
its own outward tau interval and tests the retained auxiliary leaves;
it does not reuse 96-bit endpoints or assume monotonic branch selection.
An `R<=0` seed leaf has no auxiliary cover; the R test is repeated before
that empty list can be accepted.

## 7. Reconstruction-free side covers for the old orbit

The old orbit is lifted in its six **native** representative frames,
without multiplying independent seed widths by two or four. Its primary
kernel ports the complete side-cover method of the old production cube.
The optional preceding symmetric-mean test is described below.

For a candidate side column `(1,x,y)` set

```
A=s-x,  B=t-y,  Q=r-y*conjugate(x).
```

The other two unit columns require `|A|,|B|,|Q|<=2` and

```
A*Q*conjugate(B) = |A|^2+|B|^2+|Q|^2-4.
```

Start from all 64 closed boxes of an `8 by 8` phase torus. Reject a
box only if one of these necessary moment conditions fails or the
three-reference maximality test succeeds. Bisect the longest phase
axis otherwise, retaining all undecided boxes at the specified depth.
The complete binary forest identity is checked. Node/label/operation
limits return unresolved, never exclusion.

Construct the graph of possible pairs using
`v_i* adj(G) v_j = 0` and the remaining unit-column moments. Enumerate
**all unordered triples with repetitions**, keeping loops and repeated
labels whenever their necessary tests permit them. This does not assume
that a phase label contains only one physical column. The sums of all
three side moments are checked on each retained triple. An empty full
triple set excludes physical maximal completion.

For each surviving triple choose a bijective assignment to reference
columns; the choice is a proposal, not a unique-branch assertion. Every
physical side triple can be permuted to that chosen assignment. Missing
row and column permutations are independently allowed and leave E
unchanged. Thus a single such assignment per unordered label triple
suffices for the orbit-distance conclusion. All triples and every label
used by them remain in the completion enclosure.

Let the exact Fourier reference be `[[E0,B0],[C0,D0]]`. An outward
Sylvester test supplies rational `kappa0>0` with
`C0* C0 >= kappa0 I`. Put `K=(C0*)^-1` and
`eta=||C-C0||_F/sqrt(kappa0)<1`. For each retained B column,

```
q_B=K[(E-E0)^dagger B + E0^dagger (B-B0)],
q_C=K(C-C0)^dagger D0,
||(D-D0)[:,j]||_2 <= ||q_B[:,j]+q_C[:,j]||_2/(1-eta).
```

Here `dagger` denotes conjugate transpose; the products are the
conforming block products from `C^dagger D=-E^dagger B`. The implementation
keeps cancellation in `q_B+q_C` before applying its norm, and encloses
all compatible C triples when forming q_C. The same eta bound applies
to all of them. The first three columns use their E/C errors directly.
Divide the resulting raw column Euclidean errors by `sqrt(6)` and
require their maximum to be strictly less than `1/30`. Unit-vector
projector distance is no greater than Euclidean distance. This lifts
every physical completion into the F6 tube after its allowed missing
row/column assignment.

Before this complete cover, the optional two-sign mean test evaluates
exactly the coefficients of [P-MEAN]. For known-column pairs j,k and
side sign sigma its model is

```
m_jk,sigma = alpha_jk + sigma*beta_jk*sqrt(R),
```

the mean of three real signed complementary invariants. Maximality
requires `m_jk,sigma^2<=R`. The kernel rejects only if **each** side
sign is contradicted by at least one known-column pair, in either
orientation. All coefficients are evaluated on the entire seed box,
using the quadratic models of Section 5. A bad denominator or model
domain simply disables this prune. Its success means absence of
**strict** D0; zero faces are handled by [A-SC] as in Section 1.

## 8. Rational partitions, exact transport, and the predicate

A path's bit at depth d bisects coordinate `d mod 4` at its exact
midpoint. Each representative has 16 prefix shards, one for each
four-bit prefix. Within every shard, the retained paths are unique
and prefix-free and satisfy

```
sum_path 2^(-length(path)) = 2^-4.
```

Across the 16 prefixes the sum is one. These conditions prove a finite
complete binary partition, with disjoint interiors and all closed
faces included. Missing and duplicate controls must fail before any
interval computation. The analogous one-dimensional identity is
checked for auxiliary tau partitions.

For a cube-isometric transport with matrix Q, apply `Q^T` to each
normalized representative leaf. Because Q is a signed permutation,
these are again closed boxes with rational normalized endpoints.
`partition_for_seed` returns that complete partition and its exact
transport witness for any of the 90 seeds. This proves every requested
whole-cube result, including both signs of R and boundary faces; it
is not a finite collection of point certificates.

`certify_rational_box` accepts exact rational centres and half-widths
in **radians**. `certify_rational_pi_box` accepts rational multiples of
pi with a separately specified rational radian guard. A periodic wrap
is only proposed from a rational approximation to pi; the final
containment inequalities compare exact `a*pi+b` quantities using
independent rational Machin bounds. An unresolved comparison fails
closed. The predicate requires complete hashed certificate assets.
It does not run the costly ray covers for every campaign call.

A shifted full-width production box is not automatically contained in
a cube centred at an exact F6 seed. The caller must supply its entire
outward input enclosure and pass this containment test. No additional
rounding guard is silently dropped or absorbed.

## 9. Replay, software trust, and limitations

`verify.py` runs from a clean checkout with this additive directory in
`ProvenResults`. It checks the input pins, exact frame/orbit and
partition audits, exact algebra, independent rational elementary-
function controls, model controls, known physical maximal-curve
controls, and malformed auxiliary-partition controls. It compiles all
kernels locally, regenerates the regional covers at 96 and 160 bits,
and replays the complete retained seed partitions. It writes one
output file per shard plus a run receipt. No cluster service is used.

The software trust base is Python integer/Fraction arithmetic, SymPy's
exact polynomial arithmetic for the explicitly stated algebra audits,
a C++17 compiler, GMP, and the public directed MPFR 4.x API. The minimal
MPFR declarations target Linux LP64; the verifier checks platform sizes
and library version. The integer cover is additionally run under UBSan.
The primitive and model controls are regression/independent arithmetic
checks, not a claim of formal verification of these libraries.
No hardware floating transcendental output accepts a mathematical
inequality. Floating square roots or central approximations supply
proposals that are corrected or enclosed before acceptance. Runtime
and resource statistics alone may be floating-point numbers.

The checked local closure is not a proof of the entire no-four-MUB
project. It does not supply a global small-R cutoff, global confinement
into these seed cubes, or a certificate for an arbitrary shifted
branch-layer box. Those obligations remain separate. It also does not
assert that all active-class completions enter the F6 tube alone:
the regional matrix tubes are a substantive part of this certificate.

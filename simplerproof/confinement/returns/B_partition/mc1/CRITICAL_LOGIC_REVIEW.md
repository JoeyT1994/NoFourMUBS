# Independent logical review of the critical-stratum modules

This review checks logical coverage, including rank loss and the conversion of
seed stationarity into invariant-space conditions. It does not substitute for
the separate exact polynomial replays, which were already reported as passing.

## Verdicts

| Item | Verdict |
|---|---|
| `critical_exceptions/QZERO_CRITICAL.md`, rank lower bound in §2 | Correct |
| The adjugate identity and smooth-Q rank-three conclusion | Correct |
| The Hessian tangent-inclusion argument in §6, rank three | Correct |
| The Hessian tangent-inclusion argument in §6, rank two | Correct |
| Smooth and singular Q branch coverage | Correct |
| `critical/CHIRALITY_CRITICAL.md`, full Gram rank and branch coverage | Correct |
| `critical/CHIRALITY_PAIR.md`, constrained-pair reduction and branch coverage | Correct |
| Physical boundary/KKT scope of `complement_minimax/COMPLEMENT_MINIMAX.md` | Correct within its stated regular-coordinate hypotheses |

A multiplier-sign inconsistency in the two chirality notes was identified and
reported to their author. The author corrected both Lagrange equations to
`gradient + multiplier * gradient(D) = 0`, matching the displayed difference
identities and exact verifiers. Since the multiplier is arbitrary real, the
correction changes no conclusion.

## 1. Q-zero rank and Hessian arguments

### Rank at least two

For a nonzero sum of three unit phases, vanishing derivatives of its squared
modulus in the two relative phases imply that all three summands are parallel
to the sum. The derivative in the omitted common phase is automatically zero
by phase invariance, so no third stationarity condition is missing.

If two row-ratio norms of the seed were stationary in this sense, their ratios
would both be real up to a phase. Since the two pairs share a row, a row/column
gauge would then make all three rows real. Their Bargmann product would be
real, contradicting `D>0`. Thus at least two of the three norms have nonzero
gradients. Making their shared row the reference row gives two disjoint pairs
of relative phase coordinates. Their gradients are therefore independent.
This is a valid coordinate-invariant proof of `rank D Phi >= 2`.

### The adjugate step

From `Q o Phi=f^2`, one gets `A^T grad Q=2f grad f`. Multiplication by the
adjugate and use of `det A=Cf` give

`C grad Q = 2 adj(A^T) grad f`

on the dense set where `f!=0`. Both sides are analytic, and f is a nonzero
trigonometric polynomial, so extension over `f=0` is legitimate. At `D>0`,
`C!=0`; rank at most two would force `grad Q=0`. At a smooth Q point, the rank
is consequently exactly three and its image is the entire tangent hyperplane
`ker dQ`. The constrained critical-point condition follows without an assumed
inverse chart at that singular seed.

### Singular Q: rank-three image

At `grad Q=0`, the Hessian identity is

`A^T H_Q A = 2 df tensor df`.

Its right side has rank at most one. Suppose the three-dimensional image U of
A did not contain the one-dimensional kernel N of H_Q. Projection of U to
`R^4/N` would be an isomorphism; the restricted quadratic form would then have
rank three. Pulling it back along the surjection A would preserve that rank,
contradicting the identity. Therefore `N subset U`.

### Singular Q: rank-two image

At a rank-two A, the derivative of its determinant vanishes in every seed
direction. Differentiating `det A=Cf` at `f=0,C!=0` gives `df=0`. The Hessian
identity says that U is a two-dimensional totally isotropic subspace for H_Q.
If U did not meet N, its projection to the nondegenerate quotient of signature
`(2,1)` would be a two-dimensional totally isotropic subspace there, impossible
because that signature has Witt index one. Hence `N subset U` again.

The explicit congruences in `verify_qzero.py` do establish the needed signature
`(2,1,0)` throughout the stated `D>0,F>0` ranges. The null vector is exactly the
singular-curve tangent. Consequently stationarity of F on seeds forces its
first derivative along that tangent to vanish. This uses only a tangent vector
in the image, not a claim that an entire arbitrary invariant path lifts through
a rank-deficient seed.

### Branch coverage

When `grad Q!=0` and the `(X,Y,Z)->(p,W)` map has rank two, its restriction to
the full tangent hyperplane covers the two tangent directions of the reduced
Q surface. Thus both reduced derivatives used in the sextic elimination are
necessary. At a reduced-rank point, the displayed equal-variable or two-unit
curve lies on Q=0 and its tangent is in the full rank-three image.

At singular Q, the nonvanishing of the Q analogue of chi justifies the
coordinate-difference argument. In either symmetry pattern, the Q_J equation
excludes the simple linear factor unless the squared factor also vanishes;
this leaves precisely the listed singular curves. Their intersection is at
D=0 and is outside this module. No D>0 singular branch was omitted.

## 2. Chirality-zero single-corner argument

The six-phase Gram Jacobian normalization is consistent: the determinant of
the complex/conjugate output conversion is `(−2i)^3=8i`, while the six phase
derivatives contribute `i^6=−1`. The verified Laurent identity therefore gives
`det D G = Im q/4` with the stated ordering.

At `D=0`, the invariant projection has rank three both when all three Gram
off-diagonal entries are nonzero and when exactly one vanishes. In the latter
case, the two nonzero squared magnitudes give two independent derivatives,
and J gives a linear derivative in the vanishing complex entry. Two vanishing
entries force `R<=0`, as shown. Removing the two row-gauge directions does not
reduce the rank: they are in the kernel and the four dephased directions form
a complementary input subspace.

The hypersurface D=0 is regular at every point under consideration. The identity
`D o Phi=4(Im tau)^2` shows that the differential image lies in its tangent
hyperplane; dimension three makes it the whole hyperplane. Hence the ordinary
Lagrange condition is a necessary condition for seed stationarity even at a
zero squared-magnitude coordinate.

The coordinate-difference argument forces at least two equal invariants,
including the case with one zero invariant. The parameterization
`X=Y=x>0,Z=t^2,J=2xt` includes that case at t=0 and includes both signs of J.
The removed factors in the derivative equations are nonzero whenever R>0.
The resultant cases t=0,3,−1, the real quadratic roots, and the remaining
positive-definite quadratic factor are all accounted for. The small positive
critical value is correctly excluded through the actual same-row complementary
corner, not by discarding that root.

## 3. Chirality-zero complementary pair

A positive tie implies `Im q(E)!=0`, so the rank-three result applies. Failure
of common descent therefore gives the constrained convex-combination equation
on D=0. In the J=0 case, exactly one squared Gram magnitude vanishes; the other
two stationary components are unconstrained and force the displayed y=3 value.

In the J!=0 case, all three squared magnitudes are positive. If all are distinct,
the difference equations force the effective chi and the multiplier to vanish.
Here `(X,Y,Z,J)->(h,B,J)` is a submersion: the only failures of rank two for
`(X,Y,Z)->(p,W)` are all-equal variables or two variables equal one, both excluded
by distinctness. This justifies the reduced-coordinate stationary equations
used to obtain the impossible value `J^2=-108`.

For two equal variables, `(x,v)` are legitimate local restricted coordinates
because x>0 and t!=0. On the tie, the difference has the form `8xt L`, with a
nonzero prefactor. A constrained convex combination therefore implies the
necessary determinant condition `S_x L_v-S_v L_x=0`. The argument does not divide
by grad L, so it retains grad L=0 as well.

The resultant is used only as a necessary condition for a common finite root.
Leading-coefficient degree drops do not invalidate that implication. All its
real factors in `0<v<9` are kept. The ensuing ideal-membership reductions use
no localization or saturation and consequently retain exceptional and
nonphysical solutions too. The uniform coefficient bounds on the common-value
polynomials are valid throughout `[0,26]`. No positive value in that interval
can survive.

## 4. Physical KKT boundaries and the regular complement minimax proof

In the regular four-invariant situation of the complementary minimax module,
a positive tie implies `u+J>0,u-J>0`; hence `0<u<9` and `|J|<u`. Physical Gram
positive definiteness also makes both determinants and all relevant two-by-two
principal minors strictly positive. Invertibility of the invariant Jacobian
implies `D>0` and `Im q!=0`, so X,Y,Z are strictly positive. These are open local
conditions, not active inequality constraints requiring additional multipliers.

The inverse-function theorem supplies an open neighborhood in the four
invariants. The separately established analytic reconstruction provider realizes
its small seed variations as actual Hadamard variations. Thus an unconstrained
Clarke stationary condition in these local coordinates is the correct necessary
condition for a minimum whose active values are exactly the complementary pair.

At D=0, X=0 can occur. The chirality argument treats this through the actual
three-dimensional image, which is the tangent hyperplane to D=0. Its normal
already includes the zero-coordinate normal. Adding an unrelated extra KKT
multiplier would overcount the normal direction.

A maximal-seed requirement must not be imposed as extra feasibility constraints
when testing descent. The reconstruction is valid on an open seed neighborhood;
maximality is encoded by the maximum of all corner functions. If every other
corner class has a strict value gap at the central matrix, continuity keeps
those corners below the old maximum during a sufficiently small decrease of
the active value or pair.

## 5. Remaining necessary conditions for the global application

These modules correctly establish their stated single-corner and
complementary-pair exclusions. They do not show that a convex combination of
arbitrary other active-corner gradients cannot vanish. A common decrease of one
corner or one complementary pair does not suffice when other independent
corners attain the same maximum.

The Q-zero/chirality double-zero intersection was outside the reviewed versions
of these modules and is assigned separately. Any later theorem covering it
requires its own proof and review; it is not implied by the rank arguments above.

Finally, converting the seed statements into global statements on every
Hadamard in the target region uses the explicitly stated restricted F7 coverage
and local analytic-provider hypotheses. The proofs here do not establish that
coverage theorem, nor do they require the entire Hadamard variety to be a smooth
manifold.

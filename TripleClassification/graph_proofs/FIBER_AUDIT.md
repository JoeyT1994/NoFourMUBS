# Independent audit: weak-fiber exhaustive column cover

The implementation audited is `code/fiber_cover.py` together
with `code/strong_contraction.py`. All conclusions below concern the full supplied
H normal-form enclosure and the full original column phase ball.

## PROVED reduction from five coordinates to two

Let E be the exact 6-by-5 Helmert frame. Let O be an exact orthogonal matrix
obtained by Gram–Schmidt from an arbitrary numerical proposal. Write column
coordinates as x=O(t,y), where t is two-dimensional and y is three-dimensional,
and put V=O[:,2:]. Let L be any fixed real 3-by-6 matrix.

Suppose an Arb calculation proves, for every allowed H and every ||x||≤s,

    ||I_3 − L D_x F_H(x) V||_2 ≤ q(s),

where F comprises the six necessary unbiasedness residuals.

For a weak-coordinate box T and any reference y0, define

    s* = max(R, sqrt(sup_{t in T} ||t||² + ||y0||²)),

where R is the full original source radius. If q(s*)<1, every full zero
x=O(t,y) with t in T and ||x||≤R satisfies

    ||y−y0|| ≤ sup_{t in T,H} ||L F_H(O(t,y0))|| / (1−q(s*)).

To prove this, fix a possible zero and its parameter. Both the zero and its
same-t reference belong to the radius-s* ball. Their connecting segment stays
in that ball. Integrating the strong-coordinate Jacobian gives a 3-by-3 matrix
Jbar with ||I−Jbar||≤q(s*). Since Jbar(y−y0)=−L F_H(O(t,y0)), the lower bound
||Jbar z||≥(1−q(s*))||z|| proves the necessary envelope. This is a
zero-preservation argument; it assumes neither existence nor uniqueness of a
strong-coordinate solution.

The exhaustive tree therefore needs only two coordinates. A weak box is
discarded only if its necessary envelope misses the source ball, a necessary
projected residual has a nonzero interval sign, or the whole necessary envelope
is contained in a supplied capture cap. Closed children cover each parent.
When no weak boxes remain, every possible full root is captured.

## PROVED derivative polynomial

`strong_contraction.py` evaluates the H-dependent paired-phase coefficients at
x=0 with outward intervals, then expands the strong-coordinate Jacobian in x
through degree two. Its bound has the form

    q(s) = a0 + a1 s + a2 s² + a3 s³,   a_k ≥ 0.

The linear coefficient matrix is flattened into a 9-by-5 operator; its norm
controls the Frobenius norm of the resulting 3-by-3 Jacobian variation. The
quadratic coefficient is a 9-by-25 operator acting on x⊗x, whose norm is s².
Both bounds dominate the desired matrix operator norm.

For the third-order remainder, every row-pair Helmert difference has exact
norm sqrt(2). The derivative's sine/cosine Taylor remainder is therefore
bounded entrywise by sqrt(8)*s³*M/18 for a nonnegative 3-by-3 matrix M.
Entrywise absolute domination by M implies operator-norm domination by
||M||_2. The implementation bounds matrix norms through
sqrt(||M M^T||_infinity), using Arb throughout.

The same nonnegative coefficients apply at s*, even if s*>R. Dividing the
initial displayed terms by the corresponding powers of R recovers outward
coefficient bounds; R is a fixed positive outward radius in both computations.

The optional `slab_q` refinement is also valid. For each weak rectangle T,
every source root obeys ||y||²≤R²−min_T||t||². Taking

    Y=max(sqrt(R²−min_T||t||²), ||y0||)

therefore encloses the entire same-t segment in a strong-coordinate ball. The
weak-coordinate phase interval is included in the H-dependent coefficients,
and the Jacobian is expanded only in the three strong coordinates. The
remainder coefficient becomes ||ell V||³/18. The smaller of this bound and the
global q(s*) remains a valid derivative upper bound.

## PROVED residual enclosure

For each paired-phase term, the full phase displacement splits into a linear
weak-coordinate part, a linear strong-coordinate part, the shared linear H
parameter term, and a remainder of magnitude at most beta. If alpha bounds
the sum of linear phase magnitudes, the normalized cosine remainder is bounded
by

    beta/3 + (alpha+beta)²/6.

This follows from |exp(iu)−1−iu|≤u²/2 and the factor 1/3 in the paired-phase
residual. Preconditioned coefficients are summed before taking the shared
parameter norm, retaining its first-order correlation. The signs of the H
derivative are consistent with Q_a−Q_b entering the phase with a minus sign.

## Exact geometry and binding

The numerical rotation is only a proposal. Arb Gram–Schmidt encloses one exact
real orthogonal matrix, which justifies both the source-ball projection and the
conversion of rotated capture caps to original Helmert coordinates. The
derivative bound accepts its enclosing coefficient intervals and therefore
applies to that same exact matrix. Coarse-cap centres use the same original
candidate coordinates as the subsequent pair certificate.

Numerical reference y0, projected residual multipliers, and splitting choices
need not be accurate for soundness. They only affect the strength and runtime
of the enclosing inequalities.

## Shared-parameter scalar separators

The added fiber `parameter_separator` takes an arbitrary real multiplier of
the five projected residuals. It retains the box support of the weak linear
term, rho times the norm of the strong linear coefficient, and r times the
norm of the shared H-parameter coefficient. A proposed cancellation of the
strong coefficient is never assumed exact. Its strict Arb separation is
therefore valid even for inaccurate SVD or least-norm proposals.

The signed second-order refinement in `scalar_second_order.py` is also sound.
For a row-pair term, write its full phase displacement as

    d·z − (1/2) dh[w,w] − dx·xi,

where z contains weak displacement, strong displacement, and shared w, and
d=(ell O_weak, ell O_strong, −du). After a scalar multiplier kappa, the
quadratic coefficient is −kappa*cos(theta)*d*d^T/6 plus a shared-w block
kappa*sin(theta)*sym(dh)/6. The normal linear coefficient is
kappa*sin(theta)*dx/3. The implementation has these signs and factors.

The block quadratic support correctly treats weak coordinates as a box,
strong coordinates as a radius-rho ball, and w as a radius-r ball. Each
off-diagonal block has its required factor two. The remaining term is bounded
by

    |kappa| [ |cos(theta)|(alpha*beta+beta²/2)/3
              + (alpha+beta)³/18 ],

where alpha bounds the joint linear phase and beta the quadratic/normal phase
remainder. Summing this bound and the signed quadratic/normal supports is a
valid bound on the residual omitted from the scalar linear model.

## Regression

`check_fiber_known_root.py` constructs an exact quadratic-chirp column unbiased
to Fourier6, then applies a known shared four-parameter row/column phase gauge
to H and the corresponding exact row gauge to the column. Forty rational
parameter choices were checked at 160 bits. Every exact root remained in the
computed strong-coordinate envelope and every projected residual retained
zero. The strengthened regression now uses nonzero U, H2, and X, and the latest
source derivative bound was approximately 0.1158823797180747. It also checks
that every parameter separator retains the exact root and that arbitrary
scalar multipliers' analytically known omitted residuals are contained in the
signed second-order error bounds.

A complete-tree negative control removed every capture cap from this exact
known-root model. The latest implementation, including `slab_q`, correctly
returned NOT ESTABLISHED with 11 pending weak boxes. It did not discard the
known exact root.

This regression catches indexing, sign, normalization, and lost-parameter
mistakes. The general mathematical proof is the argument above.

## Implementation hardening

Finite values, positive source/capture radii, nonnegative H radii, O of shape
5-by-5, L of shape 3-by-6, and root coordinates of length five must be validated.
These guards were requested during the audit and have been added in the
working implementation. A full pattern wrapper must also require two distinct
column indices; overlap of one column with itself is not a two-column witness.

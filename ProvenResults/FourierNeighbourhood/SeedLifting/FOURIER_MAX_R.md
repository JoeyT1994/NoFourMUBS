# Exact maximum corner R on the entire Fourier family

**Proved.** The final exact verifier passes an
[isolated root replay](../../../Verification/T2_fourier_max_R_2026-09-29/README.md).

Let F_ij=exp(2pi*i*j/3), Z=diag(1,z,w), and

    N(z,w) = [[F,F],[F Z,-F Z]],
    z=exp(i alpha), w=exp(i beta).

This is the physical Fourier family used by the seed atlas. Put

    X=2 beta-alpha,   Y=alpha+beta,   T=beta-2 alpha=X-Y.

**Theorem.** The maximum over all 400 positional corners is exactly

    M(N)=36 (|sin X|+|sin Y|+|sin T|)^2.                 (1)

Consequently M=0 occurs at exactly twelve parameter pairs modulo 2pi:

    alpha=a*pi/3, beta=b*pi/3,
    a,b in {0,...,5}, a+b divisible by 3.               (2)

Every one of these twelve matrices is monomial-equivalent to F6. Thus
within this family, a sequence with maximal R tending to zero can only
accumulate on the F6 orbit. This is unconditional and quantitative; it
does not invoke the accepted global strict-corner coverage assumption.
Transposition and Hadamard equivalences preserve the maximum.

## The finite exact proof

The complete corner multiset consists of zero with multiplicity 256 and
the following four values, each with multiplicity 36:

    36 (sin X + s sin Y + t sin T)^2,   s,t in {-1,1}.   (3)

The largest absolute value of the four signed sums is the sum of the
three absolute values: allowing an overall sign accounts for all eight
sign choices. This proves (1). In particular,

    sum_c R_c = 5184 (sin^2 X+sin^2 Y+sin^2 T).          (4)

[verify_fourier_max_R.py](verify_fourier_max_R.py) proves (3) in exact
Laurent arithmetic over Z[zeta_6], for all parameters simultaneously.
It enumerates each of the 20 row triples and 20 column triples and
computes R in two independent ways: the defining seed polynomial and
minus the square of the complementary-block determinant. The resulting
multisets agree with (3), including multiplicities. This is coefficient
comparison, not interpolation or sampling.

Equation (1) vanishes precisely when X and Y are integer multiples of
pi. Writing X=m*pi and Y=n*pi gives

    alpha=(2n-m)*pi/3, beta=(m+n)*pi/3,

which is exactly (2). For all twelve pairs the verifier supplies explicit
row/column permutations giving N_ij=zeta_6^(r_i c_j). These are exact
F6-equivalence witnesses, not a reliance on a classification theorem.

Useful specializations include

    M(N(exp(i u),exp(2i u))) = 144 sin^2(3u),
    M(N(exp(i delta),1)) = 2304 v^2/(1+v^2)^4,
        v=tan(delta/2), 0<=delta<=pi/2.

The latter recovers the earlier CornerBounds curve census.

## A quantitative bound on distance to F6

**Corollary.** If M<=36, then, for either N or its transpose,

    d_F6 <= pi sqrt(M)/144,                             (5)

where d_F6 is the maximum-column projector metric minimized over the F6
monomial orbit. This is a bound for explicit Fourier carriers, not an
inverse estimate for arbitrary carriers sharing a nearby seed.

**Proof.** Choose nearest integers m,n so that

    e_X=X-m*pi, e_Y=Y-n*pi in [-pi/2,pi/2].

Let S=|sin X|+|sin Y|+|sin T|=sqrt(M)/6<=1. Then
|sin X|+|sin Y|<=1, so
arcsin|sin X|+arcsin|sin Y|<=pi/2. For example, this follows from
|sin X|^2+|sin Y|^2<=1. Hence |e_X-e_Y|<=pi/2 as well.
On this interval, |u|<=(pi/2)|sin u|. Relative to the F6 point
alpha_0=(2n-m)*pi/3, beta_0=(m+n)*pi/3, the deviations satisfy

    d_alpha=(2e_Y-e_X)/3,
    d_beta=(e_X+e_Y)/3,
    max(|d_alpha|,|d_beta|) <= pi*S/6 = pi*sqrt(M)/36.    (6)

For the first inequality use
2e_Y-e_X=e_Y-(e_X-e_Y); for the second use e_X+e_Y.
Also d_alpha-d_beta=(e_Y-2e_X)/3, whose absolute value has the same
bound by writing e_Y-2e_X=(e_Y-e_X)-e_X. Each two-term sine bound is
at most S. Therefore the span of the three real phases
{0,d_alpha,d_beta} is at most pi*S/6.

Let lambda be the midpoint of the smallest interval containing these
three phases. Multiply the bottom three rows of N by exp(-i*lambda).
For phase class j=0,1,2, put d_j=0,d_alpha,d_beta, respectively, and
multiply both columns of that class by exp(-i*(d_j-lambda)/2).
Relative to the F6 reference N(alpha_0,beta_0), every resulting entry
has phase plus or minus (d_j-lambda)/2. Its absolute phase error is at
most one quarter of the span, hence at most pi*S/24=pi*sqrt(M)/144.

Using |exp(i t)-1|<=|t|, **every normalized row and every normalized
column** has Euclidean error at most this bound. Projector distance is
no larger. Transposition swaps the allowed row and column gauges and
the two norm bounds. This proves (5) for both orientations without
assuming that maximum-column distance itself is transpose invariant.

## A larger certified radius around small-R Fourier references

The F6 exclusion tube has radius 1/30. By the projector triangle
inequality, a Fourier reference with a certified M<=m<=36 inherits the
radius

    delta_ref = 1/30 - pi*sqrt(m)/144,                   (7)

whenever this is positive. The same radius works in either orientation.
This can be used directly in a complete side-cover seed lift; it avoids
a separate common-ray cover at each such family reference.

For example:

| Bound on reference M | Certified reference radius |
|---|---|
| M<=1/4 | 1/48 |
| M<=1 | 1/96 |

Both inequalities have strict slack. Also M<=9/4 implies that the
reference itself lies strictly inside the F6 radius 1/30, since pi/96<1/30.
These are **reference-matrix** thresholds, not rules excluding every
arbitrary seed box with the same R bound.

[fourier_max_R.py](fourier_max_R.py) evaluates (1) outwardly and returns
the larger of the safe margin (7) and the existing whole-family radius
1/16384. Its angles refer to N(z,w), as defined above; they must not be
silently identified with a differently indexed Fourier parametrization.
The census, grid witnesses, specializations, and radius-policy controls
are replayed in the accompanying verifier. The bound (5) is supplied by
the analytic argument above.

The result locates the small-R Fourier reference region and supplies
larger certified radii there. It does not finish off-family seed lifting,
the remaining near-F6 seed neighbourhoods, or a universal T1-prime bound.

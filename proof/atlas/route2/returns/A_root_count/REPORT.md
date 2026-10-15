# Route 2-A: the 252-root theorem and projective completeness certificates

**Date:** 15 October 2026.  
**Input:** `Route2AHandoff_2026-10-15.zip`.  
**Return:** this `output/` directory.  
**Conventions:** `proved` means a mathematical argument is given below; `certified`
means the accompanying exact checker was run successfully; `numerical` means floating
point only. Imported literature results and upstream assumptions are identified explicitly.

## 0. Main result and precise scope

**PROVED.** Let H be any order-six complex Hadamard matrix. If every square minor
of H is nonzero, the complexified unbiased-vector system has **exactly 252 solutions
counted with algebraic multiplicity** in (C*)^5. It has no positive-dimensional
component. If its roots are simple, there are exactly 252 distinct solutions.

The statement is uniform on the entire specified locus; it is not a fit to the
three sample matrices and does not assume a particular reconstruction family.

**PROVED.** For the natural projective compactification of this system, a boundary
solution exists **if and only if some square minor of H vanishes**. Thus
Hadamard-ness does not, on the full-minor-nonvanishing locus, force a deficit from
252. The handoff's 204–217 counts are incomplete Newton searches at the three
sample neighbourhoods, not the degree of the system there.

**CERTIFIED.** At each of Record centres 100, 2471, and 5305, there are 252 pairwise
disjoint, parameter-uniform root certificates. They are checked using exact integer
dyadic interval arithmetic. For every exactly unitary matrix in each coefficient
box, precisely 48 roots are torus rays. Conservative orthogonality graphs have
clique numbers 2, 1, and 1, respectively. Consequently, every exact Hadamard in
these boxes has **no third MUB**.

These are coefficient boxes of real/imaginary halfwidth 2^-25 for A = H*/sqrt(6),
not atlas balls of radius 0.16 or 0.3. The larger-region milestone is not claimed.

**PROVED.** The projective formulation also supplies a completeness criterion that
can accommodate roots at infinity. At a fully supported, corank-one boundary
point associated with a k-by-k minor, the projective root is simple when k != 3,
and has a one-dimensional tangent space when k = 3. Thus generic 2-by-2 and
4-by-4 minor crossings and balanced 3-by-3 crossings require different treatment.
Here “fully supported” and “corank-one” are essential hypotheses, specified in §6.

### What is and is not settled

| Goal | Status of this return |
|---|---|
| A1: root count | **Proved:** degree 252 on the full-minor-nonvanishing locus, with distinctness away from the finite-root discriminant. **Certified:** 252 simple roots on three explicit neighbourhoods. No claim that this regular locus is dense in every irreducible component of the entire non-Tao Hadamard variety. |
| A1: exceptional locus | **Proved:** the projective boundary locus is exactly the union of vanishing-square-minor loci. Full counts on all its strata are not classified. |
| A2: completeness | **Proved:** uniform affine and projective exhaustion criteria; a quantitative boundary bound; a multiplicity-cluster variant. **Certified:** three working exact prototypes. |
| A3: torus structure | **Proved:** upper bound 252 outside the minor locus; reciprocal-conjugation and parity; explicit fold conditions. **Certified:** 48 torus rays locally at the three samples. A global lower bound 48 is not proved. |
| A4: corner description | **Proved:** an inverse-free bihomogeneous formulation, a critical-sextic formulation, and a five-real-variable block formulation. A genuinely lower-dimensional generic solving system is not obtained. |

The new root-count and completeness proofs do not rely on the supplied global
no-four-MUBs proof. The nonvacuity witnesses constructed with the supplied matched
formula have a separately stated upstream dependency (§9).

## 1. The correct exact system, including for interval coefficients

### 1.1 Unitary normalization — PROVED

Set

    A = H*/sqrt(6),       B = A^(-T).

For an exact Hadamard, A is unitary and B = conjugate(A). With
x = (1,z1,...,z5), define

    f_j(x) = (A x)_j (B x^(-1))_j - 1,     j=0,...,4.        (1)

These are the handoff's `_F` equations divided by 6. The omitted sixth equation
follows from

    sum_j (A x)_j (A^(-T) x^(-1))_j = sum_i x_i/x_i = 6.    (2)

For an arbitrary invertible complex coefficient matrix A, definition (1) still
makes exact algebraic sense. This extension is important: a stored floating-point
Record midpoint is not an exactly unitary matrix. Replacing A^(-T) by conjugate(A)
at an arbitrary midpoint would destroy identity (2).

The returned checker therefore certifies the inverse-dual system for **every
invertible A in a coefficient box**, and specializes to unbiased vectors only
when A is exactly unitary. It does not assert exact unitarity of the floating-point
midpoint.

### 1.2 Inverse-free projective equations — PROVED

Use two nonzero homogeneous vectors x,v in C^6, and put

    a = A x,       y = A^T v,       c = x0 y0.

In P^5_x x P^5_v impose ten equations:

    E_i = x_i y_i - c = 0,          i=1,...,5,
    G_j = a_j v_j - c = 0,          j=0,...,4.               (3)

Each has bidegree (1,1), and its coefficients are linear in A. The sixth G equation
is automatic, because sum_j a_j v_j = sum_i x_i y_i.

On c != 0, all x_i,y_i,a_j,v_j are nonzero. After dephasing x0=1, equations (3)
imply y_i=c/x_i and v=c A^(-T) x^(-1), so they are equivalent to (1).
Conversely, any solution of (1) defines a unique projective pair [x],[v].

Thus c != 0 is exactly the original Laurent problem; c=0 is its projective
boundary. The ten-variable affine chart used for certification fixes one nonzero
coordinate of x and one of v to 1. The chosen coordinates may differ between roots.

The redundant-equation identity is checked symbolically in `exact_checks.py`.

## 2. The full-minor 252-root theorem — PROVED

The argument works in dimension n, with 2n-2 equations in P^(n-1) x P^(n-1).
Call a matrix **totally nonsingular** if every nonempty square submatrix is invertible.

### Theorem 2.1: exact boundary criterion

For an invertible matrix A, the projective system (3), in dimension n, has a
solution with c=0 if and only if A is not totally nonsingular.

**Proof.** At a boundary solution, let

    I = support(x),       J = support(v).

The coordinatewise zero-product equations give

    A[J,I] x_I = 0,       A[J,I]^T v_J = 0.                 (4)

Both vectors are nonzero. Hence the rectangular submatrix A[J,I] has both a
nontrivial right kernel and a nontrivial left kernel, and its rank is strictly
less than min(|I|,|J|). It cannot have this rank if all its maximal square minors
are nonzero.

Conversely, suppose the square submatrix A[J,I] is singular. Choose a nonzero
right-kernel vector u and a nonzero left-kernel vector w. Extend them by zeros to
x supported on I and v supported on J. Then x_i(A^T v)_i=0 for every i and
(Ax)_j v_j=0 for every j, so (3) holds with c=0. Both projective vectors are
nonzero. This proves both directions. ∎

### Theorem 2.2: finite degree

If A is totally nonsingular, the Laurent system has finitely many roots, and their
multiplicities sum to

    binomial(2n-2,n-1).                                    (5)

**Proof.** The projective zero scheme of the 2n-2 equations is proper. By Theorem
2.1 it lies entirely in c != 0, and hence in the affine chart x0=v0=1. A projective
algebraic set contained in an affine chart is finite: its positive-dimensional
irreducible components would be both proper and affine, which is impossible.
This applies to the underlying set even before reducedness is known.

The ambient product of projective spaces is smooth of dimension 2n-2. The
zero-dimensional zero scheme of 2n-2 sections of O(1,1) is a complete intersection.
Its length is the coefficient of s^(n-1)t^(n-1) in

    (s+t)^(2n-2),     with s^n=t^n=0,

which is (5). In particular, the positive intersection number also rules out an
empty zero scheme. All these points lie in the original Laurent domain. ∎

For n=6, (5) is binomial(10,5)=252. Reducedness is not needed for the length
statement. At a fold, two roots may coalesce into one root of multiplicity two
without changing 252.

The compactness mechanism is related to Haagerup's nonsingular-minor argument for
prime Fourier matrices [1]. Here the matrix is arbitrary and total nonsingularity
is the explicit hypothesis. No priority claim for this general algebraic principle
is intended.

## 3. The exceptional locus and the apparent BKK deficit

### 3.1 Only 425 minor tests are needed for an exact Hadamard — PROVED

For unitary A, Jacobi's complementary-minor identity gives

    |det A[I,J]| = |det A[I^c,J^c]|.                        (6)

For unnormalized H this becomes

    |det H[I,J]| = 6^(k-3) |det H[I^c,J^c]|,    |I|=|J|=k.

The 1-by-1, 5-by-5, and 6-by-6 minors of H are automatically nonzero. The 4-by-4
minors are controlled by the 2-by-2 minors. Of the 400 three-by-three minors,
complementation pairs them into 200 pairs. Therefore the boundary-free condition
is exactly the nonvanishing of 225 two-by-two minors and 200 representative
three-by-three minors.

Define Sigma by the vanishing of at least one of these 425 minors. This is an
explicit algebraic locus on the Hadamard variety, invariant under equivalence,
conjugation and transposition. It retains rather than discards the special families:
on Sigma, one must use boundary-aware certificates instead of Theorem 2.2's affine
form.

For the larger boxes of arbitrary, not necessarily unitary, coefficient matrices,
the checker verifies all 923 nonempty square minors instead. It does not use (6)
without its unitarity hypothesis.

### 3.2 Facial systems — PROVED

In the Laurent formulation, a nonconstant weight selects a set I of maximal-weight
coordinates and a disjoint set K of minimal-weight coordinates. The facial part
of each equation is the product of the corresponding two linear forms:

    (sum_{i in I} A[j,i] x_i)
       (sum_{k in K} A^(-T)[j,k] / x_k).                    (7)

The sixth facial equation follows from the same linear relation as before.
A simultaneous torus root of these face equations gives a boundary pair with x
supported in I and y supported in K. Since v=A^(-T)y, Theorem 2.1 forces a singular
square submatrix.

Conversely, the boundary pair constructed in Theorem 2.1 has disjoint supports
for x and y. Give these supports the maximal and minimal weights and set the
corresponding nonzero leading coordinates to x_i and 1/y_k. This gives a torus
solution of the facial equations. The remaining leading coordinates can be chosen
arbitrarily nonzero.

Thus the minor criterion also identifies the facial degeneracy relevant to this
root-polytope system. There is no facial degeneracy forced by Hadamard-ness on the
totally nonsingular locus.

### 3.3 Finite-root discriminant and the meaning of “generic” — PROVED / LIMIT

Outside Sigma, let D be the parameter locus where a Laurent root has singular
five-by-five Jacobian. It can be defined algebraically by eliminating the root
variables from the equations and det J=0, after saturation by the Laurent
denominators. Then

    H outside Sigma:          total multiplicity = 252;
    H outside Sigma union D:  distinct root count = 252.    (8)

The certified neighbourhoods in this return exhibit the simple-root regime. The
explicit matched expressions enclosed in them provide physical witnesses **using
the supplied matched-construction theorem**, as detailed in §9.

It would be an additional claim to say that Sigma union D contains no entire
irreducible component of the full non-Tao Hadamard variety. That componentwise
statement is **not proved here**. Equation (8), which is the result required for
local completeness, does not depend on it. No unsupported inference from
connectedness to irreducibility or generic reducedness is made.

### 3.4 Fourier is genuinely exceptional — PROVED; count imported from literature

Let w satisfy w^2-w+1=0 and let F=(w^(ij)) for i,j=0,...,5. In the projective system
with A=F, the following is an entire boundary curve:

    x = (1,0,t,0,-1-t,0),
    v = (1,0,0,-1,0,0),
    y = A^T v = (0,2,0,2,0,2).                             (9)

The products x_i y_i and (Ax)_j v_j all vanish. The missing parameter t=infinity
completes this to a projective line. `exact_checks.py` verifies these identities
over Q(w), including the Fourier Hadamard identity. This is not a floating-point
near-boundary example.

For the affine Fourier problem, setting r_i=x_(i+1)/x_i (indices modulo 6) converts
unbiasedness into the cyclic-six equations

    sum_i r_i r_(i+1) ... r_(i+k-1) = 0,   k=1,...,5,
    product_i r_i = 1.                                      (10)

Indeed, Fourier transforming the six products in (1) gives the cyclic
correlations sum_i x_(i+k)/x_i. The map between dephased x and solutions of (10)
is invertible because the product condition makes every r_i nonzero.

The exact Fourier count **156 complex roots and 48 unimodular roots** is a
**proved result from the cyclic-root literature**, recorded in [1, §1]. It is
used here as an external comparison, not represented as a newly executed
Gröbner-basis certificate. The present exact script certifies (9), not a fresh
156-root census. Consequently a single affine count 252 cannot be used blindly
on all non-Tao matrices, including F6.

## 4. An explicit uniform bound against escape — PROVED

Total nonsingularity can be turned into a quantitative bound if desired; a
projective root certificate does not need to use this relatively pessimistic bound.

Suppose throughout a parameter region:

    |A_ij| <= M,
    ||S^(-1)||_infinity <= K and ||S^(-T)||_infinity <= K

for every nonempty square submatrix S. Norms here are complex row-sum operator
norms. Then every Laurent root satisfies

    epsilon <= |z_i| <= 1/epsilon,
    epsilon = 1/(4 n^2 M^2 K^2).                            (11)

For n=6, epsilon=1/(144 M^2 K^2).

**Proof.** Normalize the projective root so ||x||_infinity=||v||_infinity=1, and put

    tau = 1/(2nMK),
    I = {i: |x_i| > tau},       J = {j: |v_j| > tau}.

These supports are nonempty. From the root equations, for j in J and i in I,

    |(Ax)_j| <= |c|/tau,       |(A^T v)_i| <= |c|/tau.

Discarding the small coordinates therefore gives

    ||A[J,I] x_I||_infinity <= |c|/tau+nM tau,
    ||A[J,I]^T v_J||_infinity <= |c|/tau+nM tau.

If |I|<=|J|, select |I| rows and use the inverse bound on the resulting square
matrix; since ||x_I||_infinity=1,

    1 <= K(|c|/tau+nM tau).

If |J|<=|I|, select columns and apply the transpose inverse bound to v_J, with
the same conclusion. Thus |c|>=tau/(2K)=1/(4nMK^2). Also
|(A^T v)_i|<=nM, so every |x_i|>=epsilon. Since every |x_i|<=1, dividing by x0
proves (11). ∎

For a directly checkable choice, if d_k>0 bounds every k-by-k determinant away
from zero, take

    K = max_{1<=k<=n} k! M^(k-1)/d_k.                       (12)

The adjugate formula and the Leibniz determinant bound prove (12), for both inverse
norms. This is an explicit interval-arithmetic completeness hypothesis, not an
unproved assertion of properness along a numerical homotopy.

## 5. Completeness theorems for simple roots and clusters — PROVED

### 5.1 The affine criterion

Let B be a box of coefficient matrices. Suppose every A in B is totally
nonsingular. Suppose 252 pairwise projectively disjoint root boxes each contain a
unique simple solution of (3), for **every A in B**. Then these are every Laurent
root of every A in B.

**Proof.** Theorem 2.2 gives total length 252 pointwise in A. The certified boxes
already supply 252 distinct simple roots. No multiplicity budget remains. ∎

No separate continuation history is needed. Merely counting 252 numerically
converged paths would not meet the hypothesis.

### 5.2 A stronger projective saturation criterion

The requirement of total nonsingularity can be dropped when the certificate is
projective: **252 pairwise disjoint simple-root boxes for (3), uniform in A,
exhaust all projective solutions**, including c=0 solutions. The roots need not
all remain in the Laurent domain.

**Proof.** Under the Segre embedding, P^5 x P^5 is a smooth projective variety of
dimension 10 and degree 252, and the ten equations are hyperplane sections. Its
isolated intersection points have total multiplicity at most 252.

To exclude even an additional positive-dimensional component, suppose there is
an extra point p outside the 252 simple roots. Slightly perturb the ten hyperplanes
while requiring all of them still to pass through p. Because O(1,1) gives an
embedding, their differentials at p can be chosen independent by arbitrarily
small such perturbations. Thus p becomes an additional simple root. The original
252 simple roots persist under a sufficiently small perturbation, in their
disjoint neighbourhoods. A further generic perturbation retains these 253
simple roots and contradicts degree 252. Hence no extra point exists. ∎

This is useful near a simple boundary crossing: one can continue to count the
projective root after an affine coordinate tends to zero or infinity. The supplied
implementation additionally verifies all minors, but the theorem explains how
that restriction can eventually be relaxed.

### 5.3 Multiplicity clusters

Let disjoint bounded domains in projective affine charts carry certified local
holomorphic root counts m_a, uniform over the parameter box. The certificate must
exclude zeros on each domain boundary, and the local count must be a proved
multiplicity count, not a sampled branch count. If

    sum_a m_a = 252,                                         (13)

the domains exhaust all projective solutions.

**Proof.** A generic small perturbation splits each cluster into m_a simple roots
inside its domain, preserving local degree. If any further point existed, the
perturbation argument of §5.2 would provide an additional root, contradicting
252. ∎

One can establish the local counts with a boundary-nonvanishing homotopy or a
multivariate Rouché argument. This return proves the interface, but does not
implement a general fold-cluster Rouché checker. A fold of multiplicity two must
not be presented as two disjoint unique-root Krawczyk boxes at the collision.

## 6. Why balanced 3-by-3 boundary points are different — PROVED

Let a boundary solution have

    I=support(x), J=support(v), |I|=|J|=k,
    rank A[J,I]=k-1,
    support(A^T v)=I^c, support(Ax)=J^c.                     (14)

Thus no additional coordinates in either complementary vector vanish. The
nonzero entries in x_I and v_J span the right and left kernels of A[J,I].

### Theorem 6.1

Under (14), the projective tangent space to the zero scheme at this root has
complex dimension 0 if 2k!=n, and dimension 1 if 2k=n. In particular, for n=6,
the point is simple for k=2 or 4 and is singular for k=3.

**Proof.** Write M=A[J,I], a=Ax, y=A^T v, and differentiate the coordinatewise
product equations, retaining a common variation dc. On the complementary supports,

    dx_(I^c) = dc / y_(I^c),
    dv_(J^c) = dc / a_(J^c).                                (15)

The remaining equations require

    M dx_I = dc (1/v_J - A[J,I^c](1/y_(I^c))),
    M^T dv_J = dc (1/x_I - A[J^c,I]^T(1/a_(J^c))).           (16)

Multiplication of the first equation by v_J^T yields

    0 = dc [k-(n-k)] = dc(2k-n),                            (17)

since v_J^T A[J,I^c]=y_(I^c)^T. The second equation gives the same condition.

If 2k!=n, dc=0, and (15) vanishes. The two remaining kernel directions in (16)
are just the two projective rescalings. Thus the projective tangent space is zero,
so the root is isolated and simple.

If 2k=n, the compatibility conditions in (16) hold for arbitrary dc. Corank one
then gives a solution unique up to the same two rescalings. A nonzero dc gives
one genuine projective tangent direction; no other directions remain. ∎

This does not prove that every balanced point has multiplicity exactly two. It
may be a more complicated singularity or lie on a positive-dimensional boundary
component, as in the Fourier situation.

`exact_checks.py` verifies the predicted ranks 10,9,10 in exact rational examples
with k=2,3,4. These checks supplement, not replace, the general proof above.

## 7. The numerical homotopy — NUMERICAL

`homotopy.py` solves the projective problem instead of starting Newton at random
Laurent coordinates. Its start system consists of ten equations

    L_j(x) M_j(y) = 0,

with generic complex linear forms. Choose five of the ten L factors to vanish;
the complementary five M factors vanish. Each choice gives one projective start
solution, producing binomial(10,5)=252 paths.

A complex gamma homotopy connects this start system to the target ten bilinear
equations. The tracker uses projective normalization, an adaptive fourth-order
predictor, and Newton correction. Keeping both homogeneous vectors normalized
prevents an affine coordinate blow-up from being mistaken for a failed or absent
root.

At all three sample centres, 252 paths reach distinct approximate solutions.
The independently executed exact separation checks, not the path tracker's
floating-point duplicate test, establish distinctness.

| Centre | Complex proposals | Numerical torus proposals | Smallest affine modulus | Largest affine modulus | Warm numerical tracking |
|---|---:|---:|---:|---:|---:|
| 100 | 252 | 48 | 0.000755339 | 1323.9094 | 0.524 s |
| 2471 | 252 | 48 | 0.004359467 | 229.3858 | 0.496 s |
| 5305 | 252 | 48 | 0.000201562 | 4961.2518 | 0.394 s |

The maximum normalized bilinear residuals were below 2e-16. This is only a
numerical diagnostic. The first invocation incurred approximately eleven seconds
including JIT/startup overhead; the table shows warm runs with one BLAS thread.
Runtime is machine- and environment-dependent.

The very large and small Laurent coordinates explain why a torus-biased random
Newton search is a poor completeness test. The exact root degree, rather than
an empirical saturation of the number found, is the stopping criterion.

The supplied `unbiased.py` demo was also run: it found 48 torus candidates at all
three centres, with numerical triple defects approximately 0.1540, 0.8668, and
1.4286. A displayed minimum inner product of 0.0000 at centre 100 was rounded
floating-point output, not proof of orthogonality.

Additional random-start checks in `special_points.py` found 48 torus candidates
at F6, 48 at `fourier(0.23,0.41)`, and 90 at Tao. These special-point counts are
**numerical only in this return**. The script stores the matrices and candidate
vectors. Their singular-minor diagnostics agree with the need for special
boundary treatment; they are not used as exact minor certificates.

## 8. The executed parameter-uniform certificates — CERTIFIED

### 8.1 Domains and arithmetic

For each centre, let A_* be the exact dyadic interpretation of the saved NumPy
matrix `H.conj().T / sqrt(6)`. The coefficient domain is

    |Re(A_ij-A_*ij)| <= 2^-25,
    |Im(A_ij-A_*ij)| <= 2^-25.                               (18)

A_* is a coefficient midpoint, not asserted to be exactly unitary. Every root has
its own affine projective chart, obtained by fixing a largest coordinate of x
and a largest coordinate of v to 1. The other ten complex coordinates have
rectangular real/imaginary halfwidth

    r = 2^-13.                                              (19)

All interval endpoints are integers on the 2^-120 grid. Addition is exact, and
multiplication rounds the endpoint products outward using integer floor/ceiling
division. No binary64 arithmetic inequality is trusted. Floating-point roots,
inverse Jacobians, and witness indices are proposals only.

For a root centre w0, preconditioner R, and interval Jacobian J(X,A), the checker
bounds

    eta >= ||R F(w0,A)||_(real infinity),
    q >= ||I-R J(X,A)||_(real infinity).

The complex matrix bound is the row sum of |Re|+|Im|, which bounds the corresponding
real 20-by-20 operator norm. The exact tested inequalities are

    q < 1,       eta + q r < r.                              (20)

They make w -> w-RF(w,A) a strict contraction of the box into itself for every
fixed A in (18). Since q<1 also implies R and the root Jacobian are invertible,
the fixed point is a unique simple zero of F.

Projective separation is certified by an explicitly selected nonzero 2-by-2
cross-coordinate determinant of the x vectors, for every pair of root boxes.
This remains valid even when different roots use different affine charts.

### 8.2 Results

| Centre | Certified roots | max q | max eta/r | max(eta/r+q) | Root/minor/separation replay |
|---|---:|---:|---:|---:|---:|
| 100 | 252 | 0.251549 | 0.254844 | 0.506393 | 4.61 s |
| 2471 | 252 | 0.060627 | 0.082311 | 0.116346 | 5.00 s |
| 5305 | 252 | 0.080346 | 0.185840 | 0.266186 | 4.88 s |

The displayed decimals are summaries. The PASS decisions use the integer
inequalities, not rounded values in this table.

Each replay verifies 923 nonempty square minors and 31,626 projective separation
witnesses. At centre 5305, two of the coarse root boxes include zero in an
individual coordinate enclosure. This is **not** a failure: all actual roots
are in c!=0 by the globally certified minor criterion. No unsafe division by
those coordinate intervals is performed by the root checker.

### 8.3 Torus classification and no-third-MUB conclusion

The reciprocal-conjugation argument in §10 classifies exactly 48 torus roots at
every exactly unitary A in (18), leaving 204 off-torus roots. For each of the
48 fixed roots, 251 exact witnesses exclude every other box as its involution
image: 12,048 witnesses per centre. Off-torus roots have a certified inequality
between two squared coordinate moduli.

For the 48 torus boxes, exact inner-product enclosures give a conservative
orthogonality graph. An edge is retained whenever the enclosure does not exclude
zero. The maximum-clique search uses only integer bit operations.

| Centre | Torus roots | Retained possible O edges | Clique number | Torus/graph replay |
|---|---:|---:|---:|---:|
| 100 | 48 | 10 | 2 | 0.26 s |
| 2471 | 48 | 0 | 1 | 0.28 s |
| 5305 | 48 | 0 | 1 | 0.27 s |

Thus none of these exact unitary slices contains six pairwise orthogonal
unbiased rays. This proves the local no-third-MUB conclusion for every Hadamard
in the coefficient boxes. A retained edge at centre 100 is uncertainty, not an
assertion that an orthogonal pair exists.

A complete `run_all.py` replay passed in approximately 15.44 seconds, including
small exact algebra checks and the conditional matched-expression enclosures. A
second replay from a standalone copy, with no access to the original reference
directory, passed in 13.46 seconds (`standalone_replay.log`). Centre labels in
this return are zero-based indices into the supplied `phases` array.

## 9. Explicit physical witnesses and their upstream dependency

### CERTIFIED evaluation; PROVED Hadamard property conditional on the supplied construction

To avoid silently treating numerical centres as exact Hadamards,
`physical_witness.py` constructs explicit algebraic matched expressions close to
those centres. Each seed is defined by an exact dyadic Cayley parameter t:

    phase(t) = (1+i t)/(1-i t).                              (21)

The four parameters, sheet, row/column permutations and row/column Cayley phases
are recorded in `physical_witness_<centre>.json`. A hexadecimal floating-point
literal in those files denotes its **exact dyadic value**, not an uncertain
measurement. Thus the JSON and the formula define explicit matrices, not just
decimal approximations to unknown matrices.

The evaluator implements the supplied `model.py` formula using exact directed
interval arithmetic. Real square roots are bounded with integer square roots.
Complex square-root branches are separated by signs; each cubic root is enclosed
by its own exact contraction test. Every division is checked away from zero.

**Upstream input:** the supplied side/matched-construction and flatness results,
and the correctness of their explicit implementation formula in `model.py`, imply
that these matched expressions are Hadamard matrices. This return does not
independently reprove all those identities. Checking that a small interval
contains a unitarity residual of zero would not prove unitarity, and is not used
for that purpose.

The independently certified part here is that the explicitly defined expressions
are well-defined on the selected branches, have positive strict-seed radicands,
and lie inside the coefficient boxes already covered by the root certificates:

| Centre | Certified positive lower bound for seed R | Upper bound on coefficient distance to A_* |
|---|---:|---:|
| 100 | 1.96637 | 3.782e-13 |
| 2471 | 6.06622 | 8.844e-13 |
| 5305 | 9.32675 | 1.142e-12 |

The containing halfwidth is 2^-25, approximately 2.98e-8, so these inclusions have
substantial slack. On accepting the handoff's matched-construction theorem, these
are three explicit nonvacuous physical examples with 252 simple complex roots,
48 torus rays, and no third MUB. Independently of that input, the parameter-uniform
root and unitary-slice theorems remain valid as stated.

## 10. The real locus: what 48 does and does not mean

### 10.1 Reciprocal conjugation — PROVED

For an exactly unitary A, if x solves (1), then so does

    tau(x)_i = 1/conjugate(x_i),      with x0=1.             (22)

Indeed, B=conjugate(A), and applying (22) interchanges the conjugates of the two
linear factors in each product. The fixed points are exactly |x_i|=1.

Projectively, a ray [x] is fixed precisely when all its coordinate moduli are
equal. On a finite simple-root fiber of length 252, the nonfixed roots occur in
pairs, so the number of torus rays is even.

For certification, two projective boxes can be reciprocal-conjugate images only
if the products

    x_i^(b) conjugate(x_i^(a))

are independent of i. The checker disproves this equality for every unwanted
pair using one coordinate difference. Completeness then forces each of the 48
selected roots to be fixed by tau. This avoids trying to prove |x_i|=1 by merely
observing a tiny numerical modulus error.

### 10.2 Bounds and limits — PROVED / NOT PROVED

Outside Sigma, Theorem 2.2 gives the rigorous upper bound

    |U(H)| <= 252.                                           (23)

More generally, the BKK bound controls isolated complex roots even on exceptional
parameters. It must not be used to bound torus points lying on a positive-dimensional
complex component without additional analysis.

The general transverse Clifford-torus intersection lower bound is 2^5=32 in this
dimension, as discussed in [2,3]. This is an imported theorem with a transversality
hypothesis, not a proof of 48. Neither (22), parity, nor the total complex degree
forces 48. This return provides no global proof or counterexample for the proposed
Hadamard-specific lower bound |U(H)|>=48.

The local certificates prove exactly 48 throughout the specified unitary slices;
that is stronger than a local numerical observation but does not imply a global
minimum.

### 10.3 A convention correction — PROVED

Column phases and column permutations of H leave U(H) unchanged as a set. Row
phases generally do not: they rephase the vectors. For a unitary diagonal D,

    U(DH) = { dephase(Dx) : x in U(H) }.

Counts and orthogonality relations are invariant, but the actual dephased vector
set changes. Complex conjugation similarly sends U(H) to U(conjugate(H)); it is
not in general a symmetry of U(H) itself.

## 11. The finite-root fold equations — PROVED

Let x=(1,e^(i phi1),...,e^(i phi5)), and let A=A(theta) be an exact unitary chart.
Put a=Ax and

    F_j(phi,theta)=|a_j|^2-1,       j=0,...,4.

Its phase Jacobian is

    J_jk = -2 Im(conjugate(a_j) A_jk x_k),      k=1,...,5.   (24)

Thus the exact real discriminant is the projection of

    F=0,       det J=0.                                      (25)

At a candidate ordinary fold, assume rank J=4. Let u and ell span the right and
left kernels. For a transverse one-parameter direction s in theta, define

    alpha = ell^T partial_s F,
    beta = (1/2) ell^T D_phi^2 F[u,u].                       (26)

The Hessian term has the explicit expression, with u0=0,

    D_phi^2 F_j[u,u]
      = 2 |sum_k A_jk x_k u_k|^2
        -2 Re(conjugate(a_j) sum_k A_jk x_k u_k^2).           (27)

If alpha and beta are both nonzero, the implicit-function theorem eliminates the
four regular directions, and the remaining real-analytic scalar equation has
nonzero parameter derivative and nonzero second derivative. Its local fold
normal form has two real roots on one side and none on the other, with one double
root at the fold. The complex multiplicity remains two.

Equations (24)–(27) are explicit tests after substitution of the matched corner
formula A(theta). A low-degree eliminated equation involving only R,g,p or the
four seeds is not obtained here. The finite fold discriminant and the vanishing-
minor boundary locus are different mechanisms and must not be conflated.

## 12. Two further exact solving formulations

### 12.1 Critical points of a sextic — PROVED

For an invertible A define the homogeneous sextic

    P_A(x) = product_{j=0}^5 (Ax)_j.

On the open set product_i x_i P_A(x) != 0, equation (1) is equivalent to

    x_i partial_i P_A(x) - P_A(x) = 0,      i=1,...,5, x0=1. (28)

Euler's identity supplies the i=0 equation. To prove the equivalence, divide by
P_A to obtain

    x_i (A^T (1/(Ax)))_i = 1.

Putting v=1/(Ax) then gives all the inverse-free product equations with c=1.
The converse follows by solving those equations for v and using projective scale.

Thus the roots are critical points of the rational master function

    P_A(x)/(x0 x1 ... x5).

Saturation by product_i x_i P_A is essential: unsaturated sextic equations can
introduce boundary components. This gives a concrete exact elimination route,
not a claim that generic elimination degree is smaller than 252.

### 12.2 Five real variables from a corner — PROVED

Partition A into 3-by-3 blocks and write x=(u,v), Ax=(p,q). Whenever A12 is
invertible,

    v = A12^(-1)(p-A11 u),
    q = (A21-A22 A12^(-1) A11)u + A22 A12^(-1)p.             (29)

Choose u,p in T^3 with u0=1, leaving five real phases. Equations (29), together
with |v_i|=|q_j|=1, are equivalent to an unbiased ray. Of the six real flatness
equations, one follows from unitarity:

    ||u||^2+||v||^2 = ||p||^2+||q||^2.

For example, all three conditions on v and any two on q imply the last one on q.
This explains the five-equation corner compatibility formulation in the supplied
model. It does not reduce the generic problem below five real variables.

Other invertible block choices can be used on other charts. No claim that one
fixed corner chart covers every exceptional Hadamard is made.

## 13. Consequences for the Route 2 design

**PROVED consequences.** The root-count part of coverage can be separated from
orthogonality geometry. One may certify 252 projective complex roots or clusters,
classify which can meet the torus, and pass only those to the orthogonality graph.
There is no need to replace an unproved random-Newton completeness assumption by
another sampled count.

For boundary-free regions, a 425-minor physical check supplies a global degree
and the optional explicit escape bound. For larger regions meeting ordinary
minor crossings, projective saturation can retain the boundary roots rather than
trying to keep huge Laurent coordinates in boxes. Balanced minor strata and
finite folds require multiplicity-aware clusters.

**Not achieved here.** The independent coefficient boxes are extremely conservative
compared with a four-dimensional tangent/Taylor chart. This return does not prove
that 252 tracked tubes or clusters cover a radius-0.16 or radius-0.3 Record region,
does not supply a large-region fold-cluster checker, and does not replace the
12,021-Record atlas. The main deliverable is the exact count and completeness
mechanism, with fully replayed small-region prototypes.

## 14. Reproduction and certificate boundaries

Run `python3 run_all.py` without Python's `-O` optimization flag. Assertions are
fail-closed certificate checks; the arithmetic module refuses to run when they
are disabled. Dependencies are NumPy and SymPy; the numerical
homotopy optionally uses Numba. No external service, original ZIP, or Arb install
is required for replay.

The saved JSON summaries and logs are not trusted certificates by themselves.
`torus_certificate.py` first replays the full root checker instead of trusting a
saved PASS field. Every proposed root, preconditioner, and separating witness is
checked by the integer interval calculations.

`roots_*.npz` contains midpoint matrices and numerical proposals. These are not
presented as exact unitary matrices or exact torus vectors. Their exact dyadic
interpretations define the centres of the certified parameter and root boxes.

The small symbolic checks verify the degree coefficient, the redundant equation,
an explicit Fourier boundary line, and rational boundary Jacobian ranks. They do
not stand in for a formal proof of algebraic intersection theory, nor is this a
Lean formalization. The mathematical arguments establishing soundness are the
proofs in this report.

## 15. Literature and credit

[1] U. Haagerup, *Cyclic p-roots of prime length p and related complex Hadamard
matrices*, **arXiv:0803.2629**. Credit for the cyclic-root framework, the
nonsingular-minor/properness mechanism for prime Fourier matrices, and the
recorded Fourier-six counts. The prime-length theorem is not misapplied to n=6.

[2] H. Führ and Z. Rzeszotnik, *On biunimodular vectors for unitary matrices*,
**arXiv:1506.06738**. General unitary biunimodular formulation and background.

[3] O. Andersson and I. Bengtsson, *Clifford tori and unbiased vectors*,
**arXiv:1506.09062**. Clifford-torus intersection viewpoint and the explicit
transversality qualification on the 2^(n-1) lower bound.

[4] S. Brierley and S. Weigert, *Constructing Mutually Unbiased Bases in Dimension
Six*, **arXiv:0901.4051**. Background on exact algebraic and numerical searches for
common unbiased vectors at special Hadamard families.

The supplied matched-construction proof and formula are retained as
`UPSTREAM_PROOF_v2.md` and `input_toolkit/model.py`. They are used only where their
dependency is explicitly stated. The present return does not independently audit
or certify the supplied global no-four-MUBs atlas.

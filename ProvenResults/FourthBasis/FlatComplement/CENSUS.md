# A global four-ray bound for strict rectangular complements

> Imported 26 September 2026 from the archived
> `04_algebraiccoreV2/flat_complement_census/PROOF.md`, unchanged apart from
> links and the import note in §5. Exact controls: [verify.py](verify.py).

**Theorem.** Let A be a phase 6-by-3 matrix, A†A=6I, with every
three-by-three minor norm strictly between 0 and 27. Then A-perp contains
at most FOUR projective flat rays. This is a bound on ALL flat rays in
that subspace, not only on its orthonormal bases. It requires neither a
completion of A nor a carrier H. The bound is sharp.

If a flat orthonormal completion Y exists, its three rays account for all
but at most one flat ray. There is an explicit test and formula for that
possible fourth ray: a single off-diagonal cubic product must be real and
nonzero. Every additional ray is nonorthogonal to all three completion rays.
Consequently the entire orthogonality graph is either an independent set
of at most four vertices, K3, or K3 together with one isolated vertex.

This is a global finite-ray classification/reduction on the strict domain.
It is NOT a bound on the whole common-ray set R(H), and it does not exclude
a fourth MUB: fourth-basis rays are unbiased to A, not orthogonal to A.
The rank-five full-third-basis incompatibility remains Open.

## 1. No two-dimensional subspace contains three flat rays

First use only that every three-row submatrix of A is nonsingular.
No nonzero vector in ker A† can have support of size at most three.
Indeed its nonzero entries would give a linear dependence among at most
three rows of A; extend the selected rows to three if necessary.

Suppose a two-dimensional subspace S of ker A† contains three distinct
projective flat unit vectors z_1,z_2,z_3. Write

    z_3=alpha z_1+beta z_2,  alpha beta!=0.

Entrywise flatness gives, for all six coordinates,

    2 Re(alpha conjugate(beta) r_i)=1-|alpha|²-|beta|²,
    r_i=(z_1)_i/(z_2)_i in the unit circle.             (1)

The equation in r_i is one genuine affine line, which meets the unit circle
in at most two points. There must be exactly two quotient values a,b,
since z_1,z_2 are independent. The nonzero vectors z_1-a z_2 and z_1-b z_2
are supported on the two complementary quotient classes. At least one has
support of size at most three, contradicting the preceding support bound.

Therefore **any two-dimensional subspace of A-perp contains at most two
flat rays**. This elementary argument covers every possible continuous
fibre and uses no genericity, orthogonality of the three rays, or spectral
assumption.

## 2. Four is the global maximum

Put Q=I-AA†/6. The strict-rectangle feature-rank lemma from the
[completion proof](COMPLETION.md) (§§2–3) gives

    W={T=T†: QTQ=T, diag T=0},   dim_R W=3.              (2)

For every flat unit vector z in A-perp,

    zz† in Q/3+W.                                      (3)

All its ray projectors therefore lie in the four-dimensional REAL linear
space span_R{Q,W}. If there were five distinct rays, their projectors would
obey a nonzero real dependence. Taking traces makes the sum of its
coefficients zero. Move positive and negative terms to opposite sides:

    sum_(i in I) alpha_i z_i z_i†
      = sum_(j in J) beta_j z_j z_j†,  alpha_i,beta_j>0. (4)

Neither side can contain just one ray: equality to a positive rank-one
matrix would make all rays on the other side the same ray. Thus both
sides contain at least two. There are at most five active terms, so one
side contains exactly two. The common positive matrix in (4) has range
of dimension at most two; positivity makes every active z_i lie in that
range. At least four distinct flat rays would lie in a two-dimensional
subspace, contradicting Section 1. This proves the bound of four.

The same argument shows that projectors of any four distinct flat rays
are real-linearly independent. The bound uses no reconstruction denominator
and retains every collision allowed by strictness.

## 3. Complete orthogonality graph

If two flat unit vectors z_1,z_2 in A-perp are orthogonal, then

    R=Q-z_1z_1†-z_2z_2†

is a rank-one orthogonal projector. Its diagonal is
1/2-1/6-1/6=1/6, so it supplies a third flat unit vector z_3. Thus every
orthogonality edge belongs to an orthonormal completion triangle.

An extra flat ray orthogonal to z_1 would belong to span(z_2,z_3), which
already contains two distinct flat rays. Section 1 prohibits it. The same
holds for each of the three rays. Together with the four-ray bound, this
proves the claimed graph classification and also reproves uniqueness of
the unordered completion.

**Corollary — complete one-ray extension alternatives.** If A has a flat
completion, adjoining any of its three completion rays permits the full
completion. Adjoining its possible fourth flat ray instead gives an
UNEXTENDIBLE four-row partial Hadamard after transposition: no further flat
ray is orthogonal to those four. If A has no completion, every flat ray
that can be adjoined to it likewise gives an unextendible four-row partial
Hadamard, because a second orthogonal residual ray would force completion.
This concerns four orthogonal rays, not four mutually unbiased bases.

## 4. Exact formula for the only possible extra ray

Suppose Y is a normalized flat orthonormal completion, Y†Y=I and YY†=Q.
The commuting plane of traceless diagonal operators in the Y basis lies
in W. Choose any T in W outside that plane and set

    S=Y†TY-diag(diag(Y†TY)).                           (5)

Here S is Hermitian with zero diagonal and is nonzero. Subtracting the
diagonal part does not leave W after transport by Y, since Y is flat and
tr T=0. Dimension three in (2) gives

    Y† W Y = {traceless real diagonal matrices} + R S. (6)

Write s12=S_12, s23=S_23, s31=S_31 and

    Delta=s12 s23 s31.                                (7)

**Exact census:** there are FOUR flat rays in A-perp if and only if all
three entries in (7) are nonzero and Delta is real. Otherwise there are
exactly THREE, namely the columns of Y.

Proof. An extra flat ray Yv has vv†-I/3 in Y†WY. Its off-diagonal entries
must be t S_ij for a real t. An extra ray has t!=0 and every coordinate
v_i nonzero: support of size two would violate Section 1 using the two
corresponding columns of Y. Hence all s_ij are nonzero and

    t^3 Delta=|v_1 v_2 v_3|²>0.                       (8)

In particular Delta is real and nonzero.

Conversely, suppose Delta is real and nonzero. Define real numbers

    q1=Delta/|s23|², q2=Delta/|s31|², q3=Delta/|s12|²,
    t=1/(q1+q2+q3),
    P_extra=t (S+diag(q1,q2,q3)).                      (9)

All q_i have the same nonzero sign, so the denominator is nonzero and
all diagonal entries of P_extra are positive. Its trace is one. Each
two-by-two principal minor vanishes, and the cyclic product (8) is positive.
Equivalently, choosing the first coordinate positive and recovering the
other two from the first column directly factors P_extra as vv†. Thus it
is a positive rank-one projector. Equations (6) and (9) show that
P_extra-I/3 lies in Y†WY, so Y P_extra Y† has diagonal 1/6. It is the
additional flat-ray projector. Formula (9) also proves its uniqueness.

This construction has no unresolved root or sign choice. To obtain its
phase vector with first entry one, put

    Z_extra=Y P_extra Y†,   a_extra=6 Z_extra[:,0].     (10)

Then |(a_extra)_i|=1 and A†a_extra=0. No square root is needed.
Rescaling S by a nonzero real number leaves (9) unchanged. Rephasing or
reordering Y changes only the coordinate presentation; reality of Delta
is preserved. The zero-entry alternatives are explicitly retained.

### A seed-only obstruction before recovering the extra ray

Choose a supported Hermitian D in the completion's commuting plane with
three distinct eigenvalues lambda_1,lambda_2,lambda_3 on range Q, and retain
T outside that plane. The scalar

    chi(A)=tr([D,T]^3)                                  (12)

can be computed before diagonalizing: D and T are rational combinations
of the original W basis on the nonzero pivot charts. In the Y eigenbasis,

    chi(A)=3 (lambda_1-lambda_2)(lambda_2-lambda_3)
               (lambda_3-lambda_1) (Delta-conjugate(Delta)). (13)

This follows by expanding the trace over the two oriented three-cycles.
Therefore chi!=0 excludes the extra flat ray and certifies exactly THREE
flat rays in A-perp. When the three s_ij are nonzero, chi=0 is also
sufficient for the FOUR-ray case. Zero s_ij stay in the three-ray case.
Thus an extra flat orthogonal ray forces an explicit rational equation
in the original reconstructed rectangle, not just a rank or numerical
smallness test. This equation is not asserted to be forced by a fourth MUB.

There is finite coverage for choosing D: given any basis D_1,D_2 of the
commuting plane, at most three projective directions have repeated
eigenvalues. One of D_1+k D_2 for k=0,1,2,3 consequently has simple
spectrum. Testing these four directions loses no collision branch.

## 5. Coupling back to the fixed carrier and original seeds

> **Import note.** The first two paragraphs of this section use the archived
> algebraic-core-V2 alignment coordinates, `A=diag(d)A0` with rank-five seed
> coordinates `J`. They are kept for provenance but nothing else here depends
> on them. The last paragraph (zero, one or three H-flat completion rays) is
> coordinate-free.

Return to V=H†/sqrt(6), A=diag(d) A0, B=VA, with the original retained
placements and physical alignment. Any common flat ray orthogonal to A
must belong to the set of at most four rays proved above. If a standard-
flat completion Y is available, Sections 4 and 5 give its COMPLETE census:
test the three columns of Y and, exactly on (7), the one explicit extra ray
for flatness after applying the actual V. No other ray or continuous
residual family is omitted.

Row phasing sends Y0 to diag(d)Y0 and preserves the intrinsic extra-ray
condition (7). In the rank-five seed coordinates d d†/6=J/tr J. Therefore
for any normalized candidate projector R0 computed in the A0 frame, its
actual transformed flatness test is the explicit seed equation

    6 diag[V (R0 entrywise-times J) V†] = (tr J)/6.     (11)

Indeed diag(d)R0diag(d)†=6(R0 entrywise-times J)/tr J.
This retains input/output flatness, the actual finite spectral pair, every
placement and all reconstruction guards. It does not change H's frame.

If Y is standard-flat and VA is phase, exactly TWO columns of VY cannot
be flat: diag(VQV†)=1/2 forces the third to be flat as well. Hence zero,
one, or three of the standard completion rays pass the H test. The extra
ray, when present, is isolated. In particular, on this standard-completable
branch, three distinct common flat rays in A-perp force the full third
unbiased basis even without assuming their mutual orthogonality beforehand.

## 6. Exact controls and limitations

The verifier supplies both branches:

- The preserved eighth-root Hadamard control has a strict selected A and
  a real nonzero Delta. Formula (9) supplies a fourth flat ray exactly;
  its overlaps with all three completion rays are nonzero. In the existing
  completed-triple control that extra ray fails the H-flatness test, while
  the three completion rays pass. This H has zero3, as already documented.
  Writing zeta=(1+i)/sqrt(2), the resulting unextendible four-row rectangle is

      [1, 1,      1,       1,  1,       1]
      [1, zeta^5, zeta^7, -1,  zeta^3,  zeta]
      [1, zeta^3, -1,     -i,  zeta^7,  i]
      [1, -1,     zeta,    i, -i,      -zeta].

  The verifier independently certifies its unextendibility: on its
  two-dimensional orthogonal complement the supported-Hermitian diagonal
  map has full real rank four. The unique supported operator with diagonal
  1/6 is half the rank-two complement projector, so no rank-one flat-ray
  projector exists. This check does not assume the four-ray bound.
- An exact full Hadamard over Q(i,sqrt(21)) has a strict selected A and
  nonreal Delta. It has exactly three flat rays orthogonal to A. Its matrix
  is taken from the existing scoped nonbinary control; only its actual
  Hadamard and selected strict-minor identities are used here.

These controls check the formulas and sharpness. The universal bound and
all-branch graph classification are the proofs in Sections 1--4, not an
inference from the examples. This is a criterion-ii global reduction of
the residual ray problem. It does not prove the rank-five strict-H
incompatibility, classify all of R(H), or exclude a new quartet domain.

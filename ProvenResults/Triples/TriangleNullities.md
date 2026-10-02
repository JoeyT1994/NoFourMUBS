# Triangle matchings and the order-six nullity gap

**Statement.** For any three fixed, aligned, normalized order-six complex
Hadamards A, B, X (a "triangle"), the diagonal phase matchings
A* diag(eta) B = diag(r) X diag(s), eta_1=1, correspond bijectively to the
common eigenlines of G_2,...,G_6 (defined below). Their number equals
dim ker K_G, and

    dim ker K_G in {0,1,2,6},     rank K_G in {6,5,4,0}.

Three distinct matchings force six, and e4(K_G)=0 implies K_G=0 (so K_0=0).
The six-matching triangle built from zeta=exp(i pi/12) is locally isolated
modulo gauges, and the space of MUB triplets in C^6 modulo global unitaries,
basis-vector phases and permutations is disconnected. The 36-by-36 quartet
operator L of Section 6 is PSD and has a kernel exactly when the fixed five
representatives extend to a quartet.

**Status.** Proved. The nullity-three exclusion is an analytic proof
([TriangleNullityProof.md](TriangleNullityProof.md), Sections 1-8). It was
supplied to the archive and reviewed there; the review notes are reproduced
in Section 3. The isolation statement uses an exact lifted Jacobian minor.
Disconnectedness uses that minor together with an exact second triple. Whether
nullity 1 occurs for a physical triangle is **open**. So is strict positivity
of L on every physical quintuple.

**Dependencies.** None beyond elementary linear algebra and the exact
computations in [TriangleNullities.py](TriangleNullities.py). There is no
classification input, no reconstruction input and no genericity assumption.

**Provenance.** Archive `03_algebraic/core/MATHEMATICS.md` Sections 2-4
(definitions, matching bijection, quartet operator);
`03_algebraic/core/TRIANGLE_NULLITIES.md` (theorem, review, consequences);
`03_algebraic/core/provenance/supplied/MUB6_nullity_three_exclusion.md`
(the proof, reproduced in TriangleNullityProof.md);
`03_algebraic/core/PROJECTOR_RANK5.md` Section 4 (the second triple used for
disconnectedness); verifier from `verify_triangle_nullities.py`,
`verify_projector_rank5.py` and `compatibility.py`.

---

## 1. Conventions

Use phase Hadamards H with |H_ij|=1 and H*H=6I for reconstruction. For
transition multiplication write A=H_A/sqrt(6), and similarly B,C,X,Y. In
this document these letters denote normalized unitary Hadamards. The code
accepts phase matrices and applies the normalization internally.

Basis gauges act as V_ij -> M_i* V_ij M_j. Fix any required permutation
alignments first, and keep the diagonal phase matching. The six transitions
of a quartet are determined by FOUR bases. They are never six independently
adjustable physical matrices.

## 2. Exact triangle matching, with the diagonal phases eliminated

**Theorem:** for fixed aligned A,B,X, set

    (T_k)_ij = conj(A_ki) B_kj / X_ij,
    G_1=I,      G_k=T_1* T_k.

The matrices T_k are unitary and tr(T_k* T_l)=6 delta_kl. Matchings

    A* diag(eta) B = diag(r) X diag(s),   eta_1=1,

are in bijection with the common eigenlines of G_2,...,G_6. If
G_k v=lambda_k v, then eta_k=conj(lambda_k). All joint eigenspaces are
one-dimensional, and distinct vectors eta/sqrt(6) are orthogonal. For these
fixed representatives and this fixed alignment there are at most SIX
matchings.

Proof mechanism: Q=sum eta_k T_k has Frobenius norm 6. A common eigenvector
attains operator norm 6. This uses up the whole Frobenius norm and forces
rank one. Conversely, a phase rank-one Q saturates the vector triangle
inequality and gives a common eigenvector. The row and column norms of the
unitary transition force the rank-one factors to be phases. The proof covers
individual eigenvalue degeneracies; a simple spectrum is not assumed.
(The full argument is Section 2 of [TriangleNullityProof.md](TriangleNullityProof.md).)

## 3. The stabilized common-eigenvector test and the nullity gap

**Theorem:** define

    K_0=sum_(2<=j<k<=6) [G_j,G_k]*[G_j,G_k],
    K_(t+1)=K_t+sum_(k=2..6)(G_k* K_t G_k+G_k K_t G_k*),
    K_G=K_6.

These matrices are PSD. The decreasing kernels stabilize within six steps.
The stable kernel reduces every G_k, and the restrictions commute. Thus

    number of triangle matchings = dim ker K_G.

**Theorem (order six):** for every three fixed aligned physical order-six
Hadamards, with K=K_G the stabilized triangle obstruction,

    r=dim ker K is in {0,1,2,6},
    rank K is in {6,5,4,0}.

Thus three distinct normalized phase matchings force all six, and

    e4(K)=0  implies  K=0  implies  K0=0.

Here e4 is the sum of principal fourth-order minors. Positivity is essential
to the first implication. These are order-SIX results. They are not
restrictions on the d=3 positive control. K is not a Hadamard basis matrix.

The [complete supplied proof](TriangleNullityProof.md) is reproduced without
mathematical change. The theorem is global: no product guard, ordinary
minor, preferred sheet, family, numerical genericity or unproved structural
input is required. The proof uses flatness and unitarity of the triangle
tensor in ALL THREE directions, not just an orthogonal-unitary operator span.
It excludes nullities 3, 4 and 5 globally, including minor/guard boundaries.

Singularity of K_0 alone is not enough. Physical nullities 0, 2 and 6 have
exact controls; whether nullity 1 occurs remains open. An abstract
orthogonal-unitary nullity-1 control is NOT a Hadamard-triangle example.

### Why the nullity-three proof is stronger than the old span argument

The array t_kij=conj(A_ki)B_kj/X_ij is flat, and its slices in ALL THREE
directions are unitary. Each matching extracts a flat orthogonal rank-one
tensor component. The residual lies in the complements in all three modes,
so the matching count is the same whichever tensor direction is used.

At r=3, the residual slices are six unitaries spanning a three-dimensional
subspace of M3. Their tight-frame operator is 6I and they have no common
eigenline. The four-unitary lemma and flat character rows force coordinate
pairs in every mode. The tensor then has the form

    t_(a,eps),(b,delta),(c,eta)
       = [P_abc+eps*delta*eta*Q_abc]/2.

After allowed tensor-coordinate phases and permutations, P is cyclic. Entry
flatness and slice unitarity exclude zero p_s or q_s and make Q a signed
cyclic tensor. Its sign relations force coordinate-sign factorization. The
Fourier decomposition of Q then supplies three MORE common lines, which is
a contradiction. This is an analytic exclusion, not an inference from the
tested examples.

Review checks that matter:

- In the four-unitary lemma, for M=cV+dW, the identity
  V(M* M)V*=MM* (and its W analogue) proves commutation with the common
  positive Gram operator when M is normal. If that operator is scalar, the
  two-Hermitian-involution argument uses the odd dimension three. Because
  the identity lies in the ORIGINAL span, an eigenline survives the left
  multiplication.
- The residual operator span has dimension exactly 3 by the projector-span
  identity. The projective-line-plus-point argument and the tight-frame
  identity give an orthogonal plane and line, with exactly two copies on
  the line.
- Directional invariance is needed before the coordinate pairing is
  repeated. Tensor mode transformations in this proof do not authorize
  reframing the six edges of a quartet independently.
- The three order-three Fourier phases are kept. P is not assumed to be a
  permutation tensor. Zero entries of P or Q are excluded explicitly before
  dividing by their moduli.
- The sign argument uses all slice directions. Its sign pattern is unique
  up to overall sign, so the coordinate ratios are compatible jointly, not
  just pairwise.

**Certified computation:** [TriangleNullities.py](TriangleNullities.py)
checks the free unitary Gram identities and the whole sign-constraint linear
space over F2: 162 equations in 84 sign variables, rank 74. Its 27-coordinate
sign projection has dimension 9 and equals the coordinate-times-cyclic-sign
space. This is a finite check of a proof step, not an enumeration of
physical product parameters. The verifier also checks exact physical triangle
counts 0, 2 and 6 in all three tensor directions, and the abstract
nullity-one control of the proof's Appendix A. It is not a formal
proof-assistant verification of the whole analytic proof.

## 4. Consequences

### 4.1 The exceptional six-matching triangle is locally isolated

**Theorem (local, not a new quartet exclusion):** put zeta=exp(i*pi/12)
and, with indices 0,...,5, define phase matrices

    H_kj=zeta^(4kj), B_kj=zeta^(2k^2+4kj),
    X_ij=zeta^(3-2(j-i)^2).

They are physical and H*B=sqrt(6)X. The physical triangle {I,H/sqrt(6),
B/sqrt(6)} is isolated modulo continuous basis gauges and finite monomial
relabellings, so no nontrivial local deformation of it gives a new
triangle. Its six DISCRETE phase matchings do not imply positive-dimensional
triangle moduli.

The proof does not restrict the unknowns to the Fourier family. Vary EVERY
entry phase of H outside its first row and column (25 variables) and of B
outside its first row (30 variables). These 55 angles are a complete local
gauge-fixed parametrization of two arbitrary flat matrices. The equations
are the real and imaginary parts of all 15 off-diagonal column Gram entries
of each matrix, followed by all 36 equations

    |(H*B)_ij|^2-6=0.

That makes 96 real equations. Diagonal Gram equations hold automatically, and
the remaining Gram equations give complete orthogonal bases. The Jacobian
has an explicit 55-by-55 minor with residue 31 modulo 97.

**Certified computation:** the verifier constructs this Jacobian in the
reduction of Q(i,sqrt(2),sqrt(3)) induced by zeta->43 in F_97. It checks the
primitive-element equation and every denominator in the reduction. The
physical matrices are checked separately in the characteristic-zero field.
Every derivative column is also rebuilt from dual-number products of the
original 96 equations. This is a lifted nonzero minor, not an inference from
a numerical or unlifted modular rank.

Hence the 55 selected equations have an invertible real Jacobian at the
physical point. By the inverse function theorem their nearby common zero is
unique, and the solution set of all 96 equations is a subset of it. The
gauge fixing is valid locally because every entry is nonzero. No product
guard or preferred sheet was imposed on these unrestricted perturbations.

This rules out one proposed counterexample-deformation route. It neither
classifies all six-matching triangles nor excludes a new quartet-domain
carrier; this particular triangle already has zero3 edges.

### 4.2 The MUB-triplet moduli space is disconnected

**Theorem (topological consequence):** the space of physical order-six
MUB triplets modulo global unitary transformations, basis-vector phases and
permutations is disconnected. The isolated class of 4.1 is one component.

There is another class. Take the H_X matrix

    H = [ 1, 1,     1,  1,        1,       1;
          1, a,     b,  a/c,      a/d,     ad/(bc);
          1, c,     d,  a,        bc/d,    a/b;
          1, a/b,  -1,  a/d,     -a/d,    -a/b;
          1, d,    -d,  ad/(bc), -1,      -ad/(bc);
          1, bc/d, -b,  b,       -bc/d,   -1 ]

at the exact parameters

    a=i, b=(3-4i)/5, c=(-57-176i)/185,
    d=(2-12i+(6+i)sqrt(33))/37.

The verifier checks over Q(i,sqrt(33)) that H is a physical phase Hadamard
and that all 400 of its ordinary three-minors are nonzero. It also checks
independently that H has a full mate, by the following construction. For
each of the three roots q of q^3=ac put

    u(q)=(1,a/q,q), v(q)=(1,d/q,bq/a),
    A_j=sum_i u_i/H[i,j],
    B_j=sum_i v_i/H[i+3,j],   i=0,1,2.

All entries are phases. Exact reduction modulo q^3-ac checks

    |A_j|^2+|B_j|^2=6,
    X_j conjugate(X_k)=X_k conjugate(X_j), X_j=A_j conjugate(B_j).

For each q choose z with z^2=-X_j/conjugate(X_j) at any nonzero pivot.
Both square roots have modulus one. If all pivots vanish, choose any unit z.
These identities imply |A_j+z B_j|^2=6 simultaneously for all j.
The six columns (u(q), plus-or-minus z v(q)) are mutually orthogonal, since
their exact overlap factors as

    (1+z'/z)(1+q'/q+q/q').

Distinct q roots kill the second factor, and opposite signs at one root kill
the first. So this is a complete physical mate, and
{I, H/sqrt(6), mate/sqrt(6)} is a physical triple with an edge that has all
400 three-minors nonzero. The verifier checks all six modulus identities,
all 15 cross-pivot identities and the overlap factorization, keeping the
all-zero-pivot case.

Each edge of the isolated triple is diagonally equivalent to F6 and has a
zero3. The verifier checks an explicit common minor selection on all three
edges. So the two triples cannot be equivalent, even after permuting the
three bases or taking adjoints of transitions. Monomial gauges, relabellings
and adjoints preserve the existence of a vanishing 3-by-3 minor.

The quotient is Hausdorff, since it is a compact-group quotient of the
compact physical configuration space. The isolated singleton is therefore
both open and closed, and its complement is nonempty. This proves
disconnectedness. It is not a census of the remaining components. In
particular, a property transported from the standard triple along continuous
physical deformations cannot reach all triples. This concerns TRIPLE moduli;
it does not exclude a new possible quartet.

### 4.3 Remaining global cases

**Theorem:** a compatible triangle has r=1, 2 or 6. The six unordered pairs
of incident triangle types, with their fixed-input candidate counts, are:

| Kernel dimensions | Candidate matching pairs |
|---|---:|
| (1,1) | 1 |
| (1,2) | 2 |
| (2,2) | 4 |
| (1,6) | 6 |
| (2,6) | 12 |
| (6,6) | 36 |

The counts are of normalized matchings, not of inequivalent quartets. Each
candidate must still pass the SAME sixth-edge flatness equations.
Interchanging the two incident triangles transposes and conjugates that edge.
It does not allow independent phase choices on other edges.

The r=1 branch has the conditional rank-five adjugate formula of Section 6.
At r=2 the kernel projector is

    Pi=(K^4-e1 K^3+e2 K^2-e3 K+e4 I)/e4,  e4>0.

On its two-dimensional range, some G_k separates the two joint characters,
and a quadratic characteristic equation then splits the two lines. If a
selected G_k has a repeated eigenvalue there, use another index instead of
deleting the point. At r=6 the G_k commute on the whole space and all six
lines remain. Commutativity is not a quartet exclusion.

**Open:** whether r=1 is realizable by a physical Hadamard triangle. The
six orthogonal permutation unitaries of the proof's Appendix A have exactly
one common line, but their slices are NOT flat. They refute an abstract
operator-only exclusion, not the physical nullity-one conjecture.

## 5. What remains open here

Excluding the sixth-edge residual on every retained type and physical
coefficient locus is open. Nullities 3, 4 and 5 are settled globally. The
nonzero kernel cases have NOT been inventoried, and the worst-case
fixed-input count is still 36. No theorem says that a quartet must contain
a nullity-three triangle.

## 6. The exact quartet operator L

**Theorem:** fix FIVE aligned representatives: A on edge 01, B on 02, C on
03, X on 12 and Y on 13. Construct G and K_G from (A,B;X), and J and K_J
from (A,C;Y), as in Sections 2-3. Here the J_k are unitaries.

    M_ij=sum_k conj(B_ki) C_kj (G_k tensor J_k*),
    S_ij=M_ij* M_ij-(1/6)I_36,
    L=K_G tensor I_6+I_6 tensor K_J+sum_ij S_ij^2.                 (1)

Then L is PSD, and

    ker L != 0  iff  a compatible physical quartet exists
                    for these fixed representatives and alignments.           (2)

The first two terms restrict any kernel vector to N=ker K_G tensor ker K_J.
This is a REDUCING subspace for all M_ij. On its product common-eigenbasis,
L has eigenvalues

    E_(alpha,beta)=sum_ij (|W_(alpha,beta),ij|^2-1/6)^2,
    W_(alpha,beta)=B* diag(conj(eta^alpha) theta^beta) C.           (3)

The compatible incident triangle types are only 1, 2 and 6. If both are
noncommuting (types 1 or 2), there are at most FOUR candidate phase pairs.
If either has type 6, all its six matchings are kept, and the worst case
remains 36. So dim ker L counts successful ORDERED phase pairs (at most 36),
not inequivalent quartets. Shared phases on the sixth edge are already
enforced. There is no hidden separability relaxation: the reducing-space
argument proves that a kernel exists iff some product eigenvector succeeds.

**Theorem:** if B=C and X=Y with identical alignments, no pair succeeds.
Distinct matching vectors are orthogonal, which makes the diagonal of W
zero; identical matchings give W=I. The residual is at least 1/5. Repeated
standard equivalence classes with different alignments are not covered by
this result.

**Theorem (conditional rank-five formula):** if both K matrices have rank
five, their adjugates A_G, A_J are nonzero PSD rank-one matrices, and the
only residual is

    E = sum_ij tr[(A_G tensor A_J) S_ij^2]
        / [tr(A_G)tr(A_J)].                                     (4)

The denominator is positive on THAT stratum. At lower ranks the adjugates
vanish; use the whole reducing space N, not formula (4).

**Open:** strict positivity of (1) for every physical order-six quintuple
and alignment. L is not a four-seed test and not an automatic quartet
exclusion. Its construction works in every dimension (with 6 replaced by d).
The order-six nullity gap removes some global triangle strata, but a
sixth-edge obstruction on the remaining types still has to be supplied.

**Certified computation (controls only):** the verifier builds L exactly in
two cases. For d=3, the actual quartet I, F, DF, D^2F (D=diag(1,w,w)) has
triangle counts 3 and 3 and L=0, so all nine ordered pairs succeed. For d=6,
with B=C and X=Y the isolated triangle of 4.1 (r=6), L=5 I_36, so no pair
succeeds. This is consistent with the 1/5 bound.

## 7. Verification

    python3 TriangleNullities.py

runs in about 4 s and exits nonzero on any failed assertion. It checks, in
exact arithmetic: the F2 sign-rigidity space; the free-star Gram identities of
the four-unitary lemma; physical triangle counts 0, 2 and 6 in all three
tensor directions and exact unitarity of all 54 slices; the lifted 55-by-55
Jacobian minor for the isolated triangle; zero3 on its three edges; the
Appendix A abstract nullity-one control; the Q(i,sqrt(33)) edge with 400
nonzero minors and its full mate; and the two quartet-operator controls.
The written arguments supply the universal quantifiers.

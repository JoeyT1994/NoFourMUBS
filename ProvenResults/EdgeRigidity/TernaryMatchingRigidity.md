# Three-valued matching rigidity (positive cubic sign)

**Statement.** If two distinct matchings of a triangle have exactly three relative phase values in all three directions and the positive cubic sign, every transition is monomially equivalent to F2 tensor F3 (so it has an antipodal pair and a zero 3-minor), and the triangle has at least three distinct matchings. With [NegativeCubicMatchingExclusion.md](NegativeCubicMatchingExclusion.md) this covers the complete three-valued pattern; such a pattern cannot occur in a quartet.

**Status.** Analytic proof with exhaustive exact finite checks (54 boundary cases, mixed-central sector). Unconditional for triangles; quartet exclusion via the quartet corollary.

**Dependencies.** [MatchingConventions.md](MatchingConventions.md) (zero-sum lemma, replacing the archive "orthogonality of distinct matching characters"). Quartet use: [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md). **Not imported:** the archive nullity theorem (matching count in {0,1,2,6}), which the text uses only to upgrade "at least three matchings" to "six"; that upgrade is therefore not claimed here. "At least three" already excludes nullity two.

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/TERNARY_MATCHING_RIGIDITY.md`, `verify_ternary_rigidity.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# Three-valued matching rigidity

9 September 2026. This is a conditional global theorem, not a proof of
antipodal forcing for every triangle or an exclusion of the entire nullity2
or6 sector. Both cubic signs are now owned; they require different proofs.

**Theorem, complete three-valued pattern:** if two distinct aligned triangle
matchings have exactly three relative phase values in ALL THREE directions,
each actual transition is monomially equivalent to F2 tensor F3 and there
are six aligned matchings. Such a pattern cannot occur in a quartet or on
a nullity2 triangle. The proof below handles the positive cubic sign;
[NegativeCubicMatchingExclusion.md](NegativeCubicMatchingExclusion.md)
excludes the negative sign on the full physical domain.

## Statement

**Theorem.** Let E,P,Q be unitary operators on C6 such that

    E=PQ,       E^3=P^3=Q^3=I.

Each operator has eigenvalues1,omega,omega^2 with multiplicity2, where
omega=exp(2 pi i/3). Suppose there are three pairwise mutually unbiased
orthonormal bases which respectively diagonalize E,P,Q. Put

    C=P Q P^* Q^*.

Then

    [C,P]=[C,Q]=0,       C^2+C+I=0.                     (1)

Thus the generated group is a quotient of the order27 Heisenberg group.
Its six-dimensional representation is a sum of two three-dimensional
irreducibles, each with central character omega or omega^2. In particular,
the continuous nonzero-block-trace sector in the proof below is impossible.

**Theorem.** The two central characters MUST agree. Each of the three actual
transition Hadamards is monomially equivalent to F2 tensor F3. In particular,
each has an antipodal pair and an ordinary zero3. Thus the ENTIRE positive-sign,
three-valued matching pattern is excluded from a quartet, not just its
nonzero-block-trace or same-character portion.

**Theorem (matching count).** In the application to two fixed aligned
matchings below, this positive-sign pattern forces SIX matchings. It cannot
occur on a nullity2 triangle, even one not assumed to extend to a quartet.

**Open:** matching pairs with a direction having more than three values,
as well as triangles with only one matching. Whether a single ternary
direction forces the other two directions to be ternary remains Open;
that implication is neither established nor refuted by this theorem.
No matching is assumed to exist beyond the two in the application below.

## 1. Relation to the actual matching problem: retain the sign

Normalize one matching to X=A^*B and write the second as

    A^* diag(eta) B=diag(p) X diag(q).

Suppose ALL THREE relative vectors have exactly three distinct values.
Orthogonality of distinct matching characters gives zero sum in each
direction (proved directly in [MatchingConventions.md](MatchingConventions.md)). The possible positive multiplicity partitions are (2,2,2),
(1,2,3),(1,1,4). The latter two cannot give three distinct unit values:
the triangle inequality is respectively saturated or violated. Hence each
vector is a scalar times the cubic roots, each occurring twice.

Write eta=alpha eta0, p=beta p0, q=gamma q0 with all normalized entries
cubic roots. Define

    E0=diag(eta0), P0=A diag(p0) A^*, Q0=B diag(q0) B^*,
    E0=lambda P0 Q0, lambda=beta gamma/alpha.

All three determinants are1, so lambda^6=1. Consequently

    (P0 Q0)^3=epsilon I,       epsilon in {+1,-1}.        (2)

For epsilon=+1 use E=P0Q0 and P=P0,Q=Q0 in the theorem. E has the same
eigenbasis as E0. The negative sign in (2) cannot be removed by changing
the choices of cubic-root scalars. For that sign the translations used
below anticommute rather than commute. It is NOT covered by the positive-sign
proof below; the separate negative-sign theorem cited above excludes it.

## 2. The representation splits into two three-dimensional blocks

Put x=P Q^-1 and y=Q^-1 P. From P^3=Q^3=(PQ)^3=I,

    xy=PQP=Q^-1 P^-1 Q^-1=yx,
    Q y Q^-1=x,       Q x Q^-1=(xy)^-1.

The commuting unitaries x,y have a joint orthogonal spectral decomposition.
Conjugation by Q permutes their joint characters in orbits of size1 or3.
Since P=xQ, the algebra generated by P,Q is generated by x,y,Q. On a
size3 orbit, the orbit of any vector under Q spans an invariant space of
dimension3; Q^3=I ensures closure. On a fixed character, Q is diagonalizable
and gives invariant lines. Thus every irreducible summand has dimension1
or3. This is an elementary representation argument, not an assumed
classification of triangle coefficient loci.

A one-dimensional summand would give a common eigenvector of P and Q.
But their spectral projections of rank2 satisfy

    tr(Pi_r(P) Pi_s(Q))=4/6=2/3,

by unbiasedness of the specified refining bases. A common unit vector would
make this trace at least1. Hence there are no one-dimensional summands:
there are exactly two irreducible blocks of dimension3.

On each block, choose coordinates so that

    P=S,       Q=D S,       D=diag(d0,d1,d2),
    S e_j=e_(j+1),       d0 d1 d2=1.                     (3)

Indeed P cyclically permutes the same three joint characters; its phases
can be removed since P^3=I, and x=P Q^-1 is diagonal. Let the two triples
in (3) be d,e, and put t=sum d_i. Unbiasedness gives

    0=tr(P^*Q)=sum d_i+sum e_i,

so the second block trace is -t. This decomposition changes internal
operator coordinates only; the ACTUAL three eigenbases are retained as
arbitrary U(2) refinements of the multiplicity-two eigenspaces.

## 3. Nonzero t forces both blocks onto an explicitly finite boundary

Let F_jk=omega^(jk)/sqrt(3). For one block (3), eigenbases of P,Q,E with
the SAME eigenvalue ordering omega^(-j) are

    F,  diag(1,d1,1/d0) F,  diag(1,1/d2,d1) conjugate(F). (4)

For a pair of operators let their two3-by3 transition matrices be C1,C2.
Each actual2-by2 block of the full transition is

    R_r^* diag((C1)_rs,(C2)_rs) T_s,                    (5)

where R_r,T_s are the retained U(2) refinements. Coarse unbiasedness says

    |(C1)_rs|^2+|(C2)_rs|^2=2/3.                       (6)

For the P,Q edge, C1 is circulant. Its row is the Fourier transform of
(1,a,b), divided by3, with a=d1,b=1/d0. It is flat exactly when t=0,
by the three-term cyclic autocorrelation identity. Thus if t is nonzero,
EVERY row and column has a nonflat entry. The diagonal row norms in (5)
force each R_r to have all entries of modulus1/sqrt(2); column norms do the
same for each T_s. The same argument on the P,E edge forces every remaining
refinement to be equimodular: its cyclic ratios are a permutation of d^-1,
so it is also nonflat when t is nonzero.

No entry of C1 or C2 can be zero. A circulant unitary of order3 with a zero
entry is monomial: orthogonality would otherwise have exactly one nonzero
summand. A monomial entry of modulus1 contradicts (6). The reverse-circulant
edges in (4) differ only by a column permutation and have the same property.

Equimodular refinements in (5) imply that C2/C1 is real entrywise after
row and column phase changes. If a3-by3 unitary C1 has nonzero triangular
orthogonality area, this forces |C2|=|C1|. To see this, write C2_ij=r_ij C1_ij
with real nonzero r_ij after those phases. For any two rows the three
orthogonality summands of C1 span a real plane and have a unique real
dependence, the constant one. Hence r_ij r_kj is independent of j. Applying
this to all three row pairs makes |r_ij| constant along each row; its unit
row norm makes that constant1. With (6), both matrices would be flat,
contrary to t!=0.

The area must therefore be zero. Writing c_j=(1+a omega^j+b omega^(2j))/3,
the exact identity is

    c0^2 conjugate(c1 c2)-conjugate(c0)^2 c1 c2
       =-(d0-d1)(d1-d2)(d2-d0)/27.                     (7)

All row-pair areas agree up to sign. Thus two d_i coincide. The reality
relation makes the corresponding area for C2 vanish as well, so two e_i
coincide. These identities and all three row-pair checks are independently
verified over Q(omega)(a,b).

Write d as a permutation of (x,x,x^-2) and e as a permutation of
(y,y,y^-2), with |x|=|y|=1. Their opposite traces give

    2(x+y)+x^-2+y^-2=0.                                (8)

This has an exhaustive unit-circle solution. Write x+y=2r exp(i phi),
xy=exp(2i phi), choosing r>=0. Equation (8) becomes

    2r^2-1+2r exp(3i phi)=0.

r=0 is impossible; therefore exp(3i phi) is real. The only admissible root
is r=(sqrt(3)-1)/2 with exp(3i phi)=1. Consequently

    {x,y}=omega^k {x0,conjugate(x0)}, k=0,1,2,
    x0=(sqrt(3)-1+i sqrt(2 sqrt(3)))/2.                 (9)

There are54 ordered cases: three rotations, two assignments of x,y,
and three positions of the distinct entry in each block. No physical arc,
zero entry or denominator-zero case remains unassigned in this reduction.

## 4. The shared phase cycle excludes all54 boundary cases

An equimodular U(2) refinement, up to its irrelevant column phases, is

    R(phi)=2^(-1/2) [[1,1],[exp(i phi),-exp(i phi)]].

For a block (5), exact flatness requires

    exp(2i(phi_bs-phi_ar))=Z_ab(r,s),
    Z_ab(r,s)=-C1_ab(r,s) conjugate(C2_ab(r,s))
                  /[conjugate(C1_ab(r,s)) C2_ab(r,s)].  (10)

The three ACTUAL bases share their phases, so necessarily

    Z_PQ(r,s) Z_QE(s,u) / Z_PE(r,u)=1.                 (11)

**Certified computation:** for every ordered case (9), substitute (4)
directly in (10). The result is -1 in (11) for ALL27 choices of r,s,u.
The computation is in Q(i,sqrt(3),sqrt(2 sqrt(3))), with exact analytic
conjugation and no numerical rank or root decisions. It checks all54 cases,
1458 phase cycles, the nonzero denominators, the eigenbasis equations,
unitarity and (6). Each individual edge phase matrix has rank one; it is
precisely the SHARED cycle, not an independent edge test, that fails.

This contradiction excludes t!=0 globally under the theorem's hypotheses.

## 5. The surviving blocks and the same-character exclusion

When t=0 the three unit d_i of product1 are the three cubic roots. Their
cyclic order gives S D S^-1=omega^sigma D, sigma=1 or2. Thus on each block
PQ=omega^sigma QP, proving (1) on their direct sum.

If the two signs agree, a cyclic coordinate change, commuting with S,
makes the two D identical. All three coefficient transitions in (4) are
then identical between the two irreducible blocks and are order3 Hadamards.
Condition (5) reduces to pairwise unbiasedness of three groups of qubit
bases: for every r,s and distinct groups a,b,

    n_ar dot n_bs=0,

where n is the unit Bloch axis of the corresponding refinement. The three
real spans of these axes are mutually orthogonal nonzero subspaces of R3.
Each must have dimension1. Within each group its three qubit bases are
therefore the same up to vector phases and swaps. After those actual
within-eigenspace relabellings, each transition factors as an order3
Hadamard tensor an order2 Hadamard, proving the second theorem.

Opposite signs do NOT allow identifying the two coefficient transitions.
They are excluded by the separate shared-axis argument next, not by the
same-character tensor-factor argument.

## 6. Complete exclusion of mixed central characters

**Theorem.** No pairwise mutually unbiased refining bases exist for the
mixed central representation. Every U(2) refinement is retained, including
polar and equatorial Bloch axes.

### 6.1 Canonical twists and the full equations

Conjugation by a power of S changes a cubic-root D of one cyclic order to
any other ordering with that same central character, while fixing P=S.
Apply such changes separately inside the two invariant blocks, and if
necessary swap the blocks. This is ONE simultaneous coordinate change on
all three operators and bases. The mixed case is therefore represented by

    D+=(1,omega,omega^2),       D-=(1,omega^2,omega).

Use (4) for both blocks. Label the operators P,Q,E by a=0,1,2 respectively.
For each of their three multiplicity-two eigenspaces let

    n_ar=(Re xi_ar, Im xi_ar, z_ar),
    |xi_ar|^2+z_ar^2=1,

be the Bloch unit axis of its arbitrary refining qubit basis. Axis sign
changes only swap its two basis vectors; these are allowed actual basis
relabellings. If Z_ab(r,s)=C2_ab(r,s)/C1_ab(r,s), the COMPLETE fine
unbiasedness equations are

    z_ar z_bs+Re(conjugate(xi_ar) Z_ab(r,s) xi_bs)=0.    (12)

There are27 equations. All block coefficients have modulus1/sqrt(3),
so the usual qubit overlap identity proves equivalence to all four entries
of every block (5) having modulus1/sqrt(6).

Put zeta=exp(i pi/3). Direct calculation from (4) gives Z=zeta^M entrywise,
with the following exponent matrices modulo6:

    M_01=[[5,1,1],[1,5,1],[1,1,5]],
    M_02=[[3,1,1],[1,1,3],[1,3,1]],
    M_12=[[5,1,1],[1,1,5],[1,5,1]].                    (13)

Every Z is an order3 phase Hadamard and every entry has cube -1. Its
entrywise square is nonsingular. These are exact consequences of the
canonical operators, not a numerical normal form or extra chosen symmetry.
For reversed edges use Z_ba(s,r)=conjugate(Z_ab(r,s)).

### 6.2 Two neighbours force a constant cubic line

Fix one group a and suppress a from its axis variables. For every s in
either neighbouring group b, the three vectors

    (Re(conjugate(Z_ab(r,s)) xi_r),
     Im(conjugate(Z_ab(r,s)) xi_r), z_r),       r=0,1,2,

are orthogonal to the nonzero real vector n_bs. Their determinant is zero.
Set, with cyclic indices,

    X_r=z_r xi_(r+1) conjugate(xi_(r+2)).

The determinant is minus the imaginary part of

    sum_r X_r conjugate(Z_ab(r+1,s)) Z_ab(r+2,s).       (14)

For each neighbour, the three coefficient rows in (14) differ by the
three cubic roots, so their imaginary parts all vanish only when the
associated complex linear form is zero. In each of the three groups the
two neighbour forms are, in either order,

    X0+omega X1+omega^2 X2=0,
    X0+omega^2 X1+omega X2=0.

Consequently

    X0=X1=X2.                                         (15)

This uses BOTH neighbours and the actual twist matrices. A determinant
condition for one neighbour alone would not give (15).

### 6.3 All zero-component alternatives are impossible

If the common value in (15) is zero and no xi_r is zero, all three z_r
are zero: the group is equatorial. If xi_r=0, that axis is polar and its
z_r is nonzero; its equation X_r=0 forces another xi to be zero. Thus a
zero common value gives either an equatorial group or at least two poles.

In fact a pole ANYWHERE forces both other groups to be equatorial by (12).
Between two equatorial groups all transverse components are nonzero and

    Re(conjugate(xi_ar) Z_ab(r,s) xi_bs)=0

would imply that Z_ab squared entrywise has rank one: squaring the phases
of these nonzero purely imaginary entries separates into a row phase and
a column phase. This contradicts (13). Hence there is no pole anywhere.

Now if a whole group were equatorial, every transverse component in any
other group would be nonzero, since poles have been excluded. The same
squared-phase rank-one contradiction applies to that pair. Thus there
are no equatorial groups either. The common value in (15) is nonzero in
each group: ALL nine z and ALL nine xi are nonzero. No division was made
before these alternatives were owned.

### 6.4 The final phase-cycle contradiction

Taking absolute values in (15) gives

    |z0|/|xi0|=|z1|/|xi1|=|z2|/|xi2|.

Together with the unit-axis norms, all |z_r| in a group agree. Swap basis
vectors as needed to make these three z_r equal and positive. Such sign
changes preserve (12) and multiply all three X_r by the same sign, so (15)
is preserved. For each group there are therefore numbers 0<t_a<1,
rho_a=sqrt(1-t_a^2)>0 and phi_a such that

    z_ar=t_a,       xi_ar=rho_a exp(i phi_a) omega^(k_a r)
    for some k_a in {0,1,2}.                           (16)

Indeed (15) says that the three successive phase ratios coincide; their
product is one. This is a derived restriction, not an imposed linear
azimuth ansatz.

For any pair a,b, substitute (16) in (12). The order3 phase Hadamard

    V_rs=Z_ab(r,s) omega^(k_b s-k_a r)

has entries in -{1,omega,omega^2}. It must satisfy

    Re(exp(i(phi_b-phi_a)) V_rs)
       =-t_a t_b/(rho_a rho_b)<0                       (17)

at EVERY entry. V uses at least two distinct cubic phases, since it is
nonsingular. A rotation of two distinct cubic roots can have the same
negative real part only when their images are omega and omega^2; that real
part is -1/2. Three distinct roots cannot have a common real part. Since
V has NEGATIVE cubic phases, (17) therefore forces

    exp(3i(phi_b-phi_a))=-1                             (18)

for all three pairs01,12,02. But the first two phase differences add to
the third, whereas (-1)(-1)=+1, not -1. This is a contradiction. It excludes
the entire mixed-central sector and completes the positive-sign theorem.

**Certified computation:** verify_ternary_rigidity.py independently derives
all three twist tables from (4), checks their Hadamard identities and squared
determinants, and checks all18 rotated-axis determinant identities as
polynomials over Q(i,sqrt(3)). The three2-by3 coefficient maps have exactly
the constant kernel line. It exhausts the pole/equator/generic zero-status
alternatives and the two-phase sign alternatives used in (17). The written
real-axis proof supplies global exhaustivity; no optimizer result is used.

## Reconstruction and verification scope

The matching-count corollary follows without an alignment change. The mixed
case is impossible, so C=omega^sigma I. Therefore

    (P0 Q0)^2=C^-1 P0^2 Q0^2,
    E0^2=lambda^2 C^-1 P0^2 Q0^2.

This gives another physical matching with relative vector eta0 squared,
absorbing the displayed scalar into one outer phase vector. The vectors
1,eta0,eta0 squared are mutually orthogonal after normalization, since each
cubic root occurs twice. There are at least three distinct matchings for
the SAME representatives and alignments; the nullity gap
([TriangleNullities.md](../Triples/TriangleNullities.md)) makes their number six. No independent permutation of a shared edge is used.

The proof uses exact shared matching, full unbiasedness, and small-dimensional
spectral geometry. It uses no generic rank, ordinary-minor condition, preferred
product frame, or unproved structural-family exclusion. Thus it applies when
A and B are their ACTUAL guarded (archive) product reconstructions, with all matched
products, companions, root orders and relative permutations retained. In
those variables P=A diag(p0) A^*, Q=B diag(q0) B^*; equation (1) is a new
necessary polynomial operator identity on the stated cubic subcase. A change
of sheet is not used to impose a cubic matching or its positive sign.

The positive-sign argument is not the proof for the negative sign. Together
the two proofs own the complete three-valued pattern, not universal ternary
forcing or a new reconstruction theorem. This does not
complete the campaign goal. The proof is analytic with an exhaustive exact
finite boundary check, not a proof-assistant formalization.

Replay: `python3 verify.py` in this folder (sub-check `ternary_matching_positive_sign`). The pinned output
records its identities, 54 ordered cases and mixed-sector checks.
The same-character Bloch-space argument and the general decomposition are the
written proof, not assertions inferred from a sampled physical triangle.

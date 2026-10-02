# No negative-sign cubic matching triangle

**Statement.** There are no unitaries P,Q on C^6 with P^3=Q^3=I, (PQ)^3=-I, whose eigenbases for P, Q, E0=-PQ (each eigenvalue 1, omega, omega^2 of multiplicity two) are three pairwise mutually unbiased bases.

**Status.** Analytic proof with exact checks (Pauli-channel identities, all twelve rank-one boundary points). Unconditional.

**Dependencies.** None. Used by [TernaryMatchingRigidity.md](TernaryMatchingRigidity.md).

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/NEGATIVE_CUBIC_MATCHING_EXCLUSION.md`, `verify_negative_cubic.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# No negative-sign cubic matching triangle

9 September 2026.

**Theorem.** There are no unitary operators P,Q on C6 such that

    P^3=Q^3=I,       (PQ)^3=-I,

and three pairwise mutually unbiased orthonormal bases diagonalize
P,Q,E0=-PQ respectively, each operator having eigenvalues1,omega,omega^2
with multiplicity2. Here omega=exp(2 pi i/3).

Combined with [the positive-sign theorem](TernaryMatchingRigidity.md),
this proves that two distinct triangle matchings whose relative vectors
have exactly three values in ALL THREE directions force Fourier edges
and (at least three; six by [TriangleNullities.md](../Triples/TriangleNullities.md)) aligned
matchings, with no cubic-sign assumption. This is not
universal ternary forcing or an exclusion of all nullity1/2/6 triangles.

## 1. Representation alternatives, including reducible points

Set x=P Q^-1 and y=Q^-1 P. The negative cubic relation gives

    xy=-yx,       Q y Q^-1=x,       Q x Q^-1=-(xy)^-1.

The commuting central operators u=-x^2,v=-y^2 satisfy

    Q v Q^-1=u,       Q u Q^-1=(uv)^-1.

Their joint characters have orbits of size1 or3. On each central fibre,
two invertible anticommuting unitaries generate a2-by2 matrix algebra:
after scaling their fixed squares they are two anticommuting Hermitian
involutions. Choosing the plus/minus eigenspaces of one, the other identifies
them; the representation is the standard Pauli pair tensored with a
multiplicity space.

On a size3 orbit, Q carries a minimal2D module through three fibres and
Q^3=I closes it. Hence an irreducible summand has dimension6. On a fixed
character, Q normalizes M2 and acts as a fixed inner implementer tensored
with a unitary on the multiplicity space. Diagonalizing that latter unitary
gives irreducible summands of dimension2. Since P=xQ, these are the
irreducible dimensions for the complete pair P,Q. In C6 the only possibilities
are one6D summand or three2D summands. None are discarded as exceptional.

### The irreducible6D case

P cyclically permutes the three2D central fibres. Use P^3=I to identify them
so that P=S tensor I2, with S e_j=e_(j+1). Then

    Q=diag(D0,D1,D2) P.

The relation y=P^-1 x P, together with xy=-yx, makes the three2-by2
unitaries D0,D1,D2 pairwise anticommuting. Each has trace zero, hence is a
phase times a Hermitian Pauli involution. Their Bloch axes are orthogonal.
A common unitary change of the2D fibre puts the first two in the form

    D0=a sigma_x, D1=b sigma_z,
    D2=D0^-1 D1^-1,       |a|=|b|=1.                  (1)

The last equality follows from Q^3=I, namely D0 D2 D1=I. This retains both
continuous phases and all possible orientations (absorbed in a,b).

### The three2D summands

None of P,Q,E0 can be scalar on an irreducible2D summand: that would make
P,Q commute and contradict xy=-yx. Each therefore has two different cubic
eigenvalues. Write u,v,w for its respective missing-root exponents. Their
determinants and E0=-PQ give w=u+v modulo3.

For fixed u,v the representation is unique up to unitary conjugation.
Indeed multiply P,Q by omega^-u,omega^-v. They become SU(2) matrices with
trace -1, and the similarly normalized E0 has trace -1. Write them as

    P'=-I/2+i sqrt(3) n.sigma/2,
    Q'=-I/2+i sqrt(3) m.sigma/2.

The equation tr(P'Q')=1 forces n.m=-1/3. Two unit-vector pairs with this
same inner product are related by a proper rotation, implemented in SU(2).
Thus the summands are indexed by u,v in Z3, with missing E0 root u+v.

The required multiplicities on C6 make the three u distinct, the three v
distinct and the three u+v distinct. The only permutations v=pi(u) with
this property are pi(u)=u+c. This is also checked by all six permutations.
After aligning the equivalent normalized2D pairs, the complete operators are

    P=diag(1,omega,omega^2) tensor P',
    Q=omega^c diag(1,omega,omega^2) tensor Q'.

A Fourier change on the multiplicity factor makes its diagonal matrix a
cyclic shift. The block gauge with blocks (P')^r then makes P=S tensor I2.
Again Q has three blocks D_r, and xy=-yx makes them pairwise anticommuting.
The same Pauli argument gives (1). Thus (1) covers the REDUCIBLE case too,
not just a generic irreducible representation.

All coordinate changes in this section act on the entire operator/basis
configuration. The actual refining bases have not been identified or fixed.

## 2. Retain every U(2) eigenbasis refinement

Let F_jk=omega^(jk)/sqrt(3). Spectral frames for P,Q,E0 are obtained from
F tensor I2, F tensor I2, conjugate(F) tensor I2 respectively by the left
block gauges

    V_P=(I,I,I),
    V_Q=(I,D1,D0^-1),
    V_E=(I,D0 D1,-D1).                                (2)

All use the same eigenvalue ordering omega^-r. The wrap equations follow
from anticommutation and D0 D2 D1=I. Every actual eigenbasis consists of
these frames followed by arbitrary U(2) changes in EACH of the three
eigenspaces. Denote their Bloch unit axes by n_Ar; all nine axes remain free.

For the P,Q edge the2-by2 blocks before refinement are C_k/3, k=s-r, where

    C_k=I+b omega^k sigma_z+a^-1 omega^(2k) sigma_x.     (3)

Put J=diag(1,-1,1) on real Bloch vectors. The traceless parts of C_k C_k^*
and C_k^* C_k have coefficient vectors v_k and J v_k respectively, with

    v_k=2 Re(omega^k h),       h=(a,-i/(ab),b).         (4)

These three vectors sum to zero. Their real span has rank1 or2, never0:
the Fourier coefficients h are nonzero. Equal row/column norms of every
refined block force n_Pr perpendicular to every v_k and n_Qs perpendicular
to every J v_k. This is only a NECESSARY row-norm condition; full entrywise
flatness remains below.

## 3. A positive sum excludes the entire rank-two case

If the span in (4) has rank2, all three P axes are the same unit normal n
up to signs, and all three Q axes are Jn up to signs. Swap basis vectors
to remove those signs. Set N=n.sigma and N_J=(Jn).sigma.

Full flatness of every2-by2 block requires

    tr(N C_k N_J C_k^*)=0,       k=0,1,2.              (5)

But a universal Pauli/Fourier identity gives

    sum_k C_k N_J C_k^*=3N,
    sum_k tr(N C_k N_J C_k^*)=6 ||n||^2=6.            (6)

For clarity, Fourier summation cancels cross terms and leaves
3(N_J+sigma_z N_J sigma_z+sigma_x N_J sigma_x)=3N.
Thus the row-norm conditions together with the FULL flatness conditions
contradict (6). This excludes every rank-two point, not sampled phases.

## 4. Exactly twelve rank-one points remain

The real and imaginary parts of h in (4) are proportional precisely when
its three unit entries agree in phase up to signs. Therefore

    b/a is in {+1,-1},       -i/(a^2 b) is in {+1,-1}.

Equivalently

    a^6=-1,       b=+a or -a.                          (7)

These are twelve points on the physical phase torus. The rank cannot drop
to zero, and phases never vanish. No denominator or row-norm boundary is
discarded. We next exclude EVERY U(2) refinement at these points, rather
than choose an arbitrary vector in the now two-dimensional axis plane.

## 5. Three axes cannot close inside a real plane

For an edge AB define unnormalized blocks directly from (2):

    C_AB(k)=sum_j omega^(kj) V_Aj^* V_Bj.

The index is k=s-r for PQ and k=-s-r for PE and QE. At every point (7)
there is exactly one frequency k_AB at which C_AB C_AB^*=3I. The other
two blocks have rank1 and nonzero traceless row/column Gram parts.
These force each axis of a given operator into ONE fixed real plane.
The planes from both its incident edges agree.

Let U_AB=C_AB(k_AB)/sqrt(3), a unitary2-by2 matrix. The full-rank block
conditions require the corresponding axes to be orthogonal after transport
by the Bloch rotation of U_AB. The rank-one blocks need not be solved:
their necessary plane conditions and these full-rank conditions already
contradict each other.

**Certified computation:** all twelve points in (7) satisfy:

1. k_PQ+k_QE=k_PE modulo3, so the three full-rank matching permutations
   form three CLOSED triangles of eigenspace indices, not longer cycles.
2. U_PQ and U_PE transport the Q and E axis planes to the P plane.
3. W=U_PQ U_QE U_PE^* acts as minus the identity on the P plane.

The third assertion is checked without arbitrary normalized axis choices:
W is unitary, has trace zero and commutes with a nonzero traceless Hermitian
normal N_P of that plane. Consequently W is proportional to N_P and its
conjugation negates every traceless Hermitian matrix perpendicular to N_P.

Choose one of the closed eigenspace triangles. Bring its three Bloch axes
to the P plane as u=n_P, v=Rot(U_PQ)n_Q, w=Rot(U_PE)n_E. They are nonzero
unit vectors in a real2D plane. The PQ and PE equations give u.v=u.w=0.
The QE equation gives v.Rot(W)w=0, hence v.w=0 by item3. Three nonzero
pairwise orthogonal vectors cannot lie in dimension2. This contradiction
excludes the entire remaining boundary, including every refinement angle.

## Verification and scope

**Certified computation:** negative_cubic.py (sub-check `ternary_matching_negative_sign` of
`python3 verify.py`) checks the universal
Pauli reflection/channel identities over Q(i,sqrt(3))(a,b), the Bloch
coefficient formulas, the SU(2) trace identity and all six missing-root
permutations. Over Q(i,sqrt(3)) it checks all twelve roots (7), spectral-frame
wrap equations, full-rank frequencies, all144 nonzero Gram-normal relations,
plane transport and cycle conjugation. No floating-point evidence is used.

The global representation exhaustion, real-rank dichotomy and plane-dimension
contradictions are the written proof, not conclusions inferred from the finite
check. A proposed determinant factorization was stopped once the positive sum
(6) replaced it; the exploratory optimizer is not a theorem dependency.

This proof uses general exact Hadamard matching and full unbiasedness. It
has no ordinary-minor, genericity, preferred-sheet or product-guard hypothesis.
Thus it applies to actual reconstructed matrices with their matched products,
companions, root orders and relative monomials retained. It does not assert
that a general triangle has a second matching or a three-valued one.

**Open:** the global antipodal forcing goal; physical matching count one;
and matching pairs for which at least one relative direction has four or
more distinct values. The complete-three-valued pattern now has an owner,
but no whole surviving matching-count stratum has been excluded.

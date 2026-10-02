# Triangle matchings: definition and the zero-sum lemma

**Statement.** For a triangle of normalized order-six Hadamards A, B, X=A*B, a
*matching* is a triple of unit-modulus vectors (eta,p,q) with

    A* diag(eta) B = diag(p) X diag(q).                        (M)

The all-one triple is the trivial matching. If (eta,p,q) is a matching and
any one of eta, p, q is constant, then all three are constant. If none is
constant, then

    sum_i eta_i = sum_i p_i = sum_i q_i = 0.                   (Z)

**Status.** Short analytic proof (added in this import; see below).
It replaces the archive citation "orthogonality of distinct matching
characters" (archive `03_algebraic/core/MATHEMATICS.md`, Section 2, and
`TRIANGLE_NULLITIES.md`, now imported as [TriangleNullities.md](../Triples/TriangleNullities.md)). Only (Z) is used by
[OneBinaryMatching.md](OneBinaryMatching.md) and
[TernaryMatchingRigidity.md](TernaryMatchingRigidity.md).

**Dependencies.** None.

**Provenance.** Definition as in archive `03_algebraic/core/MATHEMATICS.md`,
Section 2 (there written with eta_1=1 and the first matching absorbed into
X=A*B). The proof of (Z) is new and elementary.

## Conventions

A, B, X are unitary and every entry of X and B has modulus 1/sqrt(6).
In a quartet with bases I, B_1, B_2, B_3, each triangle of three bases gives
such a triangle, e.g. A=B_1, B=B_2, X=B_1*B_2, after removing a fixed
representative phase from X. Matchings of one triangle are compared for these
fixed representatives. The scalar freedom (eta,p,q)->(c eta, c' p, c/c' q)
does not affect (Z) or the constancy of any vector. A second matching is
*distinct* from the trivial one exactly when eta is not constant.

## Proof

For unitary U,V with Y=U*V flat (|Y_ij|^2=1/6), and unit vectors x,y,z with
U* diag(x) V = diag(y) Y diag(z), taking the Frobenius inner product with Y gives

    tr(Y* U* diag(x) V) = tr(V* U U* diag(x) V) = sum x,
    tr(Y* diag(y) Y diag(z)) = sum_ij |Y_ij|^2 y_i z_j = (sum y)(sum z)/6.

Hence sum x = (sum y)(sum z)/6.                                (T)

Apply (T) three times.

1. To (M) itself: sum eta = (sum p)(sum q)/6.
2. Multiply (M) on the left by A: diag(eta) B = A diag(p) A* B diag(q), so
   A diag(p) X = diag(eta) B diag(conj q), with U=A*, V=X, U*V=B flat.
   (T) gives sum p = (sum eta)(sum conj q)/6.
3. Apply step 2 to the adjoint of (M), B* diag(conj eta) A = diag(conj q) X* diag(conj p),
   which has the same form with (A,B,X,eta,p,q) replaced by (B,A,X*,conj eta,conj q,conj p).
   This gives sum conj q = (sum conj eta)(sum p)/6.

With a=|sum eta|, b=|sum p|, c=|sum q| in [0,6] we get a=bc/6, b=ac/6, c=ab/6.
A unit vector is constant exactly when the modulus of its sum is 6.

*Constancy.* If p=c0 is constant, (M) gives diag(eta)=c0 B diag(q) B*. The
diagonal of B diag(q) B* is the constant mean(q), because |B_ij|^2=1/6; so eta
is constant and B diag(q) B* is scalar, which forces q constant. If q is
constant the same argument with A diag(p) A* applies. If eta=e0 is constant,
X_ij = conj(e0) p_i X_ij q_j with X_ij nonzero gives p_i q_j = e0 for all i,j,
so p and q are constant.

*Zero sums.* Now assume no vector is constant, so a,b,c<6. If a>0 then b,c>0
by a=bc/6, and ab=(bc/6)(ac/6) gives c^2=36, a contradiction. So a=0, and then
b=ac/6=0 and c=ab/6=0. This proves (Z).

The exact H_X control triangle ([HXNonbinaryCounterexample.md](HXNonbinaryCounterexample.md))
has a nontrivial matching with eta, p binary and q nonbinary; its verifier
checks sum eta = sum p = sum q = 0 exactly.

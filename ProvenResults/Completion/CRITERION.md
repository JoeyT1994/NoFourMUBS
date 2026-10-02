# Global completion criterion and the two remaining branches

This combines the original Bloch criterion with the verified global theorem
in [result B](PROOF.md). No seed coordinates or
strictness guard are needed.

## Physical hypotheses and definitions

Let I,U be mutually unbiased orthonormal bases of C^6. Let the columns of
V=(k_1,...,k_4) be orthonormal and unbiased to both bases, and put

    Pi = I_6 − V V†.

Pi is a rank-two projector. Let P_0,...,P_11 be the twelve reference basis
projectors. Then Tr(P_a Pi)=1/3. For a unit anchor w with
|k_j†w|²=1/6, also set P_12=ww†; its compression has the same trace.
Actual 4+1 imposes the additional flatness of w in BOTH I and U.

Define, using the indicated first twelve or thirteen indices,

    G[a,b] = 18 Tr(P_a Pi P_b Pi) − 1.

These are real positive semidefinite Gram matrices of unit vectors in R^3.
Write G12 and G13 for them, and e_j(G) for the sum of principal j×j minors.

## Exact statements

1. **Globally, rank(G12) is either 2 or 3.** Rank zero or one is impossible.
2. **Flat completion exists iff rank(G12)=2**, equivalently e3(G12)=0.
   When it exists, the unordered pair is unique up to column phases.
3. **A balanced flat completion exists iff rank(G13)=2**, equivalently
   e3(G13)=0. Balance means w is unbiased to both missing rays.
4. On the completion branch, the missing probabilities are 1/6±beta, with

       beta² = e3(G13)/(36 e2(G12)),   e2(G12)>0.

   For an actual 4+1 anchor the full three-basis squared probability error is
   E_full=2 beta². This identity supplies no upper bound beyond |beta|<=1/6.

In particular e3(G12)>0 is exactly the no-completion branch. No result here
forces e3(G12)=0 or e3(G13)=0 from the full 4+1 equations.

## Why the criterion holds

For any isometry C onto ran(Pi), each compressed rank-one projector is

    C† P_a C = (I_2+n_a·sigma)/6,   |n_a|=1.

The trace identity gives G[a,b]=n_a·n_b. An orthonormal pair in the complement
has projectors C(I_2±r·sigma)C†/2 for a unit vector r. Its probabilities are
(1±n_a·r)/6. Flatness is therefore exactly orthogonality of r to all twelve
n_a, and balance adds orthogonality to n_w.

For rank two the normal axis is unique up to sign, which exchanges the
completion pair. If F=sum_(a<12) n_a n_a^T is the plane frame operator and
n_w has normal coordinate z, then det(F+n_w n_w^T)=e2(G12) z². Since z=6beta,
this gives the imbalance formula.

## Why rank one is impossible (B's global theorem)

Rank one would make every n_a one of two antipodal vectors. In a suitable
complement basis, the two columns f,g would then have disjoint three-element
supports, each nonzero coordinate having modulus 1/sqrt(3), in BOTH reference
bases. Independent row and column monomial gauges arrange

    f=U†f=(1,1,1,0,0,0)/sqrt(3),
    g=U†g=(0,0,0,1,1,1)/sqrt(3).

Thus a 3×3 off-diagonal block B of sqrt(6)U has unit entries and zero row and
column sums. Any zero-sum unit triple is a phase times (1,omega,omega²) or
its conjugate. Zero column sums prohibit a mixture of these two row types
among three rows: one type would occur only once. Hence B has rank one and
operator norm 3. A submatrix of sqrt(6)U has norm at most sqrt(6), a
contradiction. Rank zero is excluded by the unit diagonal of G12.

This is an analytic proof, not an inference from sampled Gram matrices.


## Scope and verification

These are global completion and imbalance statements. They do not force
completion or balance from an arbitrary 4+1 configuration. In a complete
set of MUBs the actual remaining basis vectors already supply completion
and balance; the criterion can then be imposed as a necessary identity.

[PROOF.md](PROOF.md) proves the universal rank theorem and preserves exact
counterexamples to weakened hypotheses. The retained verify.py checks the
support algebra, imbalance identity and those counterexamples. The
analytic proof establishes the universal quantifiers.

# A support obstruction and unconditional four-ray completion uniqueness

**Status: PROVED.** The argument is elementary and uniform over every order-six
complex Hadamard, including all Fourier parameters and every singular-minor
boundary. No atlas, finiteness of the common-ray set, reconstruction chart,
genericity condition, or assumption that a completion exists is used.

This note recovers the conclusion described as the older "Result B" in the
project history. Its significance for the current P return is that it removes
the finite-ray hypothesis from the proposed four-ray completion reduction.
No priority claim is made.

## 1. A flat three-supported vector cannot have a flat three-supported transform

Let H be a raw phase Hadamard of order six, so every entry has modulus one and
HH*=6I. Write C=H/sqrt(6).

**Theorem A1.** Suppose x has exactly three nonzero entries, all of modulus one.
If C*x has at most three nonzero entries, then it has exactly two nonzero
entries, each of modulus sqrt(3/2). In particular, C*x cannot have exactly
three nonzero entries all of modulus one.

Here C*x denotes the adjoint transform C^* x; the asterisk is an adjoint,
not multiplication. The same statement holds with C in place of C^*, by
applying the theorem to H^*.

### Proof

Permute the three supported coordinates into the first three positions and
multiply the corresponding rows of H by the conjugates of the entries of x.
This reduces x to (1,1,1,0,0,0)^T and preserves the transformed vector.
Choose any three zero coordinates of H^*x, permute their columns into the
last three positions, and write the first three rows of H as [A B]. Then

    1^* B = 0,               AA*+BB*=6I_3.                 (1)

Let omega be a primitive cube root of unity and set

    e=(1,1,1)^T,  u=(1,omega,omega^2)^T,
    v=(1,omega^2,omega)^T.

The three vectors e,u,v are pairwise orthogonal and have squared norm three.
Three unit complex numbers sum to zero if and only if, after multiplying all
three by a common phase, they are (1,omega,omega^2) in some order. Therefore
each column of B is a phase multiple of u or v.

If m of its three columns use u, then

    BB* = m uu*+(3-m)vv*.

The submatrix bound BB*<=6I, which follows directly from (1), gives

    3m<=6,              3(3-m)<=6.

Thus m=1 or m=2. The apparent rank-one cases m=0 and m=3 are impossible:
they would give an eigenvalue nine. Exchange u,v if needed and take m=2.
Equation (1) now shows that AA* has eigenvalues

    6 along e,          0 along u,          3 along v.    (2)

In particular A*u=0. For each column a of A, the three unit entries of
diag(conjugate(u))a sum to zero. The same three-number lemma gives

    a is a phase multiple of diag(u)u=v
    or a phase multiple of diag(u)v=e.

If n columns use e, the eigenvalue of AA* along e is 3n. By (2), n=2.
The remaining column is a phase multiple of v. Consequently A*e has two
entries of modulus three and one zero entry, while B*e=0. Hence H*x has
exactly two nonzero entries of modulus three. Dividing by sqrt(6) gives the
asserted sqrt(3/2). This also proves that the transform could not originally
have fewer than two nonzero entries. QED.

The three-number lemma itself follows without trigonometric branch choices:
after dividing by the first entry, write 1+a+b=0 with |a|=|b|=1.
The identity |1+a|^2=1 gives Re(a)=-1/2, so a is omega or omega^2 and b
is the other one.

## 2. The complement measurement vectors have rank at least two

Let f_1,...,f_4 be four orthonormal unit vectors unbiased to both the coordinate
basis and the columns of C. Let

    P = I - sum_(a=1)^4 f_a f_a^*.

Then P is a rank-two orthogonal projector and

    P_ii = 1/3,             (C* P C)_jj = 1/3.            (3)

Choose an isometry V:C^2 -> C^6 with VV*=P. For the two reference bases define
the twelve positive rank-one two-by-two matrices

    A_i = V* |e_i><e_i| V,
    B_j = V* C |e_j><e_j| C* V.                           (4)

Every one has trace 1/3 by (3). In the Pauli convention they can therefore be
written uniquely as

    A_i=(I+n_i.sigma)/6,     B_j=(I+m_j.sigma)/6,
    n_i,m_j in R^3,          |n_i|=|m_j|=1.               (5)

The rank-one property gives the unit lengths. Completeness gives

    sum_i n_i = sum_j m_j = 0.

**Theorem A2.** The real span of these twelve Bloch vectors has dimension two
or three.

### Proof

Dimension zero is impossible because all twelve vectors have length one.
If the span had dimension one, choose its unit direction n. Then every n_i
and every m_j is either n or -n. The two zero-sum identities force exactly
three copies of each sign in each reference basis.

Let xi be a unit +1 eigenvector of n.sigma, and set f=V xi. Equations (4)-(5)
show that f has three coordinates of modulus 1/sqrt(3), with the other three
zero. The same equations for B_j show that C*f has exactly the same support
and modulus pattern. Thus x=sqrt(3)f contradicts Theorem A1. The span cannot
have dimension one. QED.

This proves the nonvanishing/rank statement before assuming there is any
fifth common ray in the complement.

## 3. Exactly zero or one unordered completing pair

A unit ray in the two-dimensional range of P corresponds to a unit Bloch
vector s in R^3. Its twelve probabilities are

    (1+n_i.s)/6,          (1+m_j.s)/6.

It is common unbiased exactly when s is orthogonal to all twelve vectors.
By Theorem A2 there are only two possibilities:

* If their span has dimension three, there are no common rays in range(P).
* If their span has dimension two, its orthogonal complement is a real line.
  The unit sphere meets it in exactly two antipodal points. These give two
  orthogonal common rays and one unordered completing pair.

**Corollary A3.** Any four orthonormal common unbiased rays for any order-six
Hadamard have either no completion or exactly one unordered completing pair.
Every fifth orthogonal common ray forces that unique sixth ray. Distinct
companion bases over a fixed pair can share at most three rays.

This holds whether or not the full common-ray set is finite. If it is finite
with N distinct physical rays, the counting bound is consequently

    number of unordered companion bases <= floor(binomial(N,4)/15),

since each basis supplies exactly fifteen four-subsets and no four-subset
can belong to two different bases.

## 4. Replay and limits

`verify_support_obstruction.py` checks the exact finite Fourier-line arithmetic:
the Gram identities, the allowed 2+1 multiplicities, the complementary 2+1
counts, and the predicted support amplitudes for every phase-line assignment.
It also checks that any three of the four sign directions used in the
separate clock-pair argument are independent. There is no floating-point
comparison in this verifier.

The proofs of the three-number lemma, positivity of AA*, Bloch parametrization,
and the logical reduction to (5) are written mathematical arguments, not claims
of formal proof-assistant verification.

**NOT ESTABLISHED:** global finiteness of all Fourier common-ray fibres; a
classification of every six-clique; A, C, F or F-prime from the handoff.

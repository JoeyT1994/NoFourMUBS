# Completion rigidity for strict three-ray rectangles

> Imported 26 September 2026 from the archived
> `04_algebraiccoreV2/completion_substitution/supplied/COMPLETION_PROOF.md`
> (16 September 2026), Sections 1–6 and 8, unchanged. Section 7 is omitted: it
> covers the archived V2 coordinates. Section 9 is replaced by
> [verify.py](verify.py). The closing remark is §1 of the reviewing note
> `completion_substitution/PROOF.md`. Theorems 1–3 are proved there.
> No four-MUB contradiction is claimed.

## 1. Conventions and the precise result

Let H be a phase Hadamard, H†H = 6I₆. Set U = H/√6. Let A be a phase
6-by-3 matrix with A†A = 6I₃, and write

    X = A/√6,       B = H†A/√6 = H†X.

The {5,5,3} compatibility equations are that B is also entrywise unimodular.
Equivalently, X consists of three orthonormal rays unbiased to I₆ and U.
All variables are physical: † is conjugate transpose, not an independent
formal reciprocal assignment.

We impose on A the explicit strict rectangle condition

    0 < |det A[S,:]|² < 27          for every three-set S ⊂ {1,…,6}.   (1)

The lower bound is the no-zero-three-minor condition. The upper bound
excludes a three-by-three Hadamard block: each row of a three-by-three
phase matrix has norm √3, so the determinant bound is 27, with equality
exactly when its rows are orthogonal.

**Theorem 1 — rigidity of the missing rays.** Under (1), there is at most
one unordered orthonormal basis Y of X⊥ that is flat in the standard basis,
up to phases of its columns. This assertion is independent of H.

**Theorem 2 — exact extension criterion.** From H and A one can compute a
nonnegative, chartwise rational scalar E_ext(H,A), without introducing Y,
such that

    E_ext(H,A) = 0
       ⇔ there exists Y satisfying all of
          Y†Y = I₃, X†Y = 0, |Y_ij|² = 1/6, |(H†Y)_ij|² = 1.       (2)

When Y exists, its unordered rays are unique. The scalar is given explicitly
in Section 6. `exact_field.completion` implements its first steps in exact
arithmetic.

**Theorem 3 — direct rank obstruction.** A 12-by-12 positive semidefinite
Gram matrix, given in Section 8, has rank at most six whenever (2) holds.
Its rank-seven and rank-eight branches therefore cannot extend to a full
third unbiased basis.

None of these statements asserts that E_ext is positive on every retained
compatible seed tuple. In particular, they do not yet eliminate the
fourth-basis equations in the source bundle.

## 2. A standalone rank-five lemma

Put

    P = XX†,       Q = I₆ − P.

These are complementary rank-three orthogonal projections, with

    P_ii = Q_ii = 1/2.                                             (3)

For i = 1,…,6, define supported traceless Hermitian operators

    F_i(P) = P e_i e_i† P − P/6.

Their sum is zero, so their real span has dimension at most five.
We prove that its dimension is exactly five under (1).

Suppose instead that the dimension is at most four. Since the constant
vector lies in the kernel of w ↦ Σ_i w_i F_i(P), there is a nonzero real
kernel vector w with Σ_i w_i = 0. With D = diag(w), this gives

    PDP = 0.                                                      (4)

By (3),

    tr(PD²) = (1/2) tr(D²).

On the other hand, (4) implies

    tr(PD²) = ||PDQ||²_HS.

The orthogonal block decomposition of the Hermitian matrix D gives

    tr(D²) = ||PDP||²_HS + ||QDQ||²_HS + 2||PDQ||²_HS.

Consequently QDQ = 0 as well. The Hermitian involution S = 2P − I₆ then
anticommutes with D:

    SD + DS = 0,          (w_i + w_j) S_ij = 0.                     (5)

Also S_ii = 0 and S² = I₆.

Partition the coordinates by each nonzero value of |w_i|, and put all zero
w_i in one further group. Equation (5) makes S block diagonal across these
groups. On a nonzero level a, it has the form

    [[0, V], [V†, 0]],

where the two parts correspond to w_i = a and w_i = −a. Invertibility of
this block implies that the two parts have equal size. On a zero level,
the block is a Hermitian involution with zero trace and hence has equally
many +1 and −1 eigenvalues. Thus every nonempty group has even size 2m,
and the corresponding block of P has rank m.

A proper nonempty group would have size two or four. In the size-two case,
the two corresponding rows of X lie in a one-dimensional space, giving a
zero three-minor after adding any third row. In the size-four case, three
rows from the group already lie in a space of dimension at most two.
Both contradict (1).

Therefore there is just one group. Since w is nonzero, all six coordinates
have the same nonzero absolute value, with three positive and three
negative signs. On the three positive coordinates, (5) gives

    P[S,S] = I₃/2,       A[S,:] A[S,:]† = 3I₃.

The corresponding determinant has squared modulus 27, again contradicting
(1). This proves

    dim_R span{F_i(P)} = 5.                                       (6)

This proof uses only the stated rectangle hypotheses. In particular, it
does not assume that A occurs in an already completed Hadamard matrix.

## 3. The complementary zero-diagonal space has dimension three

Define F_i(Q) = Qe_i e_i†Q − Q/6. Direct calculation gives

    tr(F_i(P)F_j(P)) = |P_ij|² − 1/12,
    tr(F_i(Q)F_j(Q)) = |Q_ij|² − 1/12.

For i ≠ j, Q_ij = −P_ij; for i = j both diagonal entries are 1/2. The two
six-by-six Gram matrices are therefore identical. Equation (6) implies

    dim_R span{F_i(Q)} = 5.                                       (7)

Consider the real vector space

    W(A) = {T = T† : QTQ = T, diag(T) = 0}.                        (8)

Zero diagonal implies zero trace. The traceless Hermitian operators
supported on the three-dimensional range of Q have real dimension eight.
Within that space, the equations diag(T) = 0 are exactly orthogonality
to the five-dimensional span in (7). Hence

    dim_R W(A) = 3.                                              (9)

Equivalently, the ambient diagonal map on the full nine-dimensional space
of supported Hermitian operators has rank six. Its six representing
operators are F_i(Q) + Q/6; their span contains Q and the five independent
traceless directions of (7).

## 4. Flat completions are exactly commuting planes

Suppose Y is an orthonormal flat basis of range(Q). Its two-dimensional
space of traceless diagonal operators is

    D_Y = {Y diag(d₁,d₂,d₃)Y† : d_i ∈ R, d₁+d₂+d₃ = 0}.

Every member has zero ambient diagonal, because |Y_ij|² = 1/6. Thus D_Y
is a two-dimensional commuting subspace of W(A).

Conversely, let D be a two-dimensional commuting real subspace of W(A).
Its members are commuting Hermitian operators on range(Q), and can be
simultaneously diagonalized by an orthonormal basis Y of that range.
The traceless diagonal algebra on a three-dimensional space has dimension
two, so D is the entire traceless diagonal algebra in this basis.
For each column y_a of Y, the operator

    y_a y_a† − Q/3

therefore belongs to D. Its ambient diagonal is zero. Since Q_ii = 1/2,
this implies |(y_a)_i|² = 1/6. Thus Y is a flat completion.

We have established a bijection between unordered flat completion rays
and commuting two-planes in W(A).

## 5. Proof of uniqueness: two completions force a forbidden minor

Suppose W(A) contains two distinct commuting planes D and D′. Since W(A)
is three-dimensional, their intersection contains a nonzero Hermitian T.
If T has three distinct eigenvalues on range(Q), every operator commuting
with it is diagonal in its eigenbasis. Both two-planes then equal the
same full traceless diagonal algebra, a contradiction.

Thus T has eigenvalue multiplicities two and one. It cannot have three
equal eigenvalues, since it is nonzero and traceless. The completion bases
corresponding to D and D′ share the simple eigenray, and differ by a
nontrivial unitary mixing of the other two rays, say y₁ and y₂.
At least one ray of the second completion is

    z = α y₁ + β y₂,       |α|²+|β|² = 1,       αβ ≠ 0.

Flatness of y₁, y₂ and z gives, for all six coordinates,

    Re(α conjugate(β) r_i) = 0,        r_i = (y₁)_i/(y₂)_i ∈ T.

A nonzero real line equation through the origin meets the unit circle
in exactly two opposite points. Hence the r_i take two opposite values.
Orthogonality of y₁ and y₂ says Σ_i r_i = 0, so each value occurs exactly
three times.

On the three rows R where the quotient has one fixed value, the first two
columns of Y are proportional. Therefore det Y[R,:] = 0. But [X Y] is a
unitary six-by-six matrix, and its complementary-minor identity gives

    |det Y[R,:]| = |det X[Rᶜ,:]|.

This contradicts the lower bound in (1). There cannot be two distinct
commuting planes. Theorem 1 follows.

This proof explicitly covers the repeated-eigenvalue case. No generic
simple-spectrum assumption or chosen completion has been frozen.

## 6. Eliminate Y by three commutators

Choose any real basis T₁,T₂,T₃ of W(A). Define Hermitian operators

    K₁ = i[T₂,T₃],       K₂ = i[T₃,T₁],       K₃ = i[T₁,T₂],
    κ(c) = c₁K₁ + c₂K₂ + c₃K₃,              c ∈ R³.              (10)

For T(u) = Σ_a u_a T_a one has

    i[T(u),T(v)] = κ(u × v).                                   (11)

Every nonzero vector in R³ is a cross product of two independent real
vectors. Thus a nonzero c belongs to ker κ exactly when the plane
{T(v) : c·v = 0} is commuting. Section 5 consequently implies

    rank κ ≥ 2.                                               (12)

There are exactly two alternatives: rank κ = 3 and no standard-flat
completion exists, or rank κ = 2 and precisely one does.

Let

    Γ_ab = tr(K_a K_b).                                        (13)

This is a real positive semidefinite Gram matrix, with rank Γ = rank κ.
Because of (12), det Γ = 0 is equivalent to existence of the unique
standard-flat completion, and then ker Γ = ker κ is a line R c.

Now restore the second unbiasedness requirement. For each column index
j of U = H/√6, define the real covector

    g_j = ((U†T₁U)_jj, (U†T₂U)_jj, (U†T₃U)_jj)ᵀ.             (14)

The {5,5,3} equations imply

    (U†QU)_jj = 1 − Σ_a |(U†X)_ja|² = 1/2.                    (15)

Suppose det Γ = 0. The unique completion Y is also flat relative to U
exactly when every member of its commuting plane has zero U-diagonal.
Using (14), this is equivalent to

    g_j·v = 0 for every v with c·v = 0,

or, equivalently, g_j ∈ R c. Since ker κ = R c, the exact conditions are

    det Γ = 0,        κ(g_j) = 0 for j = 1,…,6.                 (16)

There is no missing positivity condition on the recovered rank-one
projectors: they come from simultaneous diagonalization of actual
Hermitian operators, as in Section 4. Equation (15) fixes their transformed
flat modulus to 1/6.

Define the scalar

    E_ext(H,A) = det Γ + Σ_(j=1)^6 tr(κ(g_j)²).                 (17)

Each κ(g_j) is Hermitian, so every summand is its squared Hilbert–Schmidt
norm. The determinant is nonnegative because Γ is positive semidefinite.
Thus (17) is nonnegative, and vanishes exactly when all of (16) hold.
This proves Theorem 2.

### Independence of the auxiliary real basis

Write T′ = TM for any real invertible three-by-three matrix M. Then

    κ′ = κ (det M) M^(−T),          g′_j = Mᵀ g_j,
    κ′(g′_j) = (det M) κ(g_j),
    det Γ′ = (det M)^4 det Γ.

The numerical value in (17) depends on the chosen basis, but its zero set
and strict positivity do not. No preferred orientation or normalization
of the kernel is part of the theorem.

## 8. A simpler necessary rank test

For the same Q and U, consider the twelve supported traceless Hermitian
operators

    F_i = Qe_i e_i†Q − Q/6,
    G_j = Qu_j u_j†Q − Q/6,

where u_j is the j-th column of U. Both have zero trace by (3) and (15).
Their Gram matrix is

    M_Q = [[ |Q|∘² − J/12,          |QU|∘² − J/12 ],
           [ (|QU|∘² − J/12)ᵀ,    |U†QU|∘² − J/12 ]].        (21)

Here |·|∘² denotes entrywise squared modulus, and J is the six-by-six
all-ones matrix. It is positive semidefinite, and has rank at most eight.
If Y exists, its two-dimensional traceless diagonal algebra is orthogonal
to all twelve operators. Therefore rank M_Q ≤ 6, proving Theorem 3.

Rank ≤ 6 is not by itself sufficient: the orthogonal complement must
contain a commuting plane. The commutator criterion (17) supplies the exact
completion condition. No claim is made that rank-seven or rank-eight
compatible tuples actually populate a retained V2 seed region.


## Remark: the rank-five lemma for row vectors

(From the reviewing note, with `A0` the rectangle `A` above.)

Equivalently, normalize the six row vectors of A0 to unit vectors in C³.
Their centered rank-one projectors span a five-dimensional real subspace
of the SIX-dimensional space of zero-diagonal Hermitian 3-by3 matrices.
Indeed their Gram is four times the Gram of F_i(P). The same holds for B0,
including after arbitrary column phases.

# Exact elimination of the last companion column

**Status: PROVED.** The six-column companion algebra in the previous
return is canonically isomorphic to a five-column algebra. The isomorphism
holds over arbitrary commutative coefficient rings in which 6 is a unit;
it retains nilpotents and vertical torsion and uses no positivity or
reducedness assumption. For two companion bases, only 25 of the 36 mixed
unbiasedness equations are needed.

**Status: CERTIFIED (finite arithmetic only).** `verify_five_columns.py`
checks the exact block inverse used below, the coefficient identities
in its expansion, the mixed-equation elimination identities, and
nonreduced-ring examples. These checks accompany the written universal
ring proof; they are not a formalization of commutative-ring linear
algebra.

**Status: NOT ESTABLISHED.** This reduction does not prove C, F, F′,
or a uniform trace-form signature. The previous return already supplied
finite fibres, a dimension bound of four, and a six-copy trace-form
criterion. What is new here is an exact reduction of those algebras,
including their scheme structures, rather than another claim of
finiteness.

## 1. General statement and conventions

The argument is valid in order n, with n invertible in a commutative
ring R. Let C be any invertible n by n matrix over R and T=C^{-1}.
No type-II condition on C is needed for this elimination lemma. In the
Hadamard application one takes C=H or C=H/sqrt(n); multiplying C by a
nonzero scalar does not change the ray equations.

A dephased reciprocal ray has column coordinates x,w with

    x_0=w_0=1,       x_i w_i=1 for all i.

Its common-ray equations with respect to C are

    (T x)_j (C^T w)_j=1                  for all j.        (1)

The sum of their left sides is w^T C T x=n, so any one of (1) follows
from the other n−1. There may be any finite list of anchor matrices;
the same proof applies to each anchor separately.

For m such rays assemble X=[x^(1),...,x^(m)] and
W=[w^(1),...,w^(m)]. Ordered reciprocal orthogonality is

    W^T X = n I_m.                                        (2)

Diagonal entries in (2) follow from the native reciprocal equations.
The off-diagonal equations are imposed in both orders. Over physical
complex points w=conjugate(x), these are the usual orthogonality
equations for vectors of norm sqrt(n).

Let P_m be the quotient of m copies of the full ray algebra by all the
off-diagonal equations (2). All quotients are the displayed quotients:
no radical or saturation is taken.

## 2. Universal last-column formula

**Theorem 1 — PROVED.** For m=n−1, put

    x^(n) = n e_0 − X 1,
    w^(n) = n e_0 − W 1.                                 (3)

Then these columns are a dephased reciprocal ray, satisfy every anchor
equation (1), and are ordered-reciprocal-orthogonal to all earlier
columns. They are the unique final dephased columns satisfying these
requirements. In particular,

    P_n  ≅  P_(n−1)                                      (4)

as R-algebras, including nilpotents.

### Proof of existence without a rank assumption

Write m=n−1 and let 1 denote the m-component all-ones column. Form the
square matrices

    A=[X,e_0],           B=[W^T;e_0^T].

Because each ray is dephased and (2) holds,

              [ n I_m   1 ]
    B A = D = [           ].                              (5)
              [ 1^T     1 ]

The constant inverse is

              [ (I_m+11^T)/n   −1 ]
    D^{-1} =  [                    ],                    (6)
              [      −1^T        n ]

and det D=n^(n−2), a unit. Since R is commutative, det A det B is a
unit, so det A and det B are units. The adjugate formula gives inverse
matrices over R. Consequently

    A D^{-1} B=I_n.                                      (7)

Expand (7), writing u=X1 and v=W1:

    I_n = XW^T/n + uv^T/n − u e_0^T − e_0 v^T
                    + n e_0 e_0^T
        = XW^T/n + (n e_0−u)(n e_0−v)^T/n.

Thus

    x^(n) (w^(n))^T = n I_n − XW^T.                      (8)

Taking a diagonal entry gives

    x_i^(n) w_i^(n) = n − Σ_(a=1)^(n−1) x_i^(a)w_i^(a)
                    =1.                                 (9)

In particular every new coordinate is a unit, with the displayed new
w-coordinate as its inverse. No localization is added. The zeroth
coordinates in (3) both equal n−(n−1)=1.

The two cross-orthogonality identities follow directly:

    W^T x^(n)=n1−W^T X1=0,
    (w^(n))^T X=n1^T−1^T W^T X=0.                        (10)

Conjugate (8) algebraically by T and C. Its j-th diagonal entry is

    (T x^(n))_j (C^T w^(n))_j
       = n − Σ_(a=1)^(n−1) (T x^(a))_j (C^T w^(a))_j
       =1.                                              (11)

This proves every new common-ray equation. The argument also works
simultaneously for any additional invertible anchors.

### Proof of uniqueness and the algebra isomorphism

Given n complete dephased reciprocal-orthogonal columns, let X_full
and W_full be the resulting square matrices. Their product relation
W_full^T X_full=nI implies X_full W_full^T=nI by the same determinant
argument. Its zeroth column gives

    Σ_(a=1)^n x^(a)=n e_0,

because w_0^(a)=1. The zeroth row similarly gives
Σ_a w^(a)=n e_0. Thus the last columns necessarily equal (3).

For the maps of quotient algebras, retain the first n−1 ray generators
in one direction and substitute (3) for the last generators in the
other. Equations (9)–(11) show that all defining relations are respected.
Uniqueness shows that the two compositions fix every generator. These
are mutually inverse ring maps, not just bijections on closed points.
They therefore preserve nilpotents and any torsion in the coefficient
ring. ∎

## 3. Twenty-five mixed equations replace thirty-six

Let X_full,W_full and Y_full,Z_full be two complete systems obtained
from Theorem 1. Define the mixed products

    q_ab=((w^(a))^T y^(b)) ((z^(b))^T x^(a)).             (12)

For two physical raw Hadamard companions, unbiasedness means q_ab=n.
The algebraic definition retains the same reciprocal product, with no
physical conjugation silently imposed.

Completeness gives the exact row and column sums

    Σ_(b=1)^n q_ab = n^2,
    Σ_(a=1)^n q_ab = n^2.                                (13)

For example, the first identity follows from

    Σ_b q_ab = (w^(a))^T [Σ_b y^(b)(z^(b))^T] x^(a)
              = n (w^(a))^T x^(a)=n^2.

**Theorem 2 — PROVED.** In the tensor product of the two complete
companion algebras, the ideal generated by all n^2 equations q_ab−n
equals the ideal generated by the upper-left (n−1)^2 of them.

**Proof.** Put e_ab=q_ab−n. Equations (13) give the exact relations

    e_a,n = −Σ_(b<n) e_ab                    (a<n),
    e_n,b = −Σ_(a<n) e_ab                    (b<n),
    e_n,n =  Σ_(a<n,b<n) e_ab.                           (14)

Thus every omitted generator belongs to the retained ideal with
integer coefficients. The reverse ideal inclusion is immediate. ∎

For n=6 this eliminates eleven mixed generators. Combined with (4),
the full two-companion algebra is exactly

    [ P_5 ⊗_R P_5 ] / (q_ab−6 : 1≤a,b≤5).              (15)

It is isomorphic to the six-copy-per-basis, thirty-six-mixed-equation
algebra used in the previous return and in the specialization theorem.
The same reduction applies pair by pair for any number of companions.

## 4. Consequences in the Fourier-free domain

Let A_H be the full one-ray algebra from the previous return. Its proved
length under the middle-minor hypothesis is

    d=252−2 Z_2(H),              162≤d≤252.

By (4), P_6 is a quotient of A_H^(⊗5), so

    dim P_6 ≤ d^5 ≤ 252^5 = 1,016,255,020,032.           (16)

The corresponding quartet algebra is a quotient of A_H^(⊗10):

    dim Q ≤ d^10.                                        (17)

These improve the naive d^6 and d^12 bounds by factors d and d^2,
respectively. They are coarse algebraic length bounds, not proposed
matrix sizes for practical execution. The four-column reduction now included
in `FOUR_RAY_COMPLETION.md` improves these bounds further, with full treatment
of local multiplicities and nilpotents.

| Object | Prior presentation | Equivalent presentation here |
|---|---:|---:|
| Ray copies per companion | 6 | 5 |
| Ordered orthogonality generators per companion | 30 | 20 |
| Mixed generators for two companions | 36 | 25 |
| Naive fixed-H algebra length, one companion | d^6 | d^5 |
| Naive fixed-H algebra length, two companions | d^12 | d^10 |

All polynomial predicates on the completed matrices, including the
Fourier predicate, may simply have (3) substituted. Localizing either
presentation at the corresponding predicate produces isomorphic
localized algebras. The real reciprocal-conjugation involution commutes
with (3), so the real trace-form criterion from the prior return is
preserved exactly. Physical completion introduces no new reality test:
if w^(a)=conjugate(x^(a)) for the retained columns, the same is true of
the completed columns.

The formulas also transfer a module-finiteness result for P_6 to P_5
over the same coefficient ring, and conversely. They do not by
themselves prove module finiteness over a varying base.

## 5. What remains open

The global Fourier-free triple or quartet support has not been
eliminated. No uniformly zero signature, explicit annihilator ideal,
global critical-point exclusion, or classification of the real
components is proved here. The full atlas cannot be removed on the
strength of (4), (15), or the length bounds.

The present result is independent of the atlas and uses only elementary
commutative-ring matrix identities. The length input and the trace-form
interpretation belong to the supplied previous return; they are not
claimed again as new results.

# Two elementary routes into the Fourier families

> **Superseded (18 Oct 2026).** The current proof routes singular minors and geometric row triples by
> `PRM.md` §7.1 (return G), which needs no classification import. This file is the earlier [CT]-relative route.

The following statements are proved independently of MC1. Together with
`FOURIER_CRITICAL_LOCUS.md`, either hypothesis below rules out an
all-critical carrier other than F6.

## A singular 3 by 3 minor

**Theorem.** An order-six phase Hadamard with a singular 3 by 3
submatrix is equivalent to a member of the Fourier family N(z,w)
defined in `FOURIER_CRITICAL_LOCUS.md`, or its transpose.

The singular phase-block lemma proved in `STRICT_DOMAIN.md` says that
such a block has two proportional rows or two proportional columns.
Consider the row case. After phasing their ratio to one on the three
selected columns, orthogonality says that the other three unit ratios
sum to -3. Equality in the triangle inequality makes each ratio -1.
Dephase and reorder to make these two complete rows

    (1,1,1; 1,1,1),       (1,1,1; -1,-1,-1).           (1)

Each of the other four rows has sum zero separately in each half.
A triple of unit numbers summing to zero is a common phase times a
permutation of (1,omega,omega²). Up to its common phase, each ordered
triple therefore has one of the two orientations

    f_1=(1,omega,omega²),    f_2=(1,omega²,omega).

Write the other rows as (alpha f_epsilon; beta f_eta). Two such rows
cannot have equal epsilon but different eta: their inner product
would consist of one nonzero term of modulus 3. The converse is
also impossible. Thus equality of epsilon is equivalent to equality
of eta. Each orientation class spans a two-dimensional space, so
contains at most two orthogonal rows. Four rows force both classes
to have exactly two. A permutation of the right three columns can
make eta=epsilon for both classes.

Phase each row so alpha=1. Within a class orthogonality gives beta
values v and -v. Reorder the six rows by the plus and minus choices,
including (1), to obtain

    [[F, D F], [F, -D F]],    D=diag(1,z,w).            (2)

This is exactly N(z,w) transposed. The column case follows by
transposition. All operations used are Hadamard equivalences. ∎

## Three rows in a geometric progression

**Theorem.** Suppose three complete rows of an order-six phase
Hadamard can be phased and its columns phased so that they are

    (1,...,1),     (x_1,...,x_6),     (bar x_1,...,bar x_6).

Then the matrix is equivalent to N(z,w) or its transpose.

Orthogonality gives sum x_j=sum x_j²=0. The first two elementary
symmetric functions of the x_j vanish. Since all roots are unit,
e_{6-k}=e_6 conjugate(e_k); therefore e_4=e_5=0 as well. Their
six-root polynomial has the form T^6-e_3 T^3+e_6. Its roots are two
equilateral triples, with multiplicities allowed. Reorder columns and
phase rows to put the three rows into

    [F, D_v F],        D_v=diag(1,u,u^-1).              (3)

The classification paper's Fourier-block normalization and forced
completion formula (Supplemental equations `eq:fouriernormalform`
and `eq:Dfourierformula`) put the complete carrier into

    [[F, D_v F], [F D_w, -(1/3)F D_w F† D_v F]],
    D_w=diag(1,r,s).

Here these are explicit permitted imports from ClassificationPaper;
no strict-corner-coverage assertion is imported.

Use the paper's notation A_k=hat(v)_k conjugate(hat(v)_{k-1}) and
alpha=(bar r, r bar s, s). Its exact flatness equations
`eq:twoproducts` are hat(alpha)_j hat(A)_j=0 for j=1,2. For the
particular v in (3), direct Laurent calculation gives

    hat(A)_1=3 omega² (u³-1)/u,
    hat(A)_2=-3 omega (u³-1)/u².                       (4)

If u³!=1, both factors are nonzero. The two nonconstant Fourier
coefficients of alpha vanish, so alpha=(c,c,c). Its product is one,
hence c³=1, r=c^-1, s=c. Thus D_w is a Fourier character and
F D_w=P F for a cyclic row permutation P. Applying P^-1 to the
bottom rows gives (2), with D=D_v.

If u³=1, D_v is itself a Fourier character, so D_v F=F P for a
cyclic column permutation P. Apply P^-1 to the right columns. The
matrix becomes [[F,F],[F D_w,-F D_w]]=N(r,s). Both cases therefore
give the asserted Fourier families. ∎

`verify_fourier_routing.py` checks (4), both character permutations,
and the displayed normal-form equalities exactly. The exhaustion
arguments, including repeated roots in the six-root polynomial and
the singular-minor case, are supplied by the proofs above.

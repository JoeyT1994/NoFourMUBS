# Exact omega-locus results and a non-Fourier positive-sheet completion

## Summary and scope

The following results are unconditional algebraic statements about the corner
invariant as defined in the handoff.

1. On `V = omega U` or `V = omega^2 U`, one has
   `R = 36 (Im U^3)^2`.
2. This locus is exactly the set of unimodular 3 by 3 corners containing an
   orthogonal pair of rows or an orthogonal pair of columns. Its seed-torus
   preimage is the union of twelve explicit two-dimensional subtori below.
3. Every strict corner of every matrix in the handoff's affine Fourier family,
   or its transpose, belongs to this locus. The proof covers all parameters.
4. The converse description of the reconstruction image is false. At the seed
   `(a,b,c,d)=(omega^2,omega,i,i)`, the positive side already forces a strict
   off-locus corner elsewhere in the same top strip. Thus its positive-sheet
   completion is outside both Fourier families. A standalone exact physical
   completion is supplied below, and verified without invoking the handoff's
   reconstruction existence theorem.
5. Consequently, “some strict corner” and “every strict corner” are not
   equivalent properties. Also, F6 has no strict corner, so the existential
   version of T2 needs an explicit F6 exception even before its other failures
   are considered.

No claim is made here that the non-Fourier omega completion is a triple edge,
that it is not a triple edge, or that the omega-locus gives a classification of
triple edges. A bounded numerical probe found 48 rays and no basis at this
particular completion; that observation is not a certificate of nonexistence.

`verify_omega.py` makes all acceptance decisions by exact arithmetic over
Q(i,sqrt(3)) and exact polynomial division. It contains no numerical root
acceptance and remains effective under `python -O`.

## 1. The invariant on the locus

Put zeta in {omega,omega^2}, V=zeta U, and r=|U|^2. Since

    |1+zeta|^2=1,  |1-zeta|^2=3,
    (1+zeta)(1-zeta)^2=3,

we have u=r, v=3r, g=3r, eta=r and chi=-6 Re(U^3). Hence

    R = 36 |U|^6 - 36 (Re U^3)^2
      = 36 (Im U^3)^2.

This identity holds without physicality, strictness, or a choice of the
common normalizing cube root. Strictness on this locus is exactly
`Im U^3 != 0`.

## 2. Exact seed locus: twelve subtori

Let E have dephased seeds a,b,c,d, and write the raw even and odd triples

    e=(ad,b,c),       o=(bc,d,a),       P=abcd.

All six entries are unit phases, and both products equal P. A triple of unit
phases with sum S and product P is precisely the root multiset of

    X^3 - S X^2 + P conjugate(S) X - P.

Indeed, its second elementary symmetric sum is P times the conjugate of its
first. Since zeta^3=1, multiplying e by zeta preserves its product. Therefore

    V=zeta U  <=>  sum(o)=zeta sum(e)
                <=>  multiset(o)=multiset(zeta e).

There are exactly six permutations to match. Solving their equations gives:

| Matching o_j=zeta e_perm(j), zero-based | Seed equations | Orthogonal pair in E, one-based |
|---|---|---|
| (0,1,2) | a=zeta c, d=zeta b | rows 2 and 3 |
| (0,2,1) | a=zeta b, d=zeta c | columns 2 and 3 |
| (1,0,2) | a=zeta^2, c=zeta | columns 1 and 2 |
| (1,2,0) | c=zeta, d=zeta^2 | rows 1 and 3 |
| (2,0,1) | a=zeta^2, b=zeta | rows 1 and 2 |
| (2,1,0) | b=zeta, d=zeta^2 | columns 1 and 3 |

In each row the two unspecified phases are arbitrary. These six subtori for
each choice of zeta are the complete locus, including all intersections and
R=0 strata. The strict locus is obtained by retaining `Im U^3 != 0`.

Conversely, three unit phases sum to zero if and only if they are a common
phase times `(1,omega,omega^2)`, in some order. Apply this fact to the entrywise
ratios of an orthogonal row or column pair in E. The first ratio is one after
dephasing, so one of the twelve listed sets of equations follows. This proves
the intrinsic characterization by an orthogonal pair.

The phase-coordinate description is obtained directly from this table.
For example, for zeta=exp(2 pi i k/3), k=1 or 2, the first branch is

    theta_a-theta_c = theta_d-theta_b = 2 pi k/3  (mod 2 pi),

and all other branches are the corresponding linear congruences in the table.
No eliminated component, genericity guard, or reconstruction assumption is
used in this statement.

## 3. All strict Fourier corners are on the locus

Use the handoff's family convention. Label rows `(s,r)` with s in {0,1} and
r in Z/3Z, and columns `(q,j)` with q in {0,1}, j in Z/3Z. If d_0=1,
d_1=a,d_2=b, then

    F_(s,r),(q,j) = (-1)^(s q) omega^(r j) d_j^s.

A selection of three rows either has all three values of r at one s, or
has two rows at one s and one at the other s. A selection of three columns
either has all three distinct values of j, or has one repeated j and one
other j. There cannot be three equal j because only two columns have a
given j.

### Mixed row blocks and three distinct j values

The two rows with the same s have entrywise ratio
`omega^((r_1-r_2) j)`. Since their r values are distinct, summing this ratio
over the selected columns gives `1+omega+omega^2=0`. Thus this corner has
an orthogonal row pair and is on the omega-locus, without needing R>0.

### Mixed row blocks and a repeated j

Move the equal-j columns first, and move the equal-s rows first. Dephase.
The resulting corner has the form

    [[1,1,1], [1,1,zeta], [1,-1,t]],

where zeta is omega or omega^2 and |t|=1. Directly from the original Gram
invariant definition,

    X=3, Y=1, Z=1, J=0,
    g=12, eta=4, chi=-48, R=0.

Hence none of these corners is strict.

### All rows at one s

If the j values are distinct, the corner is equivalent to F3, for which
`X=Y=Z=J=0` and R=0. If j repeats, the dephased corner is

    [[1,1,1], [1,1,zeta], [1,1,zeta^2]],

for which `X=Y=Z=3`, `J=0`, `g=eta=chi=R=0`.

These cases exhaust every positional corner. Thus every strict Fourier
corner is on the omega-locus, for every parameter value. Transposition
exchanges the roles of row and column pairs and preserves the corner
invariant, so the same statement holds for the transposed family.

There are 18 mixed row triples and 8 column triples with distinct j, giving
144 potentially strict corners. Generically all 144 are strict; special
parameters can make some or all of their values zero. In particular,
F6=F(1,1) has no strict corner. The independent exact verifier
verify_fourier_corner_count.py checks all 400 F6 corners and obtains R=0.
It also supplies a simultaneous exact witness that all 144 potential
corner polynomials are nonzero at one Fourier parameter, proving the
generic assertion.

The property of being on the omega-locus is unchanged by corner row or
column permutations: these either preserve the parity classes of the
permutation products or exchange them. Row and column phase multiplication
scales every permutation product by the same factor. The same observations,
or the supplied intrinsic invariant formula, preserve strictness. Thus the
conclusion applies to every matrix equivalent to a Fourier-family member.

## 4. A positive-sheet omega seed with a non-Fourier image

Let h=sqrt(3), omega=(-1+ih)/2, and set

    alpha=(-4-3i)/5,       beta=(3-4i)/5,

    E = [[1,1,1], [1,omega^2,omega], [1,i,i]],
    B = [[1,1,1], [alpha omega,alpha omega^2,alpha],
                       [alpha,alpha,beta]].

For E the exact invariant values are

    g=6, eta=2, chi=-12, R=144, z_+=-1+i.

The raw traces are

    even = omega(1-i),      odd = omega^2(1-i),

so this corner is on the omega-locus. Since abcd=-1, choose t=-1. Then
`U^3=2+2i`, independently of the chosen common cube root, reproducing R=144.

### 4.1 B is the positive horizontal side, exactly

For G_h=6I-EE^dagger, the lower off-diagonal entries are

    s=0, t=-1-2i, r=-1+i.

The prescribed positive-side recipe gives

    lambda_0=(-7-24i)/25,
    lambda_1=(4-3i)/5,
    lambda_2=(-3-4i)/5,
    u=lambda_0 conjugate(lambda_1)=alpha^3.

Here mu=0, n=1, the recipe's alpha variable is zero, and the allowed
square root is

    delta = r alpha^2/3 = (-31-17i)/75.

Its recipe orientation satisfies dF=1. Consequently rho=1, q=0,
sigma=u and xi=u^2. Select the allowed cube root

    w_recipe=alpha^2 omega^2,      w_recipe^3=xi.

Substitution into the stated side constructor yields precisely the B above.
Every identity, including the orientation, is verified exactly by the code.
The other choices of this cube root only cycle the columns of B.

Thus every positive-sheet completion at this seed contains the displayed
3 by 6 top strip, up to permutations of its last three columns.

### 4.2 A strict off-locus corner already lies in the top strip

Take rows 1,2,3 and columns 1,2,4, using one-based indices. Its dephased
seed is

    (omega^2, alpha omega, i, alpha).

Its invariant is

    R_off = (104256+29952 sqrt(3))/625 > 0.

Write e and o for its raw even and odd sums. The exact gap values are

    |o-omega e|^2   = (36-18 sqrt(3))/5 > 0,
    |o-omega^2 e|^2 = (12+6 sqrt(3))/5  > 0.

The first strict inequality uses sqrt(3)<2; all others have visibly positive
coefficients. Dividing both raw traces by their common normalizing phase
preserves these gaps. Hence this corner is strict and off the omega-locus.
Section 3 now proves that this positive-sheet reconstruction is outside both
Fourier families. This conclusion uses only the positive horizontal recipe
and the existence of the matched completion; it does not depend on matching
its lower rows to a particular radical presentation.

## 5. Standalone exact completion, independent of the existence theorem

Here is a complete algebraic specification of a physical Hadamard with the
same top strip. It uses the three roots of one explicit cubic and has no
numerical acceptance conditions.

Define

    s = (-1+i(h-2))/2,
    u = (30-2h-i(5+12h))/37,
    p(X) = X^3-s X^2+u conjugate(s) X-u,
    m = (3-h-i(3+h))/6,
    y(X) = (m X+i)/(X+i conjugate(m)).

Let x_1,x_2,x_3 be all three roots of p, in any order. Put

    C_k = (1,x_k,y(x_k)),
    L = -E^dagger (6I-EE^dagger)^(-1) B,
    H = [[E,B],[C,CL]].

For convenience, L is explicitly

    1/10 * [[1+h+i(-3+7h),  1-h+i(-3-7h),  -12+6i],
            [-7+7h+i(-9-h), 1-7h+i(-3+h),  -4+12i],
            [1+7h+i(-3-h), -7-7h+i(-9+h),  -4+12i]].

### 5.1 Root locations and denominators

Exactly,

    |u|=1,        |s|^2=2-h,

and the discriminant after normalizing the root product to one is

    Delta = |s|^4+18|s|^2-8 Re(s^3/u)-27
          = -(412+234h)/37 < 0.

To justify the root inference, normalize X=tZ with t^3=u, |t|=1. The
resulting monic cubic has constant term -1 and coefficients
`Z^3-S Z^2+conjugate(S)Z-1`. Its roots are invariant under reciprocal
conjugation. If a root were off the unit circle, the roots would have the
form `r exp(i b), r^(-1) exp(i b), exp(-2i b)` with r>0, r!=1, and their
discriminant would be

    (r-r^(-1))^2 (2 cos(3b)-r-r^(-1))^2 > 0,

contrary to Delta<0. Thus all roots are unit phases. The strict negative
discriminant also ensures they are distinct.

Furthermore |m|^2=2/3. Thus X+i conjugate(m) cannot vanish at a unit root.
For any unit X, the numerator and denominator in y(X) have equal modulus,
so |y(X)|=1.

### 5.2 Flatness and the full Hadamard identity

All top-strip entries have modulus one directly. The remaining checks can
be written as identities in the explicitly given quotient ring

    A = Q(i,h)[X]/(p(X)).

The inverse of X is

    X^(-1) = (X^2-s X+u conjugate(s))/u   in A.

Consequently complex conjugation on unit roots is computed exactly by
conjugating coefficients and replacing X by this expression. The rational
y has the following quadratic representative in A:

    y = A0+A1 X+A2 X^2,

    74 A0 = -207+112h+i(-132+43h),
    74 A1 = -277+132h+i(114-59h),
    74 A2 = -57+11h+i(213-119h).

These equalities follow by multiplying by `X+i conjugate(m)` and reducing
modulo p. In the same ring, put

    v(X)=(1,X,y(X), (1,X,y(X))L).

Exact multiplication and division give, for each of its six entries,

    v_j conjugate(v_j) = 1  in A.

Thus every lower-row entry is flat. This is a finite polynomial identity,
not a statement inferred from approximating the roots.

For any quadratic representative `f=f0+f1 X+f2 X^2`, the sum over all roots
is the exact Newton-sum functional

    Tr(f)=3 f0+s f1+(s^2-2u conjugate(s)) f2.

Let T=(E B) denote the top strip. The remaining 36 exact identities are

    sum_(k=1)^3 conjugate(T_ki) T_kj
       + Tr(conjugate(v_i) v_j) = 6 delta_ij.

They prove H^dagger H=6I directly. The verifier regenerates E, B, L and p,
computes the polynomial inverse of the Möbius denominator, and checks every
one of these identities with exact arithmetic. It also checks the six
flatness identities, both strict corner values and both nonzero gaps.
These elementary polynomial identities and the preceding root argument
constitute the complete proof that the displayed algebraic matrix is a
physical order-six Hadamard.

No sampled coefficient, approximate eigenvalue, external classification
claim, or numerical tolerance participates in this proof.

## 6. Quantifier and reconstruction consequences

The standalone completion has one strict omega corner and another strict
off-omega corner. Therefore the handoff's parenthetical “some (equivalently,
every)” is false even as a statement about the supplied corner condition.
Its positive-sheet omega seed also disproves the proposed reconstruction
image “exactly the two Fourier families”.

The gap values are strictly positive, so the same failure persists under
sufficiently small continuous changes within this omega seed stratum, on
the locally corresponding positive branch. This is not an isolated
roundoff near-miss. The exact twelve-torus description identifies the locus
being approached in the exploratory near-miss data.

Finally F6=F(1,1) has no strict corner. It is a triple edge, for example by
combining the standard three product MUBs in dimensions two and three. Hence
an existential strict-corner characterization omits F6, while a universal
one is vacuous there. These are distinct logical formulations even if one
adds an exceptional F6 case.

## Verification and diagnostic separation

Run

    python verify_omega.py

or the environment's primary Python executable if required. Expected final
line: `ALL OMEGA CERTIFICATES PASSED`. All mathematical acceptance decisions
are exact. The numerical diagnostics in `probe.py` and the `.npy` files are
exploratory intermediates and are not required for the certificate or proof.

## 7. Exact identification of the standalone C with the positive vertical side

The additional `verify_positive_vertical.py` removes the reconstruction
existence theorem from the identification of the entire displayed matrix.
It proves that the C in Section 5 equals
`S(Gv,conjugate(z_+))^T`, up to an allowed row permutation. Consequently the
standalone physical matrix of Section 5 is exactly H_+ at the displayed
seed, modulo the side permutations already allowed by the recipe.

Here are the finite choices and the complete algebraic identification.
Use z=-1-i for this vertical constructor. Its lambda_0 is i, and its
row-product invariant `lambda_0 conjugate(lambda_1)` is the u of Section 5.
In the side recipe choose

    delta=-(5-7i)/(3 sqrt(37)).

Then the exact orientation and denominator identities are

    dF=(27+13 sqrt(3))/(9 sqrt(37)) > 0,
    n=(7+sqrt(3))/9 > 0,
    rho=(n+dF)/2 > 0.

The verifier recomputes all lambda_j, k, alpha, gamma, q, cplus, cminus and
sigma from the given Gram matrix; it does not take their decimal values as
inputs. In particular it checks the required delta-square identity and
`|xi|=1` for `xi=sigma^2/rho`.

Work over Q(i,sqrt(3),sqrt(37)) and let W be any cube root of xi. Thus |W|=1.
The constructor's second and third rows, at j=0,1,2, are exactly

    X_j = mu + sigma W^(-1) omega^j
                  + q conjugate(sigma) W omega^(2j),
    Y_j = nu + cplus sigma W^(-1) omega^j
                  + cminus conjugate(sigma) W omega^(2j).

Reduction modulo `W^3-xi` proves the following polynomial identities for
all three j:

    p(X_j)=0,
    Y_j (X_j+i conjugate(m)) = m X_j+i.

It also proves that the first, second and third elementary symmetric sums
of the X_j are exactly `s`, `u conjugate(s)` and `u`. Therefore their
multiset is the complete root multiset of p. Section 5 proves that those
roots are distinct and that none annihilates the Möbius denominator. It
follows that the columns `(1,X_j,Y_j)` are exactly the three prescribed
vectors `(1,x_k,y(x_k))`, in some order. This identifies the vertical side
without any branch approximation. The exact block completion formula then
identifies D as well.

Run both verifiers to replay the complete result:

    python verify_omega.py
    python verify_positive_vertical.py

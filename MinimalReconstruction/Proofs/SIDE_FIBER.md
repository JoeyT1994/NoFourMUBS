# The normalized side fiber on the entire strict domain

Proved here: at every strict seed the normalized side fibre has exactly two orbits under column permutations, the
side formulas of RECONSTRUCTION.md are well defined, and finitely many pairings recover every framed completion (§1
gives Lemma 2.1 of `PROOF.md`). Flatness of the matched pairings is Theorem 2.2 of `PROOF.md`, and strict-corner
existence is Theorem 2.5 (STRICT_CORNER_COVERAGE.md).

Dependencies: the elementary invariant identities in STRICT_DOMAIN.md and
OPPOSITE_CORNER.md, checked by verify_invariants.py; the Laurent identities
and exact nonsingular witnesses checked by verify_side_fiber.py. The last
completion corollary may either use the block argument below or the proved
result `prop:directcompletion` of the classification paper [CT] (arXiv:2608.18053).

All symbols agree with RECONSTRUCTION.md. A normalized side is a 3 by 3
matrix of unit-modulus entries whose first row is (1,1,1). Its fiber at G
consists of all such X with XX†=G. The equivalence relation here is only
permutation of the three columns.

## Theorem

For every unit seed with R>0, each of its two side Gram matrices has
exactly two orbits of the normalized side fiber under column permutations.
The two formulas S(G,z_+) and S(G,z_-) represent these orbits. Every
divisor prescribed in Section 2 of RECONSTRUCTION.md is nonzero. In
particular dF is real, the prescribed sign gives rho>=n/2>0,
|sigma|²=rho, |xi|=1, 3MM†=G, and S has unit-modulus entries.

Changing the cube root cycles columns. At dF=0, changing the allowed
square-root sign changes only a column permutation. These statements
concern the sign rule in the specification; a square-root sign violating
that rule need not give a defined formula.

The finite pairings of these side representatives recover all framed
completions of E, modulo permutations of the last three rows and columns,
by retaining precisely the pairings whose forced D is flat.

## 1. Identities on an arbitrary phase side

Write an invertible normalized phase side as X=(1;x;y), with column index
j=0,1,2. Put U=prod(x_j), V=prod(y_j), h=det X, and pi=perm X. The
phase-block invariant is

    z=Theta(X)=-pi h/(bar(h) U V).

The identities in OPPOSITE_CORNER.md, applied to XX†, give

    g=|h|², eta=|pi|², chi=g(z+bar(z)), |z|²=eta.

They are identities of Laurent polynomials after denominators are cleared;
they do not assume that X already came from the constructor. Define

    L0=-UV bar(h)/h, L1=L0/U, L2=L0/V.

These phases equal the prescribed lambda_j. Indeed the following three
Laurent identities are checked exactly by verify_side_fiber.py:

    h²=UV c0 bar(pi)-UV bar(P0),
    h²=UV c1 bar(pi)- V bar(P1),
    h²=UV c2 bar(pi)- U bar(P2).

Multiplication by the unit monomials and h shows
L_j bar(P_j)=g+c_j bar(z). In particular u=U and z lambda0=pi.
Also put v=lambda0 bar(lambda2)=V.

Let omega=exp(2 pi i/3) and take the discrete Fourier expansion

    x_j=mu+A omega^j+B omega^(-j),
    y_j=nu+C omega^j+D omega^(-j).

Here D is a scalar Fourier coefficient, not the completion block. Direct
expansion using x_j bar(x_j)=y_j bar(y_j)=1 gives

    alpha=AB,                  gamma=AD+BC,
    n=|A|²+|B|²,               k=C bar(A)+D bar(B),
    h²=-27(AD-BC)²,
    n gamma-2 alpha k=(|A|²-|B|²)(AD-BC),
    A³=U|A|²+mu AB,
    nC=Ak-bar(B)(AD-BC),
    nD=Bk+bar(A)(AD-BC).

These are the nine exact Fourier identities in the verifier. Set
delta_X=AD-BC. Since lambda0/(lambda1 lambda2)=-h/bar(h),

    delta_X²=(g/27)lambda0/(lambda1 lambda2).

At this root dF=|A|²-|B|² and rho=|A|². Whenever A is nonzero the recipe
therefore gives

    q=B/bar(A), cplus=C/A, cminus=D/bar(A),
    sigma=A²/bar(A), xi=(A/bar(A))³.

Choosing w=A/bar(A) reconstructs exactly X. A column reflection
j -> -j interchanges A,B and C,D, changes delta_X to -delta_X, and
preserves G and z. Thus a reflection permits |A|>=|B|, which is precisely
the prescribed orientation. At a strict physical side n>0, so this
orientation has A!=0.

This proves reconstruction of existing sides. The next two sections prove
existence at every strict seed, avoiding an assumption that a physical
side has already been supplied.

## 2. Faithful algebraic parameter space

Temporarily complexify the six phase variables. Let

    L=C(x0,x1,x2,y0,y1,y2),
    s=sum x_j, S=sum 1/x_j, t=sum y_j, T=sum 1/y_j,
    r=sum y_j/x_j, Q=sum x_j/y_j.

Here S,T,Q denote the formal conjugates of s,t,r. They are independent
coordinates, not the side constructor or the strict invariant R. Their
six rational functions are algebraically independent. An exact witness
is provided by the phase side

    X0=[[1,1,1],[1,omega,omega],[omega,1,omega]].

The real Jacobian determinant of (Re s,Im s,Re t,Im t,Re r,Im r), with
respect to the six phase angles in row order, is -9 sqrt(3)/8. Thus the
real image contains an open set; no nonzero polynomial in the six
complexified coordinates can vanish on the image. We may consequently
identify K=C(s,S,t,T,r,Q) with a subfield of L.

In L the element z=Theta(X) satisfies the monic quadratic

    z²-(chi/g)z+eta=0.                                      (1)

It has degree two over K. To see this without assuming generic
two-orbit exhaustion, take X1=diag(1,-1,-1) conjugate(X0). Both have
the same Gram, with s=t=i sqrt(3), r=0. Their Theta values are
(-3+i sqrt(3))/2 and (-3-i sqrt(3))/2. Their real Jacobian determinants
are respectively -9 sqrt(3)/8 and +9 sqrt(3)/8. The inverse function
theorem therefore gives two local phase-side sections over a common
open set of Grams, with distinct Theta values. If z belonged to K, one
rational function of the Gram coordinates would equal Theta on both
sections away from its poles, a contradiction. This proves the
irreducibility of (1). Every witness calculation is exact in the verifier.

Similarly delta_X has degree two over K(z). The column reflection is an
automorphism of L fixing K and z and sending the nonzero delta_X to
-delta_X. Hence delta_X cannot belong to K(z). Its square lies in K(z)
by Section 1. Consequently K(z,delta), with precisely these two monic
quadratic relations, embeds faithfully into L by z -> Theta(X) and
delta -> delta_X.

The involution induced from x_j -> 1/x_j, y_j -> 1/y_j and conjugation
of constants satisfies

    z*=chi/g-z, lambda_j*=1/lambda_j, delta*=g/(27 delta).

It agrees with ordinary complex conjugation at physical strict
specializations. For delta this follows from |delta|²=g/27, already
proved in STRICT_DOMAIN.md. The unit phase torus is Zariski dense in
the six complexified phase variables: a Laurent polynomial vanishing
there has all its Fourier coefficients zero.

## 3. Transfer and specialization with no hidden guards

All formula quantities through M and xi are rational functions in
K(z,delta). On the open phase locus A!=0, Section 1 reconstructs X.
Consequently the following rational identities hold in that field:

    dF*=dF, rho²-n rho+alpha alpha*=0, sigma sigma*=rho,
    3MM*=G,
    sigma²(a bar(b)+c bar(a))+rho b bar(c)=0                (2)

for each row (a,b,c) of M. In the matrix identity M* means conjugate
transpose; elsewhere * means scalar conjugation. To check the last
identity, reconstruct X with w=A/bar(A): the nonconstant Fourier
coefficient of the squared modulus of the corresponding row is

    w(a bar(b)+c bar(a))+w^(-2)b bar(c).

It vanishes because X is flat. Multiplying by w² and using
w³=sigma²/rho proves (2). The same argument gives

    mu³+rho sigma+rho q³ bar(sigma)-3mu rho q=u,
    nu³+cplus³ rho sigma+cminus³ rho bar(sigma)
                       -3nu cplus cminus rho=v,
    6mu nu-3rho(cminus+q cplus)=z lambda0.                 (3)

These are respectively the row-product and permanent formulas, after
w³=sigma²/rho is eliminated. Section 1 proves each after substitution
into L, on an open subset of the phase torus. Zariski density and the
faithful embedding prove them as rational identities. Thus their use
is algebraic, not an inference from the witness matrices or from samples.

Here is why specialization does not introduce unlisted exceptional
factors. Start with the polynomial ring in s,S,t,T,r,Q, localized at
g,n,P_j,P_j*. Adjoin z by the monic relation (1). The quadratic's
irreducibility over the fraction field and monic division make this
ring a domain embedded in K(z). The formulas for lambda_j belong to
it and lambda_j lambda_j*=1 there, by the P norm identities. Adjoin
delta by its monic relation; the second irreducibility argument again
gives a domain. Delta is a unit, since its square is g/27 times units.
Now localize at rho and rho*. This ring embeds in K(z,delta). Every
expression in (2)–(3) and the displayed identities is in this ring.
An expression zero in its fraction field is zero in the ring itself.
It therefore specializes at every point where these displayed
denominators are nonzero. No product-regular guard or additional
denominator has been introduced.

The assertion dF*=dF is already an identity before rho is inverted,
because dF only divides by g and delta. Thus at an arbitrary strict
seed, STRICT_DOMAIN.md first gives g,n,P_j,delta nonzero, and dF is
real. Choose its prescribed sign. Then rho=(n+dF)/2>=n/2>0, so all
remaining identities specialize. They give |sigma|²=rho>0 and |xi|=1.
Every cube root w is a unit phase. The Gram identity follows from
F3 F3†=3I. The constant squared-modulus coefficient of each row of
M P(w) F3 is one by 3MM†=G; (2) and its conjugate make the other
coefficients zero. This proves flatness and hence existence everywhere
on the full strict domain.

For later orbit identification, (3) says that the two row products
of the constructed side are u,v and its permanent is z lambda0.
Moreover rho(1+q bar(q))=n and the definitions give det M=delta.
Thus det S²=-27 delta² and |det S|²=g. Its intrinsic phase

    -uv conjugate(det S)/det S = -uv g/(det S)² = lambda0.

The definition of Theta now gives Theta(S)=z.

## 4. Exactly two orbits and all root choices

Any phase side in the fiber has determinant squared modulus g>0.
The phase-block identities force its Theta to be one of the two
distinct roots z_+,z_- because R>0. Section 1 reconstructs that side
from its Fourier coefficients after a possible column reflection.
For a fixed z and a fixed permitted delta, the only remaining choice
is w³=xi. Replacing w by omega w replaces column j by column j-1;
these are the three cyclic permutations. If dF=0, either delta sign
is permitted, and the column reflection relates them, followed if
necessary by a cycle. Thus there is at most one orbit for each z.

Section 3 supplies a side for each z on every strict seed, and its
Theta equals that z. Theta is invariant under column permutations,
so the two sides belong to distinct orbits. This proves exactly two.

## 5. Finite pairings exhaust every framed completion

Let H=[[E,B],[C,D]] be a framed Hadamard with this strict E. The upper
right block B is a normalized side of Gh. The transpose of C is a
normalized side of Gv. The theorem represents B and C by one of two
choices each, up to independent last-column and last-row permutations.
Orthogonality forces

    D=-C E† Gh^(-1) B.

Conversely choose any such B,C and define D this way. Since
B B†=Gh=6I-EE† and C†C=6I-E†E, block multiplication gives HH†=6I.
For example the off-diagonal block vanishes, and the lower block is

    CC†+DD†=C[I+E† Gh^(-1)E]C†
             =6 C(6I-E†E)^(-1)C†=6I.

All entries outside D already have modulus one. Thus H is Hadamard
if and only if every entry of D has modulus one. Four pairings and
this exact flatness test recover every framed completion. This proves
exhaustion, but does not decide which pairings pass; that is Theorem 2.2
of `PROOF.md`.

Replay the algebra with
`python3 MinimalReconstruction/Proofs/verify_side_fiber.py` and
`python3 MinimalReconstruction/Proofs/verify_invariants.py`.

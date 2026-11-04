# The normalized blocks with a given overlap matrix on the whole region Ω

Proved here: at every strict seed the normalized side blocks with a given overlap matrix form exactly two orbits under
column permutations, the side formulas of RECONSTRUCTION.md are well defined, and finitely many pairings recover every
completion (§1 gives Lemma 2.1 of `PROOF.md`). That every entry of D has modulus one for the matched pairings is
Theorem 2.2 of `PROOF.md` (SM Propositions S.2 and S.3), and the existence of a strict corner is Theorem 2.5
(SM Proposition S.5, STRICT_CORNER_COVERAGE.md).

Dependencies: the elementary invariant identities in STRICT_DOMAIN.md and
OPPOSITE_CORNER.md, checked by verify_invariants.py, and the Laurent identities
and exact nonsingular witnesses checked by verify_side_fiber.py. The last
completion corollary may either use the block argument below or the proved
direct-completion proposition of the classification paper [CT] (arXiv:2608.18053).

All symbols agree with RECONSTRUCTION.md, except that this file indexes
columns, lambda_j, P_j and c_j from 0: lambda0, lambda1, lambda2 here are
lambda_1, lambda_2, lambda_3 of RECONSTRUCTION.md and of the paper, and
likewise for P_j and c_j. A normalized side is a 3 by 3 matrix of
unit-modulus entries whose first row is (1,1,1). The set of normalized
sides with overlap matrix G consists of all such M with MM†=G. The
equivalence relation here is only permutation of the three columns.

## Theorem

For every strict seed θ in Ω, each of its two overlap matrices G has
exactly two orbits of normalized sides with overlap matrix G under column
permutations.
The two formulas S(G,z_+) and S(G,z_-) represent these orbits. Every
divisor prescribed in Section 2 of RECONSTRUCTION.md is nonzero. In
particular dF is real, the prescribed sign gives rho>=n/2>0,
|sigma|²=rho, |xi|=1, 3NN†=G, and S has unit-modulus entries.

Changing the cube root cycles columns. At dF=0, changing the allowed
square-root sign changes only a column permutation. These statements
concern the sign rule in the specification. A square-root sign violating
that rule need not give a defined formula.

The finite pairings of these side representatives recover all
completions of E, modulo permutations of the last three rows and columns,
by retaining precisely the pairings whose forced D has unit-modulus entries.

## 1. Identities on an arbitrary side block

Write an invertible normalized side as M=(1;x;y), with column index
j=0,1,2. Put u=prod(x_j), v=prod(y_j), h=det M, and pi=perm M. The
invariant of the block (OPPOSITE_CORNER.md) is

    z=zeta(M)=-Psi(M)/g=-pi h/(bar(h) u v).

The identities in OPPOSITE_CORNER.md, applied to MM†, give

    g=|h|², eta=|pi|², chi=g(z+bar(z)), |z|²=eta.

They are identities of Laurent polynomials after denominators are cleared.
They do not assume that M already came from the constructor. Define, as
in the SM,

    lambda0=-uv bar(h)/h, lambda1=lambda0/u, lambda2=lambda0/v.

These phases are the prescribed lambda_j. Indeed the following three
Laurent identities are checked exactly by verify_side_fiber.py:

    h²=uv c0 bar(pi)-uv bar(P0),
    h²=uv c1 bar(pi)- v bar(P1),
    h²=uv c2 bar(pi)- u bar(P2).

Multiplication by the unit monomials and h shows
lambda_j bar(P_j)=g+c_j bar(z). In particular lambda0 bar(lambda1)=u, the
u of RECONSTRUCTION.md, and z lambda0=pi. Also lambda0 bar(lambda2)=v.

Let omega=exp(2 pi i/3) and take the discrete Fourier expansion

    x_j=mu+A omega^j+B omega^(-j),
    y_j=nu+C omega^j+D omega^(-j).

Here D is a scalar Fourier coefficient, not the completion block. Direct
expansion using x_j bar(x_j)=y_j bar(y_j)=1 gives

    beta=AB,                   gamma=AD+BC,
    n=|A|²+|B|²,               k=C bar(A)+D bar(B),
    h²=-27(AD-BC)²,
    n gamma-2 beta k=(|A|²-|B|²)(AD-BC),
    A³=u|A|²+mu AB,
    nC=Ak-bar(B)(AD-BC),
    nD=Bk+bar(A)(AD-BC).

These are the nine exact Fourier identities in the verifier. Set
delta_M=AD-BC. Since lambda0/(lambda1 lambda2)=-h/bar(h),

    delta_M²=(g/27)lambda0/(lambda1 lambda2).

At this root dF=|A|²-|B|² and rho=|A|². Whenever A is nonzero the recipe
therefore gives

    q=B/bar(A), cplus=C/A, cminus=D/bar(A),
    sigma=A²/bar(A), xi=(A/bar(A))³.

Choosing w=A/bar(A) reconstructs exactly M. A column reflection
j -> -j interchanges A,B and C,D, changes delta_M to -delta_M, and
preserves G and z. Thus a reflection permits |A|>=|B|, which is precisely
the prescribed orientation. At a strict physical side n>0, so this
orientation has A!=0.

This proves reconstruction of existing side blocks. The next two sections prove
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
is provided by the side block

    M0=[[1,1,1],[1,omega,omega],[omega,1,omega]].

The real Jacobian determinant of (Re s,Im s,Re t,Im t,Re r,Im r), with
respect to the six phase angles in row order, is -9 sqrt(3)/8. Thus the
real image contains an open set, so no nonzero polynomial in the six
complexified coordinates can vanish on the image. Consequently
K=C(s,S,t,T,r,Q) can be identified with a subfield of L.

In L the element z=zeta(M) satisfies the monic quadratic

    z²-(chi/g)z+eta=0.                                      (1)

It has degree two over K. To see this without assuming generic
two-orbit exhaustion, take M1=diag(1,-1,-1) conjugate(M0). Both have
the same overlap matrix, with s=t=i sqrt(3), r=0. Their zeta values are
(-3+i sqrt(3))/2 and (-3-i sqrt(3))/2. Their real Jacobian determinants
are respectively -9 sqrt(3)/8 and +9 sqrt(3)/8. The inverse function
theorem therefore gives two local sections by side blocks over a common
open set of overlap matrices, with distinct zeta values. If z belonged to
K, one rational function of the overlap coordinates would equal zeta on both
sections away from its poles, a contradiction. This proves the
irreducibility of (1). Every witness calculation is exact in the verifier.

Similarly delta_M has degree two over K(z). The column reflection is an
automorphism of L fixing K and z and sending the nonzero delta_M to
-delta_M. Hence delta_M cannot belong to K(z). Its square lies in K(z)
by Section 1. Consequently K(z,delta), with precisely these two monic
quadratic relations, embeds faithfully into L by z -> zeta(M) and
delta -> delta_M.

The involution ι induced from x_j -> 1/x_j, y_j -> 1/y_j and conjugation
of constants satisfies

    ι(z)=chi/g-z, ι(lambda_j)=1/lambda_j, ι(delta)=g/(27 delta).

It agrees with ordinary complex conjugation at physical strict
specializations. For delta this follows from |delta|²=g/27, already
proved in STRICT_DOMAIN.md. The unit phase torus is Zariski dense in
the six complexified phase variables: a Laurent polynomial vanishing
there has all its Fourier coefficients zero.

## 3. Transfer and specialization with no hidden guards

All formula quantities through N and xi are rational functions in
K(z,delta). On the open phase locus A!=0, Section 1 reconstructs M.
Consequently the following rational identities hold in that field:

    ι(dF)=dF, rho²-n rho+beta ι(beta)=0, sigma ι(sigma)=rho,
    3NN†=G,
    sigma²(a bar(b)+c bar(a))+rho b bar(c)=0                (2)

for each row (a,b,c) of N. In the matrix identity, N† is the transpose
of N with ι applied to each entry, which is the conjugate transpose at
physical strict specializations. To check the last
identity, reconstruct M with w=A/bar(A): the nonconstant Fourier
coefficient of the squared modulus of the corresponding row is

    w(a bar(b)+c bar(a))+w^(-2)b bar(c).

It vanishes because M has unit-modulus entries. Multiplying by w² and using
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
g,n,P_j,ι(P_j). Adjoin z by the monic relation (1). The quadratic's
irreducibility over the fraction field and monic division make this
ring a domain embedded in K(z). The formulas for lambda_j belong to
it and lambda_j ι(lambda_j)=1 there, by the P norm identities. Adjoin
delta by its monic relation. The second irreducibility argument again
gives a domain. Delta is a unit, since its square is g/27 times units.
Now localize at rho and ι(rho). This ring embeds in K(z,delta). Every
expression in (2)–(3) and the displayed identities is in this ring.
An expression zero in its fraction field is zero in the ring itself.
It therefore specializes at every point where these displayed
denominators are nonzero. No product-regular guard or additional
denominator has been introduced.

The assertion ι(dF)=dF is already an identity before rho is inverted,
because dF only divides by g and delta. Thus at an arbitrary strict
seed, STRICT_DOMAIN.md first gives g,n,P_j,delta nonzero, and dF is
real. Choose its prescribed sign. Then rho=(n+dF)/2>=n/2>0, so all
remaining identities specialize. They give |sigma|²=rho>0 and |xi|=1.
Every cube root w is a unit phase. The overlap identity follows from
F3 F3†=3I. The constant squared-modulus coefficient of each row of
N diag(1,bar(w),w) F3 is one by 3NN†=G, and (2) and its conjugate make
the other coefficients zero. This proves that every entry has modulus
one, and hence existence everywhere on the whole region Ω.

For later orbit identification, (3) says that the two row products
of the constructed side are u,v and its permanent is z lambda0.
Moreover rho(1+q bar(q))=n and the definitions give det N=delta.
Thus det S²=-27 delta² and |det S|²=g. Its intrinsic phase

    -uv conjugate(det S)/det S = -uv g/(det S)² = lambda0.

The definition of zeta now gives zeta(S)=z.

## 4. Exactly two orbits and all root choices

Any side with the given overlap matrix has determinant squared modulus
g>0. The identities of OPPOSITE_CORNER.md force its zeta to be one of the two
distinct roots z_+,z_- because R>0. Section 1 reconstructs that side
from its Fourier coefficients after a possible column reflection.
For a fixed z and a fixed permitted delta, the only remaining choice
is w³=xi. Replacing w by omega w replaces column j by column j-1.
These are the three cyclic permutations. If dF=0, either delta sign
is permitted, and the column reflection relates them, followed if
necessary by a cycle. Thus there is at most one orbit for each z.

Section 3 supplies a side for each z on every strict seed, and its
zeta equals that z. zeta is invariant under column permutations,
so the two sides belong to distinct orbits. This proves exactly two.

## 5. Finite pairings exhaust every completion

Let H=[[E,B],[C,D]] be a complex Hadamard matrix with this strict corner E,
dephased so that the first row of B and the first column of C are ones. The upper
right block B is a normalized side with overlap matrix Gh. The transpose of C is a
normalized side with overlap matrix Gv. The theorem represents B and C by one of two
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
this exact test of the moduli of D recover every completion. This proves
exhaustion, but does not decide which pairings pass. That is Theorem 2.2
of `PROOF.md`.

Replay the algebra with
`python3 MinimalReconstruction/Proofs/verify_side_fiber.py` and
`python3 MinimalReconstruction/Proofs/verify_invariants.py`.

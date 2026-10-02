# H8: the complete finite common-ray algebra, all four mates, and quartet exclusion

**Statement.** Let H8 be the row-dephased phase Hadamard (7) of
[EqualityBranches.md](EqualityBranches.md). Then:

1. (Quartet exclusion.) H8 cannot be a transition of four MUBs. So no
   quartet contains an edge monomially equivalent (allowing conjugation) to
   H8.
2. (All mates.) Up to column phases and permutations there are exactly four
   bases unbiased to both I and H8/sqrt6. All four have entries in the 24th
   roots of unity, and each has a binary column quotient and exactly 24
   singular ordinary 3-by-3 minors. No two of them are mutually unbiased.

Consequently every full mate of every carrier in the equal-weight
S=126 branch has a zero3, and that whole branch is quartet-excluded.

**Status.** Proved. The analytic parts are the finite-length theorem, good
reduction at p=193513, simple-point lifting, and the two-frame refinement
argument. The finite parts are exact computations over F_193513 and
F_(193513^2), with exact characteristic-zero lifts in Q(i,sqrt2,sqrt3).

**Dependencies.**
- [../../CommonRays/FiniteCommonRayAlgebra.md](../../CommonRays/FiniteCommonRayAlgebra.md),
  Sections 3-4 (active, analytic). It gives the length 252 of the projective
  common-ray scheme of a type-II matrix with all 3-minors nonzero, with exactly
  2m simple boundary points, in every characteristic other than 2 and 3.
  For H8, m=6, so the affine length is 240.
- [EqualityBranches.md](EqualityBranches.md) (H8 and its completion class),
  used only to transfer the conclusion to the whole branch.
- Item 1 needs nothing else: the four mates are pairwise not unbiased.
  Separately, [../../EdgeRigidity/QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md)
  (no zero3 on quartet edges) gives a second reason, via the zero3 on each
  mate. That corollary rests on FourierBlocks and on Jaming et al.
  (published).

**Provenance.** Archive `03_algebraic/core/phase_reduction/gram_forcing/`:
`H8_ALL_MATES.md` (Part A below) and `H8_QUARTET_EXCLUSION.md` Sections 1-6
(Part B below), copied. Links are edited, the pointers to the length theorem
now go to CommonRays, and remarks about archive reconstruction guards are
removed. The verifier combines `verify_finite_certificate.py`,
`verify_h8_mates.py`, `compile_finite.py`, `reduced_fibre.py` and
`inspect_fibre.py` (the last three copied as `h8_*.py`). The normal-form
templates `h8_p193513_normal_forms.out` (msolve output) are copied to
`data/`. They are *validated*, not trusted (dimension sandwich, B.3). The
archive's frozen `finite_certificate.json` and `mates_certificate.json` are
not used: the graph is recomputed on every run.

---

## Part A. All full mates of the equal-weight equality class

**Theorem.** For the fixed row-dephased H8, there are exactly four full
common-unbiased bases, up to column phases and permutations. All four have
a binary column quotient, hence an ordinary singular three-by-three minor.
Their entries, after column normalization, are twenty-fourth roots of unity.

Consequently, if an actual edge H of a physical triple has three rows at
sharp Gram equality with three equal positive kernel weights, every full
mate in that reference frame has a zero3. This is a forced structural
restriction on the ENTIRE specified physical branch. It is not a claim
about arbitrary triples, or about auxiliary matching-phase rows.

### A.1 Complete finite support, not a sampled ray list

Use the complete finite algebra and good minor-boundary specialization in
Part B below. At p=193513 every physical
common ray reduces to one of the144 retained geometric points. The affine
algebra has length240, reduced length216, and only the72 simple, known fake
sections are removed. None of the eight nonsimple points is thrown away.

Every orthonormal common-unbiased basis reduces injectively to one of the
four exhaustive six-cliques. In each clique, FOUR vertices have full
Laurent Jacobian rank5, and the other TWO have rank3. It would be wrong to
claim that the last two have unique lifts merely because they are listed.

### A.2 Exact lifts of all four cliques

Set

    zeta24=(sqrt6+sqrt2+i(sqrt6-sqrt2))/4.

Its cube is zeta8, consistent with the exact carrier. The verifier fixes
an embedding of sqrt3 at the selected prime. Every coordinate of every
vertex of the four cliques is a power of the corresponding residue of
zeta24. Lift by precisely those powers. The verifier prints the four complete
six-by-six exponent arrays, with the first coordinate of each ray equal1.

Exact arithmetic in Q(i,sqrt2,sqrt3) checks all unit entries, orthogonality,
and all36 H-unbiasedness equations for each lifted basis K. The four bases
are distinct. Thus they are genuine physical bases, not asserted lifts of
arbitrary finite-field solutions.

At the four simple vertices of each clique, the known section is the UNIQUE
geometric lift over the henselian local ring: the corresponding finite flat
local factor has rank one. Any physical common basis reducing to that
clique must therefore contain those same four exact projective rays.

### A.3 The two nonsimple columns are fixed by BOTH flatness frames

The remaining two columns b,c span the fixed orthogonal complement of those
four rays. Normalize b,c as phase vectors of norm sqrt6. The exact control
checks, in each of the four bases, that

    conjugate(b_j)c_j is +1 or -1, three of each;
    conjugate((H*b)_0)(H*c)_0/6 is +i or -i.           (1)

Here H* denotes conjugate transpose; H is the phase Hadamard, so each
entry of H*b and H*c has squared modulus6.

Any unitary refinement of this two-dimensional complement has a first
phase column alpha b+beta c with |alpha|^2+|beta|^2=1. Flatness in the
reference basis gives

    Re(conjugate(alpha) beta)=0,

using the first identity in (1). Unbiasedness to H at coordinate0 gives

    Im(conjugate(alpha) beta)=0,

using the second. Thus conjugate(alpha) beta=0. One coefficient vanishes,
so the ray is b or c up to scalar. Orthogonality fixes the other ray.
This argument handles the full U(2) refinement, including its degenerate
coefficients, and does not assume simplicity of the last two ray points.

Every physical basis reducing to each clique is consequently its displayed
lift, modulo column monomials. These four lifts exhaust all full mates.

### A.4 Structural consequence and scope

The binary quotient in (1) makes b,c proportional on three rows. Adjoining
any third column gives a singular three-by-three corner of K. The verifier
finds exactly24 zero3 minors on each mate. In particular, the quartet-edge no-zero3 theorem
([../../EdgeRigidity/QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md))
excludes a quartet through every such K, consistently with the independent
finite cross-basis obstruction of Part B, Section B.6.

This proves more than nonextension of one selected triple: it forces the
structure on EVERY full mate of the entire equal-weight completion class.
Carrier monomial changes and conjugation preserve the conclusion, so the
exhaustive [equality reconstruction](EqualityBranches.md) transfers it to
every full carrier in that branch. None of these transformations independently
changes the sheet or shared frame of another quartet edge.

## Part B. Quartet exclusion via the complete finite algebra

### B.1 Exact carrier and prime

Work over the cyclotomic number field Q(zeta8), with the exact matrix (7)
of [EqualityBranches.md](EqualityBranches.md). Dephase its rows at column0. Its entries are units,
it has exactly six zero ordinary2-minors, and all400 ordinary3-minors are
nonzero.

Use p=193513 and the explicitly recorded embedding of zeta8 into F_p.
The same type-II identities and EXACT same minor pattern hold in the residue
matrix. These conditions are checked, not assumed from characteristic zero.

### B.2 Why the full ray algebra has dimension240

For this fixed carrier, in P5 x P5 use the ten original equations

    z_i w_i-tau=0 (i=1,...,5),
    l_j(z) g_j(w)-6 tau=0 (j=0,...,4), tau=z_0 w_0,
    l_j=sum_i z_i/H_ij, g_j=sum_i H_ij w_i.           (1)

The sixth transform equation follows from the type-II identity.
Sections3--4 of the
[finite common-ray algebra theorem](../../CommonRays/FiniteCommonRayAlgebra.md)
apply algebraically in every characteristic other than2,3 with these minor
hypotheses. They show that the boundary tau=0 has exactly12 simple points,
one for each orientation of each zero2-minor. There are no other boundary
points or components. A positive-dimensional projective component could not
meet these isolated points and would lie in an affine chart, impossible.
The complete projective intersection is therefore finite of length252.
Its affine torus algebra, z_0=w_0=1, has length240, over both the complex
field and the selected finite field.

### B.3 A self-checking finite algebra, including nilpotents

The stored polynomial normal-form templates were generated by exact finite
F4 arithmetic from (1). Their origin is NOT the completeness justification
used by the verifier. It constructs ten240-by240 coordinate matrices and
checks independently that:

- they commute pairwise;
- each coordinate times its inverse is the identity;
- all SIX transform equations in (1) hold as matrix identities;
- the constant vector is cyclic: the240 selected monomials applied to it
  give precisely the240 standard coordinate vectors.

Thus the original algebra A in (1) surjects onto a240-dimensional cyclic
representation. Section B.2 already proves dim A=240, so this surjection is
an isomorphism. This dimension sandwich avoids assuming that a purported
Groebner basis generated the same ideal. Changing the normal-form templates
cannot conceal a missing component if these matrix checks pass.

Because p>240, the Frobenius map `a -> a^p` kills the nilradical exactly:
every nilpotent has nilpotence index at most240, while Frobenius is an
automorphism on the reduced finite algebra. Its image is consequently a
reduced subalgebra isomorphic to A_red. The verifier computes that image
with dimension216, and checks invariance and all coordinate equations.
The represented coordinates are x_i^p,y_i^p. This just permutes the complete
geometric point set by Frobenius, preserving every equation over F_p.

A square-free degree216 primitive polynomial, checked coordinate formulas,
and their factorization give ALL216 points in F_(p^2). There are96 linear
and60 quadratic factors. This is not the incomplete output of a failed
primitive for the nonreduced240-dimensional algebra. All eight points with
Jacobian rank3 remain in the reduced support; the other208 have rank5.

### B.4 Remove only the72 simple, known nonphysical points

For `t^2+4t+1=0`, column j and coordinate k, the known fake solution is

    x_i=(H_ij/H_0j) t^(delta_ik-delta_0k), y_i=1/x_i.

These72 distinct points are checked directly in (1). BOTH roots t have
modulus different from1 in characteristic zero, so the sections are
nonphysical. At this prime all72 have full rank5 Laurent Jacobian and
are simple. This last check matters: a nonsimple fake point would not be
removed merely by its name, since another branch could specialize to it.

The remaining full residual length is168; its COMPLETE geometric support
has144 points. None of the eight nonreduced local summands was discarded.

### B.5 Good reduction on this ordinary-minor boundary

Here is the physical-lift argument. Localize the algebraic-integer ring of Q(zeta8) at the chosen prime.
The zero2 identities remain identically zero and all required nonzero minors
are units. Thus the twelve explicit projective boundary points are simple
sections over this local ring, after an unramified extension if needed.

We may pass to the strict henselization of the local ring for the splitting
argument; this does not change whether a geometric quartet exists.
The projective scheme (1) has finite generic and special fibres by Section B.2.
It is proper and quasi-finite over this local base, hence finite. In its
smooth relative ambient space, ten equations have the expected codimension;
the total scheme is a one-dimensional complete intersection. It has no
vertical component because that would make the special fibre positive
dimensional. It is consequently flat over the discrete valuation ring,
of rank252. The simple boundary sections are open and closed local factors;
their unique lifts are the same named boundary points. Removing them gives
a finite flat affine model of rank240. Likewise the72 simple fake sections
can be removed without losing any physical generic point, leaving rank168.

Every physical common ray is algebraic, because the generic ray algebra is
finite. Its coordinates and inverses are integral in this finite model, so
they reduce to units and to one of the144 retained geometric points. No
affine point can disappear into a boundary or simple fake section.

For normalized phase rays let `h(x,y)=sum x_i^(-1)y_i`. Within an orthogonal
basis h=0 in both directions. Across mutually unbiased bases
`h(x,y)h(y,x)=6`. If same-basis rays collided after reduction, their zero
overlap would become6; if cross-basis rays collided, the product would
become36 instead of6. Both are impossible for p>5. Thus all twelve added
rays of any hypothetical quartet remain distinct in the retained graph,
even at the nonreduced points. This is the collision argument of the earlier
specialization theorem, now with the required minor-boundary model supplied.

### B.6 Exhaustive finite graph obstruction

For every pair among the144 retained points the verifier computes BOTH
directed overlaps and builds the orthogonality graph. Its degree histogram is

    96 vertices of degree6, 24 of degree8, 24 of degree5.

The exhaustive six-clique enumeration gives exactly FOUR bases. Their six
unordered pairs all fail unbiasedness; explicit raw squared-overlap witnesses
are respectively4,12,4,12,4,12, never6. A basis cannot pair with itself,
since an identical ray would give36 instead of6.

Section B.5 would turn a physical quartet into two distinct six-cliques passing
every cross equation. No such pair exists. This excludes every quartet
containing H8, without assuming a census of its characteristic-zero mates.
The exhaustive equality reconstruction then proves the stated whole-branch
corollary.

## Verification

    python3 H8Mates.py

runs in about 30 s and exits nonzero on failure. It (1) reduces H8 modulo
p=193513 and checks 6 zero 2-minors and 400 nonzero 3-minors. (2) It builds
the ten 240-by-240 multiplication matrices from the templates in data/ and
checks pairwise commutation, the five inverse pairs, all six transform
equations, and cyclicity of the constant vector (so the algebra is exactly
240-dimensional by B.2-B.3). It then computes the Frobenius image, of
dimension 216. (3) It factors a square-free primitive, obtains all 216
points over F_(p^2), and computes the Jacobian ranks (208 of rank 5, 8 of
rank 3). It removes exactly the 72 fake sections, all simple. It builds the
orthogonality graph on the 144 retained points (degrees 96x6, 24x8, 24x5),
enumerates its six-cliques (exactly four), and finds that all six pairs fail
unbiasedness. (4) An independent bit-set clique enumeration uses
hand-written F_p[sqrt5] arithmetic. (5) Each clique is lifted to exact
24th-root matrices, and the script checks physicality and unbiasedness to
H8 in characteristic zero, the simple/nonsimple split (4+2), the two
refinement identities (1) of A.3, the 24 zero3 minors of each mate, and
explicit failed cross-overlaps between every pair of mates.

# Four-phase reconstruction of order-six complex Hadamard matrices

## Scope and external theorem inputs

**Working map:** the positive-sheet surjection in Section 3, with four phase
seeds and `R>0`, covers all non-F6, non-Tao classes up to equivalence. Section 4
is optional fixed-corner enumeration and is not needed to run this map.

This document gives a self-contained reconstruction specification. The global
strict-corner theorem and strict completion-exhaustion theorem are taken as
proved elsewhere by our collaborator, as reported in Sections 4, 5 and 9 of
`COMPREHENSIVE_HANDOFF.md` (21 September 2026). They are accepted external
inputs here; this document neither supplies nor independently certifies their
proofs. The opposite-corner sheet reversal is also taken as proved elsewhere, in
Section 6 of `Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md`.
The quadratic side formulas are from
`Hadamard6_Unitary_Core_Phase_Gate_Form.md` with the corrected new guards.

The [accepted input register](ASSUMPTIONS.md) separates these assumptions from
the classification paper's included proof package. Historical source filenames
above are provenance references, not files needed to evaluate the formulas.
The external conclusions used for optional enumeration are:

1. Every order-six complex Hadamard matrix not equivalent to the Fourier
   matrix F6 has a positional 3-by-3 corner with the strict invariant R>0
   defined below.
2. At a strict corner each normalized side fiber has exactly two orbits under
   permutations of its three columns. The formulas below recover both.
3. Normally two of the four side pairings give flat completions. At two
   exceptional Tao corner classes a third pairing also gives a flat
   completion; the fourth is nonflat. Retaining all four pairings and testing
   flatness includes these exceptions without an additional parametrization.

Thus four phase seeds, one strict inequality and explicitly computable finite
choices cover every class except F6. F6 can be included separately as the
explicit matrix (F6)_{jk}=exp(2 pi i j k/6), 0<=j,k<6.

## 1. Convention, seeds and domain

A raw complex Hadamard matrix H has |H_ij|=1 and HH†=6I6. Its normalized
unitary is H/sqrt(6). Equivalence means row and column permutations and
multiplication of individual rows and columns by unit phases. A selected
3-by-3 corner is moved to the upper left and the first row and column are
made equal to one by these operations.

Throughout, bar denotes complex conjugation, T transpose, dagger conjugate
transpose, I3 the 3-by-3 identity, and i²=-1. Choose

    a,b,c,d in T = {z in C : |z|=1},
    E = [[1,1,1],[1,a,b],[1,c,d]],
    Gh = 6I3 - E E†,
    Gv = 6I3 - E^T bar(E).

For either Gram matrix G write

    G = [[3,bar(s),bar(t)],[s,3,bar(r)],[t,r,3]].

Define its real scalars

    X=|s|², Y=|t|², Z=|r|²,
    p=X+Y+Z,
    J=2 Re(s r bar(t)),
    W=XY+XZ+YZ-XYZ,
    g=27-3p+J,
    eta=9-p+J,
    chi=W-(p-9)(p-18)+(p-15)J,
    R=4g² eta-chi².

The horizontal and vertical values g,eta,chi,R agree. The entire seed domain
for this strict reconstruction is

    (a,b,c,d) in T^4,  R>0.

This implies positive definiteness of Gh,Gv, g=det(Gh)=det(Gv)>0,
and nonvanishing of every divisor below. No extra guard is imposed.
Boundary seeds R=0 are unnecessary for this class-covering construction:
the external strict-corner theorem supplies another corner for every non-F6
matrix. It does not assert that every corner of such a matrix is strict.

## 2. Explicit side constructor S(G,z)

Set

    z_+ = (chi+i sqrt(R))/(2g),
    z_- = (chi-i sqrt(R))/(2g),

where sqrt(R)>0. For either G and either z=z_+ or z=z_-, compute

    P0 = r s² + bar(r)t² + (3-Z)s t,
    P1 = t bar(s)² + r² bar(t) + (3-Y)r bar(s),
    P2 = s bar(t)² + bar(r)² bar(s) + (3-X)bar(r)bar(t),
    (c0,c1,c2) = (9-Z,9-Y,9-X),
    lambda_j = Pj (g+cj bar(z))/|Pj|²,  j=0,1,2.

The lambda_j are unit phases. Put

    u = lambda0 bar(lambda1),
    mu=s/3, nu=t/3,
    n=1-|mu|²,
    k=r/3-nu bar(mu),
    alpha=mu²-u bar(mu),
    gamma=2mu nu-z lambda0/3.

Choose a complex square root

    delta²=(g/27)lambda0 bar(lambda1)bar(lambda2).

The quantity

    dF=(27/g)(n gamma-2alpha k)bar(delta)

is real. Select the sign of delta so dF>=0; at dF=0 either sign is allowed.
Then set

    rho=(n+dF)/2,
    q=alpha/rho,
    cplus=(k-delta bar(q))/n,
    cminus=(k q+delta)/n,
    sigma=u+mu q,
    xi=sigma²/rho,
    M=[[1,0,0],
       [mu,sigma,q bar(sigma)],
       [nu,cplus sigma,cminus bar(sigma)]].

Here n,rho>0, |xi|=1 and 3MM†=G. These are consequences, not extra guards.
Let

    omega=exp(2 pi i/3),
    F3=(omega^(jk))_(j,k=0,1,2),
    P(w)=diag(1,bar(w),w).

Choose any cube root w³=xi and define

    S(G,z)=M P(w) F3.

The entries of S have modulus one, its first row is (1,1,1), and SS†=G.
The three cube-root choices simply cycle its columns. The orientation
choice at dF=0 is likewise a presentation choice modulo side permutations.

## 3. The positive-sheet surjection: the working reconstruction

For global work, including the no-four-MUB problem, use only

    B = S(Gh,z_+),
    C = S(Gv,bar(z_+))^T,
    D = -C E† adj(Gh) B/g,
    H_+(a,b,c,d) = [[E,B],[C,D]].

The accepted matched-completion theorem guarantees that H_+ is Hadamard
throughout the domain Dstrict={(a,b,c,d) in T^4 : R>0}. No additional
flatness filter or choice between matched pairings is needed for this map.
Here `adj` is the classical adjugate and `g=det(Gh)>0`; only explicit cofactors
and scalar division are required.

The map

    Dstrict -> Hadamard equivalence classes,
    (a,b,c,d) -> [H_+(a,b,c,d)]

contains every non-F6, non-Tao class in its image. This is the surjective
covering used here; adjoining the explicit F6 and Tao classes covers all
order-six Hadamard classes. It is not asserted to be injective. Different
eligible corners of one matrix can yield different seeds representing the
same class, even after root-induced permutations are removed.

Why one sheet suffices: a non-F6, non-Tao matrix has a strict corner and
is recovered by one of the two matched pairings. If it uses the negative
pairing, exchanging the opposite blocks E and D, then dephasing, reverses
the sheet and preserves R>0. The positive constructor at that new corner
therefore recovers an equivalent matrix. This uses the external
opposite-corner theorem; it does not equate the two completions at the
same seeds.

For precision, if H is dephased and D is its bottom-right 3-by-3 block
indexed 0,1,2, the opposite seed is

    a'=D00 D11/(D10 D01),  b'=D00 D12/(D10 D02),
    c'=D00 D21/(D20 D01),  d'=D00 D22/(D20 D02).

These entries are phases. The transformation uses the completed matrix;
it need not be evaluated to run the positive-sheet covering.

### Use for the no-four-MUB problem

Two orthonormal bases are mutually unbiased when every cross inner product
has modulus 1/sqrt(6). Fix the standard basis. It is sufficient to prove
that no H_+(a,b,c,d)/sqrt(6), for any seed in Dstrict, extends with that
standard basis to four mutually unbiased bases, and separately exclude
the F6 and Tao cases. This statement is a reduction, not a proof of those
exclusions. Repeated representations do not affect its validity.

Hadamard equivalence preserves this extension question: row monomial
unitaries act on the entire configuration and preserve the standard basis
as a set of rays; column permutations and phases only relabel or rephase
the carrier basis. Transport all additional bases in that same gauge.

For a self-contained exceptional representative, with omega as above, Tao
is the phase matrix

    [[1,1,1,1,1,1],
     [1,1,omega,omega,omega²,omega²],
     [1,omega,1,omega²,omega²,omega],
     [1,omega,omega²,1,omega,omega²],
     [1,omega²,omega²,omega,1,omega],
     [1,omega²,omega,omega²,omega,1]].

## 4. Optional: all completions at a prescribed corner

Compute two horizontal and two vertical candidates:

    B_e = S(Gh,z_e),
    C_f = S(Gv,bar(z_f))^T,       e,f in {+,-}.

For each of the four pairs (e,f), form

    D_ef = -C_f E† adj(Gh) B_e/g,
    H_ef = [[E,B_e],[C_f,D_ef]].

Every H_ef satisfies H_ef H_ef†=6I6. Its first three rows and first three
columns already have phase entries. Consequently the complete and exact
acceptance test is simply

    |(D_ef)_jk|²=1 for all j,k=0,1,2.

Keep every pair satisfying this test. The external exhaustion theorem says
that this list recovers every completion at the fixed strict corner, modulo
permutations of the last three rows and columns. It gives two surviving
pairings normally and three at the exceptional Tao corners. These are
framed completions of the same E, not a count of inequivalent classes.

The two always-flat matched pairings use e=f. When enumerating every
completion at a prescribed corner, retain the other pairings through the
flatness test to include the exceptional Tao completion. This enumeration
is not required for the positive-sheet global covering of Section 3.

## 5. Parameter and operation counts

The only continuous inputs are a,b,c,d. All auxiliary quantities above are
explicit functions of those seeds and finite root choices. For a single
candidate pairing, the radical stages use one shared real square root,
one complex square root per side and one unit-phase cube root per side.
Cube-root choices introduce no additional classes modulo the indicated
row/column permutations. To enumerate the whole completion list, evaluate
both side branches and test the four pairings.

The working global description is the positive-sheet four-phase surjection
of Section 3, with F6 and Tao handled separately. Section 4 is needed only
when every completion at a prescribed corner is wanted.

## 6. Related retained results

The proved measurement identities and inequalities are in [`Measurements/`](Measurements/) (the earlier
`ProvenResults/` index was removed on 8 Oct 2026, in commit 2c314c2a).

The preferred measurement equations are
[SingleRadicalMeasurements.md](Measurements/SingleRadicalMeasurements.md).
They retain this reconstruction and its full R>0 domain; they do not replace
its coverage assumptions or prove a seed-only restriction.

## 7. Proof references and audit status added 30 September 2026

Every preceding statement is preserved verbatim. The [proof dossier](Proofs/README.md)
tracks the precise obligations without replacing them by generic or
product-regular versions.

For Section 1, [StrictDomain](Proofs/STRICT_DOMAIN.md) proves positive
definiteness directly from unit seeds and R>0, including g>0 and n>0.
For Section 2, the same proof establishes all P_j are nonzero, lambda_j
are unit phases, and delta is nonzero; the remaining side-constructor
identities and exhaustion still require proof.

For Section 3, [OppositeCorner](Proofs/OPPOSITE_CORNER.md) gives the exact
invariant identities and transport theorem with its matching and uniqueness
hypotheses stated explicitly. It separates that result from the stronger
fixed-seed representation needed by NumericalCampaign/REDUCTION.md.
Section 4's complete two-orbit exhaustion and exceptional Tao pairings
remain obligations MC2 and MC4. Global strict-corner existence remains MC1.

The recovered derivations and their provenance are included in the dossier.
A successful algebra check does not certify the remaining global claims.
This appended section changes the file hash; only the original prefix is pinned (`Proofs/provenance/APPEND_ONLY_BASELINES.json`).

### Further proof progress, 30 September 2026

The earlier status statements are preserved verbatim. Section 2 and its
exact two-orbit exhaustion are now proved in
[Proofs/SIDE_FIBER.md](Proofs/SIDE_FIBER.md), with no extra guards.
Both matched completions in Sections 3 and 4 are proved flat throughout
R>0 in [Proofs/MATCHED_FLATNESS.md](Proofs/MATCHED_FLATNESS.md).
The two exceptional strict Tao corner classes and all four of their
pairings are proved in [Proofs/TAO_PAIRINGS.md](Proofs/TAO_PAIRINGS.md).
[Proofs/OPPOSITE_CORNER.md](Proofs/OPPOSITE_CORNER.md) also supplies the
fixed-seed conjugation relation used by the numerical campaign.

The remaining global obligations are MC1 (strict-corner existence) and
the converse part of MC4 (no other nonmatched flat completions). The
positive-sheet surjection in Section 3 remains conditional on those
obligations; none of the successful local verifiers claims otherwise.

### Nonmatched converse completed, 30 September 2026

[Proofs/NONMATCHED_EXCEPTIONS.md](Proofs/NONMATCHED_EXCEPTIONS.md) proves
the exceptional converse in Section 4: every nonmatched strict
completion is Tao, and the exact census accounts for its two strict
corner classes and all four pairings. The proof identifies the necessary
matching rule imported from ClassificationPaper separately from its
generic flatness theorem; this distinction is essential.

Consequently the remaining unproved input to Section 3's global
surjection is strict-corner existence (MC1). The other side, flatness,
matching, and sheet-transport inputs are now supplied locally relative
to the explicitly listed ClassificationPaper results. Earlier text and
status entries are preserved verbatim.

### Global coverage completed, 1 October 2026

All previous specification text and status entries are preserved verbatim.
[Proofs/STRICT_CORNER_COVERAGE.md](Proofs/STRICT_CORNER_COVERAGE.md) supplies
the remaining global input: every non-F6 class has a strict positional
corner, with Tao included. Its proof handles the ramified cases through
exact whole-strip identities, pole analysis, endpoint exclusions and
Fourier-family routing.

Thus Sections 1–4 now have complete proofs relative to the permitted
ClassificationPaper inputs: [SIDE_FIBER.md](Proofs/SIDE_FIBER.md) proves
the entire side recipe, all prescribed divisors, exactly two permutation
orbits and exhaustive finite pairing; [MATCHED_FLATNESS.md](Proofs/MATCHED_FLATNESS.md)
proves both matched pairings flat; [NONMATCHED_EXCEPTIONS.md](Proofs/NONMATCHED_EXCEPTIONS.md)
and [TAO_PAIRINGS.md](Proofs/TAO_PAIRINGS.md) classify every exceptional
pairing. [OPPOSITE_CORNER.md](Proofs/OPPOSITE_CORNER.md) then gives global
positive-sheet coverage and the fixed-seed conjugation relation used by
NumericalCampaign/REDUCTION.md, with maximality and sorted conditions preserved.

Replay all local checks with `python3 MinimalConstruction/Proofs/verify_dossier.py`.
See [COMPLETION_AUDIT.md](Proofs/provenance/COMPLETION_AUDIT.md) for the requirement
audit and [CHANGE_REPORT.md](Proofs/provenance/CHANGE_REPORT.md) for all changed files
and hashes. The dossier is replayed by the root `verify.py`.

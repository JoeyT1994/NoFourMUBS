# Opposite-corner transport: proved algebra and remaining hypotheses

Status: the matrix identities and conditional sheet-reversal theorem below
are proved. The separate side-exhaustion and matching hypotheses are now
discharged by SIDE_FIBER.md, MATCHED_FLATNESS.md and
NONMATCHED_EXCEPTIONS.md. Full positive-sheet coverage still needs MC1.

## An invariant of an invertible phase block

For any invertible 3-by-3 matrix X whose entries have modulus one, put

    Theta(X)=-perm(X) det(X)² / (|det(X)|² product_ij X_ij).

This is invariant under row and column phases, row and column permutations,
and transposition. Indeed, row/column phases of total product t multiply
perm(X), det(X), product(X) by t,t,t³ respectively. Determinant signs
disappear upon squaring, and transposition preserves all expressions.

Evaluate g,eta,chi,R on G=XX†, with exactly the scalar definitions in
RECONSTRUCTION.md. Then

    g=|det X|²,
    eta=|perm X|²=|Theta(X)|²,
    chi=g(Theta(X)+conjugate(Theta(X))),
    R=4g²(Im Theta(X))².

The first three identities are exact Laurent-polynomial identities after
dephasing X; the local verifier proves them in four independent unit
variables, replacing conjugation by inversion. Monomial invariance of
the Gram scalars extends the dephased identities to every X. The last
identity follows by substitution into R=4g²eta-chi².

## Conditional sheet reversal

Let H=[[E,B],[C,D]] be a raw Hadamard matrix. Suppose B,C are invertible,
their Gram invariants are the common (g,eta,chi,R) with R>0, and

    Theta(B)=z,   Theta(C)=conjugate(z),
    z=(chi ± i sqrt(R))/(2g).

Exchange the two row blocks and the two column blocks, and dephase the
result; call this operation T. Its horizontal and vertical side blocks
are monomially equivalent to C and B respectively. Their Theta values
are therefore conjugate(z) and z.

The complementary side Grams BB†=6I-EE† and C†C=6I-E†E have the same
eigenvalues, so det(BB†)=det(CC†). Their eta and chi also agree by the
Theta identities and the conjugacy hypothesis. Consequently the new
corner has the same g,eta,chi,R and the opposite sign of Im z.
In particular strictness is preserved. Its four seeds are exactly

    D00 D11/(D10 D01), D00 D12/(D10 D02),
    D00 D21/(D20 D01), D00 D22/(D20 D02).

All denominators are nonzero because D has unit entries. On every
globally dephased nonzero matrix, T(T(H))=H: cancellation of the
dephasing factors proves this rational identity, also checked symbolically
by the verifier with 25 independent nonzero entries.

If, in addition, the normalized side fiber at fixed (G,z) consists of
one column-permutation orbit represented by S(G,z), and the constructor
has the stated conjugate matching, T(H) is reproduced by the opposite
sheet constructor up to the last-three row/column permutations. Thus
every matched negative-sheet carrier has an equivalent positive-sheet
representative. This implication alone does not prove that every strict
non-Tao carrier has a matched pairing, nor that every non-F6 carrier has
a strict corner. NONMATCHED_EXCEPTIONS.md supplies the former; MC1 is
still required for the latter.

## Exact campaign scope, including Tao

NumericalCampaign/REDUCTION.md excludes Tao in step (b), then in step (e)
requires a **fixed-seed** representation H' equivalent to H_+(theta) or
H_-(theta) for each remaining carrier at its chosen maximal corner.
Opposite-corner transport alone is not a replacement for that fixed-seed
statement. The campaign then uses conjugation to preserve its sorted
maximal-corner conditions. The proof inventory must therefore establish
that all nonmatched exceptions are Tao, and retain a complete account
of Tao's finite pairings. It must not silently assert that Tao itself is
in the matched positive-sheet image.

Replay: `python3 MinimalConstruction/Proofs/verify_invariants.py`.

## Discharged hypotheses and the campaign's conjugation step

SIDE_FIBER.md now proves fixed-(G,z) uniqueness up to side permutations,
and MATCHED_FLATNESS.md proves flatness of both conjugately matched
completions on all R>0. Thus every matched negative-sheet output has
an equivalent positive-sheet output at the opposite corner,
unconditionally on the strict seed domain. NONMATCHED_EXCEPTIONS.md
excludes non-Tao nonmatched completions; global coverage still needs MC1.

There is also the fixed-seed relation required by the campaign. Complex
conjugation preserves the real scalars g,eta,chi,R and sends Theta(X)
to conjugate(Theta(X)). Hence conjugating H_-(E) gives a matched
positive-sheet completion of conjugate(E). By side uniqueness and
the forced-block formula,

    conjugate(H_-(E)) ~ H_+(conjugate(E)),

where only last-three row/column permutations are required. Conjugation
preserves every positional corner R and every correlation magnitude.
It therefore preserves maximal-corner selection and the sorted
magnitude conditions of the campaign's fundamental domain. For a MUB
configuration, conjugate all bases simultaneously; all absolute inner
products remain unchanged. This proves the sheet-handling step of
NumericalCampaign/REDUCTION.md once its remaining carriers are shown
to be matched at the selected strict corner.

TAO_PAIRINGS.md proves that every strict Tao frame is nonmatched,
accounts for both of its strict corner classes, and excludes Tao from
the matched image. The independent no-quartet/no-triple exclusions
used in reduction step (b) are separate campaign inputs.

## Global hypotheses now discharged

STRICT_CORNER_COVERAGE.md proves MC1 for every non-F6 class, including
Tao. NONMATCHED_EXCEPTIONS.md already supplies matching at every strict
corner of every non-Tao carrier. Hence the earlier conditional transport
now gives the full positive-sheet surjection on the non-F6, non-Tao
classes. At the campaign's chosen maximal sorted corner, SIDE_FIBER.md
first represents the actual carrier on one of the two matched sheets;
the fixed-seed conjugation relation above then gives its positive-sheet
representative while preserving that maximum and the sorted conditions.
Tao is exhausted by the separate finite pairing census. No assertion
that Tao lies in the matched image is needed or made.

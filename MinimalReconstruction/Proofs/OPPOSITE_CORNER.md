# The invariant of an invertible block

These identities are used by SIDE_FIBER.md (Lemma 2.1 and the blocks with a given overlap matrix) and checked by
`verify_invariants.py`.

For any invertible 3-by-3 matrix M whose entries have modulus one, put
Ψ(M)=perm(M) det(M)²/product_ij M_ij and

    zeta=-perm(M) det(M)² / (|det(M)|² product_ij M_ij).

This zeta is invariant under row and column phases, row and column permutations,
and transposition. Indeed, row or column phases of total product ε multiply
perm(M), det(M), product(M) by ε,ε,ε³ respectively. Determinant signs
disappear upon squaring, and transposition preserves all expressions.

Evaluate g,eta,chi,R on the overlap matrix G=MM†, with exactly the scalar
definitions in RECONSTRUCTION.md. Then

    g=|det M|²,
    eta=|perm M|²=|zeta|²,
    chi=g(zeta+conjugate(zeta)),
    R=4g²(Im zeta)².

In particular zeta=-Ψ(M)/g, the root ζ of Methods when M=B.

The first three identities are exact Laurent-polynomial identities after
dephasing M. The local verifier proves them in four independent unit
variables, replacing conjugation by inversion. Monomial invariance of
the overlap scalars extends the dephased identities to every M. The last
identity follows by substitution into R=4g²eta-chi².

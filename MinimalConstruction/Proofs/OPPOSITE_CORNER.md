# The invariant of an invertible phase block

These identities are used by SIDE_FIBER.md (Lemma 2.1 and the side fibre) and checked by `verify_invariants.py`.

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

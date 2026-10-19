# An exact diagnostic for a stronger complementary-block claim

**CERTIFIED: the stronger universal claim below is false.** This diagnostic
is supplementary to the structural return. It does not challenge the
matched-flatness theorem, which explicitly requires conjugate labels.

One possible shortcut would have been to assert, for every three-by-three
complementary pair of blocks B,C in any six-by-six Hadamard matrix, that

\[
\Psi(B)=\overline{\Psi(C)},\qquad
\Psi(X)=\frac{\operatorname{perm}(X)\det(X)^2}
                  {\prod_{i,j}X_{ij}}.
\]

The included `check_rejected_claim.py` gives an exact counterexample using
the six-by-six root-of-unity matrix commonly called the Tao matrix. It
implements the Eisenstein ring as integer pairs with
\(\omega^2+\omega+1=0\), so every check is exact.

The script verifies phase flatness, \(HH^*=6I\), and, for the displayed
three-by-three block partition,

\[
\det H=-216,\qquad \det B=\det C=3,
\]

\[
\Psi(B)=\Psi(C)=9-9\omega,
\qquad \Psi(B)-\overline{\Psi(C)}=-9-18\omega\ne0.
\]

The corner has strict invariants
\(g=9,\eta=3,\chi=-27,R=243>0\), so restricting only to the strict
corner domain does not rescue this stronger claim. The two labels in this
example are equal, not conjugate.

A related attempted entrywise-square complementary-determinant identity
also fails: its two sides evaluate to 3 and \(3\omega\). The exact formula
and its evaluation are recorded in the checker.

Ordinary complementary-minor identities hold for a forced unitary
completion independently of label pairing. A new relation incorporating
the permanent or the entrywise-square data is needed to select matching.
The rejected universal claim cannot provide that relation.

Run this optional diagnostic from the package root with
`python verify_all.py --diagnostics`.

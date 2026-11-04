# The non-Tao Hadamard quotient is connected

## Theorem and proof dependencies

Assume the permitted classification-relative reconstruction facts MC1–MC5 in
`PROMPT.md`. With the global maximum census proved in `DELTOID_REDUCTION.md`
and `TWO_BOUNDARY.md`, and the exact orbit identification in `EXACT_MAXIMA.md`,
the space

\[
X=(\mathcal H/\cong)\setminus\{[\mathrm{Tao}]\}
\]

is connected.

Consequently, a **nonempty** finite Record union satisfying the complete
boundary condition of `SHEETS_TOPOLOGY.md` covers X. It is enough to include
the Fourier class. A separately certified Record around K* and closure under
conjugation or transposition are not necessary for this stronger coverage
statement.

This is a statement about connectedness, not a claim of a smooth global
manifold or a claim that every pair of classes has an explicitly constructed
path. It does not supply the finite Record family, its boundary certificate,
or the quartet-exclusion certificates.

## 1. The positive-sheet image is connected

Write

\[
A=\{[H_+(\theta)]:\theta\in S\},\qquad
B=\{[\overline{H_+(\theta)}]:\theta\in S\}.
\]

The results in `SHEETS_TOPOLOGY.md` show that the positive quotient sheet is
continuous throughout S, including all auxiliary root cuts. Every component
C of S contains a positive local maximum. The global census puts that
maximum in the seed-map orbit of θ*, and the exact maximum-frame identities
show

\[
[H_+(L\theta_*)]=[K_*]
\quad\text{for all 144 seed maps }L.
\]

Thus every image H+(C) is connected and contains the same point [K*]. Their
union A is connected. Conjugation is continuous, so B is connected too.

Neither image contains the isolated Tao class. One direct reason, already
proved in the sheet note, is that a fixed equivalence class has only finitely
many dephased ordered corner seeds; it cannot be the image of a nonempty
open seed neighborhood under the literal-corner construction. Isolation and
continuity would force exactly such a neighborhood if Tao occurred.

MC1–MC5 and conjugation invariance of S imply

\[
X=A\cup B\cup\{[F_6]\}.
\tag{1}
\]

It remains to show that adjoining [F₆] connects these two sets.

## 2. An explicit nonexceptional Fourier degeneration

Put ω=e^{2πi/3}, F₃=(ω^{ab}), and

\[
D(t)=\operatorname{diag}(1,e^{it},1),\qquad
H(t)=\begin{pmatrix}
F_3&F_3\\ F_3D(t)&-F_3D(t)
\end{pmatrix}.
\tag{2}
\]

All entries have modulus one, and block multiplication gives H(t)H(t)*=6I.
The family is continuous. At t=0 it is F₂⊗F₃, which is equivalent to F₆
by explicit row and column permutations. For indices p,q∈{0,1} and
a,b∈{0,1,2}, choose Fourier row and column indices

\[
j=3p+2a\pmod6,\qquad k=3q+4b\pmod6.
\]

Then

\[
e^{2\pi i jk/6}=(-1)^{pq}\omega^{ab},
\]

which is the corresponding entry of H(0). Both index maps are bijections.

For a phase matrix, the set of four-entry cross ratios

\[
\frac{H_{ij}H_{k\ell}}{H_{i\ell}H_{kj}}
\]

is invariant under Hadamard equivalence: row and column phases cancel, and
permutations rearrange the set. Every ratio for F₆ is a sixth root of unity;
every ratio for the displayed Tao matrix is a third root of unity. In H(t),
the first and fourth rows and the first and second columns give exactly
e^{it}. Hence

\[
0<t<\pi/3
\quad\Longrightarrow\quad
H(t)\not\cong F_6,\qquad H(t)\not\cong\mathrm{Tao}.
\tag{3}
\]

The exact verifier `verify_sheet_branches.py` treats z=e^{it} as an
indeterminate unit phase and checks flatness, all orthogonality equations,
the displayed cross ratio, and the CRT permutations as identities in
Q(z,ω), with ω²+ω+1=0. It also checks the row permutation identifying
conjugate F₆ with F₆. These are full-family identities, not numerical
evaluations at sample t-values.

## 3. The Fourier class lies in the closure of both images

Take any sequence tₙ→0 with 0<tₙ<π/3. By (1)–(3), each [H(tₙ)] lies
in A or B, and [H(tₙ)]→[F₆]. At least one of A,B contains a subsequence,
so [F₆] belongs to the closure of one of them.

Conjugation exchanges A and B. It fixes [F₆], since conjugation of the
Fourier matrix replaces row j by row −j modulo six. Applying conjugation
to the convergent subsequence proves that [F₆] belongs to the closure of
the other set as well.

A connected set together with one of its closure points is connected.
Therefore A∪{[F₆]} and B∪{[F₆]} are connected sets with the common
point [F₆]. Their union is X by (1), proving the theorem.

## 4. Consequence for the finite atlas

For the finite Record regions Rᵢ and certified quotient interiors Uᵢ of
`SHEETS_TOPOLOGY.md`, the complete boundary condition proves

\[
W=\left(\bigcup_i R_i\right)\cap X
=\left(\bigcup_i U_i\right)\cap X.
\]

The left side is closed in X and the right side is open. Connectedness of
X therefore gives W=X whenever W is nonempty.

The boundary condition still must be certified over **every actual Hadamard
on every Record boundary**, accounting for all phase representatives,
possible stabilizers, tangent boundaries and normal boundaries. A finite
set of checked centers or individual passing local exclusion cells does not
establish it. The connectedness theorem removes the need to find a Record
representative in every component; it does not replace those boundary and
exclusion certificates.

# A global inequality for every complex Hadamard matrix of order six

## Main result — PROVED, with exact finite certificates

For every matrix \(H\in\mathbb C^{6\times6}\) with \(|H_{ia}|=1\) and \(HH^*=6I\),

\[
\boxed{S(H)\ge100\,L_{\mathrm{tot}}(H).}
\tag{1}
\]

The normalization is exactly that of the V2 brief: the entries of H have modulus one; S is the sum over all 400 positional corners; and \(L_{\rm tot}\) sums over all six reference rows. There is no restriction on distance from the Fourier class or membership in a parametrized family. The Fourier and Tao classes are included.

The two ingredients are

\[
\boxed{L_{\rm tot}\le6D_{\rm sym}},\qquad
\boxed{S\ge600D_{\rm sym}}.
\tag{2}
\]

Both inequalities have exact positive certificates. The first uses three short orthogonality contractions. The second uses fifteen explicit squares on the non-Tao locus and an exact calculation on Tao's class. Its sole geometric input is the single-matrix Fourier-vanishing theorem stated in Section 5. No MUB atlas or Stage C result enters either inequality.

The certificate actually gives the stronger global coefficient

\[
\boxed{
S\ge\frac{84684731883192}{818002268369}L_{\rm tot}
>103.52628\,L_{\rm tot}.
}
\tag{3}
\]

We use the simpler coefficient 100 for the practical consequences. Optimality of either coefficient is **NOT ESTABLISHED**.

## 1. Definitions and normalization — PROVED

For a reference row r, define

\[
t^{(r)}_{ij,k}=\frac16\sum_{a=0}^{5}
H_{ia}H_{ja}\overline{H_{ka}H_{ra}}.
\]

This is the same product coefficient obtained after dividing every column by its entry in row r. Parseval in the resulting orthonormal row basis gives

\[
\sum_k|t^{(r)}_{ij,k}|^2=1.
\]

Consequently each quantity \(1-\sum_k|t^{(r)}_{ij,k}|^4\) is nonnegative. Set

\[
L_{\rm tot}(H)=\sum_{r,i,j=0}^{5}
\left(1-\sum_{k=0}^{5}|t^{(r)}_{ij,k}|^4\right),
\]

\[
D_{\rm row}(H)=\sum_{r,i=0}^{5}
\left(1-\sum_{k=0}^{5}|t^{(r)}_{ii,k}|^4\right),
\qquad
D_{\rm sym}(H)=\frac{D_{\rm row}(H)+D_{\rm row}(H^T)}2.
\tag{4}
\]

In particular \(D_{\rm sym}\ge0\). The transpose average in (4) is essential: no transpose invariance of \(D_{\rm row}\) is assumed.

For a phase block B of order three, put

\[
\Psi(B)=\frac{\operatorname{perm}(B)\det(B)^2}{\prod_{i,j}B_{ij}}.
\]

The definition of S from the brief is equivalently

\[
S(H)=4\sum_{|I|=|J|=3}\bigl(\operatorname{Im}\Psi(H[I,J])\bigr)^2.
\tag{5}
\]

Replacing J by its complement permutes the twenty column subsets, so this agrees with the complementary-side convention in the brief. If \(\Delta(B)=\Psi(B)-\overline{\Psi(B)}\), then each summand in (5) is \(-\Delta(B)^2\). This identity is valid even when B is singular.

S and \(L_{\rm tot}\) are invariant under row and column phases, row and column permutations, and transposition. The same invariances hold for \(D_{\rm sym}\). For \(L_{\rm tot}\), transposition follows directly by expanding its fourth powers into the symmetric unrestricted graph sum in `MIXING_SOS.md`.

## 2. A common probability space for the squares — PROVED

Choose independently:

1. X equal to H or \(H^T\), each with probability one half;
2. a uniform permutation \(\sigma\) of the six row indices;
3. a uniform column index A.

Let \(z=(X_{\sigma(0),A},\ldots,X_{\sigma(5),A})\). For a balanced integer charge \(q\in\mathbb Z^6\), define

\[
z^q=\prod_i z_i^{q_i},\qquad
g(q)=\frac16\sum_{a=0}^{5}\prod_i X_{\sigma(i),a}^{q_i},
\]

\[
\Phi_q(z)=g(q)z^{-q},\qquad
F_q(z)=\Phi_q(z)-|g(q)|^2.
\tag{6}
\]

The mean g(q) is conditional on X and \(\sigma\). All unqualified expectations below average over X, \(\sigma\), and A. Since \(g(-q)=\overline{g(q)}\),

\[
\mathbb E_A F_q=0,\qquad
\mathbb E_A|F_q|^2=|g(q)|^2-|g(q)|^4.
\tag{7}
\]

Two useful product formulas are

\[
\mathbb E_A[\Phi_p\overline{\Phi_q}]
=g(p)g(-q)g(q-p),
\]

\[
\mathbb E_A[F_p\overline{F_q}]
=g(p)g(-q)g(q-p)-g(p)g(-p)g(q)g(-q).
\tag{8}
\]

Charges displayed with three entries are padded with three zeros. Counting the equality patterns of (i,r,k) in (4) gives

\[
D_{\rm sym}=30-30\mathbb E|g(2,-2,0)|^4
-120\mathbb E|g(2,-1,-1)|^4.
\]

The corresponding second-power sum is 30 by Parseval. Therefore

\[
\boxed{
D_{\rm sym}
=30\mathbb E|F_{(2,-2,0)}|^2
+120\mathbb E|F_{(2,-1,-1)}|^2.
}
\tag{9}
\]

This independently checks the normalization of D used by both certificates.

## 3. The exact mixing identity — CERTIFIED

Use the four charges

\[
\begin{aligned}
a&=(0,0,0,0,-2,2),&a'&=(0,0,0,-2,0,2),\\
b&=(0,0,-2,0,1,1),&b'&=(0,0,0,-2,1,1).
\end{aligned}
\]

For every H under consideration,

\[
\boxed{
6D_{\rm sym}-L_{\rm tot}
=30\mathbb E|F_{a'}-F_a|^2
+90\mathbb E|F_b+F_{b'}|^2
+135\mathbb E|F_a|^2.
}
\tag{10}
\]

All three coefficients are positive. This proves the first inequality in (2).

`MIXING_SOS.md` gives the complete derivation rules and the three explicit seven-row arrays whose orthogonality contractions certify (10). Their coefficients are \(25/3\), \(200/3\), and 100. `verify_mixing_sos.py` expands both sides independently over the rational numbers and checks that the final residual has zero coefficients. It is a standalone standard-library script and does not import the larger moment engine.

## 4. Fifteen squares control the corner sum — CERTIFIED

Set

\[
B_0=818002268369,\qquad B_1=508108391299152.
\]

For every non-Tao H, the second certificate is the exact identity

\[
\boxed{
B_0S-B_1D_{\rm sym}
=\sum_{j=1}^{15}n_j\,\mathbb E|P_j(z)|^2.
}
\tag{11}
\]

Each \(n_j\) is a positive integer. Each \(P_j\) is an explicitly specified integer linear combination of functions \(\Phi_q\) from (6), using charges supported on three coordinates. `S_D_certificate.json` records every charge, coefficient, and positive weight. `S_D_PROOF.md` also prints them in mathematical notation.

For example, its second square is

\[
P_2=-4\Phi_{(0,-2,2)}+2\Phi_{(0,2,-2)}+2\Phi_{(0,-4,4)},
\qquad n_2=66835245352500.
\]

The identity gives

\[
S\ge\frac{B_1}{B_0}D_{\rm sym},\qquad
\frac{B_1}{B_0}=621.157680054\ldots>600.
\tag{12}
\]

In particular,

\[
B_0(S-600D_{\rm sym})
=\sum_{j=1}^{15}n_j\mathbb E|P_j|^2
+17307030277752\,D_{\rm sym}\ge0.
\tag{13}
\]

The last term is itself the sum of two positive covariance squares by (9). Thus the clean coefficient 600 also has an explicit positive certificate.

### Why the finite computation proves the identity

The verifier begins with the defining permanent and determinant, expands \(-\Delta^2\) exactly, and averages it over injective row and column selections. Multiplying this normalized average by 400 gives S. It therefore does not take a fitted formula for S as input.

For a balanced exponent array A, let \(m(A)\) be the real average of its monomial over injective row and column choices and over H and \(H^T\). The following rules are proved in the accompanying notes:

- Permuting exponent rows or columns, negating all exponents, transposing the array, or deleting a zero row or column preserves m(A).
- If an exponent row has one +1 and one -1, column orthogonality expresses its moment as a rational combination of the moments formed by merging that row into the other rows.
- A formal array with seven rows gives a relation among six-row moments: the six possible merged terms sum to zero. An undefined seven-row injective moment is never used.
- Products of normalized character means expand into these moments by grouping their sampled column indices according to their equality partition. A partition with k blocks has the exact factor \((6)_k/6^n\) for n sampled columns.

All these are identities for each actual Hadamard matrix. They do not assume that a general formal moment vector can be realized by a matrix.

The script regenerates the relation systems through total order twelve. Modular arithmetic selects independent equations and proposes rational substitutions. It then checks the substitutions by exact integer arithmetic against independent original equations. The free coordinates remain the identity, so the full-rank pivot argument proves that the substitutions follow from those original relations. The final fifteen-square residual is checked coefficient by coefficient with `fractions.Fraction`; there is no floating-point tolerance.

## 5. Global coverage and the exceptional class

### Fourier-vanishing input — PROVED in the cited source; its finite identity is replayed

The single-matrix theorem used is Theorem 1.1 of OpenAI, *Exact Fourier certificates for complex Hadamard matrices of order six*, September 24, 2026:

> For an order-six complex Hadamard outside Tao's equivalence class, the normalized character mean at every permutation of \((1,1,1,-1,-1,-1)\) vanishes.

The source and exact commit are recorded in `PROVENANCE.md`. Its proof uses the orthogonality of one Hadamard matrix. The present verifier replays its nonnegative single-matrix identity before applying the new certificate. The remaining written implication is the source's dichotomy and classification of the simultaneous Hadamard conditions for H and its entrywise square. No MUB exclusion or atlas theorem is imported.

For \(\alpha=(1,1,1,-1,-1,-1)\), the verifier consequently imposes only true zero identities of the form

\[
\mathbb E\bigl[|g(\alpha)|^2|g(q)|^2\bigr]=0.
\tag{14}
\]

It regenerates 29 such invariant equations and uses them, together with orthogonality, to verify (11). Since Tao has a symmetric representative, transposition preserves its equivalence class; thus both orientations of a non-Tao H obey the vanishing theorem.

### Tao — CERTIFIED separately

The independent script `verify_tao.py` calculates directly in \(\mathbb Z[\omega]\), where \(\omega^2+\omega+1=0\). It verifies the representative's Hadamard equations, its equivalence to the precise exceptional representative in the Fourier-vanishing theorem, all 400 corner signatures, and every product coefficient needed for D and L.

The exact results are

\[
\boxed{
S(T)=87480,\qquad D_{\rm sym}(T)=\frac{45}{2},\qquad
L_{\rm tot}(T)=\frac{225}{2}.
}
\tag{15}
\]

There are forty zero corner discriminants and 360 discriminants equal to 243. In particular,

\[
S(T)=3888D_{\rm sym}(T)>600D_{\rm sym}(T),
\qquad S(T)>100L_{\rm tot}(T).
\]

These quantities are invariant under monomial equivalence, so the entire exceptional class is covered. The Fourier class is already in the non-Tao calculation and has S=L=D=0.

## 6. Assembly — PROVED

For a non-Tao H, combine (10) and (13):

\[
S\ge600D_{\rm sym}\ge100L_{\rm tot}.
\]

For Tao's class, (15) proves the same conclusion. This establishes (1) for every order-six complex Hadamard.

More explicitly, write the nonnegative right side of (10) as Q. Then on the non-Tao locus,

\[
\boxed{
B_0(S-100L_{\rm tot})
=\sum_{j=1}^{15}n_j\mathbb E|P_j|^2
+17307030277752D_{\rm sym}+100B_0Q.
}
\tag{16}
\]

Every term on the right is nonnegative, and (9) expands D into squares if desired. This is a direct certificate for the requested inequality.

For the stronger coefficient (3), combine (10) with (12), using \(B_1/(6B_0)=84684731883192/818002268369\). Tao obeys the same stronger bound because its ratio S/L is \(3888/5\).

## 7. Consequences for the requested corner margin — PROVED from the stated inputs

Let \(M(H)=\max_C R_C(H)\) and let d be the unnormalized quotient Frobenius distance from the Fourier class. Since there are 400 corners,

\[
M\ge\frac S{400}\ge\frac14L_{\rm tot}.
\tag{17}
\]

The group-rounding theorem in the supplied `GROUP_ROUNDING.md` says that \(L_r<1/9\) implies \(d^2\le L_r/(1-L_r)\). Therefore, for every \(\rho>0\),

\[
d\ge\rho\quad\Longrightarrow\quad
\boxed{
M\ge\frac32\min\left\{\frac19,\frac{\rho^2}{1+\rho^2}\right\}.
}
\tag{18}
\]

This consequence uses the supplied written group-rounding theorem and does not need the annulus estimate. In particular,

\[
\boxed{d\ge0.1\quad\Longrightarrow\quad M\ge\frac3{202}>0.01485.}
\tag{19}
\]

In the far region of the brief, \(d>4/7\), every \(L_r\ge1/9\), so \(L_{\rm tot}\ge2/3\). Thus

\[
\boxed{d>4/7\quad\Longrightarrow\quad M\ge\frac16.}
\tag{20}
\]

Finally, the annulus result supplied in the brief is \(M\ge1/25\) for \(1/10\le d\le4/7\). Combining that inherited result with (20) gives

\[
\boxed{d\ge\frac1{10}\quad\Longrightarrow\quad M\ge\frac1{25}=0.04.}
\tag{21}
\]

A useful inverse form of the same argument is

\[
\boxed{S<\frac{200}{3}\quad\Longrightarrow\quad
d^2\le\frac{S}{600-S}},
\qquad
\boxed{M<\frac16\quad\Longrightarrow\quad
d^2\le\frac{2M}{3-2M}}.
\tag{22}
\]

Indeed, some reference row has \(L_r\le L_{\rm tot}/6\le S/600\). Under the stated threshold this is less than 1/9, so group rounding applies. For the second form use \(S\le400M\). Thus a small corner sum quantitatively confines a class near the Fourier matrix.

**Audit boundary.** Equation (1) is independent of both group rounding and the annulus result. Equation (18) uses the supplied written group-rounding theorem. Equation (21) additionally uses the supplied annulus theorem; its original verifier is not included in the input archive and is not claimed to have been rerun here. The newly proved far-region comparison is the missing input identified in the brief.

## 8. Exact replay and status

Run the complete bundle with Python 3.10 or later:

```bash
python3 verify_all.py
```

Only the Python standard library is required. The substantial step regenerates the single-matrix relation systems and checks the fifteen-square identity. No package installation, network connection, floating-point optimizer, precomputed moment table, or sampled matrix collection is required for replay.

The bundle contains:

| File | Role |
|---|---|
| `REPORT.md` | The global theorem, proof assembly, dependencies, and corner margins |
| `MIXING_SOS.md` and `verify_mixing_sos.py` | The global L-versus-D identity using three contractions |
| `S_D_PROOF.md`, `S_D_certificate.json`, and `verify_S_D.py` | The explicit fifteen-square S-versus-D certificate and exact replay |
| `TAO_CHECK.md` and `verify_tao.py` | Independent exact calculation of the exceptional class |
| `AUDIT_GLOBAL_SOS.md` | Independent normalization, arithmetic, and scope audit |
| `verify_feature_table.py` | Independent exact comparison of the written features with the JSON certificate |
| `moment_engine.py` | Exact invariant-moment operations and source relation generation |
| `PROVENANCE.md` and `LICENSE` | Source attribution and the upstream verifier's license |
| `verification/` | Recorded outputs and a complete-run receipt |

**PROVED:** the global coefficient 100, and the stronger rational coefficient (3), by the written reductions and exact finite certificates.

**CERTIFIED:** the two positive identities, the source's single-matrix nonnegative identity, and the Tao values, with replayable integer and rational computations.

**NOT ESTABLISHED:** the optimal coefficient in S versus \(L_{\rm tot}\). The present proof already exceeds the requested coefficient \(3/5\) and yields the full supplied annulus margin 0.04 after the far-region step.

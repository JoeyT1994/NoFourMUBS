# Moment reduction: exact certificates and the status of Eq. (sos)

**Date:** 15 October 2026

## 0. Result and status

There are two different proof obligations in the brief. They must not be conflated.

**PROVED, with the two additional upstream theorem dependencies specified below:** the statement of Eq. (sos), as an implication about actual order-six complex Hadamards. In fact those dependencies give the stronger conclusion that every Hadamard satisfying (V) and (C) is Fourier-equivalent.

**NOT ESTABLISHED:** an independent proof of Eq. (sos) using only the permitted primary inputs 1–3, or an explicit ideal-membership / sum-of-squares certificate for its full left-hand side using only those generators. The full implication proved here is the separately labeled upstream-assisted version. There is no claim that the primary-input implication is false, or that such a certificate cannot exist.

**PROVED / CERTIFIED using primary inputs only:** the numerical hint (R) is an exact identity on Hadamards with vanishing row and column moments:

\[
\boxed{
\operatorname{Re}S
=-\frac{41}{10}
 +\frac5{54}\langle\operatorname{Re}\Psi\rangle
 +\frac1{36}\langle g^2\rangle
 -\frac1{162}\langle g\operatorname{Re}\Psi\rangle.
}
\tag{R}
\]

Here \(g=|\det X|^2\), and the brackets average over the 400 blocks. Its certificate is genuine rational Laurent ideal membership: **five Fourier-moment cofactor templates and 43 orthogonality cofactor templates**. It does not use (C), the reconstruction, strict-corner coverage, a classification, or numerical data. The verifier regenerates its 421-term local Laurent target from the determinant and permanent definitions.

**PROVED / CERTIFIED:** two further scalar identities, each using only Hadamard orthogonality, are given in §4. One gives the sharp consequence

\[
\boxed{(V)\quad\Longrightarrow\quad
\|H^{[2]}(H^{[2]})^\dagger\|_F^2\ge336.}
\tag{0.1}
\]

**PROVED as a dependency assessment of this step:** Eq. (sos) is not needed for the paper’s reduction to Fourier, given the upstream all-corner conjugacy and strict-corner coverage results supplied in the handoff. The proposed replacement is in `PAPER_REPLACEMENT.tex`. This is not an audit of the rest of the no-four-MUB argument.

## 1. Definitions and exact dependency boundary

### 1.1 Primary inputs — GIVEN HYPOTHESES

Throughout, \(H\) is raw:

\[
|H_{ij}|=1,\qquad HH^\dagger=H^\dagger H=6I.
\]

For a three-by-three phase block,

\[
\Psi(X)=\operatorname{perm}(X)\det(X)^2/P_X,
\qquad P_X=\prod_{a,b}X_{ab}.
\]

The definitions of \(\mathcal D\), \(S\), (V), and (C) are exactly those in `inputs/BRIEF.md`. In particular, (C) is **unconjugated** equality. The two definitions of \(S\)—14,400 ordered submatrices, and 400 blocks each with six matching terms—are both used and independently checked at the exact anchors.

Write

\[
U(H)=\frac1{400}\sum_{I,J}
 |\Psi(H[I,J])-\Psi(H[I^c,J^c])|^2.
\]

Thus (C) is equivalent to \(U=0\) for actual phase matrices.

### 1.2 Additional theorem dependencies — ACCEPTED UPSTREAM, NOT REPLAYED HERE

The full implication in §2 uses exactly these two additional results:

**A. All-corner conjugacy.** A non-Tao Hadamard satisfies

\[
\Psi(H[I,J])=\overline{\Psi(H[I^c,J^c])}
\qquad\text{for every }I,J.
\tag{A}
\]

Source: `inputs/H_fourier_vanishing_REPORT.md`, §2, especially §2.2. Its stated proof covers singular and zero-discriminant corners directly and uses the actual-side identities and the strict nonmatched converse. The supplied review identifies the corresponding all-corners-matched predicate and the Fourier-vanishing formalization. We use the theorem asserted in that report, not an external Fourier-vanishing result.

**Q. Strict-corner coverage.** A Hadamard not equivalent to \(F_6\) has a three-by-three block with nonreal \(\Psi\), after the permitted row/column rearrangements.

Source: the explicit statement granted in `inputs/BRIEF.md`, “Why the paper may not need this identity,” naming `PRM.strictCornerCoverage`. Equivalently, if every three-by-three block has real \(\Psi\), the matrix is Fourier-equivalent. In its corner-signature formulation, a strict side has \(g>0\), so nonzero imaginary part of the signature implies nonzero imaginary part of \(\Psi\).

These are theorem dependencies, not additional conditions imposed on the matrix. However, they go beyond the brief’s requested **primary moment-reduction proof**. That distinction is essential.

No proof of A or Q is reconstructed or kernel-checked in this return: the archive supplies reports, a review and the granted statement, not the full Lean source. Their copied bytes and the input archive are pinned by `PROVENANCE.json`. Checking those hashes is provenance verification, not proof verification.

No classification [CT], external OpenAI theorem, missing SM Proposition S.7, density assertion, numerical atlas coverage, or unproved assertion is used as a premise in the results claimed here.

### 1.3 Dependency map

| Result | Primary hypotheses | Additional theorem dependencies |
|---|---|---|
| Exact identity (R) | Hadamard orthogonality and both halves of (V) | None |
| Universal scalar identities in §4 | Hadamard orthogonality | None |
| Sharp bound (0.1) | Hadamard orthogonality and (V) | None |
| Full Eq. (sos) implication in §2 | Hadamard orthogonality, (V), (C) | A and Q |
| Suggested paper replacement | A non-Tao remaining candidate satisfying (C) | A and Q; other paper exclusions remain separate |

## 2. The full Eq. (sos) implication — PROVED, UPSTREAM-ASSISTED VERSION

> **Theorem.** With A and Q accepted as the upstream theorems stated in §1.2, every raw order-six Hadamard satisfying (V) and (C) is Fourier-equivalent. Consequently
> \[
> \mathcal D(H)=0,\qquad S(H)=\frac1{10},
> \qquad \mathcal D(H)+(30\operatorname{Re}S(H)-3)^2=0.
> \]

### 2.1 Covariance facts — PROVED

For \(\Psi\), multiplying a row or column of its block by a phase multiplies the permanent by that phase, the squared determinant by its square, and \(P_X\) by its cube. These factors cancel. Row and column permutations change the determinant sign only, which disappears on squaring. Transposition preserves both determinant and permanent.

Each matching term \(P_X/\prod_a X_{a,\sigma(a)}^3\) has total exponent zero in every row and every column. It is phase invariant. Averaging all ordered triples makes \(S\) invariant under global row and column permutations. Thus \(S\) is invariant under Hadamard equivalence.

For a Fourier moment, column phases cancel between three entries and three conjugates. Row phases multiply the entire moment by a common unit factor. Column permutations preserve its sum; row permutations permute the twenty row moments. Hence simultaneous row vanishing is invariant under equivalence. Conjugation also preserves vanishing.

The verifier checks the local Laurent balance and the row/column permutation and transpose invariances of \(\Psi\) and the matching-average expression for \(S\). The moment covariance follows directly from its displayed definition.

### 2.2 (V) excludes the Tao class — PROVED / CERTIFIED

For the specified Tao matrix, let \(\omega^2+\omega+1=0\), \(\omega\ne1\). The independent exact calculation gives, in zero-based indices,

\[
M_{\{0,1,2\}}(S_6)=-\omega/2,
\qquad |M_{\{0,1,2\}}(S_6)|^2=\frac14.
\tag{2.1}
\]

If \(H\) were Tao-equivalent, equivalence covariance would transfer all row vanishings in (V) to Tao, contradicting (2.1). Thus \(H\) is non-Tao. Only the row half of (V) is needed in this upstream-assisted proof.

### 2.3 A and (C) make every block invariant real — PROVED

By A,

\[
\Psi(H[I,J])=\overline{\Psi(H[I^c,J^c])}.
\]

By (C), the expression inside the conjugate is \(\Psi(H[I,J])\). Therefore

\[
\Psi(H[I,J])=\overline{\Psi(H[I,J])}
\quad\text{for every }I,J.
\tag{2.2}
\]

Every block invariant is real. Also A directly gives \(\mathcal D(H)=0\). No inference about a nonnegative sum is needed to establish that defect vanishing.

### 2.4 Q gives the Fourier class — PROVED

If \(H\) were not Fourier-equivalent, Q would supply a block with nonreal \(\Psi\), contradicting (2.2). Hence \(H\sim F_6\).

No regularity restriction is introduced here. All singular and boundary cases lie within the statements of A and Q being used. This is precisely where the strict-corner coverage theorem enters; it is not hidden in the moment calculation.

### 2.5 The exact Fourier value of \(S\) — CERTIFIED, WITH A FINITE PAPER CHECK

Let \((F_6)_{rj}=\zeta^{rj}\), \(\zeta=e^{2\pi i/6}\). The ordered-triple ratio takes values \(\zeta^k\). For \(k=0,\ldots,5\), the exact multiplicities are

\[
(4896,\ 1728,\ 864,\ 4320,\ 864,\ 1728).
\tag{2.3}
\]

They sum to 14,400. Since

\[
\zeta+\zeta^5=1,\qquad \zeta^2+\zeta^4=-1,
\]

the unnormalized sum is

\[
4896-4320+1728-864=1440.
\]

Therefore \(S(F_6)=1440/14400=1/10\), and equivalence invariance gives the same value for \(H\). Together with \(\mathcal D=0\), this proves the full conclusion.

**Scope:** this is a complete paper deduction from the declared upstream theorems and exact finite anchors. It is **not** the requested standalone rational reduction of the full sum-of-squares expression from inputs 1–3.

## 3. The suggested relation (R) — PROVED / CERTIFIED FROM PRIMARY INPUTS

### 3.1 Exact form of the certificate

On the phase torus, replace every conjugate entry by its inverse. Define

\[
\mathscr R(H)=\operatorname{Re}S+\frac{41}{10}
-\frac5{54}\langle\operatorname{Re}\Psi\rangle
-\frac1{36}\langle g^2\rangle
+\frac1{162}\langle g\operatorname{Re}\Psi\rangle.
\tag{3.1}
\]

The certificate proves that this Laurent polynomial belongs to the ideal generated by the ordered row/column orthogonality relations and all row/column Fourier-moment polynomials. It is stronger than numerical agreement and more explicit than an unquantified implication.

For a balanced exponent graph \(G\), let \(\mathcal A_G\) be its normalized average over injective row/column labels, inversion and transposition, as defined in `CERTIFICATE_FORMAT.md`. These are actual rational Laurent polynomials. The encoding is compressed only by explicit finite symmetries.

If a row vertex has exponents +1 and -1, let \(E_{G,t}\) denote

\[
\mathcal A_G+\frac1{7-r}\sum_{s\ne t}\mathcal A_{G_{t\to s}}.
\tag{3.2}
\]

This is an explicit monomial multiple of a column-orthogonality equation, averaged over the remaining labels. The analogous column-vertex identity uses row orthogonality.

For a six-row graph whose first column is \((1,1,1,-1,-1,-1)^T\), let

\[
L_G=\mathcal A_G+\frac1{7-c}\sum_{j=1}^{c-1}\mathcal A_{G_{0\to j}}.
\tag{3.3}
\]

This is an explicit averaged monomial multiple of the unnormalized moment polynomial \(6M_{\{0,1,2\}}\). Transposition in the average also uses the column half of (V).

The elementary reason for (3.2) and (3.3) is the same: split the six labels in the corresponding zero sum into occupied and unoccupied labels. There are \(7-r\) or \(7-c\) unoccupied labels. Each occupied label gives one contraction. Their exact rational normalization is therefore forced, not fitted.

The supplied identity is

\[
\boxed{
\mathscr R=\frac19L_{G_1}-\frac29L_{G_2}
-\frac{19}{9}L_{G_3}+L_{G_4}-\frac{10}{9}L_{G_5}
+\sum_{\eta=1}^{43}w_\eta E_\eta.
}
\tag{3.4}
\]

Every coefficient \(w_\eta\), every exponent matrix, every contraction vertex and every generator-side monomial cofactor is stored explicitly in `certificates/rational_moment_R.json`.

### 3.2 The five moment templates

The six rows of each template are displayed below:

\[
G_1=\begin{pmatrix}
1&-3&2\\1&0&-1\\1&0&-1\\-1&1&0\\-1&1&0\\-1&1&0
\end{pmatrix},\qquad
G_2=\begin{pmatrix}
1&-3&2\\1&0&-1\\1&1&-2\\-1&0&1\\-1&1&0\\-1&1&0
\end{pmatrix},
\]

\[
G_3=\begin{pmatrix}
1&-2&1\\1&-1&0\\1&-1&0\\-1&1&0\\-1&1&0\\-1&2&-1
\end{pmatrix},\qquad
G_4=\begin{pmatrix}
1&-2&1\\1&-1&0\\1&1&-2\\-1&0&1\\-1&1&0\\-1&1&0
\end{pmatrix},
\]

\[
G_5=\begin{pmatrix}
1&-2&1\\1&0&-1\\1&0&-1\\-1&0&1\\-1&1&0\\-1&1&0
\end{pmatrix}.
\]

All have three columns. Thus the five explicit generator-side coefficients, multiplying averaged monomials times the **unnormalized** moment generator, are

\[
\left(\frac1{36},-\frac1{18},-\frac{19}{36},\frac14,-\frac5{18}\right).
\]

The cofactor monomial is obtained by deleting the distinguished first column; it is also written explicitly in the JSON.

### 3.3 Why the finite computation is a proof

The determinant and permanent are rebuilt as their six signed/unsigned permutation monomials. The checker constructs \(\Psi\), \(g\), the six matching terms for \(S\), and then (3.1). Its 421 local Laurent terms are averaged using the precisely defined orbit operation.

Independently, the checker expands every stored \(E\) and \(L\) into orbit polynomials, multiplies by the stored rational coefficients, and tests literal equality with the regenerated target. It does not assume that a normal-form procedure is complete, and does not rerun a numerical coefficient search.

Every generator-times-cofactor identity is also expanded in the original 36 variables before averaging. The explicit metadata records its rational coefficient, monomial exponent matrix and ordered generator indices. All arithmetic uses integers and `fractions.Fraction`.

It follows from (3.4), orthogonality, and (V) that \(\mathscr R=0\), which is exactly (R).

No complement equation enters this proof. In particular, (R) cannot be relabeled as the missing proof of Eq. (sos).

## 4. Two additional exact scalar reductions — PROVED / CERTIFIED

Set

\[
T_k=\|H^{[k]}(H^{[k]})^\dagger\|_F^2,
\qquad
\mu=\frac1{40}\sum_{|I|=3}
\bigl(|M_I(H)|^2+|M_I(H^T)|^2\bigr).
\]

Here \(H^{[k]}\) is the entrywise power, not a matrix power.

### 4.1 A simpler formula for \(\operatorname{Re}S\)

Every raw order-six Hadamard satisfies

\[
\boxed{
\operatorname{Re}S
=\frac16\langle\operatorname{Re}\Psi\rangle
-\frac{377}{100}+\frac{T_2}{4800}.
}
\tag{4.1}
\]

This identity needs neither (V) nor (C). Its certificate has only **four orthogonality cofactor templates**. The verifier reconstructs its target independently of the numerical hint (R).

### 4.2 A norm identity for the Fourier moments

Every raw order-six Hadamard also satisfies

\[
\boxed{\mu=\frac15+\frac{T_3}{6480}-\frac{T_2}{1440}.}
\tag{4.2}
\]

Its certificate has **seven orthogonality cofactor templates**. The target is reconstructed by expanding the squared moments and the two Gram norms, including all coincident-index terms; the exact counts are explained in `CERTIFICATE_FORMAT.md`, §5.

Under (V), \(\mu=0\). Consequently

\[
\boxed{T_3=\frac92T_2-1296.}
\tag{4.3}
\]

The matrix \(H^{[3]}(H^{[3]})^\dagger\) has diagonal entries 6, hence

\[
T_3=216+\sum_{a\ne b}
\left|\sum_j H_{aj}^3\overline{H_{bj}^3}\right|^2\ge216.
\]

Combining this with (4.3) gives \(T_2\ge336\). Equality holds exactly when all those off-diagonal Gram entries vanish, that is, exactly when \(H^{[3]}\) is itself a raw complex Hadamard.

The fourth-root example in §5 attains equality, so the constant 336 is sharp under the stated hypotheses. In particular, (V) is incompatible with \(H^{[2]}\) itself being Hadamard, since the latter would give \(T_2=216\).

These statements do not force \(\operatorname{Re}S=1/10\). The same sharpness example has \(\operatorname{Re}S=1/30\).

## 5. Exact sanity anchors — CERTIFIED, NOT NUMERICAL

All entries are represented in \(\mathbb Q(i,\omega)\); no floating-point tolerance is used. The calculations check both Gram matrices, all forty moments, all 400 blocks, and both definitions of \(S\).

| Matrix | (V) | \(\mathcal D\) | \(U\) | \(S\) | Eq. (sos) left side |
|---|---:|---:|---:|---:|---:|
| \(F_6\) | Yes | 0 | 0 | \(1/10\) | 0 |
| Tao | No | \(2187/10\) | 0 | \(-7/20\) | \(8019/20\) |
| Fourth-root matrix \(D_6\) below | Yes | 0 | \(256/5\) | \(1/30\) | 4 |
| Specified Fourier-family member | Yes | 0 | \(648/25\) | \(1/10\) | 0 |
| Its transpose | Yes | 0 | \(648/25\) | \(1/10\) | 0 |

The fourth-root matrix is explicitly

\[
D_6=\begin{pmatrix}
1&1&1&1&1&1\\
1&-1&i&-i&-i&i\\
1&i&-1&i&-i&-i\\
1&-i&i&-1&i&-i\\
1&-i&-i&i&-1&i\\
1&i&-i&-i&i&-1
\end{pmatrix}.
\tag{5.1}
\]

Its exact Gram checks establish that it is Hadamard; no classification is used. It has \(T_2=336\) and \(T_3=216\). It gives an **exact**, rather than numerical, demonstration that omitting (C) invalidates Eq. (sos).

The Fourier-family anchor is

\[
\begin{pmatrix}F_3&DF_3\\F_3&-DF_3\end{pmatrix},
\qquad D=\operatorname{diag}(1,\xi,\xi^2),
\quad \xi=-i\omega=e^{\pi i/6}.
\tag{5.2}
\]

Because it fails (C), which is equivalence invariant and holds at \(F_6\), this particular matrix is not Fourier-equivalent despite having \(S=1/10\). Thus the scalar value alone does not identify the Fourier class.

For relation (R), the exact residual (3.1) is 0 at all the non-Tao anchors above and is \(-3/20\) at Tao. This is consistent with, and independently checks the need for, the moment generators in its certificate. The matrix anchors are sanity checks of the symbolic identities, not a substitute for them.

## 6. Is Eq. (sos) needed for the paper? — PROVED DEPENDENCY ASSESSMENT

**No, given the supplied upstream results.** The assessment in the handoff is correct.

At the point where the draft has derived (C), it has separately excluded Tao. The only purpose of Eq. (sos) in that passage is to obtain all-corner conjugacy, hence reality of every \(\Psi\). But A already gives all-corner conjugacy for every non-Tao Hadamard, without (V) and without (C). Combining A with (C) gives reality immediately. Q then gives the Fourier class.

Accordingly, for this passage one can remove the definition of \(S\), the appeal to Fourier vanishing, the definition of the conjugate defect if it is unused elsewhere, and the missing Proposition S.7. Replace them by a citation to the project’s own all-corner conjugacy theorem. Its statement is the input needed, not merely its Fourier-vanishing corollary.

The existing Fourier-vanishing proof in the supplied report already uses the same all-corner conjugacy input. Thus using A directly does not add a new reconstruction dependency relative to that route. It removes an unsupported algebraic step instead of attempting to justify it by a circular appeal to its intended consequence.

`PAPER_REPLACEMENT.tex` gives a replacement that retains (C), then cites all-corner conjugacy and strict-corner coverage. Assign the actual internal theorem number for A when integrating the manuscript. The replacement presupposes that A and Q are established independently of the missing S.7, as granted in this handoff.

An even shorter route is available at the logical level: a remaining non-Tao, non-Fourier matrix has a strict corner by Q; the upstream strict nonmatched converse makes it matched; the previously proved matched exclusion then rules it out. That observation does not reverify the matched exclusion or any coverage certificates.

**NOT ESTABLISHED by this return:** the entire manuscript’s no-four-MUB theorem, the validity of its other propositions, or a fresh audit of the upstream Lean dependency graph.

## 7. Replay, audit and remaining obligation

### 7.1 Replay — CERTIFIED

Run from the returned folder:

```sh
python3 -I verify.py
python3 -I audit.py
sha256sum -c SHA256SUMS
```

Only the Python standard library is required. Any failed assertion exits nonzero. `VERIFY_TRANSCRIPT.txt` records the exact replay. `AUDIT_TRANSCRIPT.txt` records independent subprocess tests that mutate stored coefficients or an anchor expectation and confirm rejection. The checker accepts neither floating-point tolerances nor a numerical atlas as evidence.

`CERTIFICATE_FORMAT.md` defines every symmetry, contraction, generator and cofactor normalization. The JSON files contain the full rational coefficient lists. They are suitable for later finite-sum/Laurent-polynomial formalization, but **no new Lean compilation is claimed**.

### 7.2 Numerical reproduction — NUMERICAL ONLY

The supplied 200-centre script was also rerun. It reproduced the pattern in the brief, including the approximately zero conjugate defect, nonzero unconjugated defect, and relation (R) residuals at floating-point scale. Its transcript is provided separately as `NUMERICAL_TRANSCRIPT.txt`. None of those numbers is used in any certificate acceptance test or proof step.

### 7.3 The remaining primary-input obligation — NOT ESTABLISHED

The unfilled requirement is still an independent argument

\[
\text{Hadamard}+(V)+(C)
\ \Longrightarrow\
\mathcal D=0\ \text{and}\ \operatorname{Re}S=1/10
\]

using only the primary algebra, or a corresponding exact certificate for the full left-hand side. Relation (R) and the identities in §4 do not fill that gap: they do not use (C) at all. The exact \(D_6\) example makes the distinction concrete.

No counterexample to the full hypotheses was found, and no obstruction to the existence of a primary-input certificate is asserted. The statement is proved here by the explicitly separated upstream-assisted route; the independent moment-reduction proof remains unestablished in this return. The paper’s Fourier reduction need not wait on that particular certificate, because §6 removes its use of Eq. (sos).

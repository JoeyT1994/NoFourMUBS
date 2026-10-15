# Fourier vanishing from the minimal reconstruction

**Date:** 15 October 2026  
**Status: PROVED**, relative only to the explicitly permitted upstream results identified in §1.  
**New finite algebra: CERTIFIED** by the accompanying standard-library integer verifier.  
**Lean status: NOT ESTABLISHED here**: this return does not contain or claim a newly compiled Lean proof.

## 0. Result and the central reduction — PROVED

Let \(H\) be a raw order-six complex Hadamard:
\[
 |H_{ij}|=1,\qquad HH^\dagger=6I_6.
\]
Assume that \(H\) is not equivalent to the supplied Tao matrix. For every three-element row set \(I\),
\[
 \boxed{M_I(H)=\frac16\sum_{j=0}^{5}
       \prod_{i\in I}H_{ij}\prod_{k\notin I}\overline{H_{kj}}=0.}
\tag{0.1}
\]
The same statement holds for \(H^T\), hence for all twenty column triples too.

The proof does **not** expand the square and cube roots in the side constructor. Instead it proves the following reusable criterion.

> **Complementary-invariant criterion — PROVED.** Suppose a raw order-six Hadamard satisfies
> \[
> \Psi(H[I,J])=\overline{\Psi(H[I^c,J^c])}
> \quad\text{for every }|I|=|J|=3,
> \tag{0.2}
> \]
> where \(\Psi(X)=\operatorname{perm}(X)\det(X)^2/\prod_{a,b}X_{ab}\).
> If the entrywise square \(H^{[2]}\) has rank at least three, then all twenty row moments (0.1) vanish.

The allowed strict nonmatched converse gives (0.2), including nonstrict and singular corners. A strict corner supplies the required rank-three minor of \(H^{[2]}\). The Fourier class is checked separately. The algebra underlying the criterion has a small certificate: **180 polynomial identities with 2,160 explicit integer-monomial cofactors**.

This is a single-Hadamard theorem. No MUB extension, atlas, numerical sample, classification theorem [CT], external Fourier-vanishing theorem, connectedness assertion, or density argument is used.

## 1. Exact dependency boundary — PROVED UPSTREAM INPUTS

The following are accepted at the status explicitly granted by `BRIEF.md`. Their copied source bytes are pinned in `PROVENANCE.json`. Hash checks record provenance; they are not a replay of upstream proofs.

**D1. Actual-side invariant identities and matching convention.** Source: `inputs/E_matched_flatness_FLATNESS.md`, §§1–3, especially §3, together with the definitions in `inputs/RECONSTRUCTION.md`, §§1–3. For a dephased physical split
\[
 H=\begin{pmatrix}E&B\\C&D\end{pmatrix},
\]
the two actual sides are \(B,C^T\). Their Gram determinants agree:
\[
 g=|\det B|^2=|\det C|^2.
\]
When \(g>0\), their signatures
\[
 z_B=-\Psi(B)/g,\qquad z_C=-\Psi(C)/g
\]
satisfy, with the same real \(\chi,\eta\),
\[
 g(z+\bar z)=\chi,\qquad z\bar z=\eta,
 \qquad R=4g^2\eta-\chi^2=4g^2(\operatorname{Im}z)^2.
\tag{1.1}
\]
In particular they belong to the same conjugate-root pair. These are identities of actual sides, not an assertion that the strict recipe is defined at \(R=0\). Transposition does not change \(\Psi\).

**D2. Strict nonmatched converse.** Source: `inputs/G_prm_PRM.md`, Theorem A in §0 and its proof in §§2–5. At **any** strict physical corner, a nonmatched completion is equivalent to Tao. Thus a non-Tao Hadamard at a strict corner satisfies \(z_C=\bar z_B\). This theorem is essential: knowledge of matching at just one chosen corner would not by itself justify (0.2) at every corner.

**D3. Exact reach.** Source: `inputs/G_prm_PRM.md`, Theorem C and §7.3; also granted explicitly by `inputs/BRIEF.md`. Every non-Tao class is the Fourier class or has a strict matched representative, possibly after conjugation. We use only the resulting existence of a strict corner for a non-Fourier, non-Tao class. We do not require a continuous global choice of constructor roots.

The upstream matched-existence and side-existence results enter D2 and D3 through their already accepted proofs; they are not additional new obligations in this return. The polynomial square identity, complementary-minor formula, exterior-algebra step, rank exchange and Fourier calculation are all proved below. No additional research theorem is imported. In particular, the elementary three-point Fourier calculations inside D2/D3 are not the six-row Fourier-vanishing theorem proved here.

## 2. Equivalence and complementary invariant conjugacy — PROVED

### 2.1 Equivalence covariance — PROVED

Multiplication of column \(j\) by a phase \(c_j\) contributes \(c_j^3\bar c_j^3=1\) to its summand in (0.1). Row phases multiply an entire moment by a common unit factor. Column permutations preserve the sum; row permutations permute the twenty moments. Conjugation conjugates each moment. Hence simultaneous row vanishing is invariant under Hadamard equivalence and conjugation.

For a three-by-three block, \(\Psi\) is unchanged by row and column phases, permutations, or transposition: numerator and denominator acquire the same cubic phase factors, and the determinant permutation sign is squared.

### 2.2 All corners, with no boundary limit — PROVED

Fix any physical dephased split and consider its adjacent sides \(B,C\).

If \(g=0\), both determinants vanish, so \(\Psi(B)=\Psi(C)=0\).

If \(g>0\), (1.1) gives \(R\ge0\). When \(R=0\), both signatures are the same real number \(\chi/(2g)\), hence \(\Psi(B)=\overline{\Psi(C)}\). When \(R>0\), D2 and the non-Tao hypothesis give \(z_C=\bar z_B\), with the same conclusion.

Thus
\[
 \Psi(B)=\overline{\Psi(C)}
\tag{2.1}
\]
for every physical split of a non-Tao Hadamard, including its singular and ramified corners. To obtain (0.2), interchange the column halves so that the chosen opposite blocks become adjacent sides, and dephase. The phase invariance of \(\Psi\) removes the dephasing factors. Therefore (0.2) holds for every row and column triple.

Notice that (0.2) is **conjugate equality**. It is not the unconjugated equality used separately for the hypothetical remaining carriers in the draft paper.

## 3. A universal three-by-three identity — PROVED / CERTIFIED

For a phase matrix \(X\) of size three put
\[
 P_X=\prod_{a,b}X_{ab},\qquad d_X=\det X.
\]
Then
\[
 \boxed{\det(X^{[2]})=\operatorname{perm}(X)\det X
                  -2P_X\overline{\det X}.}
\tag{3.1}
\]
Consequently
\[
 \boxed{\Psi(X)=2|d_X|^2+
                   d_X\frac{\det(X^{[2]})}{P_X}.}
\tag{3.2}
\]
In particular, \(d_X=0\) implies \(\det(X^{[2]})=0\), and nonreal \(\Psi(X)\) implies \(\det(X^{[2]})\ne0\).

**Proof.** Let \(e_1,e_2,e_3\) and \(o_1,o_2,o_3\) be the even and odd permutation products. Each triple has product \(P_X\). Thus its sum of pair products is \(P_X\) times the conjugate of its sum. Subtract the corresponding identities
\(\sum e_i^2=(\sum e_i)^2-2\sum_{i<j}e_ie_j\) and their odd counterparts. This gives (3.1); multiplication by \(d_X/P_X\) gives (3.2). No determinant is inverted.

The verifier checks the following **integer polynomial identity over nine independent variables**, which specializes to (3.1):
\[
 \det(X^{[2]})-\operatorname{perm}(X)\det X
 +2\sum_{\sigma\in S_3}\operatorname{sgn}(\sigma)
          \prod_{b\ne\sigma(a)}X_{ab}=0.
\tag{3.3}
\]
Here the last product runs over the six cells outside the permutation. It equals \(P_X\overline{\det X}\) for unit entries. This is a symbolic proof, not an evaluation on selected matrices.

## 4. Complementary minors become exterior duality — PROVED / CERTIFIED

Indices are \(0,\ldots,5\), and subsets are always listed increasingly. Write
\[
 \tau=\frac{\det H}{216},\qquad |\tau|=1.
\]
Jacobi's complementary-minor formula and \(H^{-1}=H^\dagger/6\) give
\[
 \det H[I^c,J^c]
   =(-1)^{\sum I+\sum J}\tau\,
          \overline{\det H[I,J]}.
\tag{4.1}
\]
This formula follows, without an external theorem import, from Cauchy–Binet and the complementary Laplace expansion. The verifier expands the universal \(3\times6\times3\) Cauchy–Binet identity and all **400** entries of the relevant third-compound inverse identity over independent integer variables. The cofactor form of that inverse is given in `CERTIFICATE_FORMAT.md`.

For a row triple \(I\), define a \(3\times6\) matrix
\[
 (A_I)_{ij}=\frac{H_{ij}^2}{p_I(j)},\qquad
 p_I(j)=\prod_{r\in I}H_{rj},\qquad i\in I.
\tag{4.2}
\]
All denominators are unit phases. For \(E=H[I,J]\),
\[
 \det(A_I[:,J])=\frac{\det(E^{[2]})}{P_E}.
\]
Let \(D=H[I^c,J^c]\) and let \(s=(-1)^{\sum I+\sum J}\). From (0.2), (3.2), (4.1), and \(|\det D|^2=|\det E|^2\),
\[
 \det E\,\det(A_I[:,J])
    =s\bar\tau\det E\,
          \overline{\det(A_{I^c}[:,J^c])}.
\tag{4.3}
\]
If \(\det E\ne0\), cancel it. If \(\det E=0\), (4.1) and (3.1) make both desired minors zero. Hence **in all cases**
\[
 \boxed{\det(A_I[:,J])
  =(-1)^{\sum I+\sum J}\bar\tau\,
          \overline{\det(A_{I^c}[:,J^c])}.}
\tag{4.4}
\]

Put
\[
 \epsilon(J)=(-1)^{\sum J-3},\qquad
 \kappa_I=(-1)^{\sum I+3}\bar\tau.
\]
For \(A=A_I\) and \(C=\overline{A_{I^c}}\), (4.4) says
\[
 \det A_J=\kappa_I\epsilon(J)\det C_{J^c}.
\tag{4.5}
\]
This is the concrete exterior-duality relation; \(C\) here is the conjugated matrix in (4.2), not the lower-left block from §1.

## 5. Exterior duality forces nine moments — PROVED / CERTIFIED

### 5.1 Exact linear-algebra lemma — PROVED

Let \(A,C\) be arbitrary \(3\times6\) complex matrices, and \(\kappa\ne0\). Suppose
\[
 r_J:=\det A_J-\kappa\epsilon(J)\det C_{J^c}=0
 \quad\text{for all }|J|=3.
\tag{5.1}
\]
If \(\operatorname{rank}A=3\), then (5.1) implies \(\operatorname{rank}C=3\), and
\[
 \boxed{AC^T=0.}
\tag{5.2}
\]
The transpose in (5.2) is ordinary transpose. In the application \(C=\overline{A_{I^c}}\), it becomes \(A_IA_{I^c}^\dagger=0\).

Here is a division-free certificate for (5.2). Fix any ordered pivot triple
\(P=(j_0,j_1,j_2)\). For each \(t\), put
\[
 L_t=P\setminus\{j_t\},\qquad K_t=L_t^c.
\]
Then for \(r,s\in\{0,1,2\}\),
\[
\boxed{
 \kappa\det C_P\,(AC^T)_{rs}
 =\sum_{t=0}^2\ \sum_{k\in K_t}
 (-1)^{t+\sum L_t+1+\operatorname{pos}_{K_t}(k)}
 C_{s j_t}A_{rk}\,r_{K_t\setminus\{k\}}.
}
\tag{5.3}
\]
Thus every cofactor is the explicit integer monomial \(\pm C_{s j_t}A_{rk}\). There are twelve displayed cofactors per identity. Choose a nonzero pivot of \(C\), which exists because (5.1) transfers a nonzero minor of \(A\) to its complement in \(C\). Then (5.3) gives (5.2).

**Paper derivation of (5.3).** For a two-set \(L\), let \(K=L^c\). Expanding a four-row determinant with one duplicated row gives
\[
 \sum_{k\in K}(-1)^{\operatorname{pos}_K(k)}A_{rk}\det A_{K\setminus\{k\}}=0.
\]
Substitute (5.1). The resulting complementary minors form
\[
 T_{r,L}=\sum_k A_{rk}\det[C_{l_0},C_{l_1},C_k],
\]
with the sign identity
\[
 \kappa T_{r,L}
 =(-1)^{\sum L+1}\sum_{k\in K}
       (-1)^{\operatorname{pos}_K(k)}A_{rk}r_{K\setminus\{k\}}.
\]
Finally Cramer's identity gives
\(\det C_P(AC^T)_{rs}=\sum_t(-1)^tC_{s j_t}T_{r,L_t}\), proving (5.3).

### 5.2 Certificate coverage — CERTIFIED

`certificates/hodge_integer_cofactors.json` explicitly stores all twenty residual polynomials (5.1) and all **180** instances of (5.3): twenty pivot triples times nine matrix entries. It contains **2,160** integer-monomial cofactors. The verifier regenerates these exact targets from their definitions, compares the stored data, and independently expands every residual to the zero polynomial over \(\mathbb Z\). See `CERTIFICATE_FORMAT.md` for the full encoding.

### 5.3 Readout as Fourier moments — PROVED

For \(i\in I\), \(k\in I^c\), entry \((i,k)\) of the zero matrix is
\[
 (A_IA_{I^c}^\dagger)_{ik}
 =\sum_j\frac{H_{ij}^2}{p_I(j)}
        \frac{p_{I^c}(j)}{H_{kj}^2}
 =6M_{\{i\}\cup(I^c\setminus\{k\})}(H).
\tag{5.4}
\]
These are the nine triples containing one row of \(I\) and two of \(I^c\). Conjugation gives the other nine mixed triples, since \(M_{T^c}=\overline{M_T}\). Only \(M_I\) and \(M_{I^c}\) remain.

## 6. A single exchange supplies the last two moments — PROVED / CERTIFIED

Assume \(\operatorname{rank}H^{[2]}\ge3\). Choose three independent rows indexed by \(I\), and choose three columns \(J\) such that
\[
 X=H^{[2]}[I,J],\qquad \det X\ne0.
\]
Multiplication of columns by the unit factors in (4.2) preserves rank, so \(A_I\) has rank three. Sections 4–5 kill the eighteen mixed moments.

Choose any \(k\notin I\), and let \(y=H^{[2]}[k,J]\), whose entries are all nonzero. There must be some \(i\in I\) such that replacing row \(i\) of \(X\) by \(y\) gives a nonzero determinant. One completely algebraic proof is the three Cramer identities
\[
 \det X\,y_j=\sum_{t=0}^2\det(X\text{ with row }t\text{ replaced by }y)\,X_{tj}.
\tag{6.1}
\]
If all three replacement determinants vanished, their right sides would be zero, contradicting \(\det X\ne0\) and \(y_j\ne0\). The verifier checks all three identities as polynomials over twelve independent variables.

Set
\[
 I'=(I\setminus\{i\})\cup\{k\}.
\]
Then \(A_{I'}\) has rank three. Applying (5.4) to the row \(k\in I'\) and the row \(i\in(I')^c\) yields
\[
 0=(A_{I'}A_{(I')^c}^\dagger)_{ki}
   =6M_{\{k\}\cup((I')^c\setminus\{i\})}(H)
   =6M_{I^c}(H).
\]
Its conjugate gives \(M_I=0\). This proves the complementary-invariant criterion in §0.

The verifier checks the combinatorial moment readout for all twenty choices of the starting triple and all nine possible exchanges: **180 exchange cases**. The numerical value of a replacement determinant is never guessed or sampled; existence follows from (6.1).

## 7. The strict reconstruction supplies the rank hypothesis — PROVED

Take a non-Fourier, non-Tao Hadamard class. By D3 it has an equivalent representative that is matched or is the complex conjugate of a matched representative. Either way the representative has a strict corner and remains non-Tao, because it is equivalent to the original matrix. For its actual horizontal side \(B\), D1 gives
\[
 R=4(\operatorname{Im}\Psi(B))^2>0.
\]
Thus \(\Psi(B)\) is nonreal. If \(\det(B^{[2]})\) were zero, (3.2) would imply
\(\Psi(B)=2|\det B|^2\), which is real. This is a contradiction. Therefore \(B^{[2]}\) is an invertible three-by-three minor of \(H^{[2]}\).

The representative satisfies both hypotheses of the criterion: §2 supplies conjugacy at every corner and the preceding argument supplies rank at least three. Hence all its row moments vanish. Equivalence covariance transfers this conclusion to the original matrix. No assumption that every row triple has a strict corner is made.

## 8. Fourier, transpose, and the necessary Tao exception — PROVED / CERTIFIED

For \((F_6)_{rj}=\zeta^{rj}\), \(\zeta=e^{2\pi i/6}\),
\[
 6M_I(F_6)=\sum_{j=0}^5\zeta^{(2\sum I-15)j}=0.
\]
The integer \(2\sum I-15\) is odd, so it is not divisible by six. This proves the Fourier case by the geometric sum.

Apply the proved row theorem to \(H^T\). The specified Tao matrix is symmetric, and transposition preserves equivalence, so \(H^T\) is non-Tao whenever \(H\) is non-Tao. Hence all column moments vanish as well.

An exact, independent finite calculation in \(\mathbb Z[\omega]/(\omega^2+\omega+1)\) verifies all entries and Gram equations of both \(F_6\) and Tao, all forty Fourier moments of \(F_6\), and the Tao witness
\[
 \boxed{M_{\{0,1,2\}}(S_6)=-\omega/2,\qquad |M_{\{0,1,2\}}|^2=1/4.}
\]
For Tao's top-left and bottom-right blocks it also obtains
\[
 \Psi(E)=18+9\omega,\qquad
 \overline{\Psi(D)}=9-9\omega.
\]
Thus the complementary-conjugacy hypothesis genuinely fails at the excluded matrix. These are exact calculations, not floating-point evidence.

## 9. Replay, certificate trust boundary, and status — CERTIFIED / NOT ESTABLISHED

Run from this directory:

```sh
python3 verify.py
```

Only the Python standard library is required. Failure raises an exception and causes a nonzero exit code. To regenerate the canonical certificate and then check it, run:

```sh
python3 verify.py --write-certificates
```

The successful run is recorded in `VERIFY_TRANSCRIPT.txt`. `AUDIT_TRANSCRIPT.txt` records checker self-tests and a separate subprocess test: flipping one stored cofactor sign causes verification to fail with exit code 1. The replay checks the new universal polynomial identities, every stored integer cofactor, rank-exchange bookkeeping, both parity signs in the scalar reduction, and the exact exceptional examples. It reconstructs the targets, so merely replacing the stored identities with unrelated zeros will fail.

**PROVED:** The paper deductions in §§2–8 establish both row and column Fourier vanishing from D1–D3. Singular, zero-discriminant, and constructor-root choices introduce no omitted stratum.

**CERTIFIED:** The new algebra listed above replays exactly. `SHA256SUMS` pins every returned file except the manifest itself. `PROVENANCE.json` separately pins copied input bytes and the original handoff archive.

**NUMERICAL, not used:** The supplied sixty-centre script was also reproduced during exploration: maximum row and column moment magnitudes were approximately \(2.9\times10^{-14}\) and \(3.7\times10^{-14}\), with maximum Hadamard residual approximately \(9.4\times10^{-14}\). None of these numbers appears in a verifier acceptance test or any proof step.

**NOT ESTABLISHED by this return:** A newly compiled Lean formalization; an independent replay of all upstream D1–D3 proofs; the draft's separate moment-reduction identity; or a full end-to-end no-four-MUB proof. Those tasks are not silently included in `ALL EXACT CHECKS PASSED`. No additional unproved hypothesis is introduced for the Fourier-vanishing theorem requested here.

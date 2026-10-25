# An exact global sum of squares: L_tot <= 6 D_sym

## Theorem and status

**PROVED / CERTIFIED.** For every order-six complex Hadamard H, put

\[
D_{\rm row}(H)=\sum_{i,r=0}^5\left(1-\sum_{k=0}^5|t^{(r)}_{ii,k}|^4\right),
\qquad
D_{\rm sym}(H)=\frac{D_{\rm row}(H)+D_{\rm row}(H^T)}2.
\]

Then

\[
\boxed{L_{\rm tot}(H)\le6D_{\rm sym}(H).}
\tag{1}
\]

The proof is an explicit sum-of-squares identity with positive coefficients 30, 90, and 135. Its exact verification needs only three short orthogonality contractions. The standalone verifier `verify_mixing_sos.py` regenerates every expansion with integer and rational arithmetic; it does not read a precomputed moment table, pickle, atlas, or numerical matrix data.

**PROVED using the companion S–D certificate and the exact Tao check.** The companion certificate gives `S>=600D_sym` for non-Tao Hadamards. The standalone `verify_tao.py` gives `S=3888D_sym` for Tao's matrix, and the same values hold throughout its equivalence, conjugate, and transpose orbits. Thus the companion results and (1) combine to give

\[
\boxed{S(H)\ge100L_{\rm tot}(H)}
\tag{2}
\]

for every order-six complex Hadamard. This note proves the mixing comparison (1); the S–D estimate is a separate certified input, not inferred from the covariance identity alone.

## 1. The random variables in the sum of squares

Choose independently:

- X to be H or H^T, each with probability one half;
- a uniform permutation sigma of the six row indices;
- a uniform column index A in `{0,...,5}`.

For fixed X and sigma, define the random unit vector

\[
Z=(X_{\sigma(0),A},\ldots,X_{\sigma(5),A}).
\]

For an integer charge vector c in Z^6, write

\[
Z^c=\prod_{j=0}^5 Z_j^{c_j},\qquad
 g(c)=\mathbb E_A Z^c=\frac16\sum_{a=0}^5
       \prod_{j=0}^5X_{\sigma(j),a}^{c_j}.
\]

The mean g(c) is conditional on X and sigma. Define the centered random variable

\[
\boxed{F_c(Z)=g(c)Z^{-c}-|g(c)|^2.}
\tag{3}
\]

Indeed, `g(-c)=conjugate(g(c))`, so `E_A F_c=0`.

Use the four charge vectors

\[
\begin{aligned}
a&=(0,0,0,0,-2,2),&
a'&=(0,0,0,-2,0,2),\\
b&=(0,0,-2,0,1,1),&
b'&=(0,0,0,-2,1,1).
\end{aligned}
\tag{4}
\]

The expectation below is over all three choices X, sigma, and A.

## 2. The exact positive identity

**CERTIFIED, with the algebraic derivation rules proved below.**

\[
\boxed{
6D_{\rm sym}-L_{\rm tot}
=30\,\mathbb E|F_{a'}-F_a|^2
 +90\,\mathbb E|F_b+F_{b'}|^2
 +135\,\mathbb E|F_a|^2.
}
\tag{5}
\]

Every term on the right is nonnegative, proving (1).

For exact expansion it is enough to note that

\[
\boxed{
\mathbb E_A[F_c\overline{F_d}]
=g(c)g(-d)g(d-c)
-g(c)g(-c)g(d)g(-d).
}
\tag{6}
\]

This follows by multiplying (3), averaging in A, and using `g(-c)=conjugate(g(c))`. For real coefficients in the squared sums, only the real part of the averaged covariance is needed. Formula (6) supplies every coefficient of the right side of (5).

For the left side, direct expansion of the definitions gives

\[
D_{\rm sym}=36-\frac1{1296}\mathcal P_{(2,-1,-1)^T(1,1,-1,-1)},
\]

\[
L_{\rm tot}=216-\frac1{1296}
\mathcal P_{(1,1,-1,-1)^T(1,1,-1,-1)},
\tag{7}
\]

where `P_A` is the real, transpose-symmetrized unrestricted graph sum defined in the next section. The factor 1296 is `6^4`, from the fourth power of a normalized product moment. The L expression is already invariant under transposition because its exponent matrix is symmetric; the transpose average does not alter it.

## 3. Normalized graph moments and elementary reductions

For an integer exponent matrix C with r rows and s columns, define

\[
\mathcal M_C(H)=
\frac1{2(6)_r(6)_s}\Re\left(
\sum_{\substack{i_1,\ldots,i_r\text{ distinct}\\
                  j_1,\ldots,j_s\text{ distinct}}}
\prod_{u,v}H_{i_u j_v}^{C_{uv}}
+
\sum_{\substack{i_1,\ldots,i_r\text{ distinct}\\
                  j_1,\ldots,j_s\text{ distinct}}}
\prod_{u,v}(H^T)_{i_u j_v}^{C_{uv}}
\right),
\tag{8}
\]

where `(6)_r=6*5*...*(7-r)` and `M_empty=1`. Only r,s at most six occur in this definition.

The unrestricted graph sum P_C uses the same real transpose average but sums row and column indices with repetitions allowed and has no falling-factorial denominator.

### 3.1 Symmetries

**PROVED.** Row and column permutations of C do not change M_C. Negating C complex conjugates its monomials and leaves the real part unchanged. Transposing C is permitted because of the explicit H/H^T average. A zero row or column can be deleted: the normalized average has the same marginal distribution on the remaining injective indices.

These are exactly the operations used by the verifier's canonicalization. No transposition identity for an unsymmetrized moment is assumed.

### 3.2 A row of degree one

Suppose row i of C has exactly one +1 and one -1 and zeros elsewhere. Let C^(i,j) be obtained by deleting row i and adding it to row j, for each j different from i. Then

\[
\boxed{(7-r)\mathcal M_C+
\sum_{j\ne i}\mathcal M_{C^{(i,j)}}=0.}
\tag{9}
\]

To prove this, fix the other r-1 distinct row indices and all the distinct column indices. Summing the degree-one row over all six possible row indices is zero by column orthogonality: its +1 and -1 columns are different. The unrestricted sum consists of the 7-r choices avoiding the other rows plus the r-1 collision choices. Averaging gives precisely (9), with the displayed normalization. The same identity applies to a degree-one column by transposition.

The verifier repeatedly applies (9); each application reduces the total number of row and column positions, so the recursion terminates.

### 3.3 Unrestricted indices and products of means

**PROVED.** To expand an unrestricted graph sum, classify the row indices and the column indices by their equality partitions. If a partition leaves r' distinct row indices and s' distinct column indices, merge the corresponding exponent rows and columns and multiply its normalized moment by `(6)_(r') (6)_(s')`.

For a product `g(c_1)...g(c_n)`, the row permutation already makes the active row labels injective. The n column indices are independent uniform choices. A column equality partition with k blocks therefore contributes its merged moment with coefficient

\[
\frac{(6)_k}{6^n}.
\tag{10}
\]

Factors g(0)=1 can be deleted first. These rules prove all normalization factors used by the standalone expansion.

## 4. Only three final orthogonality contractions are needed

After expanding (5) by (6)-(10) and reducing all degree-one rows and columns, the difference between the left and right sides is a combination of twelve normalized graph moments. It is exactly

\[
\boxed{
6D_{\rm sym}-L_{\rm tot}-\operatorname{RHS}(5)
=\frac{25}{3}\mathcal C(A_1)
 +\frac{200}{3}\mathcal C(A_2)
 +100\mathcal C(A_3),
}
\tag{11}
\]

where the three explicit seven-row exponent matrices are

\[
A_1=\begin{pmatrix}
-1&1\\-1&1\\-1&1\\-1&1\\1&-1\\1&-1\\2&-2
\end{pmatrix},
\]

\[
A_2=\begin{pmatrix}
-1&0&1\\0&-1&1\\0&1&-1\\0&1&-1\\1&0&-1\\1&0&-1\\-1&-1&2
\end{pmatrix},
\]

\[
A_3=\begin{pmatrix}
-1&0&0&1\\-1&0&0&1\\0&0&1&-1\\0&1&-1&0\\
0&1&-1&0\\1&-1&0&0\\1&-1&1&-1
\end{pmatrix}.
\tag{12}
\]

For a seven-row array A whose first row has degree one, `C(A)` means: delete that first row, add it successively to each of the other six rows, and sum the six resulting normalized moments. The moments themselves have six row positions, so (8) applies.

**PROVED.** Each `C(A_j)=0`. Fix the other six distinct row indices; they exhaust all six rows of H. Column orthogonality says that the sum of the degree-one factor over these six row indices is zero. Multiplying by the other-row monomial and averaging proves the asserted collision sum. This is the endpoint form of (9), where `7-r=0`, interpreted without introducing an undefined seven-row normalized average.

**CERTIFIED.** The verifier independently regenerates both sides of (11) from the charges and the three displayed matrices. Their difference is zero coefficient by coefficient in rational arithmetic. Because every C(A_j) vanishes by the preceding written proof, (11) proves (5).

## 5. Replay and independent audit

Run

```
python3 verify_mixing_sos.py
```

The expected final output includes:

```
status: PASS
external_tables_or_data: false
seven_row_contractions: 3
final_residual_terms: 0
```

The verifier is standalone and uses the Python standard library only. It contains the explicit charges, the three source matrices, the rational weights, the canonical graph symmetries, the degree-one orthogonality recursion, and the equality-partition expansion. There are no serialized basis tables or numerical optimization results in its trusted input.

**AUDITED.** The identity was independently derived from the proposed covariance formula. Its residual was reduced using only the three displayed contractions, without invoking the original 8,871-equation moment table. The coefficient 135 of `E|F_a|^2` is also consistent with the original two terms of coefficient 135/4: since `F_-a=conjugate(F_a)`, the parallelogram identity gives

\[
\frac{135}{4}\left(|F_{-a}-F_a|^2+|F_{-a}+F_a|^2\right)
=135|F_a|^2.
\]

The factor 6 multiplying D_sym, all factors of 6 in the means and moments, and the transpose average have been checked independently.

## 6. What this completes

This proves a practical global comparison between the full product-mixing defect and the symmetrized square-product defect. It replaces the much larger coefficient from the earlier group-rounding proof when D_sym is available.

Together with the separately certified `S>=600D_sym` estimate and the exact Tao computation, this establishes the global coefficient 100 in (2). The S–D certificate remains a separate dependency; the standalone verifier for this note checks only the exact mixing sum of squares.

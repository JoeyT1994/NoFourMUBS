# The exact Fourier-type predicate

This self-contained proof is retained from the preceding Fourier-edge bundle,
with its section numbering preserved. Matrices are raw phase Hadamards,
and N denotes [F3,F3;F3D,-F3D]. It does not use the quartet exclusion E.

## 2. A reliable polynomial Fourier-type predicate

### 2.1 Elementary singular phase-block lemma

**Lemma P1.** A singular 3 by 3 matrix all of whose entries have modulus one
has two proportional rows or two proportional columns.

**Proof.** If the rank is one, this is immediate. Suppose its rank is two
and there are no proportional rows. Choose independent rows `a,b`; the third
row is `c=lambda a+mu b`, with `lambda mu !=0`. Set `t_j=b_j/a_j`. Each `t_j`
is a unit complex number and

\[
|\lambda+\mu t_j|=1.
\]

Equivalently,

\[
2\operatorname{Re}(\bar\lambda\mu t_j)
 =1-|\lambda|^2-|\mu|^2.
\]

This is a nondegenerate line intersected with the unit circle, so it has at
most two solutions. Among three column indices two therefore have the same
`t_j`. On those two columns, both the second-to-first-row ratio and the
third-to-first-row ratio agree. The two columns are proportional. ∎

### 2.2 From three equal ratios to a Fourier family

For completeness, this recalls the elementary routing proof, with the
omitted singular-block lemma supplied above. If two rows are proportional
on three selected columns, phase their ratio to one there. Their complete
inner product is zero, so the other three unit ratios sum to `-3`; every
one must equal `-1`. Dephase and reorder to obtain the two rows

\[
(1,1,1;1,1,1),\qquad (1,1,1;-1,-1,-1).
\]

Every other row has sum zero separately on each half. A zero-sum triple of
unit numbers is a phase multiple of `(1,omega,omega^2)` or
`(1,omega^2,omega)`. Two remaining rows cannot agree in orientation on one
half and disagree on the other, since their inner product would then have
exactly one nonzero term of magnitude 3. Thus equality of the left-half
orientation is equivalent to equality of the right-half orientation.

Each orientation class has dimension at most two. Four orthogonal remaining
rows force two classes of two rows each. Reorder one half's columns to make
the orientations match. Within each class, dephase the first-half scalar to
one; orthogonality makes the second-half scalars opposite. Reorder the rows
to obtain

\[
\begin{pmatrix}F_3&D F_3\\F_3&-D F_3\end{pmatrix}=N(z,w)^T.
\]

The proportional-column case follows by transposition. Conversely N always
has singular 3 by 3 submatrices, for example by choosing its top three rows
and two columns from one duplicated column pair. This proves the equivalence
between singular 3 by 3 submatrices and membership of `N union N^T` without
needing the omitted `STRICT_DOMAIN.md`.

### 2.3 Quadratic-overlap saturation

For distinct rows `r,s` of a phase Hadamard H define

\[
S_{rs}^{\rm row}(H)=\sum_{j=0}^5(h_{rj}\bar h_{sj})^2.
\]

Define `S_col` by applying the same expression to `H^T`.

**Theorem P2 (proved).** H is of Fourier type if and only if one of the 30
row/column pairs satisfies

\[
\boxed{|S|^2=36.}
\tag{2.1}
\]

**Proof.** Each of the six terms in `S` has modulus one, so `|S|<=6`.
Equality holds exactly when the six squared ratios have a common phase.
The unsquared ratios consequently have the form `rho` or `-rho`.
Orthogonality of the original rows says their sum is zero, so there must be
three of each sign. This gives a proportional three-column restriction and
the preceding routing theorem applies. The same argument applies to columns.
Conversely the three paired columns of N have identical entrywise squares;
the analogous paired rows occur in its transpose. Monomial equivalence
preserves the absolute saturation condition. ∎

A division-free real polynomial predicate is therefore

\[
P_{\rm F}(H)=
\prod_{r<s}(36-|S_{rs}^{\rm row}(H)|^2)
\prod_{c<d}(36-|S_{cd}^{\rm col}(H)|^2).
\tag{2.2}
\]

For phase Hadamards each factor is nonnegative, and `P_F(H)=0` exactly on
the Fourier-type locus. A numerical diagnostic should use the smallest
normalized factor, rather than multiply 30 factors. In contrast to a
Hadamard-block statistic, its exact zero predicate agrees with the brief's
definition. The replay gives saturated-pair lists for D, K, L and Tao.

Fourier matrices also have entrywise-square rank exactly three: the last
three columns of `N circle N` equal the first three, and the top-left
3 by 3 block is `F_3 circle F_3`, which has squared determinant magnitude 27.
The converse implication from rank three alone is not asserted here.


# Complete classification of the Hadamard-corner stratum

## The theorem

Let `H` be a complex Hadamard matrix of order six. Suppose one of its 3 by 3 corners `A` is itself a complex Hadamard, so `AA* = 3I`.

**Then `H` is equivalent to a matrix in the full two-parameter affine Fourier family, to the transpose of a matrix in that family, or to Tao's matrix.**

This classifies the entire stratum, including all its singular parameter values. It does not assume that the selected corner is maximal for `R`, that `R` is positive, or that `H` lies on a smooth four-dimensional manifold.

By `GLOBAL_BLOCK_MOMENTS.md`, the hypothesis is equivalent to either of the following conditions:

- some corner has permanent of modulus 3;
- some corner has determinant of squared modulus 27.

The equivalence for determinants also follows directly from the arithmetic--geometric mean inequality for the three eigenvalues of `AA*`, whose sum is 9.

The classification itself uses only the defining Hadamard equations and a complete exact enumeration of 36 explicitly specified cubic-phase cases. The verifier additionally proves `M(Tao)=243` using the supplied square identity F2. No numerical sampling, manifold assumption, or global classification theorem is used.

Run:

```sh
python3 verify_hadamard_corner.py
```

The expected result is `HADAMARD CORNER CLASSIFICATION PASS`.

## Confinement corollary

Write the affine family in the notation of the handoff as

\[
 F_6(x,y)=F_6\circ\exp\bigl(i(x t_1+y t_2)\bigr).
\]

Combining the classification with the theorem proved in
`../fourier_sector/CONFINEMENT_FOURIER.md` gives the following global statement on the Hadamard-corner stratum:

\[
 \boxed{M(H)<144\quad\Longrightarrow\quad
 \nu(H)\le\sqrt{\frac23}\,
       \arcsin\!\left(\frac{\sqrt{M(H)}}{12}\right).}       \tag{1}
\]

In particular,

\[
 \boxed{M(H)<26\quad\Longrightarrow\quad\nu(H)<9/25<0.55.} \tag{2}
\]

The Fourier-family proof gives the sharper numerical upper bound
`0.358337180` at cutoff 26; (2) uses its exact rational consequence `nu < 9/25`. Tao's matrix is excluded because its exactly checked value `M=243` exceeds 144.

Equation (2) is proved for every order-six Hadamard containing a Hadamard corner. There is no assertion here that every matrix with `M<26` contains such a corner.

## 1. Elementary facts about order three

Put `omega = exp(2 pi i/3)` and let

\[
 F=(\omega^{ij})_{0\le i,j<3}.
\]

We will use two elementary facts.

**Three-phase lemma.** If three unit complex numbers sum to zero, their unordered set is `lambda {1,omega,omega^2}` for some unit `lambda`. If their product is also 1, each is a third root of unity.

To prove this, divide by the first phase. The other two phases `x,y` satisfy `1+x+y=0`; using `|1+x|=1` gives `x^2+x+1=0`. Hence they are `omega,omega^2` in some order. The product condition says `lambda^3=1`.

**Order-three uniqueness.** Every 3 by 3 complex Hadamard is monomially equivalent to `F`.

Indeed, dephase its first row and column. The three-phase lemma makes its second row `(1,omega,omega^2)` after possibly swapping the last two columns. Its third row is either this row or `(1,omega^2,omega)`; orthogonality excludes the first possibility.

Every permutation of three indices is affine over the field with three elements: `j -> e j + t`, with `e=1` or `2`. Thus a row permutation of `F` can be absorbed into a column permutation and column phases, and conversely for a column permutation. The exact verifier checks all six permutations against these affine formulas.

## 2. Reduction to two diagonal matrices

Permute the chosen corner into the upper left and write

\[
 H=\begin{pmatrix}A&B\\ C&D\end{pmatrix}.
\]

The identity `AA*=3I` and the row orthogonality of `H` give `BB*=3I`. Column orthogonality gives `C*C=3I`, hence also `CC*=3I`, and then `DD*=3I`. Every block is therefore a 3 by 3 Hadamard.

Use row and column monomial operations to put `A=F`. Order-three uniqueness and the absorption of permutations just established allow the right-hand columns to normalize `B` as `LF`, with `L` diagonal unitary. Independently, bottom-row operations normalize `C` as `FM`, with `M` diagonal unitary. These operations do not alter `A` or the other already normalized block.

The off-diagonal orthogonality equation determines the final block:

\[
 \boxed{
 H(L,M)=
 \begin{pmatrix}
 F&LF\\
 FM&-\frac13 FMF^*LF
 \end{pmatrix}.}                                      \tag{3}
\]

Multiplying all right-hand columns and all bottom rows by suitable common phases makes

\[
 L=\operatorname{diag}(1,l_1,l_2),\qquad
 M=\operatorname{diag}(1,m_1,m_2).
\]

The remaining condition is exactly the entrywise flatness of the lower-right block of (3). Its orthogonality already follows from the construction.

## 3. The flatness condition is a circulant kernel equation

Define

\[
 N=\tfrac13 FMF^*,\qquad
 n_k=\tfrac13\sum_{t=0}^2m_t\omega^{kt},\qquad
 N_{r,s}=n_{r-s},                                    \tag{4}
\]

with subscripts read modulo 3 and `l_0=m_0=1`. The matrix `N` is unitary. Put

\[
 c_k=n_k\overline{n_{k-1}},\qquad
 z_s=l_s\overline{l_{s+1}}.
\]

Then

\[
 |z_s|=1,\quad z_0z_1z_2=1,\quad
 c_0+c_1+c_2=0.                                     \tag{5}
\]

The last identity is an off-diagonal unitarity relation for the circulant matrix `N`.

In row `r`, the lower-right block is the discrete Fourier transform, with a minus sign, of

\[
 x_s=n_{r-s}l_s.
\]

Here `sum |x_s|^2 = 1`. Its three Fourier values have modulus 1 if and only if the nonzero cyclic autocorrelation vanishes:

\[
 \sum_s x_s\overline{x_{s+1}}=0.
\]

Equivalently,

\[
 \boxed{Cz=0,\qquad C_{r,s}=c_{r-s}.}                \tag{6}
\]

This equivalence follows directly by expanding the three squared Fourier magnitudes and using invertibility of the three-point discrete Fourier transform. The eigenvectors of the circulant matrix `C` are `v^{(t)}_s=omega^{st}`, with eigenvalues

\[
 \lambda_t=\sum_k c_k\omega^{-kt}.
\]

Equation (5) says `lambda_0=0`. There are exactly three rank cases.

## 4. Rank two gives the affine Fourier family

If `rank C = 2`, its kernel consists of constant vectors. Thus `z_s=z_0`, and `z_0^3=1` by (5). The recursion defining `z_s` gives

\[
 l_s=z_0^{-s}.
\]

Call a normalized diagonal with entries `omega^{ps}` **geometric**. We have proved that `L` is geometric.

For a geometric `L`, there is a cyclic column permutation `P` with `LF=FP`. Apply `P^{-1}` to the three right-hand columns of (3). This gives

\[
 \begin{pmatrix}F&F\\ FM&-FM\end{pmatrix}.           \tag{7}
\]

This is the full affine Fourier family. More explicitly, index its rows by `(x,i)` and columns by `(y,j)`, with `x,y` in `{0,1}` and `i,j` in `{0,1,2}`. Set

\[
 r=3x+2i\pmod6,\qquad c=3y+4j\pmod6.
\]

Then

\[
 (F_6)_{r,c}=(-1)^{xy}\omega^{ij},\qquad
 r\bmod2=x,\qquad c\bmod3=j.
\]

Writing `M=diag(1,e^{ix_0},e^{iy_0})`, the extra factor in the bottom block of (7) is exactly the phase pattern `x_0 t_1+y_0 t_2` from the handoff. The verifier checks this Chinese remainder identification entirely with modular integer arithmetic.

The same conclusion holds whenever `L` is geometric, regardless of the rank of `C`.

## 5. Rank zero gives the transpose family

If `C=0`, all three products `n_k conjugate(n_{k-1})` vanish. Since there are only three indices, at most one `n_k` is nonzero. Unitarity of `N` makes that entry have modulus 1. The normalization `m_0=1` then makes

\[
 m_t=\omega^{-k_0t}
\]

for some index `k_0`. Thus `M` is geometric and `N` is a cyclic permutation matrix `S`.

Since `FM=SF`, applying `S^{-1}` to the three bottom rows of (3) gives

\[
 \begin{pmatrix}F&LF\\ F&-LF\end{pmatrix}.           \tag{8}
\]

Because `F` is symmetric, (8) is the transpose of (7), with `M` replaced by `L`. Hence it belongs to the transposed full affine Fourier family.

## 6. Rank one leaves only finitely many cubic-phase cases

Assume `rank C=1`. If `L` is geometric, Section 4 already applies, so suppose it is not.

Exactly one nonzero Fourier eigenvalue of `C` remains, say `lambda_t` with `t=1` or `2`. The equation `Cz=0` gives

\[
 \sum_{s=0}^2 z_s\omega^{-ts}=0.
\]

The three summands have modulus 1 and product 1, because `sum s=3` and `product z_s=1`. The three-phase lemma therefore shows that every `z_s` is a third root of unity. Since `l_0=1`, the recursion `z_s=l_s conjugate(l_{s+1})` makes every `l_s` a third root of unity.

The circulant coefficient vector `c` has precisely one Fourier mode, so all three `|c_k|` are equal and nonzero. It follows that all three `|n_k|` are equal. Since their squared moduli sum to 1,

\[
 |n_0|=|n_1|=|n_2|=1/\sqrt3.                       \tag{9}
\]

Thus the three Fourier values of the unit phases `(m_0,m_1,m_2)` have equal modulus. Their nonzero autocorrelation vanishes:

\[
 m_0\overline{m_1}+m_1\overline{m_2}+m_2\overline{m_0}=0.
\]

The three summands again have modulus 1 and product 1. The three-phase lemma, together with `m_0=1`, makes every `m_s` a third root of unity. A geometric `M` would have made `N` a permutation and `C=0`, so `M` is not geometric.

We have reduced every remaining matrix to

\[
 L=\operatorname{diag}(\omega^{\ell_0},\omega^{\ell_1},\omega^{\ell_2}),
 \quad
 M=\operatorname{diag}(\omega^{m_0},\omega^{m_1},\omega^{m_2}),
\]

where each exponent vector is one of the six vectors

\[
 (0,0,1),\ (0,0,2),\ (0,1,0),\ (0,1,1),\ (0,2,0),\ (0,2,2). \tag{10}
\]

There are exactly 36 cases, with no continuous parameter left.

## 7. Exact enumeration and Tao equivalences

For every ordered pair of vectors in (10), the certificate constructs the lower-right numerator

\[
 -FMF^*LF
\]

in the Eisenstein integer ring `Z[omega]`. The lower-right block is flat if and only if all nine numerator entries have squared norm 9. Exactly 18 pairs satisfy this condition; the other 18 have an explicitly stored entry whose norm fails it.

Equivalently, write the two normalized vectors as cubic chirps

\[
 l_j=\omega^{\alpha j^2+\beta j},\qquad
 m_j=\omega^{\gamma j^2+\delta j},
\]

where `alpha,gamma` lie in `{1,2}` and `beta,delta` lie in `{0,1,2}`. The exact enumeration also checks that flatness holds precisely when `alpha != gamma`.

For every one of the 18 flat pairs, the resulting matrix in (3) has third-root entries. The file `hadamard_corner_cases.json` supplies explicit row and column permutations whose dephasing gives Tao's exponent matrix

\[
 T=\begin{pmatrix}
 0&0&0&0&0&0\\
 0&0&1&1&2&2\\
 0&1&0&2&2&1\\
 0&1&2&0&1&2\\
 0&2&2&1&0&1\\
 0&2&1&2&1&0
 \end{pmatrix}.                                    \tag{11}
\]

Here the actual Hadamard entries are `omega` raised to these exponents.

Concretely, if `E` is the exponent matrix of one case and the stored permutations are `r,c`, the verifier checks all 36 congruences

\[
 E_{r_i,c_j}-E_{r_i,c_0}-E_{r_0,c_j}+E_{r_0,c_0}
 \equiv T_{ij}\pmod3.                               \tag{12}
\]

This is an explicit monomial equivalence. For example, the case
`L=diag(1,1,omega)`, `M=diag(1,1,omega^2)` has the stored permutations

\[
 r=(4,1,2,5,0,3),\qquad c=(0,1,2,3,5,4).
\]

The verifier checks complete coverage of the 36 pairs, rejects duplicate records, regenerates every matrix and every entry norm, checks Hadamard orthogonality of every accepted matrix, and verifies every equivalence (12). This proves that the finite residual case consists entirely of Tao equivalents.

The three rank cases exhaust all possibilities. This completes the classification theorem.

## 8. Exact value of M for Tao

The verifier constructs all 400 corners of the matrix (11) in `Z[omega]`. For each corner it computes `q=perm(B) det(B)^2 / product(B)` exactly. Since each entry is a third root, the denominator has unit norm and its inverse is its conjugate.

If `q=a+b omega`, then

\[
 4(\operatorname{Im}q)^2=3b^2.
\]

The exact values are 0 on 40 corners and 243 on the other 360. Complementation of column triples is a bijection, so F2 gives

\[
 M(Tao)=243.
\]

This check does not rely on the numerical assertion about Tao in F6 of the handoff.

## Inputs and remaining scope

The classification uses the defining Hadamard equations, elementary three-phase geometry, and the complete exact finite certificate. Its confinement corollary additionally uses F2 and the independently proved full affine Fourier theorem in `../fourier_sector/CONFINEMENT_FOURIER.md`.

The result resolves the entire exact Hadamard-corner stratum, which includes the degenerate `F3` seed itself. It does not quantify a neighborhood of that stratum and does not show that every low-`M` Hadamard enters it. The unrestricted global confinement theorem remains a separate obligation.

## Additional exact identity for quantitative stability

The eigenvalues in Section 3 have a useful expression in the original diagonal phases. Define

\[
 w_s=m_s\overline{m_{s+1}},\qquad
 \widehat w_t=\tfrac13\sum_s w_s\omega^{-st}.
\]

Expansion of (4) gives

\[
 3\lambda_t=\sum_{b=0}^2m_{b+t}\overline{m_b}\omega^b,
 \qquad
 \boxed{\lambda_1=\overline{\widehat w_1},\quad
        \lambda_2=\omega\widehat w_2.}              \tag{13}
\]

The verifier checks (13) as an equality of Laurent coefficients with Eisenstein-integer coefficients, after multiplication by 9. Consequently, a residual bound `||Cz||_2 <= eta` implies

\[
 |\widehat w_t\widehat z_t|\le\eta,\qquad t=1,2,
\]

where `widehat z` uses the same normalization. These two products are symmetric in the two diagonal phase vectors. The quantitative collar developed in the sibling Fourier-sector note uses this symmetry together with a robust form of the three-phase lemma. The exact classification above does not require that extension.

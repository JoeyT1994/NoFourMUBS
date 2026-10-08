# Exact global block and moment identities

## Status and scope

The identities and inequalities below hold for every complex Hadamard matrix of order six. They improve the global control of the corner chart and give exact replacements for several sums over its 400 corners. They **do not prove** that `M < 26` implies `nu <= 0.55`. In particular, none of the signed or real moment identities below is a lower bound on the full sum of squared imaginary parts strong enough to establish that implication.

The proof uses the defining unimodularity and orthogonality equations, F2 (the square identity), and F8 (Cauchy--Binet) from `PROMPT.md`. It does not use F1, F3, F4, F5, the numerical evidence in F6, or the reconstruction-coverage assertion in F7. All coefficient computations are exact and use the Python standard library only.

Run:

```sh
python3 verify_global_moments.py
```

The expected last result is `GLOBAL MOMENT CERTIFICATES PASS`.

## 1. Complementary determinants and permanents

Let `A` and `B` be two complementary 3 by 3 blocks in the same three rows of `H`, and write

\[
 D=|\det A|^2,\qquad G=|\det B|^2,\qquad
 P_A=|\operatorname{perm}A|^2,\quad
 P_B=|\operatorname{perm}B|^2.
\]

Then

\[
 \boxed{3P_A=2D-G,\qquad 3P_B=2G-D.}                 \tag{1}
\]

Consequently

\[
 \boxed{D/2\le G\le 2D,\qquad
 P_A\le D/2,\qquad P_B\le G/2.}                    \tag{2}
\]

In particular, one of the two complementary determinants vanishes if and only if the other does. If either vanishes, both corresponding permanents vanish as well.

### Proof

For any unimodular 3 by 3 matrix `E`, with `p,J` defined as in the prompt, expansion of its determinant and permanent gives

\[
 |\det E|^2=27-3p-J,\qquad
 |\operatorname{perm}E|^2=9-p-J.                    \tag{3}
\]

These two identities are checked by equality of Laurent-polynomial coefficients in the verifier; they can also be obtained by pairing the six permutation terms and their conjugates.

Since `AA* + BB* = 6I`, the two blocks have the same `p` and opposite `J`. Thus

\[
 D=27-3p-J,\quad G=27-3p+J,\quad
 P_A=9-p-J,\quad P_B=9-p+J.
\]

Eliminating `p,J` proves (1). Nonnegativity of both permanents proves the determinant comparison in (2). Substituting this comparison in (1) proves the two remaining inequalities. No division by a determinant is used, so the result includes singular blocks.

## 2. A lower bound on the chart determinant in terms of R

In the notation above, the reconstruction invariant of `A` uses

\[
 g(A)=G.
\]

By F2 and unimodularity of the entries of `B`,

\[
 R(A)=4(\operatorname{Im}q(B))^2
 \le4|q(B)|^2
 =4G^2P_B
 =\frac43G^2(2G-D)
 \le2G^3.
\]

Therefore

\[
 \boxed{R(A)>0\quad\Longrightarrow\quad
 g(A)\ge\bigl(R(A)/2\bigr)^{1/3}>0.}               \tag{4}
\]

Moreover, `|det A|^2 >= g(A)/2 > 0`. Thus both same-row complementary blocks are invertible whenever the selected corner has positive `R`.

For example, on a maximal-corner chart with `M >= 5`, equation (4) gives

\[
 g\ge(5/2)^{1/3}>27/20.
\]

On a chart with `M >= 1`, it gives `g > 79/100`. Both displayed rational comparisons are checked exactly by cubing positive rational numbers.

This removes an independent `g -> 0` issue on every region where the selected `R` is bounded below. It does not supply a positive lower bound on `R` over the unknown region outside the Fourier neighborhood. Both `g` and `R` may still tend to zero there unless an additional argument excludes that behavior.

## 3. Sharp universal permanent bound

Every 3 by 3 corner `B` of an order-six Hadamard obeys

\[
 \boxed{|\operatorname{perm}B|^2\le9.}             \tag{5}
\]

Equality holds if and only if `BB* = 3I`.

### Proof

The eigenvalues `lambda_i` of `BB*` lie in `[0,6]`, because `BB* + AA* = 6I`, and their sum is 9. Set `x_i = lambda_i - 3`. Then `sum x_i = 0`, each `x_i` lies in `[-3,3]`, and (3) gives

\[
 P_B=9-p+\tau,\qquad
 p=\tfrac12\sum_i x_i^2,\quad \tau=x_1x_2x_3.
\]

It suffices to show `tau <= p`. If `tau <= 0`, this is immediate. If `tau > 0`, after reordering write

\[
 (x_1,x_2,x_3)=(a+b,-a,-b),\qquad a,b>0,\quad a+b\le3.
\]

The following exact identity proves the assertion:

\[
 4(p-\tau)
 =(3-a-b)(a+b)^2+(a+b+1)(a-b)^2\ge0.              \tag{6}
\]

Equality in the spectral argument permits only eigenvalue multisets `(3,3,3)` and `(6,3/2,3/2)`. The latter cannot occur for a corner of a full flat Hadamard: it would give `D = det(6I-BB*) = 0` and `G = det(BB*) = 27/2 > 0`, contradicting (2). Thus equality in (5) is equivalent to `BB* = 3I`. Conversely, (3) gives `P_B=9` when `BB*=3I`.

Combining (4) with (5) also gives `R(A) <= min(2g^3,36g^2)`.

### Quantitative near-equality consequence

If `P_B >= 35/4`, then

\[
 \boxed{|\det B|^2\ge27-13\bigl(9-|\operatorname{perm}B|^2\bigr).} \tag{6a}
\]

To prove this, put `e=9-P_B`, so `0 <= e <= 1/4`, and use the same `p,tau` as above. We have `e=p-tau`. Positivity of the complementary permanent gives

\[
 0\le P_A=9-p-\tau=9-2p+e,
 \qquad p\le(9+e)/2\le37/8.
\]

The three off-diagonal Gram entries give

\[
 |\tau|\le2\sqrt{XYZ}\le2(p/3)^{3/2}
 \le\sqrt{37/54}\,p\le\tfrac56p.
\]

The last rational comparison is `(37/54) < (5/6)^2`. Thus `e=p-tau >= p/6` and

\[
 |\det B|^2=27-3p+\tau=27-2p-e\ge27-13e.
\]

This converts any explicit determinant collar of the Hadamard-corner stratum into an explicit permanent collar. For example, a determinant cutoff `27-delta` follows from a permanent-squared cutoff `9-delta/13`, provided `delta/13 <= 1/4`.

## 4. An exact permanent counterpart of Cauchy--Binet

For every row triple `S`,

\[
 \boxed{\sum_{|T|=3}|\operatorname{perm}H[S,T]|^2=72.}       \tag{7}
\]

Indeed, summing the first identity in (1) over the 20 column triples and using the complement bijection gives

\[
 3\sum_T P_T=2\sum_T D_T-\sum_T D_{T^c}=216.
\]

In particular, at least eight of the 20 permanents in every row triple are nonzero, by (5). There is a determinant pivot with `|det|^2 >= 216/20 = 54/5` in every row triple. This does not assert that such a pivot has positive `R`; selecting a large determinant alone therefore does not prove positive-chart coverage.

## 5. A signed row-triple identity

Fix distinct rows `a,b,c`. Define

\[
 K_a=\sum_{j=0}^{5}\frac{H_{aj}^2}{H_{bj}H_{cj}},\qquad
 K_b=\sum_{j=0}^{5}\frac{H_{bj}^2}{H_{aj}H_{cj}},\qquad
 K_c=\sum_{j=0}^{5}\frac{H_{cj}^2}{H_{aj}H_{bj}}.
\]

Then

\[
 \boxed{\sum_{|T|=3}q(H[\{a,b,c\},T])=432+K_aK_bK_c.}      \tag{8}
\]

Its imaginary part gives a global necessary condition for low `M`:

\[
 \boxed{M(H)\ge\frac{(\operatorname{Im}(K_aK_bK_c))^2}{100}.} \tag{9}
\]

The full energy restricted to the row triple obeys the sharper summed statement

\[
 \sum_T R(H[\{a,b,c\},T])
 \ge\frac{(\operatorname{Im}(K_aK_bK_c))^2}{5}.             \tag{10}
\]

### Exact proof and certificate of (8)

Rephase columns to make row `a` all ones, and write the other two rows as `z_j,w_j`. For an integer pair `alpha=(m,n)`, let

\[
 P_{m,n}=\sum_{j=0}^5 z_j^m w_j^n.
\]

The row orthogonalities say

\[
 P_{1,0}=P_{0,1}=P_{1,-1}=0,
\]

together with the conjugate equations, and `P_{0,0}=6`.

Expand `q` on three selected columns as a symmetric Laurent polynomial. It has 55 nonzero integer terms. For any three exponent pairs `alpha,beta,gamma`, summing over distinct ordered columns gives the exact inclusion--exclusion identity

\[
 \begin{aligned}
 \sum_{i,j,k\ \mathrm{distinct}}
 (z_i,w_i)^\alpha(z_j,w_j)^\beta(z_k,w_k)^\gamma
 ={}&P_\alpha P_\beta P_\gamma
 -P_{\alpha+\beta}P_\gamma
 -P_{\alpha+\gamma}P_\beta\\
 &-P_{\beta+\gamma}P_\alpha+2P_{\alpha+\beta+\gamma}.
 \end{aligned}                                                   \tag{11}
\]

After the six orthogonality substitutions, the exact result is

\[
 432+P_{-1,-1}P_{-1,2}P_{2,-1}=432+K_aK_bK_c.
\]

The verifier constructs the permanent and determinant from all six permutations, expands their product, checks column symmetry, applies (11) with the correct stabilizers for repeated exponent labels, and compares every resulting coefficient. Thus this is a finite exact algebraic proof of (8), rather than a numerical fit to particular matrices.

For (9), use F2 to bound every `|2 Im q|` by `sqrt M`, and apply the triangle inequality to the 20 terms in (8). For (10), apply Cauchy--Schwarz to those terms; the complement bijection preserves their total squared energy.

## 6. Full-matrix second and third moment identities

Put

\[
 S_2=\sum_{a<b}\left|\sum_j(H_{aj}\overline{H_{bj}})^2\right|^2,
 \qquad
 T_3=\sum_{\text{all 400 corners}}XYZ.
\]

Then, with sums over all 400 corners,

\[
 \begin{aligned}
 \sum p&=2160,\\
 \sum(X^2+Y^2+Z^2)&=6480+8S_2,\\
 \sum(XY+XZ+YZ)&=3240-2S_2,\\
 \sum p^2&=12960+4S_2,\\
 \sum J&=\sum pJ=0.                              \tag{12}
 \end{aligned}
\]

Consequently

\[
 \boxed{\sum_c\operatorname{Re}q(H[c])
 =8100+3S_2+\tfrac12T_3\ge8100.}                  \tag{13}
\]

### Proof

For any six unit phases `z_j` with sum zero, exact expansion over the 20 triples gives

\[
 \sum_T\left|\sum_{j\in T}z_j\right|^2=36,
 \qquad
 \sum_T\left|\sum_{j\in T}z_j\right|^4
 =108+2\left|\sum_jz_j^2\right|^2.                \tag{14}
\]

Both statements are independently verified using (11) in one phase variable. There are 15 row pairs, each contained in four row triples. Summing (14) therefore proves the first two lines of (12).

For a fixed column triple `T`, let `V=H[:,T]`, `K=VV*`, and
`x_ab=|K_ab|^2` for `a != b`. Since `V*V=6I`, we have `K^2=6K` and `K_aa=3`. Hence

\[
 \sum_{b\ne a}x_{ab}=9.
\]

It follows that

\[
 \sum_{a<b<c}(x_{ab}x_{ac}+x_{ab}x_{bc}+x_{ac}x_{bc})
 =243-\sum_{a<b}x_{ab}^2.
\]

Summing this over the 20 column triples and using (14) gives the third line of (12). The fourth line follows by expanding `p^2`. Complementing columns preserves `p` and negates `J`, so both sums in the last line vanish.

The exact 3 by 3 Laurent identity

\[
 2\operatorname{Re}q(E)
 =(p-9)(p-18)-W+(p-15)J                           \tag{15}
\]

is checked coefficient by coefficient in the verifier. Summing it and substituting (12) gives (13). The final inequality uses only `S_2,T_3 >= 0`.

## 7. A complete exact row-energy expansion

`row_energy_moments.json` gives a 66-term polynomial in the moments `P_{m,n}` that equals

\[
 \sum_{|T|=3}4(\operatorname{Im}q(H[S,T]))^2
 =\sum_{|T|=3}R(H[S,T]).
\]

A JSON record with coefficient `[u,v]` and moment labels `[(m_1,n_1),...]` means `(u/v) P_{m_1,n_1} ...`. An empty list of moment labels denotes the constant monomial. The verifier regenerates the entire table by applying (11) to `-(q-conjugate(q))^2`, using only the same row-orthogonality equations as in (8), and checks equality with the saved table. It also checks conjugation symmetry of all coefficients.

This is an exact algebraic identity. Its mixed signs have not been converted into a useful nonnegative expression controlling distance to the Fourier orbit. It is included as a reproducible reduction of the proposed global sum-of-squares route, not as a completed confinement certificate.

## 8. What remains open

The determinant bound (4) controls chart conditioning on each region where `R` has a positive lower bound. The signed identity (8) and real identity (13) constrain low-corner-invariant matrices. None excludes a component of `{M<26}` that is separated from the Fourier orbit.

A proof of the requested theorem still needs a genuinely global distance inequality, a complete certified cover, or a theorem excluding the relevant non-Fourier local minima. No such assertion is established in this note.

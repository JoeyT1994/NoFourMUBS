# Exact general identities for the quantitative MC1 program

## Status and scope

The identities below hold for **every** order-six complex Hadamard matrix. They use no chart, regularity, affine-family, local-neighborhood, completion, or symmetry assumption. They do **not** prove the global confinement implication at cutoff 26, or at any new explicit cutoff. In particular, no estimate connecting the remaining tensor quantities to distance from the Fourier orbit has been established.

The accompanying `verify_general_identities.py` uses only Python's standard library and exact integers. It verifies the polynomial coefficients and combinatorial multiplicities identified below. The dimension-specific consequences also use the short orthogonality arguments written out here. Its expected final line is `ALL GENERAL IDENTITY CHECKS PASS`.

Inputs from the handoff: the definitions of a Hadamard matrix and `q`, fact F2 when converting an imaginary-part estimate into an estimate for `M`, and F8 for the determinant sum. No numerical sampling statement is used.

## 1. The imaginary part of q has only 24 Laurent monomials

Let B be any 3 by 3 matrix of unit entries, and put

\[
P=\prod_{i,j}B_{ij},\qquad q(B)=\operatorname{perm}(B)\det(B)^2/P.
\]

Expand the permanent and both determinants. After combining identical Laurent monomials, there are exactly 55 terms. Their exponent patterns, coefficients, and multiplicities are:

| Sorted nine exponents | Coefficient | Multiplicity |
| --- | ---: | ---: |
| −1,−1,−1,−1,−1,−1,2,2,2 | 1 | 6 |
| −1,−1,−1,−1,0,0,1,1,2 | −1 | 18 |
| −1,−1,−1,0,0,0,1,1,1 | 3 | 12 |
| −1,−1,0,0,0,0,0,1,1 | −2 | 18 |
| 0,0,0,0,0,0,0,0,0 | 12 | 1 |

The last three classes are invariant under inversion of all entries, term by term or in conjugate pairs. Consequently, only the first 24 monomials contribute to the imaginary part.

The verifier checks this expansion as an equality of Laurent polynomials over the integers. Its conclusion holds on the entire unit torus, including singular B.

## 2. Permanent and determinant sum rules

For the positive row Gram matrix K=BB*, write

\[
p=|K_{21}|^2+|K_{31}|^2+|K_{32}|^2,
\qquad J=2\Re(K_{21}K_{32}K_{13}).
\]

Then

\[
\boxed{|\operatorname{perm}B|^2=9-p+J},\qquad
\boxed{|\det B|^2=27-3p+J}.                                      \tag{2.1}
\]

The second identity is the 3 by 3 determinant formula. Here is an independent derivation of the first. The permanent of K is `27+3p+J`. The permanent version of Cauchy–Binet expands it as a sum over multisets of three columns of B. Three different columns contribute `|perm B|²`. Three copies of one column contribute 6 for each of the three choices, hence 18. Two copies of one column and one of another contribute twice the squared inner product of those two columns. Summing the six ordered choices gives four times the sum of squared column-Gram off-diagonal entries. That sum equals p, because `tr((BB*)²)=tr((B*B)²)` and both Gram diagonals equal 3. Thus

\[
27+3p+J=|\operatorname{perm}B|^2+18+4p.
\]

The verifier also checks both identities directly as exact Laurent-polynomial equalities.

Now fix a row triple S in a 6 by 6 Hadamard H. For each column triple T, let p_T,J_T be the preceding invariants of B=H[S,T]. Orthogonality gives

\[
\sum_T p_T=108,\qquad \sum_T J_T=0.                              \tag{2.2}
\]

For the first equality, each of the three row pairs gives a vector x of six unit ratios with sum zero. Each coordinate belongs to ten triples, and each distinct pair belongs to four. Therefore

\[
\sum_{|T|=3}\left|\sum_{j\in T}x_j\right|^2
=10\cdot6+4\sum_{j\ne k}x_j\bar x_k=60-24=36.
\]

For the second equality, replacing T by its complement negates all three Gram off-diagonal entries and hence negates J_T. Applying (2.1) now gives

\[
\boxed{\sum_{|T|=3}|\operatorname{perm}H[S,T]|^2=72}.             \tag{2.3}
\]

Together with F8, the sum of permanent squares over all 400 corners is 1440, and the sum of determinant squares is 4320.

## 3. Fourth subset moments of row ratios

Let x,y be six-vectors with unit entries and zero sums. Write `x_T=Σ_{j∈T}x_j`, and similarly for y. Then

\[
\boxed{\sum_{|T|=3}|x_T|^2|y_T|^2
=36+2\left|\sum_jx_jy_j\right|^2
  +2\left|\sum_jx_j\bar y_j\right|^2}.                           \tag{3.1}
\]

Two useful cases are

\[
\sum_T|x_T|^4=108+2\left|\sum_jx_j^2\right|^2,                   \tag{3.2}
\]

and, when x and y are orthogonal,

\[
\sum_T|x_T|^2|y_T|^2=36+2\left|\sum_jx_jy_j\right|^2.             \tag{3.3}
\]

### Exact proof

For four arbitrary six-vectors a,b,c,d, expand the product of their subset sums. The coefficient of a product involving r distinct coordinates is

\[
N_r=\binom{6-r}{3-r},\quad (N_1,N_2,N_3,N_4)=(10,4,1,0).
\]

Express this coefficient using set partitions of the four labeled factors. The coefficients of the block-size patterns are

\[
(4):-6,\quad (3,1):1,\quad (2,2):2,\quad (2,1,1):1,\quad
(1,1,1,1):0.
\]

When all four vectors are centered, every partition with a singleton contributes zero. The surviving formula is

\[
\sum_T a_Tb_Tc_Td_T
=2\big[(a\cdot b)(c\cdot d)+(a\cdot c)(b\cdot d)
      +(a\cdot d)(b\cdot c)\big]-6\sum_j a_jb_jc_jd_j.            \tag{3.4}
\]

Here the dots are bilinear sums without conjugation. Substitute `(a,b,c,d)=(x,x̄,y,ȳ)` to obtain (3.1). The verifier checks the preceding partition formula on all 6^4 coordinate assignments, using integer coefficients only.

For example, for any fixed row triple of H, (3.2)–(3.3) express `Σ_T p_T²` in terms of squared second and third row-ratio moments, without reconstructing any other rows.

## 4. Elimination of the third row in sums of Im q

Fix distinct rows p,q and a column triple T. Write

\[
x_j=H_{pj},\quad y_j=H_{qj}\quad(j\in T),\qquad
P_{pq,T}=\prod_{j\in T}x_jy_j.
\]

For each c in T, let `{a,b}=T\setminus\{c\}`, and define

\[
C_{pq,T,c}
=\frac{(x_ay_b+x_by_a)(x_ay_b-x_by_a)^2}{P_{pq,T}},               \tag{4.1}
\]

and the fourth column moment

\[
V_{c;ab}=\sum_{k=0}^5\frac{H_{kc}^2}{H_{ka}H_{kb}}.             \tag{4.2}
\]

Then the following identity is exact:

\[
\boxed{
\sum_{k\notin\{p,q\}}\Im q(H[\{p,q,k\},T])
=\Im\sum_{c\in T}C_{pq,T,c}V_{c;ab}.
}                                                               \tag{4.3}
\]

The ordering of a,b does not matter. The ordering of the rows in q does not matter because the determinant is squared.

### Proof

In the 24-term imaginary-part expansion from Section 1, collect the terms whose third-row exponent vector is `(2,−1,−1)`, with the 2 in column c. Their coefficient is

\[
\frac{t^2/u+u^2/t-t-u}{x_cy_c}
=\frac{(t+u)(t-u)^2}{tu x_cy_c}=C_{pq,T,c},
\quad t=x_ay_b,\ u=x_by_a.
\]

Every other contributing term has third-row exponent vector equal to a permutation of `(1,0,−1)`. Summing the third row over all six rows annihilates those terms by column orthogonality:

\[
\sum_kH_{ka}/H_{kb}=0\quad(a\ne b).
\]

The terms for k=p or k=q contribute zero to q because their determinant vanishes. The surviving nonlinear terms give (4.3). The verifier checks the decomposition before orthogonality is imposed, by subtracting the explicit surviving terms and checking every remaining exponent vector.

### A necessary global inequality

Let the right side of (4.3) be A_{pq,T}. F2 and Cauchy–Schwarz give

\[
\boxed{M(H)\ge\frac14\max_{p<q,T}|A_{pq,T}|^2}.                 \tag{4.4}
\]

Indeed, each of the four summands on the left side of (4.3) has squared modulus at most `M/4`, so the squared sum is at most `4M`. In particular, `M<26` implies the 300 exact necessary inequalities

\[
|A_{pq,T}|^2<104.                                               \tag{4.5}
\]

Summing Cauchy–Schwarz over the 15 row pairs gives another exact bound:

\[
\sum_{p<q,T}|A_{pq,T}|^2
\le3\sum_{S,T}R(H[S,T])\le1200M(H).                             \tag{4.6}
\]

Every row triple is counted three times. Transposing H gives the analogous column-pair formulas.

These inequalities retain interference inside the fourth moments V. Replacing V by entrywise absolute-value bounds gives weak estimates and does not prove confinement.

## 5. The global sum of q is a cubic tensor invariant

Define row moments, allowing repeated indices for the intermediate argument,

\[
T_{i;jk}=\sum_{\ell=0}^5\frac{H_{i\ell}^2}{H_{j\ell}H_{k\ell}},
\qquad
A_2=\sum_{i<j}\left|\sum_\ell(H_{i\ell}/H_{j\ell})^2\right|^2.
\]

Then

\[
\boxed{
\sum_{i<j<k}\bigl(|T_{i;jk}|^2+|T_{j;ik}|^2+|T_{k;ij}|^2\bigr)
=540-A_2,
}                                                               \tag{5.1}
\]

and, as a complex-number identity,

\[
\boxed{
\sum_{S,T}q(H[S,T])
=8640+\sum_{i<j<k}T_{i;jk}T_{j;ik}T_{k;ij}.
}                                                               \tag{5.2}
\]

Neither identity asserts a new bound on M.

### Proof of the quadratic tensor sum

For fixed i, the symmetric matrix with entries `T_{i;jk}` is

\[
\overline H\,\operatorname{diag}(H_{i\ell}^2)\,\overline H^{\mathsf T}.
\]

Its product with its adjoint is 36I. Therefore its Frobenius norm squared is 216. Sum over i to obtain 1296. If one lower index equals i, the moment is zero except at `T_{i;ii}=6`, accounting for 216. The terms with the two lower indices equal and different from i account for `2A_2`. The remaining terms count each moment in the left side of (5.1) twice. Thus `1296=216+2A_2+2B`, which gives (5.1).

### Proof of the cubic identity

Use the five Laurent classes of Section 1, and sum each over all corners. Denote the sum of the six cubic matching monomials by I, the sum of the 18 mixed monomials before their minus sign by II, and the unweighted sums of the 12 oriented six-cycle and 18 oriented four-cycle monomials by C6,C4. Then

\[
\sum q=I-II+3C6-2C4+4800.                                      \tag{5.3}
\]

**Four-cycles.** For each row pair, the sum of the two orientations over all column pairs is −6 by row orthogonality. There are 15 row pairs and 16 ways to embed each 2 by 2 rectangle into a 3 by 3 corner. Hence `C4=−1440`.

**Six-cycles.** Fix three distinct ordered rows. The sum over all ordered column triples of the cycle product is zero, because it factors into three orthogonal row inner products. The all-equal-column terms sum to 6. Each of the three patterns with exactly two equal columns sums to −6. Thus the distinct-column terms sum to 12. There are 120 ordered row triples, and each oriented cycle monomial is represented three times by simultaneous cyclic rotation, giving `C6=120·12/3=480`.

**Mixed monomials.** Fix their unique entry having exponent 2, say `(i,j)`. Dephase about that entry, writing

\[
Z_{ka}=H_{ij}H_{ka}/(H_{ia}H_{kj}),\qquad k\ne i,\ a\ne j.
\]

Each of the five row sums and column sums of this 5 by 5 array is −1. Therefore the sum of products `Z_{ka}Z_{lb}` with different rows and different columns is

\[
25-5-5+\sum_{k\ne i,a\ne j}Z_{ka}^2.
\]

Each mixed monomial is counted twice in this expression. On summing over all centers, the last double sum is `2A_2−180`. Consequently

\[
II=\tfrac12(36\cdot15+2A_2-180)=180+A_2.                         \tag{5.4}
\]

**Cubic matching monomials.** For a fixed row triple `{i,j,k}`, define vectors

\[
u_\ell=H_{i\ell}^2/(H_{j\ell}H_{k\ell}),\quad
v_\ell=H_{j\ell}^2/(H_{i\ell}H_{k\ell}),\quad
w_\ell=H_{k\ell}^2/(H_{i\ell}H_{j\ell}).
\]

They satisfy `u_ℓ v_ℓ w_ℓ=1`. If their sums are U,V,W, inclusion–exclusion on the three selected columns gives

\[
\sum_{a,b,c\ \mathrm{distinct}}u_av_bw_c
=UVW-|U|^2-|V|^2-|W|^2+12.
\]

Using (5.1) and summing the 20 row triples yields

\[
I=\sum_{i<j<k}T_{i;jk}T_{j;ik}T_{k;ij}-300+A_2.                 \tag{5.5}
\]

Substitute (5.4), (5.5), `C6=480`, and `C4=−1440` into (5.3). The A_2 terms cancel and the remaining constant is 8640, proving (5.2).

## 6. A determinant fourth-moment consequence

The preceding identities imply the global sum rule

\[
\boxed{\sum_{S,T}p_{S,T}^2=12960+4A_2}.                          \tag{6.1}
\]

To check it, for one fixed row triple expand p² into three fourth moments and three doubled mixed moments. Equations (3.2)–(3.3) give

\[
\sum_T p_{S,T}^2=540+2A_S+4B_S,
\]

where A_S is the sum of the three squared second row-ratio moments, and B_S is the sum of the three squared moments `T_{i;jk}` for this row triple. In the sum over all 20 row triples, every row pair occurs four times, so `Σ_S A_S=4A_2`, while (5.1) says `Σ_S B_S=540−A_2`. This proves (6.1).

Write `d_c=|det H_c|²=27−3p_c+J_c`, using the positive Gram convention throughout. Complementation of the columns gives `p_c=p_complement`, `J_c=−J_complement`. Hence the global sums of J and pJ vanish. Since `Σp=2160`, expanding d² gives

\[
\boxed{\sum_c|\det H_c|^4=58320+36A_2+\sum_cJ_c^2}.             \tag{6.2}
\]

Combining this with F8 yields

\[
\boxed{
\max_c|\det H_c|^2\ \ge\ \frac{27}{2}+\frac{A_2}{120}
                       +\frac1{4320}\sum_cJ_c^2
\ \ge\ \frac{27}{2}.
}                                                               \tag{6.3}
\]

Indeed, `Σd_c²≤(max d_c)Σd_c` and `Σd_c=4320`. This is a uniform, exact lower bound on the largest squared determinant. It is too weak to force a nearly Hadamard 3 by 3 corner: the maximal possible squared determinant is 27.

The exact missing bridge is a useful bound on

\[
\Delta_3(H)=27-\max_c|\det H_c|^2=\min_c(3p_c-J_c)
\]

in terms of M(H). No such quantitative bound is established here. The identities constrain the first and second moments of p and J but leave their distribution across corners uncontrolled.

## 7. What remains open

The first useful new reduction is (4.3): sums of the corner constraints with a fixed row pair can be evaluated through fourth column moments, without retaining an individual third row. The second is (5.2): the global sum of q has a compact tensor expression.

Neither reduction bounds distance to the Fourier equivalence class. In particular:

- Bounds on the sums in (4.3) permit cancellation between distinct third rows. No converse estimate controlling all 400 imaginary parts by these aggregates has been proved here.
- The quadratic normalization (5.1) controls the sizes of the tensor moments, while (5.2) still contains their coupled phases.
- No inequality has been proved that forces a nearly Hadamard 3 by 3 corner from `M<26`.
- No numerical observation about the sign of complementary q values, or about the absence of low positive local minima, is used as a theorem.

These are exact global identities and necessary tests, not an enclosure of the low-M region. The requested global confinement theorem remains unproved by this contribution.

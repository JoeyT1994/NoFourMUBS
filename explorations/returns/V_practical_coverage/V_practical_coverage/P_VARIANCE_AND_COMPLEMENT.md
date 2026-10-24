# A uniformly well-conditioned corner and a quantitative zero-J reduction

## 1. Exact variance identity

**PROVED.** For every unit-entry order-six complex Hadamard `H`, let `p_C` be the sum of the three squared off-diagonal row correlations of a positional 3-by-3 corner. Set

\[
T_2(H)=\sum_{a<b}\left|\sum_{j=1}^6 H_{aj}^{\,2}\overline{H_{bj}}^{\,2}\right|^2.
\]

Then, over all 400 corners,

\[
\boxed{\sum_C p_C=2160,\qquad \sum_Cp_C^2=12960+4T_2(H).}
\tag{1}
\]

Equivalently,

\[
\boxed{\frac1{400}\sum_C\left(p_C-\frac{27}{5}\right)^2
=\frac{81}{25}+\frac{T_2(H)}{100}.}
\tag{2}
\]

This identity uses only unit entries and row orthogonality. It uses neither strict-corner classification nor an atlas.

### 1.1 The sampling identity

**PROVED / arithmetic replay provided.** If `a,b,c,d` are four complex six-vectors whose coordinate sums vanish, write `M_ab=sum_j a_j b_j`, and analogously for other products. Then

\[
\sum_{|C|=3}\left(\sum_Ca\right)\left(\sum_Cb\right)
\left(\sum_Cc\right)\left(\sum_Cd\right)
=2(M_{ab}M_{cd}+M_{ac}M_{bd}+M_{ad}M_{bc})-6M_{abcd}.
\tag{3}
\]

A direct proof groups the four expanded indices by their equality partition. An index set of size one, two, three, or four is contained in respectively `10,4,1,0` triples. Inclusion-exclusion gives coefficient `4-2*1+0=2` for each partition into two pairs, and `10-7*4+12*1-6*0=-6` for the one-block partition. Every remaining term contains a singleton moment and vanishes.

Taking `(a,b,c,d)=(u,bar(u),v,bar(v))`, where `u,v` are unit vectors with zero sums, gives

\[
\sum_{|C|=3}|\sum_Cu|^2|\sum_Cv|^2
=36+2|\sum_j u_jv_j|^2+2|\sum_j u_j\bar v_j|^2.
\tag{4}
\]

In particular, if `u=v`, this is `108+2|sum u_j^2|^2`; if `u,v` are orthogonal, it is `36+2|sum u_jv_j|^2`.

### 1.2 Sum the diagonal and cross terms

For a row triple `{a,b,c}`, expand `p_C^2` into its three squared-correlation squares and its three cross terms. A row pair is contained in four row triples. Thus the squared-correlation-square terms, using (4), sum over all 400 corners to

\[
4\sum_{a<b}(108+2|\sum_j H_{aj}^2\bar H_{bj}^2|^2)
=6480+8T_2(H).
\tag{5}
\]

For the cross term sharing row `a`, use

\[
u_j=H_{bj}\bar H_{aj},\qquad v_j=H_{cj}\bar H_{aj}.
\]

Both sums vanish and `sum u_j bar(v_j)=0`. Put

\[
Q^{(a)}=H\,\operatorname{diag}(\bar H_{aj}^{\,2})\,H^T.
\]

Since `H/sqrt(6)` and the diagonal matrix are unitary, `Q^{(a)}/6` is unitary. Also `Q^{(a)}_{aa}=6` and `Q^{(a)}_{ab}=0` for `b!=a`. Therefore

\[
\sum_{b<c,\ b,c\ne a}|Q^{(a)}_{bc}|^2
=90-\frac12\sum_{b\ne a}|\sum_j H_{bj}^2\bar H_{aj}^2|^2.
\]

Summing over the six anchors gives

\[
\sum_a\sum_{b<c,\ b,c\ne a}|Q^{(a)}_{bc}|^2=540-T_2(H).
\tag{6}
\]

There are `6*binom(5,2)=60` anchor-and-two-row choices. Equation (4), including the factor two in the expansion of `p_C^2`, makes all cross terms sum to

\[
2\cdot60\cdot36+4(540-T_2(H))=6480-4T_2(H).
\tag{7}
\]

Adding (5) and (7) proves the second identity in (1). The first is the standard triple-correlation count: each row strip has sum `108`, and there are 20 row strips. Equation (2) follows by subtracting `(27/5)^2`.

## 2. A corner with p at most 9/2

**PROVED.** Physicality gives `0<=p_C<=9` for every corner. Let `m=min_C p_C`. Each product `(p_C-m)(9-p_C)` is nonnegative. Averaging and rearranging yields

\[
\operatorname{Var}(p_C)\le(9-27/5)(27/5-m).
\]

Using (2),

\[
\boxed{\min_C p_C\le\frac92-\frac{T_2(H)}{360}\le\frac92.}
\tag{8}
\]

Choose such a corner and its same-row complementary half. With `q=9-p`, the permanent identities give `|J|<=q`, so both side determinant squares satisfy

\[
\boxed{g_\pm=3q\pm J\ge2q\ge9.}
\tag{9}
\]

Thus every order-six Hadamard has a complementary pair that is uniformly invertible with determinant-square margin nine. The selected corner lies a fixed distance below the nonzero-J critical threshold `p>5` and below the exceptional zero-J point `p=5`.

### 2.1 Uniform spectral conditioning of all four blocks

**PROVED.** After putting the selected corner first, write `H=[[E,B],[C,D]]`. Every one of these four three-by-three blocks has squared singular values in the interval

\[
\boxed{[3-\sqrt6,3+\sqrt6]\subset(1/2,11/2).}
\tag{9a}
\]

In particular,

\[
\boxed{\|E^{-1}\|_{\mathrm{op}},\|B^{-1}\|_{\mathrm{op}},
\|C^{-1}\|_{\mathrm{op}},\|D^{-1}\|_{\mathrm{op}}<\sqrt2,}
\]

and every block has spectral condition number at most `sqrt(5+2 sqrt(6))<sqrt(10)`.

To prove the claim, the Gram matrix `EE*` has trace nine and squared Frobenius norm `27+2p<=36`. If one eigenvalue is `3+x`, the other two deviations from three sum to `-x`, so the sum of their squares is at least `x^2/2`. Thus `3x^2/2<=2p<=9`, which gives `|x|<=sqrt(6)`. Unitarity of `H/sqrt(6)` shows that the Gram spectra of the other blocks are the same spectrum or its reflection `lambda -> 6-lambda`. The inverse bound follows from `3-sqrt(6)>1/2`; the condition-number square is at most `(3+sqrt(6))/(3-sqrt(6))=5+2sqrt(6)<10`.

## 3. Quantitative complementary-discriminant lemma

**PROVED, with an exact polynomial replay.** Suppose an actual complementary pair satisfies

\[
0\le p\le\frac92,\qquad 0\le R_+,R_-\le\varepsilon.
\]

Then

\[
\boxed{p|J|\le\frac{16}{81}\varepsilon.}
\tag{10}
\]

The stronger intermediate bound is `p|J|<=4 epsilon/[9q(q-4)]`, with `q=9-p`.

Define

\[
A=W-q(q+9),\quad u=(R_++R_-)/2,\quad v=(R_+-R_-)/2,
\]

\[
B=30q^2+2J^2,\qquad
F=(J^2+36p)\bigl(4J^2+q^3(q-4)\bigr).
\]

Expanding the handoff's discriminant gives

\[
u=36q^3-A^2+(-q^2+16q-36)J^2,
\]

\[
v=2J\bigl(B+(q+6)A\bigr),
\]

and the exact identity

\[
\boxed{J^2\bigl((q+6)^2u+F\bigr)=BJv-\frac14v^2.}
\tag{11}
\]

Here `q>=9/2`, `u>=0`, `|v|<=epsilon/2`, `|J|<=q`, and

\[
F\ge36p q^3(q-4),\qquad B\le32q^2.
\]

If `J=0`, (10) is immediate. Otherwise (11), dropping nonnegative terms and dividing by `|J|`, yields

\[
36p|J|q^3(q-4)\le32q^2\frac\varepsilon2.
\]

Hence

\[
p|J|\le\frac{4\varepsilon}{9q(q-4)}
\le\frac{16\varepsilon}{81}.
\]

For example, if `epsilon=10^-3` and the selected corner has `p>=1/10`, then `|J|<=16/8100<0.001976`. If `p<1/10`, the corner is instead close in its row Gram matrix to an orthogonal three-by-three block; that branch requires quantitative routing through the supplied three-by-three Hadamard-block normal form, including its Tao alternative.

### 3.1 Uniform practical bounds at epsilon = 1/1000

**PROVED.** The Gram triple product obeys

\[
J^2\le4XYZ\le\frac{4p^3}{27}.
\]

Combining this with (10) gives a bound with no lower guard on `p`:

\[
\boxed{|J|^5\le\frac{2^{14}}{3^{15}}\varepsilon^3.}
\tag{12}
\]

For `epsilon=1/1000`, the right side is strictly smaller than `(1/240)^5`, so

\[
\boxed{|J|<\frac1{240}.}
\tag{13}
\]

For either actual side write its normalized root as `z_+=T_+/g_+` or `z_-=T_-/g_-`, with `T=-Psi`. Its invariants satisfy `|z_±|^2=q±J`, `2g_± Re(z_±)=chi_±`, and `4g_±^2(Im z_±)^2=R_±`.

Both real parts are negative throughout the selected-corner region, independently of the small-discriminant assumption. Indeed

\[
W\le XY+XZ+YZ\le p^2/3,
\]

\[
\chi_\pm=W-q(q+9)\mp(q+6)J
\le p^2/3-3q\le-27/4.
\tag{14}
\]

Consequently, for `epsilon=1/1000`, both labels are close to the same real number:

\[
\boxed{|z_\pm+\sqrt q|<\frac3{1000},
\qquad -\sqrt q\in[-3,-3/\sqrt2].}
\tag{15}
\]

To verify the constant without floating point, write `z=x+iy`. Equation (9) gives `y^2<=1/324000` and `|y|<1/540`. Equation (13) and `q>=9/2` imply `q±J-y^2>4`. Since `x<0`,

\[
|x+\sqrt q|=\frac{|\pm J-y^2|}{\sqrt{q\pm J-y^2}+\sqrt q}
<\frac1{960}+\frac1{1296000}.
\]

Adding `1/540` yields a number strictly below `3/1000`. Thus the practical small-signature regime is uniformly close to the zero-J negative-root interval and stays at least `3/sqrt(2)-2-3/1000>0.118` away from the exceptional root `z=-2`. The endpoint `z=-3`, corresponding to `p=0`, remains present and is not discarded.

## 4. What this does and does not complete

**PROVED using the supplied routing results as inputs.** The all-critical case now has a shorter route: choose (8); equation (10) forces `J=0`, and the supplied return O zero-J theorem, with `p<5` and the uniformly invertible selected two halves, leaves only `p=0` or a geometric row strip. Geometric rows route to a Fourier family by the supplied routing theorem. If `p=0`, the corner is a three-by-three Hadamard block; `context/PROOF.md`, Theorem 2.4, proof step 5, routes such a block to Tao or one of the Fourier families. Tao is then ruled out separately by its nonzero corner discriminants (maximum 243). Finally the supplied Fourier critical-locus theorem gives equivalence to `F_6`. Thus the new moment identity can replace the nonzero-J classification and endpoint count in the qualitative global proof, while explicitly retaining the existing block-normal-form and Fourier-locus dependencies.

For practical quantitative coverage, the next missing ingredient is a robust version of the zero-J mixed-signature step on the compact selected-corner range `p<=9/2`, together with quantitative routing into Fourier families. The variance identity and (10) do not by themselves prove a global margin `epsilon(0.1)>0` of useful magnitude.

# Exact global confinement on the Fourier family and its transpose

## 1. Statement and scope

Put `omega = exp(pi i/3)` and

\[
F(a,b)_{ij}=\omega^{ij}\exp\{i\epsilon_i\delta_{j\bmod3}\},\qquad
\epsilon_i=i\bmod2,\qquad (\delta_0,\delta_1,\delta_2)=(0,a,b).
\]

Thus this is exactly the two-parameter family `F6 ∘ exp(i(a t1+b t2))` specified in the handoff. Parameters are unrestricted real numbers, considered modulo `2*pi`. The theorem includes all matrices equivalent to a member of this family or its transpose.

**Theorem.** For every such matrix `H`, if `M(H)<144`, then

\[
\boxed{\quad
\nu(H)\leq\sqrt{\frac23}\,
\arcsin\!\left(\frac{\sqrt{M(H)}}{12}\right).
\quad} \tag{1}
\]

There is also the explicit projector-distance bound

\[
\boxed{\quad
 d_F(H)\leq
\sin\!\left[\frac16
\arcsin\!\left(\frac{\sqrt{M(H)}}{12}\right)\right].
\quad} \tag{2}
\]

In particular,

\[
M(H)<26\ \Longrightarrow\
\nu(H)<0.358338<0.451<0.55,
\qquad d_F(H)<0.073081<0.075. \tag{3}
\]

The bounds hold across the entire two-dimensional parameter torus, including all its Fourier-equivalent points and every equivalence represented within this family. No assertion that every order-six Hadamard lies in these families is made. These results therefore do **not** establish the requested confinement theorem for arbitrary order-six Hadamards.

An additional exact conclusion is:

> Every local minimum of `M(F(a,b))` on the full parameter torus has value zero and is Fourier-equivalent. For `0<M<144`, an explicit contraction toward a Fourier-equivalent parameter decreases `M` strictly and remains in the same sublevel.

The proof of (1) first constructs an upper bound without assuming that the phase alignment is optimal. Section 7 then proves that the displayed alignment **attains the true infimum throughout `M<=26`**, and establishes that the envelope (1) is optimal at every level from zero through 26.

## 2. Hadamard property and the complete corner spectrum

The family consists of Hadamards for every `a,b`. Two different rows of the same parity have the Fourier inner product, since their additional phases cancel. For rows of opposite parity, pair column `j` with `j+3`: the phase perturbations agree in each pair, while the Fourier terms differ by `omega^{3(i-k)}=-1`, so the inner product is zero. Every row has squared norm six.

Define

\[
U=2a-b,\qquad V=a+b,\qquad W=U-V=a-2b.
\]

**Exact spectrum identity.** The multiset of all 400 corner invariants is

\[
\begin{array}{c|c}
\text{corner value}&\text{multiplicity}\\ \hline
0&256\\
36(\sin U+\sin V+\sin W)^2&36\\
36(\sin U+\sin V-\sin W)^2&36\\
36(\sin U-\sin V+\sin W)^2&36\\
36(\sin U-\sin V-\sin W)^2&36.
\end{array} \tag{4}
\]

These are multiset multiplicities; some listed values can coincide at special parameters. In particular,

\[
\boxed{\ M(F(a,b))=36\bigl(|\sin U|+|\sin V|+|\sin(U-V)|\bigr)^2.\ } \tag{5}
\]

Indeed, the four sign patterns, together with the irrelevant overall sign before squaring, include all eight possible sign choices for the three real sine terms.

### Exact verification of (4)

The accompanying `verify_fourier.py` proves (4) by finite integer polynomial arithmetic, not by evaluation at sample parameters. Work in

\[
\mathbb Z[\omega,x^{\pm1},y^{\pm1}]/(\omega^2-\omega+1),
\qquad x=e^{ia},\ y=e^{ib}.
\]

Each coefficient is represented as a pair of integers `(A,B)` for `A+B*omega`. Conjugation maps that pair to `(A+B,-B)` and reverses the Laurent exponents. For all 400 blocks `B`, the verifier calculates

\[
q(B)=\frac{\operatorname{perm}(B)\det(B)^2}{\prod B_{ij}}.
\]

Up to multiplication by `-1`, `q-conj(q)` is either zero (256 blocks), or one of the four Laurent polynomials

\[
3\left[
(x^2/y-y/x^2)+\sigma(xy-x^{-1}y^{-1})
+\tau(x/y^2-y^2/x)
\right],\qquad \sigma,\tau\in\{-1,1\}, \tag{6}
\]

with each polynomial occurring 36 times. The polynomial in (6) equals
`6 i (sin U + sigma sin V + tau sin W)`.

For every corner `A` individually, the program also evaluates the **original defining polynomial** for `R(A)` and checks that it equals
`-(q(B)-conj(q(B)))^2`, where `B` uses the same rows and complementary columns. Thus the full defining formula is checked; no independent assumption of the supplied square identity F2 is needed by this result.

Complementing column triples permutes the 400 blocks, proving the spectrum (4).

## 3. Exact lattice reduction by row and column permutations

The sine expression (5) is periodic under independent shifts `U -> U+pi*m`, `V -> V+pi*n`. These shifts represent actual Hadamard equivalences, not merely an accidental symmetry of `M`.

Let `m,n` be arbitrary integers and set

\[
A=m+n,\quad B=2n-m,\quad
a_0=\frac\pi3 A,\quad b_0=\frac\pi3 B.
\]

Then `B-2A=-3m`. For `c=0,1,2`, set `C_c=(0,A,B)_c` and define

\[
q(j)=j+3(C_{j\bmod3}\bmod2)\pmod6,
\qquad
p(i)=i+4A\epsilon_i\pmod6. \tag{7}
\]

The first permutation swaps the column pair `j,j+3` precisely when `C_{j mod 3}` is odd. The second fixes every even row and cyclically permutes the three odd rows. Both preserve the phase-mask classes: `q(j) mod 3 = j mod 3`, and `epsilon_{p(i)}=epsilon_i`.

The following exponent identity holds modulo six:

\[
iq(j)+\epsilon_i C_{q(j)\bmod3}\equiv p(i)j\pmod6. \tag{8}
\]

To see it, the column swap changes `iq(j)` by `3 epsilon_i C_c` modulo six. Adding the baseline perturbation gives `ij+4 epsilon_i C_c`. Since `C_c` is congruent to `A c` modulo three, this equals `ij+4A epsilon_i j`, which is the right side of (8).

Consequently, if `alpha=a-a0`, `beta=b-b0`,

\[
F(a,b)_{i,q(j)}=F(\alpha,\beta)_{p(i),j}. \tag{9}
\]

This explicitly proves `F(a,b) ≅ F(alpha,beta)`. The verifier checks (8) for all `m,n` modulo six; these residues cover every parity and exponent dependency in (7)-(8).

Choose `m,n` so that

\[
\widehat U=U-\pi m\in[-\pi/2,\pi/2],\qquad
\widehat V=V-\pi n\in[-\pi/2,\pi/2]. \tag{10}
\]

The equivalent residual family parameters are

\[
\alpha=\frac{\widehat U+\widehat V}{3},\qquad
\beta=\frac{2\widehat V-\widehat U}{3}. \tag{11}
\]

There are exactly twelve zero points in the original `(a,b)` torus:

\[
(a,b)=(\pi A/3,\pi B/3),\qquad A,B\in\{0,\ldots,5\},\quad B\equiv2A\pmod3.
\]

All are equivalent to `F` by the same explicit permutations.

## 4. The low sublevel fits in a single small-angle sector after reduction

Write

\[
L=|\sin\widehat U|+|\sin\widehat V|
       +|\sin(\widehat U-\widehat V)|=\sqrt{M}/6.
\]

Assume `L<2`, which is equivalent to `M<144`.

We first prove

\[
T:=\max\{|\widehat U|,|\widehat V|,|\widehat U-\widehat V|\}<\pi/2. \tag{12}
\]

If `Uhat,Vhat` have the same sign, their difference already has absolute value at most `pi/2`. If they have opposite signs, put `r=|Uhat|`, `s=|Vhat|`, `t=r+s`, with `r,s <= pi/2`. If `t >= pi/2`, concavity of sine on `[0,pi]` gives

\[
\sin r+\sin s\geq1-\cos t.
\]

This is obtained by minimizing `sin r+sin(t-r)` on the permitted interval
`r in [t-pi/2,pi/2]`, whose endpoints give `1-cos t`. Therefore

\[
L\geq1-\cos t+\sin t\geq2,
\qquad \pi/2\leq t\leq\pi,
\]

a contradiction. Thus all three absolute values are at most `pi/2`.

The three numbers `|Uhat|,|Vhat|,|Uhat-Vhat|` always have the form
`r,s,r+s` for some nonnegative `r,s`. Their largest value is `T=r+s`. Hence

\[
L=\sin r+\sin s+\sin(r+s)\geq2\sin T. \tag{13}
\]

Here

\[
\sin r+\sin s-\sin(r+s)
=4\sin(r/2)\sin(s/2)\sin((r+s)/2)\geq0.
\]

Equality `T=pi/2` would again force `L>=2`; this establishes the strict inequality in (12). As sine is increasing on this interval,

\[
T\leq\arcsin(L/2)
=\arcsin\!\left(\frac{\sqrt M}{12}\right). \tag{14}
\]

## 5. Horizontal phase bound

For the residual parameters from (11), let
`delta_j=(0,alpha,beta)_{j mod 3}` and `mu=(alpha+beta)/3`. The explicit horizontal representative is

\[
u_{ij}=(\epsilon_i-1/2)(\delta_j-\mu). \tag{15}
\]

All row and column sums vanish. The difference between the raw phase
`epsilon_i delta_j` and (15) is the sum of a row phase and a column phase:

\[
\epsilon_i\delta_j-u_{ij}=\epsilon_i\mu+\delta_j/2-\mu/2.
\]

Thus `F(alpha,beta) ≅ F ∘ exp(iu)`. Direct summation gives

\[
\|u\|_F^2=2(\alpha^2+\beta^2-\alpha\beta)
=\frac23(\widehat U^2-\widehat U\widehat V+\widehat V^2). \tag{16}
\]

The exact Gram matrix of the two horizontal masks is `[[2,-1],[-1,2]]`; the verifier checks this with rational arithmetic.

For the nonnegative `r,s` in §4,

\[
\widehat U^2-\widehat U\widehat V+\widehat V^2
=r^2+rs+s^2\leq(r+s)^2=T^2. \tag{17}
\]

Combining the displayed horizontal representative with (14)-(17) proves (1).

For transposes, `F^T=F`, transposition preserves horizontal phases and Frobenius norm, and transposes an allowed equivalence into another allowed equivalence. Thus `nu(H^T)=nu(H)`, proving (1) for the transposed family as well.

## 6. Projector-distance bound, including the transpose

Let

\[
D=\max\{0,\alpha,\beta\}-\min\{0,\alpha,\beta\}
=\max\{|\alpha|,|\beta|,|\alpha-\beta|\}.
\]

Equation (11) and the definition of `T` give

\[
|\alpha|=|\widehat U+\widehat V|/3\leq2T/3,
\]

and the same bound for `|beta|` and `|alpha-beta|`, by expressing their numerators as
`Vhat+(Vhat-Uhat)` and `Uhat+(Uhat-Vhat)`. Hence

\[
D\leq2T/3. \tag{18}
\]

For the original family, take the Fourier matrix with odd-row phase `exp(i m0)`, where
`m0 = (max{0,alpha,beta}+min{0,alpha,beta})/2`. In each column, the normalized overlap has modulus

\[
\left|\frac{1+e^{i(\delta_j-m_0)}}2\right|
=\cos(|\delta_j-m_0|/2)\geq\cos(D/4).
\]

The column projector distance is therefore at most `sin(D/4)`.

For the transpose, the matrix entries are
`F_ij exp(i epsilon_j delta_i)`. Match to the Fourier matrix with row phases `exp(i delta_i/2)`. Every normalized column overlap is an average of six unit phases with arguments contained in an interval of width `D/2`. Rotate the midpoint of that interval to zero. Every summand has real part at least `cos(D/4)`, so the modulus of the average is at least `cos(D/4)`. This again gives projector distance at most `sin(D/4)`.

This separate argument is needed: no transpose invariance of the column-projector distance is assumed. Combining these constructions with (14) and (18) proves (2).

### Exact decimal caps

Let `theta=438872/1000000`. The degree-seven alternating sine Taylor polynomial gives a rational lower bound `s_low` for `sin(theta)`, and the verifier checks

\[
144s_{\rm low}^2>26.
\]

Therefore `arcsin(sqrt(26)/12)<theta`. It also checks, entirely with fractions,

\[
\frac23\theta^2<(358338/10^6)^2,
\]

and that the degree-five alternating sine upper bound at `theta/6` is smaller than
`73081/10^6`. These prove the explicit constants in (3). Floating-point special-function evaluation is not used to establish either bound.

## 7. Exact orbit distance and sharpness in the low sublevel

The upper bound (1) can be strengthened to an exact formula throughout `M<=26`. The key is a discrete separation between different horizontal Fourier-reference residuals.

### Integer-projection separation

Let `P6` be horizontal projection. For every integer matrix `N` with `P6 N != 0`,

\[
\|P_6N\|_F\geq\frac56. \tag{20}
\]

First, for every real matrix `N`,

\[
\sum_{i<k}\sum_{j<l}(N_{ij}-N_{il}-N_{kj}+N_{kl})^2
=36\|P_6N\|_F^2. \tag{21}
\]

This follows by applying the complete-graph pair-difference identity in rows and columns; the verifier independently checks all coefficients of the two quadratic forms.

For integer `N`, call two rows equivalent if their difference is constant across columns. If every row is equivalent, `P6 N=0`. Otherwise there are at least two equivalence classes, and at least five unordered row pairs have nonconstant differences: a class of size `k`, with `1<=k<=5`, already has `k(6-k)>=5` cross-pairs.

For each nonconstant integer row difference, there are at least five unordered column pairs with distinct entries, by the same partition count. Their squared differences are positive integers, hence at least one. The left side of (21) is consequently at least `5*5=25`, proving (20). Equality is attained by an integer matrix with a single entry one and all other entries zero.

### Applying separation to the true infimum defining `nu`

Fix the matrix `H`, rather than a particular permutation of it. Any representative used in the definition of `nu` can be written

\[
H=K\circ e^{iv},\qquad K\cong F,\quad v\text{ horizontal},
\]

without changing `||v||`: undoing row/column permutations only permutes the phase entries and preserves their norm and horizontality. Row/column phases can be put into `K`.

After horizontal projection, a Fourier reference contributes the projection of an integer matrix multiplied by `pi/3`. This holds because an un-rephased row/column permutation of `F` has sixth-root entries; arbitrary diagonal rephasings disappear under `P6`, and changes of phase lift contribute `2*pi P6 Z^{36}`. Therefore any two candidate horizontal residuals for this fixed `H` differ by an element of

\[
\frac\pi3P_6\mathbb Z^{36}.
\]

By (20), either the residuals are identical or their separation is at least

\[
\frac{5\pi}{18}. \tag{22}
\]

If one explicit residual `u` has norm smaller than `5*pi/36`, every distinct candidate `v` satisfies

\[
\|v\|_F\geq\|v-u\|_F-\|u\|_F
\geq\frac{5\pi}{18}-\|u\|_F>\|u\|_F.
\]

Thus that `u` attains the true orbit-distance infimum.

For the residual (15) under `M<=26`, the already established rational cap gives

\[
\|u\|_F<0.358338<5/12<5\pi/36,
\]

where the last inequality uses `pi>3`. Consequently the exact low-sublevel formula is

\[
\boxed{\quad
\nu(F(a,b))^2
=\frac23(\widehat U^2-\widehat U\widehat V+\widehat V^2),
\qquad M(F(a,b))\leq26.
\quad} \tag{23}
\]

The same formula holds for the transposed family because transposition preserves `nu`.

For every `0<=m<=26`, choose

\[
t=\arcsin(\sqrt m/12),\qquad a=t/3,\quad b=-t/3.
\]

Then `(U,V)=(t,0)`, so `M=144 sin^2(t)=m`, and (23) gives

\[
\nu=\sqrt{2/3}\,t.
\]

Therefore the envelope in (1) is **optimal on the full Fourier family at every level `0<=m<=26`**:

\[
\sup_{H\in\mathcal F,\ M(H)\leq m}\nu(H)
=\sqrt{\frac23}\arcsin(\sqrt m/12). \tag{24}
\]

Here `mathcal F` includes both families and all their equivalents. In particular the supremal `nu` for the strict sublevel `M<26` is exactly
`sqrt(2/3) asin(sqrt(26)/12)`. This proves sharpness from the definitions; it does not rely on the supplied extremal-curve orbit-distance assertion in F6. No claim of optimality is made for the projector-distance bound (2).

## 8. Complete classification of local minima on the family torus

The function `L(U,V)` is independently `pi`-periodic in its two coordinates, and symmetric under exchanging them. Consequently every parameter lies, after these symmetries, in the closed triangle

\[
0\leq V\leq U\leq\pi,
\]

where

\[
L(U,V)=\sin U+\sin V+\sin(U-V). \tag{19}
\]

In the interior, its second directional derivative in a direction `(h,k)` is

\[
-\sin U\,h^2-\sin V\,k^2-\sin(U-V)(h-k)^2<0
\]

for every nonzero direction. Thus there are no interior local minima. On each open edge, the restriction is `2 sin(t)` with `0<t<pi`, which likewise has no local minimum. Every local minimum on the torus must therefore be a vertex of a chamber, where `L=M=0`.

For the more explicit low-sublevel conclusion, use the reduced coordinates in §4 and scale them by `lambda in [0,1]`. Formula (5) becomes

\[
M(\lambda)=36\left[\sin(\lambda r)+\sin(\lambda s)
                         +\sin(\lambda(r+s))\right]^2.
\]

Because `r+s<pi/2`, this expression is strictly increasing in `lambda` when `M(1)>0`. Scaling inward consequently gives a strict descent within the same low sublevel and ends at an explicitly Fourier-equivalent parameter. This proves a complete version of the handoff's proposed critical-point criterion on these two-dimensional families.

## 9. Inputs and reproducibility

Inputs used:

1. The definitions of `F6`, the masks `t1,t2`, `R`, `M`, `nu`, equivalence, and `d_F` in the supplied handoff.
2. The stated transpose invariance of `R` (or direct equivalently transposed corner enumeration) when extending `M` to the transposed family.
3. Elementary trigonometric identities, concavity of sine on `[0,pi]`, the alternating-series sine bounds on `(0,1)`, and `pi>3`.
4. The finite polynomial and quadratic-form certificates reproduced by `verify_fourier.py`, together with the integer partition argument in §7.

No use is made of F1, F3, F4, F5, F6, F7, or F8. The calculation involving `q` is motivated by F2, but every claimed square identity in this family is independently checked against the defining polynomial for `R`.

Run:

```sh
python3 verify_fourier.py
```

The script requires only the Python standard library. It exits nonzero if any polynomial identity, multiplicity, row/column permutation, horizontal Gram or rectangle quadratic-form identity, or rational decimal bound fails. Its final line is:

```text
FOURIER FAMILY EXACT CERTIFICATE PASS
```

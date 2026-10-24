# V: practical quantitative coverage — proved margins and the remaining outer gap

**Status: practical partial result; a practical global outer bound is NOT
ESTABLISHED.** This return prioritizes usable constants, as requested. Its
main certified margin is

\[
\boxed{0.1\le d([H],[F_6])\le4/7
\quad\Longrightarrow\quad
\max_C R_C(H)\ge0.04.}
\]

This statement holds for every order-six complex Hadamard in the stated
annulus, with no restriction to a Fourier family or to a tangent direction.
The interval `d>4/7` is not covered by this theorem. In particular, the
unrestricted assertion `d>=0.1 => max R>=10^-3` has not been proved.

The return also proves a strong practical margin on both complete Fourier
families, a global well-conditioned-corner lemma, a quantitative reduction
of small complementary discriminants to small `J`, and a quantitative
group-rounding theorem. The latter gives one precise remaining inequality
which would close the desired practical global result, but that inequality
is explicitly left unproved.

The handoff's atlas and Stage C are not inputs to any calculation or proof
in this bundle. No numerical sampling is used to establish the reported
margins. A generic effective-minimum bound was investigated earlier; its
astronomically small constant is not presented here as a practical answer.

## 1. Conventions and result ledger

The entries of H have modulus one, so `||H||_F=6`. All distances use the
unnormalized quotient metric from the brief:

\[
d=d([H],[F_6])=
\min_{U,V\text{ monomial unitary}}\|H-UF_6V\|_F.
\]

Set

\[
M(H)=\max_{|I|=|J|=3}R_{I,J}(H),\qquad
S(H)=\sum_{|I|=|J|=3}R_{I,J}(H).
\]

There are 400 positional corners. Every listed inequality involving d uses
this metric; no implicit `1/sqrt(6)` normalization is present.

For clarity, the scalar discriminant is the one in the brief. For a corner
E set `G=6I-EE*`, let `s=G_21`, `t=G_31`, `r=G_32`, and put

\[
X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad
p=X+Y+Z,\quad J=2\Re(sr\overline t),
\quad W=XY+XZ+YZ-XYZ.
\]

Then

\[
g=27-3p+J,\qquad\eta=9-p+J,
\]
\[
\chi=W-(p-9)(p-18)+(p-15)J,
\qquad R=4g^2\eta-\chi^2.
\]

Same-row complementation preserves p and W and changes the sign of J.

| Status | Scope | Result |
|---|---|---|
| **PROVED / CERTIFIED** | Every Hadamard, `d<=1/2` | `S>=1600 d^2`, hence `M>=4 d^2` |
| **PROVED / CERTIFIED** | Every Hadamard, `d<=4/7` | `S>=81 d^2`, hence `M>=81 d^2/400` |
| **PROVED / CERTIFIED** | Every Hadamard, `0.1<=d<=4/7` | `M>=1/25=0.04` |
| **PROVED / CERTIFIED** | Either full Fourier family, at any distance | `M>=864 d^2/pi^2` |
| **PROVED / CERTIFIED** | Either full Fourier family, `d>=0.1` | `M>=8.64/pi^2>0.875` |
| **PROVED / exact algebra replayed** | Every Hadamard | A corner has `p<=9/2`; both complementary determinant squares are at least `9` |
| **PROVED / exact algebra replayed** | That corner, if `0<=R_+,R_-<=epsilon` | `p |J|<=16 epsilon/81` |
| **PROVED** | Any reference row with product-mixing defect `L_r<1/9` | `d^2<=L_r/(1-L_r)` |
| **NOT ESTABLISHED** | Every Hadamard with `d>=0.1` | A practical global margin such as `10^-3` |

Here **PROVED** means a written mathematical deduction, and **CERTIFIED**
means exact finite arithmetic with a supplied replay script. No claim is
labelled certified merely because it was sampled numerically. The proofs
have not been compiled in Lean.

## 2. The certified practical annulus

Full proof: [PRACTICAL_ANNULUS.md](PRACTICAL_ANNULUS.md).

### 2.1 The signature sum of squares

For a three-by-three phase block B define

\[
\Psi(B)=\frac{\operatorname{perm}(B)\det(B)^2}{\prod_{i,j}B_{ij}}.
\]

**CERTIFIED.** The elementary side identity, including singular sides, is

\[
R_{I,J}(H)=4\bigl(\Im\Psi(H[I,J^c])\bigr)^2.
\]

Same-row complementation permutes the corners. Thus, with
`G(H)=(Im Psi(H[I,J]))_(I,J)`,

\[
S(H)=4\|G(H)\|_2^2,
\qquad M(H)\ge\|G(H)\|_2^2/100.
\tag{2.1}
\]

The exact Laurent verifier regenerates the determinant and permanent and
checks all coefficients of this identity. No reconstruction denominator
is used.

### 2.2 Use the actual Hadamard equations

Take `F=F_2 tensor F_3`, with an explicit permutation equivalence to `F_6`,
and write an equivalent nearby matrix as `H(x)=F circ exp(ix)` with x
horizontal: every row sum and column sum of x is zero. Put `t=||x||_F`.

**PROVED.** Optimal monomial alignment followed by horizontal projection of
the principal phases gives

\[
d\le t\le\frac{d}{\sqrt{1-d^2/4}}\quad(d<2).
\tag{2.2}
\]

**CERTIFIED / PROVED.** Split x into the four-dimensional Fourier tangent
space and its orthogonal complement, `x=x_T+x_N`. The linearized
orthogonality map has positive squared singular values among `3,9,12`.
Combining its smallest singular value with
`|exp(iy)-1-iy|<=y^2/2` gives

\[
\|x_N\|_F\le t^2,
\qquad \|x_T\|_F\ge t\sqrt{1-t^2}\quad(t\le1).
\tag{2.3}
\]

This estimate uses the actual nonlinear orthogonality equations; it does
not assume that every tangent vector integrates to a family of Hadamards.

### 2.3 Projected signatures and the explicit remainder

Let `L=DG(0)` and let Q be the orthogonal projector onto the image under L
of the Fourier tangent space.

**CERTIFIED.** Exact integer matrix identities give

\[
\|QLx\|_2=36\sqrt3\,\|x_T\|_F.
\]

Exact Gram matrices for the derivative tensors through order ten, followed
by a uniform order-eleven sine remainder, give

\[
\|Q(G(H(x))-Lx)\|_2\le E(t),
\]

\[
E(t)=13t^2+80t^3+10t^4+45t^5+4t^6+
15t^7+t^8+4t^9+t^{10}+15t^{11}.
\tag{2.4}
\]

Consequently

\[
\|G(H(x))\|_2\ge
t\left(36\sqrt{3(1-t^2)}-E(t)/t\right).
\tag{2.5}
\]

The bracket decreases with t. Exact rational comparisons show that it is
greater than `20` for `t<=517/1000`, and greater than `9/2` for
`t<=597/1000`. Equation (2.2) puts `d<=1/2` in the first range and
`d<=4/7` in the second. Equation (2.1) proves

\[
M\ge4d^2\quad(d\le1/2),\qquad
M\ge81d^2/400\quad(d\le4/7).
\]

On `0.1<=d<=1/2`, the first inequality gives `M>=0.04`. On
`1/2<=d<=4/7`, the second gives `M>=81/1600>0.04`. This establishes the
annular margin without extending it beyond its proved range.

### 2.4 What the computation certifies

The verifier regenerates the 55 Laurent terms of Psi, the Fourier phase
arrays, the four tangent vectors, the linearized orthogonality matrix,
and the derivative-tensor Gram matrices. It does not load precomputed
floating-point eigenvectors or numerical atlas centres.

The larger verifier uses NumPy integer arrays. Before each fixed-width
integer product it checks the absolute bound
`216^2 * 18^k < 2^63` for `k<=10`, which excludes overflow in every partial
sum of those products. The final projected contractions use Python
arbitrary-precision integers. All final radius comparisons use exact
rational arithmetic.

The earlier, simpler proof in [LOCAL_FOURIER.md](LOCAL_FOURIER.md) also
shows coercivity on the entire 25-dimensional horizontal phase space and
proves `M>=81d^2/400` for `d<=0.1`, with a standard-library-only verifier.
The practical annulus theorem is stronger because it uses orthogonality.

## 3. A practical global margin on both Fourier families

Full proof and exact 400-corner census:
[FOURIER_QUANTITATIVE.md](FOURIER_QUANTITATIVE.md).

**CERTIFIED.** For the full two-parameter family

\[
N(\alpha,\beta)=
\begin{pmatrix}F_3&F_3\\F_3D&-F_3D\end{pmatrix},
\quad D=\operatorname{diag}(1,e^{i\alpha},e^{i\beta}),
\]

put `X=2 beta-alpha`, `Y=alpha+beta`, `T=X-Y`. The exact census gives

\[
M=36(|\sin X|+|\sin Y|+|\sin T|)^2,
\qquad S=5184(\sin^2X+\sin^2Y+\sin^2T).
\]

**PROVED.** Choose the nearest critical lattice point in the positive
quadratic form `Q(x,y)=x^2+y^2-xy`. On its Voronoi hexagon,

\[
(|\sin x|+|\sin y|+|\sin(x-y)|)^2\ge16Q(x,y)/\pi^2.
\]

The proof reduces by reflection to one triangle, where the sine sum minus
`4 sqrt(Q)/pi` is concave and nonnegative at all three vertices. Explicit
row and column phase centering gives `d^2<=2Q/3`. Therefore

\[
\boxed{M(H)\ge\frac{864}{\pi^2}d^2,\qquad
S(H)\ge\frac{41472}{\pi^2}d^2.}
\]

The result holds for the transposed family and all equivalent
representatives. It has no local-radius restriction. At `d>=0.1` it gives
`M>0.875`. It does not cover non-Fourier Hadamards in the far region.

## 4. Global selection of a well-conditioned corner

Full proof: [P_VARIANCE_AND_COMPLEMENT.md](P_VARIANCE_AND_COMPLEMENT.md).

**PROVED.** Define

\[
T_2(H)=\sum_{a<b}\left|\sum_jH_{aj}^2\overline{H_{bj}}^{\,2}\right|^2.
\]

The first two moments of p over all 400 corners are

\[
\sum_Cp_C=2160,
\qquad \sum_Cp_C^2=12960+4T_2(H).
\]

Thus

\[
\frac1{400}\sum_C(p_C-27/5)^2
=81/25+T_2(H)/100.
\]

Since physical corners have `0<=p_C<=9`, averaging the nonnegative
products `(p_C-min p)(9-p_C)` gives

\[
\boxed{\min_Cp_C\le\frac92-\frac{T_2(H)}{360}\le\frac92.}
\tag{4.1}
\]

For that corner let `q=9-p`. Physicality gives `|J|<=q`, so its two
complementary determinant squares satisfy

\[
\boxed{g_\pm=3q\pm J\ge2q\ge9.}
\tag{4.2}
\]

This is a global statement for every carrier, including boundary cases.
It provides a selected complementary pair with uniform conditioning.

More strongly, all four blocks of the associated three-plus-three
decomposition have squared singular values in

\[
[3-\sqrt6,3+\sqrt6].
\]

Every block therefore has inverse operator norm below `sqrt(2)` and
condition number below `sqrt(10)`. This follows from the Gram trace and
squared trace: `tr(EE*)=9` and `tr((EE*)^2)=27+2p<=36`, and from the
complementary block equations.

**PROVED / exact polynomial identity replayed.** If both complementary
discriminants are between zero and epsilon, then

\[
\boxed{p|J|\le16\varepsilon/81.}
\tag{4.3}
\]

For example, at `epsilon=10^-3` and `p>=0.1`, this gives
`|J|<=16/8100<0.001976`. At exact criticality the selected corner lies below
the nonzero-J critical threshold `p>5`; it also avoids the zero-J
exception `p=5`. These observations substantially shorten the qualitative
reduction. A practical quantitative version of the remaining zero-J
geometric step is still required.

There are also uniform constants without a positive lower bound on p.
Combining (4.3) with `J^2<=4p^3/27` gives

\[
|J|^5\le\frac{2^{14}}{3^{15}}\varepsilon^3.
\]

At `epsilon=10^-3`, this implies `|J|<1/240`. Both normalized side labels
`z_+=T_+/g_+`, `z_-=T_-/g_-`, with `T=-Psi`, obey

\[
\boxed{|z_\pm+\sqrt{9-p}|<0.003.}
\]

Their common real comparison point lies in `[-3,-3/sqrt(2)]`. Thus the
labels stay more than `0.118` from the exceptional value `-2`; the endpoint
`-3` remains present. These are necessary consequences of all-small-R,
not a proof that all-small-R confines H to a small Fourier neighborhood.

A supplemental routing estimate is recorded in
[NEAR_F3_ROUTING.md](NEAR_F3_ROUTING.md): if a corner has
`p<=1/160000`, H is within `12 sqrt(p)+60 sqrt(2) p^(1/4)` of a Fourier-family
or Tao matrix. Its finite orbit check is replayable. No sufficiently strong
bound forcing p into a useful range has been established, so this lemma
does not close the global practical gap.

## 5. A quantitative rounding theorem and one exact remaining target

Full proof: [GROUP_ROUNDING.md](GROUP_ROUNDING.md).

For each reference row r, normalize that row to all ones by column phases
and write the normalized rows as `u_i`. Define the row-product coefficients
and their mixing defect by

\[
t^{(r)}_{ij,k}=\frac16\sum_a u_i(a)u_j(a)\overline{u_k(a)},
\qquad L_r=36-\sum_{i,j,k}|t^{(r)}_{ij,k}|^4.
\]

**PROVED.** Each `L_r` is nonnegative, and

\[
\boxed{L_r<1/9\quad\Longrightarrow\quad
d^2\le L_r/(1-L_r).}
\tag{5.1}
\]

The proof first assigns every row product to its unique dominant row.
Unitarity makes these assignments permutations. The total approximation
error is below the distance between distinct orthogonal rows, which forces
associativity. The six row labels therefore form a cyclic group. Averaging
over a base column removes the approximate product phases, and Fourier
rounding of each column produces the actual character table with the
explicit Frobenius error in (5.1).

Let `L_tot=sum_r L_r`. In the unresolved far region `d>4/7`, (5.1) forces
every `L_r>=1/9`, hence `L_tot>=2/3`.

**PROVED conditional implication; its premise is NOT ESTABLISHED.** A
universal comparison

\[
S(H)\ge L_{\rm tot}(H)
\tag{5.2}
\]

would give `M>=1/600` in the far region. Together with the certified
annulus, it would prove

\[
d\ge0.1\quad\Longrightarrow\quad M\ge1/600>10^{-3}.
\]

The even weaker comparison `S>=(3/5)L_tot` would be enough for `10^-3`.
Neither comparison has been proved. Numerical tests, a qualitative common
zero locus, and the existence of an exact moment expansion do not certify
such an inequality. The report includes this reduction to specify the
remaining mathematical obligation, not to count it as a completed result.

## 6. Replay and deliverables

Run

```sh
python3 verify_all.py
```

Python 3 and NumPy are sufficient. There are no data downloads, network
requests, or atlas dependencies. The combined runner replays:

1. The universal side-signature Laurent identity.
2. The standard-library local Fourier spectral and Hessian certificates.
3. The stronger physical annulus certificates through order ten.
4. The full Fourier-family census and all twelve equivalence witnesses.
5. The four-vector sampling identity, complementary-discriminant identity,
   and the new p-variance constants.
6. The supplemental near-F3 routing lemma's eighteen exact Tao equivalence
   checks and its rational constants.
7. The regenerated 66-term strip moment identity and the off-critical side
   numerator identities in [SMALL_P_STRIP_NOTES.md](SMALL_P_STRIP_NOTES.md).
   That note also proves auxiliary strip stability bounds and explicitly
   identifies the missing full-matrix transfer.

Detailed per-script output and a combined receipt are in `verification/`.
`SHA256SUMS.json` identifies the packaged files; hashes identify bytes and
are not substitutes for running the mathematical verifiers.

**No new four-MUB exclusion is claimed.** This is a Hadamard-geometry
return. Its practical certified coverage is the stated annulus plus the
complete Fourier families. A practical margin on the entire remaining
non-Fourier outer region is still open in this return.
